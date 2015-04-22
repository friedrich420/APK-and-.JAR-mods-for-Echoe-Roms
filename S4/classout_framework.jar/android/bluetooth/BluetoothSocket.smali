.class public final Landroid/bluetooth/BluetoothSocket;
.super Ljava/lang/Object;
.source "BluetoothSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothSocket$SocketState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final EADDRINUSE:I = 0x62

.field static final EBADFD:I = 0x4d

.field public static final MAX_RFCOMM_CHANNEL:I = 0x1e

.field private static PROXY_CONNECTION_TIMEOUT:I = 0x0

.field static final SEC_FLAG_AUTH:I = 0x2

.field static final SEC_FLAG_ENCRYPT:I = 0x1

.field private static SOCK_SIGNAL_SIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothSocket"

.field static final TYPE_L2CAP:I = 0x3

.field static final TYPE_RFCOMM:I = 0x1

.field static final TYPE_SCO:I = 0x2

.field static final TYPE_VENDOR_HCI:I = 0x4

.field private static final VDBG:Z


# instance fields
.field private mAddress:Ljava/lang/String;

.field private final mAuth:Z

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mEncrypt:Z

.field private mFd:I

.field private mFdForClose:Ljava/io/FileDescriptor;

.field private final mInputStream:Landroid/bluetooth/BluetoothInputStream;

.field private final mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

.field private mPfd:Landroid/os/ParcelFileDescriptor;

.field private mPort:I

.field private mServiceName:Ljava/lang/String;

.field private mSocket:Landroid/net/LocalSocket;

.field private mSocketIS:Ljava/io/InputStream;

.field private mSocketOS:Ljava/io/OutputStream;

.field private volatile mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

.field private final mType:I

.field private final mUuid:Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 133
    const/16 v0, 0x1388

    sput v0, PROXY_CONNECTION_TIMEOUT:I

    .line 135
    const/16 v0, 0x10

    sput v0, SOCK_SIGNAL_SIZE:I

    return-void
.end method

.method constructor <init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V
    .registers 12
    .param p1, "type"    # I
    .param p2, "fd"    # I
    .param p3, "auth"    # Z
    .param p4, "encrypt"    # Z
    .param p5, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p6, "port"    # I
    .param p7, "uuid"    # Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    if-ne p1, v1, :cond_2c

    if-nez p7, :cond_2c

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2c

    .line 165
    if-lt p6, v1, :cond_13

    const/16 v0, 0x1e

    if-le p6, v0, :cond_2c

    .line 166
    :cond_13
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid RFCOMM channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_2c
    if-eqz p7, :cond_66

    .line 170
    iput-object p7, p0, mUuid:Landroid/os/ParcelUuid;

    .line 172
    :goto_30
    iput p1, p0, mType:I

    .line 173
    iput-boolean p3, p0, mAuth:Z

    .line 174
    iput-boolean p4, p0, mEncrypt:Z

    .line 175
    iput-object p5, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 176
    iput p6, p0, mPort:I

    .line 177
    iput p2, p0, mFd:I

    .line 179
    sget-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v0, p0, mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 181
    if-nez p5, :cond_73

    .line 183
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mAddress:Ljava/lang/String;

    .line 188
    :goto_4c
    new-instance v0, Landroid/bluetooth/BluetoothInputStream;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothInputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, mInputStream:Landroid/bluetooth/BluetoothInputStream;

    .line 189
    new-instance v0, Landroid/bluetooth/BluetoothOutputStream;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothOutputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

    .line 193
    const-string v0, "Socket Created"

    iget-object v1, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, mPort:I

    iget v3, p0, mType:I

    invoke-static {v0, v1, v2, v3}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothSocketLog(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;II)V

    .line 196
    return-void

    .line 171
    :cond_66
    new-instance v0, Landroid/os/ParcelUuid;

    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v2, v3, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, mUuid:Landroid/os/ParcelUuid;

    goto :goto_30

    .line 186
    :cond_73
    invoke-virtual {p5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mAddress:Ljava/lang/String;

    goto :goto_4c
.end method

.method private constructor <init>(IIZZLjava/lang/String;I)V
    .registers 15
    .param p1, "type"    # I
    .param p2, "fd"    # I
    .param p3, "auth"    # Z
    .param p4, "encrypt"    # Z
    .param p5, "address"    # Ljava/lang/String;
    .param p6, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    new-instance v5, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v5, p5}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, <init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    .line 247
    return-void
.end method

.method private constructor <init>(Landroid/bluetooth/BluetoothSocket;)V
    .registers 3
    .param p1, "s"    # Landroid/bluetooth/BluetoothSocket;

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iget-object v0, p1, mUuid:Landroid/os/ParcelUuid;

    iput-object v0, p0, mUuid:Landroid/os/ParcelUuid;

    .line 199
    iget v0, p1, mType:I

    iput v0, p0, mType:I

    .line 200
    iget-boolean v0, p1, mAuth:Z

    iput-boolean v0, p0, mAuth:Z

    .line 201
    iget-boolean v0, p1, mEncrypt:Z

    iput-boolean v0, p0, mEncrypt:Z

    .line 202
    iget v0, p1, mPort:I

    iput v0, p0, mPort:I

    .line 203
    new-instance v0, Landroid/bluetooth/BluetoothInputStream;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothInputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, mInputStream:Landroid/bluetooth/BluetoothInputStream;

    .line 204
    new-instance v0, Landroid/bluetooth/BluetoothOutputStream;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothOutputStream;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

    .line 205
    iget-object v0, p1, mServiceName:Ljava/lang/String;

    iput-object v0, p0, mServiceName:Ljava/lang/String;

    .line 206
    return-void
.end method

.method private acceptSocket(Ljava/lang/String;)Landroid/bluetooth/BluetoothSocket;
    .registers 9
    .param p1, "RemoteAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 208
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v0, p0}, <init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 209
    .local v0, "as":Landroid/bluetooth/BluetoothSocket;
    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v2, v0, mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 210
    iget-object v2, p0, mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v1

    .line 211
    .local v1, "fds":[Ljava/io/FileDescriptor;
    const-string v2, "BluetoothSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "socket fd passed by stack  fds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    if-eqz v1, :cond_2f

    array-length v2, v1

    if-eq v2, v6, :cond_53

    .line 213
    :cond_2f
    const-string v2, "BluetoothSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "socket fd passed from stack failed, fds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {v0}, close()V

    .line 215
    new-instance v2, Ljava/io/IOException;

    const-string v3, "bt socket acept failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 217
    :cond_53
    new-instance v2, Landroid/net/LocalSocket;

    aget-object v3, v1, v5

    invoke-direct {v2, v3}, Landroid/net/LocalSocket;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, v0, mSocket:Landroid/net/LocalSocket;

    .line 218
    aget-object v2, v1, v5

    iput-object v2, v0, mFdForClose:Ljava/io/FileDescriptor;

    .line 219
    iget-object v2, v0, mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, v0, mSocketIS:Ljava/io/InputStream;

    .line 220
    iget-object v2, v0, mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, v0, mSocketOS:Ljava/io/OutputStream;

    .line 221
    iput-object p1, v0, mAddress:Ljava/lang/String;

    .line 222
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iput-object v2, v0, mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 225
    iget-object v2, v0, mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_85

    .line 226
    iget-object v2, v0, mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v6}, Landroid/bluetooth/BluetoothDevice;->setRfcommConnected(Z)V

    .line 230
    :cond_85
    return-object v0
.end method

.method private convertAddr([B)Ljava/lang/String;
    .registers 11
    .param p1, "addr"    # [B

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 609
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%02X:%02X:%02X:%02X:%02X:%02X"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    aget-byte v3, p1, v4

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    aget-byte v3, p1, v5

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    aget-byte v3, p1, v6

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v6

    aget-byte v3, p1, v7

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v7

    aget-byte v3, p1, v8

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const/4 v4, 0x5

    aget-byte v4, p1, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSecurityFlags()I
    .registers 3

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "flags":I
    iget-boolean v1, p0, mAuth:Z

    if-eqz v1, :cond_7

    .line 261
    or-int/lit8 v0, v0, 0x2

    .line 262
    :cond_7
    iget-boolean v1, p0, mEncrypt:Z

    if-eqz v1, :cond_d

    .line 263
    or-int/lit8 v0, v0, 0x1

    .line 264
    :cond_d
    return v0
.end method

.method private readAll(Ljava/io/InputStream;[B)I
    .registers 8
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    array-length v0, p2

    .line 634
    .local v0, "left":I
    :cond_1
    :goto_1
    if-lez v0, :cond_4f

    .line 635
    array-length v2, p2

    sub-int/2addr v2, v0

    invoke-virtual {p1, p2, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 636
    .local v1, "ret":I
    if-gtz v1, :cond_25

    .line 637
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "read failed, socket might closed or timeout, read ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 638
    :cond_25
    sub-int/2addr v0, v1

    .line 639
    if-eqz v0, :cond_1

    .line 640
    const-string v2, "BluetoothSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readAll() looping, read partial size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expect size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 643
    .end local v1    # "ret":I
    :cond_4f
    array-length v2, p2

    return v2
.end method

.method private readInt(Ljava/io/InputStream;)I
    .registers 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 647
    const/4 v3, 0x4

    new-array v1, v3, [B

    .line 648
    .local v1, "ibytes":[B
    invoke-direct {p0, p1, v1}, readAll(Ljava/io/InputStream;[B)I

    move-result v2

    .line 650
    .local v2, "ret":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 651
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 652
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    return v3
.end method

.method private waitSocketSignal(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 13
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    sget v8, SOCK_SIGNAL_SIZE:I

    new-array v5, v8, [B

    .line 614
    .local v5, "sig":[B
    invoke-direct {p0, p1, v5}, readAll(Ljava/io/InputStream;[B)I

    move-result v4

    .line 616
    .local v4, "ret":I
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 617
    .local v2, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 618
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 619
    .local v6, "size":I
    sget v8, SOCK_SIGNAL_SIZE:I

    if-eq v6, v8, :cond_34

    .line 620
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Connection failure, wrong signal size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 621
    :cond_34
    const/4 v8, 0x6

    new-array v1, v8, [B

    .line 622
    .local v1, "addr":[B
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 623
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 624
    .local v3, "channel":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 625
    .local v7, "status":I
    invoke-direct {p0, v1}, convertAddr([B)Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, "RemoteAddr":Ljava/lang/String;
    if-eqz v7, :cond_61

    .line 629
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Connection failure, status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 630
    :cond_61
    return-object v0
.end method


# virtual methods
.method accept(I)Landroid/bluetooth/BluetoothSocket;
    .registers 7
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    iget-object v2, p0, mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v3, Landroid/bluetooth/BluetoothSocket$SocketState;->LISTENING:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-eq v2, v3, :cond_e

    new-instance v2, Ljava/io/IOException;

    const-string v3, "bt socket is not in listen state"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 510
    :cond_e
    if-lez p1, :cond_2d

    .line 511
    const-string v2, "BluetoothSocket"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accept() set timeout (ms):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v2, p0, mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2, p1}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 514
    :cond_2d
    iget-object v2, p0, mSocketIS:Ljava/io/InputStream;

    invoke-direct {p0, v2}, waitSocketSignal(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "RemoteAddr":Ljava/lang/String;
    if-lez p1, :cond_3b

    .line 516
    iget-object v2, p0, mSocket:Landroid/net/LocalSocket;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 517
    :cond_3b
    monitor-enter p0

    .line 519
    :try_start_3c
    iget-object v2, p0, mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v3, Landroid/bluetooth/BluetoothSocket$SocketState;->LISTENING:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-eq v2, v3, :cond_4d

    .line 520
    new-instance v2, Ljava/io/IOException;

    const-string v3, "bt socket is not in listen state"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 523
    :catchall_4a
    move-exception v2

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_3c .. :try_end_4c} :catchall_4a

    throw v2

    .line 521
    :cond_4d
    :try_start_4d
    invoke-direct {p0, v0}, acceptSocket(Ljava/lang/String;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    .line 523
    .local v1, "acceptedSocket":Landroid/bluetooth/BluetoothSocket;
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_4a

    .line 524
    return-object v1
.end method

.method available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    iget-object v0, p0, mSocketIS:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method bindListen()I
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x4d

    const/4 v10, -0x1

    .line 436
    iget v1, p0, mPort:I

    invoke-static {v1}, Landroid/sec/enterprise/BluetoothUtils;->isSvcRfComPortNumberBlockedBySecurityPolicy(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 437
    const-string v1, "BluetoothSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not allowed by MDM policy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :goto_2c
    return v10

    .line 444
    :cond_2d
    const-string v1, "1"

    const-string/jumbo v2, "service.bt.security.policy.mode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 447
    const-string v1, "BluetoothSocket"

    const-string v2, "connect not allowed ; IT Policy HandsfreeOnly"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 453
    :cond_68
    iget-object v1, p0, mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v1, v2, :cond_70

    move v10, v11

    goto :goto_2c

    .line 454
    :cond_70
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 455
    .local v0, "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    if-nez v0, :cond_82

    .line 456
    const-string v1, "BluetoothSocket"

    const-string v2, "bindListen fail, reason: bluetooth is off"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 460
    :cond_82
    :try_start_82
    iget v1, p0, mType:I

    iget-object v2, p0, mServiceName:Ljava/lang/String;

    iget-object v3, p0, mUuid:Landroid/os/ParcelUuid;

    iget v4, p0, mPort:I

    invoke-direct {p0}, getSecurityFlags()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetooth;->createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, mPfd:Landroid/os/ParcelFileDescriptor;
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_94} :catch_c5

    .line 469
    :try_start_94
    monitor-enter p0
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_95} :catch_e0

    .line 470
    :try_start_95
    const-string v1, "BluetoothSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindListen(), SocketState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPfd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v1, p0, mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-eq v1, v2, :cond_d6

    monitor-exit p0
    :try_end_c2
    .catchall {:try_start_95 .. :try_end_c2} :catchall_dd

    move v10, v11

    goto/16 :goto_2c

    .line 462
    :catch_c5
    move-exception v7

    .line 463
    .local v7, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothSocket"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 473
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_d6
    :try_start_d6
    iget-object v1, p0, mPfd:Landroid/os/ParcelFileDescriptor;

    if-nez v1, :cond_106

    monitor-exit p0

    goto/16 :goto_2c

    .line 480
    :catchall_dd
    move-exception v1

    monitor-exit p0
    :try_end_df
    .catchall {:try_start_d6 .. :try_end_df} :catchall_dd

    :try_start_df
    throw v1
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e0} :catch_e0

    .line 492
    :catch_e0
    move-exception v7

    .line 493
    .local v7, "e":Ljava/io/IOException;
    iget-object v1, p0, mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_ec

    .line 495
    :try_start_e5
    iget-object v1, p0, mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_ea} :catch_182

    .line 499
    :goto_ea
    iput-object v12, p0, mPfd:Landroid/os/ParcelFileDescriptor;

    .line 501
    :cond_ec
    const-string v1, "BluetoothSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindListen, fail to get port number, exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 474
    .end local v7    # "e":Ljava/io/IOException;
    :cond_106
    :try_start_106
    iget-object v1, p0, mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    .line 475
    .local v9, "fd":Ljava/io/FileDescriptor;
    const-string v1, "BluetoothSocket"

    const-string v2, "bindListen(), new LocalSocket "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1, v9}, Landroid/net/LocalSocket;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, mSocket:Landroid/net/LocalSocket;

    .line 477
    const-string v1, "BluetoothSocket"

    const-string v2, "bindListen(), new LocalSocket.getInputStream() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v1, p0, mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, mSocketIS:Ljava/io/InputStream;

    .line 479
    iget-object v1, p0, mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, mSocketOS:Ljava/io/OutputStream;

    .line 480
    monitor-exit p0
    :try_end_132
    .catchall {:try_start_106 .. :try_end_132} :catchall_dd

    .line 481
    :try_start_132
    const-string v1, "BluetoothSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindListen(), readInt mSocketIS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mSocketIS:Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v1, p0, mSocketIS:Ljava/io/InputStream;

    invoke-direct {p0, v1}, readInt(Ljava/io/InputStream;)I

    move-result v6

    .line 483
    .local v6, "channel":I
    monitor-enter p0
    :try_end_153
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_153} :catch_e0

    .line 484
    :try_start_153
    iget-object v1, p0, mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v1, v2, :cond_15d

    .line 485
    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->LISTENING:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v1, p0, mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 486
    :cond_15d
    monitor-exit p0
    :try_end_15e
    .catchall {:try_start_153 .. :try_end_15e} :catchall_17f

    .line 487
    :try_start_15e
    const-string v1, "BluetoothSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget v1, p0, mPort:I

    if-ne v1, v10, :cond_17c

    .line 489
    iput v6, p0, mPort:I
    :try_end_17c
    .catch Ljava/io/IOException; {:try_start_15e .. :try_end_17c} :catch_e0

    .line 491
    :cond_17c
    const/4 v10, 0x0

    .local v10, "ret":I
    goto/16 :goto_2c

    .line 486
    .end local v10    # "ret":I
    :catchall_17f
    move-exception v1

    :try_start_180
    monitor-exit p0
    :try_end_181
    .catchall {:try_start_180 .. :try_end_181} :catchall_17f

    :try_start_181
    throw v1
    :try_end_182
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_182} :catch_e0

    .line 496
    .end local v6    # "channel":I
    .end local v9    # "fd":Ljava/io/FileDescriptor;
    .restart local v7    # "e":Ljava/io/IOException;
    :catch_182
    move-exception v8

    .line 497
    .local v8, "e1":Ljava/io/IOException;
    const-string v1, "BluetoothSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindListen, close mPfd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ea
.end method

.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    const-string v1, "BluetoothSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close() in, this: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", channel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v1, p0, mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v1, v2, :cond_37

    .line 600
    :goto_36
    return-void

    .line 570
    :cond_37
    monitor-enter p0

    .line 572
    :try_start_38
    iget-object v1, p0, mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v1, v2, :cond_43

    .line 573
    monitor-exit p0

    goto :goto_36

    .line 598
    :catchall_40
    move-exception v1

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_40

    throw v1

    .line 574
    :cond_43
    :try_start_43
    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v1, p0, mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 575
    const-string v1, "BluetoothSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close() this: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", channel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSocketIS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mSocketIS:Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSocketOS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mSocketOS:Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mSocket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v1, p0, mSocket:Landroid/net/LocalSocket;

    if-eqz v1, :cond_d6

    .line 578
    const-string v1, "BluetoothSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing mSocket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v1, p0, mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->shutdownInput()V

    .line 580
    iget-object v1, p0, mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->shutdownOutput()V

    .line 581
    iget-object v1, p0, mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    .line 582
    const/4 v1, 0x0

    iput-object v1, p0, mSocket:Landroid/net/LocalSocket;

    .line 584
    iget-object v1, p0, mFdForClose:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_d6

    iget-object v1, p0, mFdForClose:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z
    :try_end_c9
    .catchall {:try_start_43 .. :try_end_c9} :catchall_40

    move-result v1

    if-eqz v1, :cond_d6

    .line 587
    :try_start_cc
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, mFdForClose:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_d3
    .catch Landroid/system/ErrnoException; {:try_start_cc .. :try_end_d3} :catch_e5
    .catchall {:try_start_cc .. :try_end_d3} :catchall_40

    .line 591
    :goto_d3
    const/4 v1, 0x0

    :try_start_d4
    iput-object v1, p0, mFdForClose:Ljava/io/FileDescriptor;

    .line 594
    :cond_d6
    iget-object v1, p0, mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_e2

    .line 595
    iget-object v1, p0, mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 596
    const/4 v1, 0x0

    iput-object v1, p0, mPfd:Landroid/os/ParcelFileDescriptor;

    .line 598
    :cond_e2
    monitor-exit p0

    goto/16 :goto_36

    .line 588
    :catch_e5
    move-exception v0

    .line 589
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;
    :try_end_e9
    .catchall {:try_start_d4 .. :try_end_e9} :catchall_40

    goto :goto_d3
.end method

.method public connect()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    iget-object v1, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_c

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Connect is called on null device"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 368
    :cond_c
    iget-object v1, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, mPort:I

    iget v3, p0, mType:I

    iget-object v4, p0, mUuid:Landroid/os/ParcelUuid;

    invoke-static {v1, v2, v3, v4}, Landroid/sec/enterprise/BluetoothUtils;->isSocketAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelUuid;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 369
    const-string v1, "BluetoothSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not allowed by MDM policy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Permission Denied"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 376
    :cond_42
    const-string v1, "1"

    const-string/jumbo v2, "service.bt.security.policy.mode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    .line 379
    const-string v1, "BluetoothSocket"

    const-string v2, "connect not allowed ; IT Policy HandsfreeOnly"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :goto_7c
    return-void

    .line 385
    :cond_7d
    :try_start_7d
    iget-object v1, p0, mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v1, v2, :cond_b9

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "socket closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_8c} :catch_8c

    .line 421
    :catch_8c
    move-exception v7

    .line 422
    .local v7, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothSocket"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to send RPC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 386
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_b9
    :try_start_b9
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 387
    .local v0, "bluetoothProxy":Landroid/bluetooth/IBluetooth;
    if-nez v0, :cond_cc

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Bluetooth is off"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 388
    :cond_cc
    iget-object v1, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, mType:I

    iget-object v3, p0, mUuid:Landroid/os/ParcelUuid;

    iget v4, p0, mPort:I

    invoke-direct {p0}, getSecurityFlags()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetooth;->connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, mPfd:Landroid/os/ParcelFileDescriptor;

    .line 390
    monitor-enter p0
    :try_end_df
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_df} :catch_8c

    .line 392
    :try_start_df
    const-string v1, "BluetoothSocket"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect(), SocketState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPfd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v1, p0, mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v1, v2, :cond_117

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "socket closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 399
    :catchall_114
    move-exception v1

    monitor-exit p0
    :try_end_116
    .catchall {:try_start_df .. :try_end_116} :catchall_114

    :try_start_116
    throw v1
    :try_end_117
    .catch Landroid/os/RemoteException; {:try_start_116 .. :try_end_117} :catch_8c

    .line 394
    :cond_117
    :try_start_117
    iget-object v1, p0, mPfd:Landroid/os/ParcelFileDescriptor;

    if-nez v1, :cond_123

    new-instance v1, Ljava/io/IOException;

    const-string v2, "bt socket connect failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 395
    :cond_123
    iget-object v1, p0, mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    .line 396
    .local v8, "fd":Ljava/io/FileDescriptor;
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1, v8}, Landroid/net/LocalSocket;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, mSocket:Landroid/net/LocalSocket;

    .line 397
    iget-object v1, p0, mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, mSocketIS:Ljava/io/InputStream;

    .line 398
    iget-object v1, p0, mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, mSocketOS:Ljava/io/OutputStream;

    .line 399
    monitor-exit p0
    :try_end_141
    .catchall {:try_start_117 .. :try_end_141} :catchall_114

    .line 400
    :try_start_141
    iget-object v1, p0, mSocketIS:Ljava/io/InputStream;

    invoke-direct {p0, v1}, readInt(Ljava/io/InputStream;)I

    move-result v6

    .line 401
    .local v6, "channel":I
    if-gtz v6, :cond_151

    .line 402
    new-instance v1, Ljava/io/IOException;

    const-string v2, "bt socket connect failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 403
    :cond_151
    iput v6, p0, mPort:I

    .line 404
    iget-object v1, p0, mSocketIS:Ljava/io/InputStream;

    invoke-direct {p0, v1}, waitSocketSignal(Ljava/io/InputStream;)Ljava/lang/String;

    .line 405
    monitor-enter p0
    :try_end_159
    .catch Landroid/os/RemoteException; {:try_start_141 .. :try_end_159} :catch_8c

    .line 407
    :try_start_159
    iget-object v1, p0, mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v2, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v1, v2, :cond_16a

    .line 408
    new-instance v1, Ljava/io/IOException;

    const-string v2, "bt socket closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 420
    :catchall_167
    move-exception v1

    monitor-exit p0
    :try_end_169
    .catchall {:try_start_159 .. :try_end_169} :catchall_167

    :try_start_169
    throw v1
    :try_end_16a
    .catch Landroid/os/RemoteException; {:try_start_169 .. :try_end_16a} :catch_8c

    .line 409
    :cond_16a
    :try_start_16a
    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    iput-object v1, p0, mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    .line 412
    iget-object v1, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->setRfcommConnected(Z)V

    .line 417
    const-string v1, "Socket Connected"

    iget-object v2, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v3, p0, mPort:I

    iget v4, p0, mType:I

    invoke-static {v1, v2, v3, v4}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothSocketLog(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;II)V

    .line 420
    monitor-exit p0
    :try_end_180
    .catchall {:try_start_16a .. :try_end_180} :catchall_167

    goto/16 :goto_7c
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 253
    :try_start_0
    invoke-virtual {p0}, close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 255
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 257
    return-void

    .line 255
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 539
    iget-object v0, p0, mSocketOS:Ljava/io/OutputStream;

    if-nez v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "flush is called on null OutputStream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_c
    iget-object v0, p0, mSocketOS:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 542
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v1, p0, mPort:I

    iget v2, p0, mType:I

    iget-object v3, p0, mUuid:Landroid/os/ParcelUuid;

    invoke-static {v0, v1, v2, v3}, Landroid/sec/enterprise/BluetoothUtils;->isSocketAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 286
    const-string v0, "BluetoothSocket"

    const-string v1, "Data transfer is not allowed by MDM policy - getInputStream()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission Denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_1d
    const-string v0, "1"

    const-string/jumbo v1, "service.bt.security.policy.mode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 295
    const-string v0, "BluetoothSocket"

    const-string v1, "Data transfer is not allowed by IT policy - getInputStream()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission Denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_5f
    iget-object v0, p0, mInputStream:Landroid/bluetooth/BluetoothInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v1, p0, mPort:I

    iget v2, p0, mType:I

    iget-object v3, p0, mUuid:Landroid/os/ParcelUuid;

    invoke-static {v0, v1, v2, v3}, Landroid/sec/enterprise/BluetoothUtils;->isSocketAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 314
    const-string v0, "BluetoothSocket"

    const-string v1, "Data transfer is not allowed by MDM policy - getOutputStream()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission Denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_1d
    const-string v0, "1"

    const-string/jumbo v1, "service.bt.security.policy.mode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 323
    const-string v0, "BluetoothSocket"

    const-string v1, "Data transfer is not allowed by IT policy - getInputStream()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Permission Denied"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_5f
    iget-object v0, p0, mOutputStream:Landroid/bluetooth/BluetoothOutputStream;

    return-object v0
.end method

.method getPort()I
    .registers 2

    .prologue
    .line 606
    iget v0, p0, mPort:I

    return v0
.end method

.method public getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public isConnected()Z
    .registers 3

    .prologue
    .line 338
    iget-object v0, p0, mSocketState:Landroid/bluetooth/BluetoothSocket$SocketState;

    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method read([BII)I
    .registers 8
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    iget-object v1, p0, mSocketIS:Ljava/io/InputStream;

    if-nez v1, :cond_d

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "read is called on null InputStream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 547
    :cond_d
    iget-object v1, p0, mSocketIS:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 548
    .local v0, "ret":I
    if-gez v0, :cond_2e

    .line 549
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bt socket closed, read return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 551
    :cond_2e
    return v0
.end method

.method removeChannel()V
    .registers 1

    .prologue
    .line 603
    return-void
.end method

.method setServiceName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 342
    iput-object p1, p0, mServiceName:Ljava/lang/String;

    .line 343
    return-void
.end method

.method write([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 555
    iget-object v0, p0, mSocketOS:Ljava/io/OutputStream;

    if-nez v0, :cond_d

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "write is called on null OutputStream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_d
    iget-object v0, p0, mSocketOS:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 560
    return p3
.end method
