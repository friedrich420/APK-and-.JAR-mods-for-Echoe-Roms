.class public abstract Landroid/dirEncryption/IDirEncryptionManagerCallBack$Stub;
.super Landroid/os/Binder;
.source "IDirEncryptionManagerCallBack.java"

# interfaces
.implements Landroid/dirEncryption/IDirEncryptionManagerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/dirEncryption/IDirEncryptionManagerCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/dirEncryption/IDirEncryptionManagerCallBack$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.dirEncryption.IDirEncryptionManagerCallBack"

.field static final TRANSACTION_updateStatus:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.dirEncryption.IDirEncryptionManagerCallBack"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/dirEncryption/IDirEncryptionManagerCallBack;
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
    const-string v1, "android.dirEncryption.IDirEncryptionManagerCallBack"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Landroid/dirEncryption/IDirEncryptionManagerCallBack$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/dirEncryption/IDirEncryptionManagerCallBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 9
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
    const/4 v2, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_28

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 47
    :sswitch_9
    const-string v3, "android.dirEncryption.IDirEncryptionManagerCallBack"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 52
    :sswitch_f
    const-string v3, "android.dirEncryption.IDirEncryptionManagerCallBack"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_26

    move v0, v2

    .line 56
    .local v0, "_arg0":Z
    :goto_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 57
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, updateStatus(ZI)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 54
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :cond_26
    const/4 v0, 0x0

    goto :goto_1b

    .line 43
    :sswitch_data_28
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
