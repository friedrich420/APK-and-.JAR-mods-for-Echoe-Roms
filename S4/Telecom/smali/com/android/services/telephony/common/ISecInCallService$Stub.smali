.class public abstract Lcom/android/services/telephony/common/ISecInCallService$Stub;
.super Landroid/os/Binder;
.source "ISecInCallService.java"

# interfaces
.implements Lcom/android/services/telephony/common/ISecInCallService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/common/ISecInCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/common/ISecInCallService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/android/services/telephony/common/ISecInCallService;
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
    const-string v0, "com.android.services.telephony.common.ISecInCallService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/services/telephony/common/ISecInCallService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/android/services/telephony/common/ISecInCallService;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/android/services/telephony/common/ISecInCallService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/common/ISecInCallService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v1, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 95
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 45
    :sswitch_0
    const-string v0, "com.android.services.telephony.common.ISecInCallService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v0, "com.android.services.telephony.common.ISecInCallService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 53
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ISecInCallService$Stub;->setSecInCallAdapter(Lcom/android/services/telephony/common/ISecInCallAdapter;)V

    goto :goto_0

    .line 52
    :cond_0
    const-string v0, "com.android.services.telephony.common.ISecInCallAdapter"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v3, v0, Lcom/android/services/telephony/common/ISecInCallAdapter;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/android/services/telephony/common/ISecInCallAdapter;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/services/telephony/common/ISecInCallAdapter$Stub$Proxy;

    invoke-direct {v0, v2}, Lcom/android/services/telephony/common/ISecInCallAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    .line 58
    :sswitch_2
    const-string v0, "com.android.services.telephony.common.ISecInCallService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 62
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/services/telephony/common/ISecInCallService$Stub;->onModifyCall(ZILjava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 70
    :sswitch_3
    const-string v0, "com.android.services.telephony.common.ISecInCallService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecInCallService$Stub;->answerRingingCallInUI()V

    goto :goto_0

    .line 76
    :sswitch_4
    const-string v0, "com.android.services.telephony.common.ISecInCallService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {p0, v0, v2}, Lcom/android/services/telephony/common/ISecInCallService$Stub;->onPostDialPause(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :sswitch_5
    const-string v0, "com.android.services.telephony.common.ISecInCallService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {p0, v0, v2}, Lcom/android/services/telephony/common/ISecInCallService$Stub;->onPostDialPauseComplete(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
