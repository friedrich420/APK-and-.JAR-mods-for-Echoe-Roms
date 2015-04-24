.class public abstract Lcom/android/services/telephony/common/ISecInCallAdapter$Stub;
.super Landroid/os/Binder;
.source "ISecInCallAdapter.java"

# interfaces
.implements Lcom/android/services/telephony/common/ISecInCallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/common/ISecInCallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/common/ISecInCallAdapter$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.android.services.telephony.common.ISecInCallAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/services/telephony/common/ISecInCallAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 213
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 45
    :sswitch_0
    const-string v0, "com.android.services.telephony.common.ISecInCallAdapter"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v2, "com.android.services.telephony.common.ISecInCallAdapter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 55
    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/android/services/telephony/common/ISecInCallAdapter$Stub;->answerCallWithSpeaker(Ljava/lang/String;Z)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    :sswitch_2
    const-string v2, "com.android.services.telephony.common.ISecInCallAdapter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecInCallAdapter$Stub;->checkVoiceRecorder()Z

    move-result v2

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    :sswitch_3
    const-string v2, "com.android.services.telephony.common.ISecInCallAdapter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecInCallAdapter$Stub;->checkVideoRecorder()Z

    move-result v2

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    :sswitch_4
    const-string v2, "com.android.services.telephony.common.ISecInCallAdapter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecInCallAdapter$Stub;->shouldVibrate()Z

    move-result v2

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 85
    :sswitch_5
    const-string v0, "com.android.services.telephony.common.ISecInCallAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecInCallAdapter$Stub;->checkDrivelink()V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 92
    :sswitch_6
    const-string v2, "com.android.services.telephony.common.ISecInCallAdapter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecInCallAdapter$Stub;->isRoamingArea()Z

    move-result v2

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 100
    :sswitch_7
    const-string v0, "com.android.services.telephony.common.ISecInCallAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ISecInCallAdapter$Stub;->requestModifyCall(I)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 109
    :sswitch_8
    const-string v2, "com.android.services.telephony.common.ISecInCallAdapter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    .line 113
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {p0, v0, v2}, Lcom/android/services/telephony/common/ISecInCallAdapter$Stub;->respondModifyCall(ZLjava/lang/String;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 120
    :sswitch_9
    const-string v2, "com.android.services.telephony.common.ISecInCallAdapter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 123
    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ISecInCallAdapter$Stub;->InCallUIWindowFocusNotify(Z)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 129
    :sswitch_a
    const-string v2, "com.android.services.telephony.common.ISecInCallAdapter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecInCallAdapter$Stub;->isBluetoothAvailable()Z

    move-result v2

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v2, :cond_7

    move v0, v1

    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 137
    :sswitch_b
    const-string v0, "com.android.services.telephony.common.ISecInCallAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ISecInCallAdapter$Stub;->setMultiSimDSDAForegoundPhoneId(I)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 146
    :sswitch_c
    const-string v0, "com.android.services.telephony.common.ISecInCallAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecInCallAdapter$Stub;->silentRinger()V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 153
    :sswitch_d
    const-string v0, "com.android.services.telephony.common.ISecInCallAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecInCallAdapter$Stub;->explicitCallTransfer()V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 160
    :sswitch_e
    const-string v2, "com.android.services.telephony.common.ISecInCallAdapter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    move v0, v1

    .line 163
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ISecInCallAdapter$Stub;->setPSBarring(Z)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 169
    :sswitch_f
    const-string v2, "com.android.services.telephony.common.ISecInCallAdapter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    move v0, v1

    .line 172
    :cond_9
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ISecInCallAdapter$Stub;->storeSpeakerState(Z)V

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 178
    :sswitch_10
    const-string v0, "com.android.services.telephony.common.ISecInCallAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecInCallAdapter$Stub;->setModifiedCall()V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 185
    :sswitch_11
    const-string v2, "com.android.services.telephony.common.ISecInCallAdapter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    move v0, v1

    .line 188
    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ISecInCallAdapter$Stub;->turnOnBluetooth(Z)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 194
    :sswitch_12
    const-string v0, "com.android.services.telephony.common.ISecInCallAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ISecInCallAdapter$Stub;->getNameFromFDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    :sswitch_13
    const-string v0, "com.android.services.telephony.common.ISecInCallAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ISecInCallAdapter$Stub;->getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
