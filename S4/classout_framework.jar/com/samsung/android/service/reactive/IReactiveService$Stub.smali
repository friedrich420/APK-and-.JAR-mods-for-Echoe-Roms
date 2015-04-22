.class public abstract Lcom/samsung/android/service/reactive/IReactiveService$Stub;
.super Landroid/os/Binder;
.source "IReactiveService.java"

# interfaces
.implements Lcom/samsung/android/service/reactive/IReactiveService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/reactive/IReactiveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/reactive/IReactiveService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.service.reactive.IReactiveService"

.field static final TRANSACTION_getErrorCode:I = 0x8

.field static final TRANSACTION_getFlag:I = 0x2

.field static final TRANSACTION_getServiceSupport:I = 0x1

.field static final TRANSACTION_getString:I = 0x4

.field static final TRANSACTION_sessionAccept:I = 0x6

.field static final TRANSACTION_sessionComplete:I = 0x7

.field static final TRANSACTION_setFlag:I = 0x3

.field static final TRANSACTION_setString:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/reactive/IReactiveService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "com.samsung.android.service.reactive.IReactiveService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/samsung/android/service/reactive/IReactiveService;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/samsung/android/service/reactive/IReactiveService;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/samsung/android/service/reactive/IReactiveService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
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
    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_ae

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_8
    return v4

    .line 45
    :sswitch_9
    const-string v5, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_f
    const-string v5, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, getServiceSupport()I

    move-result v3

    .line 52
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 58
    .end local v3    # "_result":I
    :sswitch_1f
    const-string v5, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, getFlag(I)I

    move-result v3

    .line 62
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 68
    .end local v0    # "_arg0":I
    .end local v3    # "_result":I
    :sswitch_33
    const-string v5, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 74
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, setFlag(IILjava/lang/String;)I

    move-result v3

    .line 76
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 82
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_4f
    const-string v5, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, getString()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 90
    .end local v3    # "_result":Ljava/lang/String;
    :sswitch_5f
    const-string v5, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, setString(Ljava/lang/String;)I

    move-result v3

    .line 94
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 100
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :sswitch_73
    const-string v5, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 103
    .local v0, "_arg0":[B
    invoke-virtual {p0, v0}, sessionAccept([B)[B

    move-result-object v3

    .line 104
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_8

    .line 110
    .end local v0    # "_arg0":[B
    .end local v3    # "_result":[B
    :sswitch_87
    const-string v5, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 113
    .restart local v0    # "_arg0":[B
    invoke-virtual {p0, v0}, sessionComplete([B)I

    move-result v3

    .line 114
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 120
    .end local v0    # "_arg0":[B
    .end local v3    # "_result":I
    :sswitch_9c
    const-string v5, "com.samsung.android.service.reactive.IReactiveService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, getErrorCode()I

    move-result v3

    .line 122
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 41
    nop

    :sswitch_data_ae
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_33
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_5f
        0x6 -> :sswitch_73
        0x7 -> :sswitch_87
        0x8 -> :sswitch_9c
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
