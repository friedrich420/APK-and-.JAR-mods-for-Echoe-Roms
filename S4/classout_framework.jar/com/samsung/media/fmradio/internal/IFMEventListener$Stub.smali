.class public abstract Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;
.super Landroid/os/Binder;
.source "IFMEventListener.java"

# interfaces
.implements Lcom/samsung/media/fmradio/internal/IFMEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/media/fmradio/internal/IFMEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.media.fmradio.internal.IFMEventListener"

.field static final TRANSACTION_earPhoneConnected:I = 0x8

.field static final TRANSACTION_earPhoneDisconnected:I = 0x9

.field static final TRANSACTION_onAFReceived:I = 0xf

.field static final TRANSACTION_onAFStarted:I = 0xe

.field static final TRANSACTION_onChannelFound:I = 0x3

.field static final TRANSACTION_onOff:I = 0x2

.field static final TRANSACTION_onOn:I = 0x1

.field static final TRANSACTION_onPIECCReceived:I = 0x12

.field static final TRANSACTION_onRDSDisabled:I = 0xd

.field static final TRANSACTION_onRDSEnabled:I = 0xc

.field static final TRANSACTION_onRDSReceived:I = 0xa

.field static final TRANSACTION_onRTPlusReceived:I = 0xb

.field static final TRANSACTION_onScanFinished:I = 0x6

.field static final TRANSACTION_onScanStarted:I = 0x4

.field static final TRANSACTION_onScanStopped:I = 0x5

.field static final TRANSACTION_onTune:I = 0x7

.field static final TRANSACTION_recFinish:I = 0x11

.field static final TRANSACTION_volumeLock:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/media/fmradio/internal/IFMEventListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_3
    return-object v0

    .line 31
    :cond_4
    const-string v1, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/media/fmradio/internal/IFMEventListener;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Lcom/samsung/media/fmradio/internal/IFMEventListener;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_126

    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    .line 47
    :sswitch_9
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v10

    .line 48
    goto :goto_8

    .line 52
    :sswitch_10
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, onOn()V

    move v0, v10

    .line 54
    goto :goto_8

    .line 58
    :sswitch_1a
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 61
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, onOff(I)V

    move v0, v10

    .line 62
    goto :goto_8

    .line 66
    .end local v1    # "_arg0":I
    :sswitch_28
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 69
    .local v8, "_arg0":J
    invoke-virtual {p0, v8, v9}, onChannelFound(J)V

    move v0, v10

    .line 70
    goto :goto_8

    .line 74
    .end local v8    # "_arg0":J
    :sswitch_36
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, onScanStarted()V

    move v0, v10

    .line 76
    goto :goto_8

    .line 80
    :sswitch_40
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 83
    .local v7, "_arg0_length":I
    if-gez v7, :cond_54

    .line 84
    const/4 v1, 0x0

    .line 89
    .local v1, "_arg0":[J
    :goto_4c
    invoke-virtual {p0, v1}, onScanStopped([J)V

    .line 90
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    move v0, v10

    .line 91
    goto :goto_8

    .line 87
    .end local v1    # "_arg0":[J
    :cond_54
    new-array v1, v7, [J

    .restart local v1    # "_arg0":[J
    goto :goto_4c

    .line 95
    .end local v1    # "_arg0":[J
    .end local v7    # "_arg0_length":I
    :sswitch_57
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 98
    .restart local v7    # "_arg0_length":I
    if-gez v7, :cond_6b

    .line 99
    const/4 v1, 0x0

    .line 104
    .restart local v1    # "_arg0":[J
    :goto_63
    invoke-virtual {p0, v1}, onScanFinished([J)V

    .line 105
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    move v0, v10

    .line 106
    goto :goto_8

    .line 102
    .end local v1    # "_arg0":[J
    :cond_6b
    new-array v1, v7, [J

    .restart local v1    # "_arg0":[J
    goto :goto_63

    .line 110
    .end local v1    # "_arg0":[J
    .end local v7    # "_arg0_length":I
    :sswitch_6e
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 113
    .restart local v8    # "_arg0":J
    invoke-virtual {p0, v8, v9}, onTune(J)V

    move v0, v10

    .line 114
    goto :goto_8

    .line 118
    .end local v8    # "_arg0":J
    :sswitch_7c
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, earPhoneConnected()V

    move v0, v10

    .line 120
    goto :goto_8

    .line 124
    :sswitch_86
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, earPhoneDisconnected()V

    move v0, v10

    .line 126
    goto/16 :goto_8

    .line 130
    :sswitch_91
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 134
    .restart local v8    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v8, v9, v2, v3}, onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 138
    goto/16 :goto_8

    .line 142
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg0":J
    :sswitch_a8
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 146
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 150
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 152
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 154
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg5":I
    move-object v0, p0

    .line 155
    invoke-virtual/range {v0 .. v6}, onRTPlusReceived(IIIIII)V

    move v0, v10

    .line 156
    goto/16 :goto_8

    .line 160
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    :sswitch_cc
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, onRDSEnabled()V

    move v0, v10

    .line 162
    goto/16 :goto_8

    .line 166
    :sswitch_d7
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, onRDSDisabled()V

    move v0, v10

    .line 168
    goto/16 :goto_8

    .line 172
    :sswitch_e2
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, onAFStarted()V

    move v0, v10

    .line 174
    goto/16 :goto_8

    .line 178
    :sswitch_ed
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 181
    .restart local v8    # "_arg0":J
    invoke-virtual {p0, v8, v9}, onAFReceived(J)V

    move v0, v10

    .line 182
    goto/16 :goto_8

    .line 186
    .end local v8    # "_arg0":J
    :sswitch_fc
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, volumeLock()V

    move v0, v10

    .line 188
    goto/16 :goto_8

    .line 192
    :sswitch_107
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, recFinish()V

    move v0, v10

    .line 194
    goto/16 :goto_8

    .line 198
    :sswitch_112
    const-string v0, "com.samsung.media.fmradio.internal.IFMEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 202
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 203
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, onPIECCReceived(II)V

    move v0, v10

    .line 204
    goto/16 :goto_8

    .line 43
    nop

    :sswitch_data_126
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1a
        0x3 -> :sswitch_28
        0x4 -> :sswitch_36
        0x5 -> :sswitch_40
        0x6 -> :sswitch_57
        0x7 -> :sswitch_6e
        0x8 -> :sswitch_7c
        0x9 -> :sswitch_86
        0xa -> :sswitch_91
        0xb -> :sswitch_a8
        0xc -> :sswitch_cc
        0xd -> :sswitch_d7
        0xe -> :sswitch_e2
        0xf -> :sswitch_ed
        0x10 -> :sswitch_fc
        0x11 -> :sswitch_107
        0x12 -> :sswitch_112
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
