.class public abstract Lcom/android/services/telephony/common/ISecConnectionService$Stub;
.super Landroid/os/Binder;
.source "ISecConnectionService.java"

# interfaces
.implements Lcom/android/services/telephony/common/ISecConnectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/common/ISecConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/common/ISecConnectionService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/android/services/telephony/common/ISecConnectionService;
    .locals 2

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v0, "com.android.services.telephony.common.ISecConnectionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/services/telephony/common/ISecConnectionService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/android/services/telephony/common/ISecConnectionService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/android/services/telephony/common/ISecConnectionService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/common/ISecConnectionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 45
    :sswitch_0
    const-string v0, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v2, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 53
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->setSecConnectionServiceAdapter(Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 52
    :cond_0
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub$Proxy;

    invoke-direct {v0, v2}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    .line 59
    :sswitch_2
    const-string v2, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    sget-object v0, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 67
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->transfer(Landroid/telecom/PhoneAccountHandle;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 73
    :sswitch_3
    const-string v0, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->requestModifyCall(I)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 82
    :sswitch_4
    const-string v0, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 86
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {p0, v0, v2}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->respondModifyCall(ZLjava/lang/String;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 84
    goto :goto_2

    .line 93
    :sswitch_5
    const-string v0, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->requestTPhoneStart(I)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 102
    :sswitch_6
    const-string v0, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->requestTPhoneRingtoneUri()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 110
    :sswitch_7
    const-string v0, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->getSilence()Z

    move-result v0

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v0, :cond_4

    move v2, v1

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 118
    :sswitch_8
    const-string v0, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->getNameFromFDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :sswitch_9
    const-string v0, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :sswitch_a
    const-string v0, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->sendEmptyFlash()V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 145
    :sswitch_b
    const-string v0, "com.android.services.telephony.common.ISecConnectionService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 149
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    move v2, v1

    .line 150
    :cond_5
    invoke-virtual {p0, v0, v2}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->setAudioEffect(ZZ)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 147
    goto :goto_3

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
