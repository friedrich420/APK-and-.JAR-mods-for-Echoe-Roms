.class public abstract Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;
.super Landroid/os/Binder;
.source "ISecConnectionServiceAdapter.java"

# interfaces
.implements Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

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
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 281
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 45
    :sswitch_0
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v2, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    sget-object v0, Lcom/android/services/telephony/common/SecCallExtra;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/SecCallExtra;

    .line 60
    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->setSecCallExtra(Ljava/lang/String;Lcom/android/services/telephony/common/SecCallExtra;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    invoke-virtual {v0, p3, v6}, Lcom/android/services/telephony/common/SecCallExtra;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    :sswitch_2
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v0, :cond_2

    .line 79
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {v0, p3, v6}, Lcom/android/services/telephony/common/SecCallExtra;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    :sswitch_3
    const-string v2, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 94
    sget-object v0, Lcom/android/services/telephony/common/SecCallExtra;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/SecCallExtra;

    .line 99
    :cond_3
    invoke-virtual {p0, v2, v0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->updateSecCallExtra(Ljava/lang/String;Lcom/android/services/telephony/common/SecCallExtra;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v0, :cond_4

    .line 102
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    invoke-virtual {v0, p3, v6}, Lcom/android/services/telephony/common/SecCallExtra;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 106
    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 112
    :sswitch_4
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v6

    .line 118
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->onModifyCall(Ljava/lang/String;ZILjava/lang/String;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 116
    goto :goto_1

    .line 127
    :sswitch_5
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->answerRingingCallInUI()V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 134
    :sswitch_6
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v2, v2

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    move v1, v6

    .line 141
    :cond_6
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->onPostDialPause(Ljava/lang/String;CZ)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 147
    :sswitch_7
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v1, v1

    .line 152
    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->onPostDialPauseComplete(Ljava/lang/String;C)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 158
    :sswitch_8
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v1, v6

    .line 161
    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->setMute(Z)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 167
    :sswitch_9
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->getMute()Z

    move-result v0

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v0, :cond_8

    move v1, v6

    :cond_8
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 175
    :sswitch_a
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    move v1, v6

    .line 178
    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->turnOnSpeaker(Z)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 184
    :sswitch_b
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->isSpeakerOn()Z

    move-result v0

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v0, :cond_a

    move v1, v6

    :cond_a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 192
    :sswitch_c
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    move v1, v6

    .line 195
    :cond_b
    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->turnOnBluetooth(Z)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 201
    :sswitch_d
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    move v1, v6

    .line 204
    :cond_c
    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->enableExpandedView(Z)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 210
    :sswitch_e
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    move v1, v6

    .line 213
    :cond_d
    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->enableSystemBarNavigation(Z)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 219
    :sswitch_f
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, p0

    .line 226
    invoke-virtual/range {v0 .. v5}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->saveParticipantLog(Ljava/lang/String;JJ)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 232
    :sswitch_10
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->saveModifiedCallLog(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 241
    :sswitch_11
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->onEpdgStateChanged(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 250
    :sswitch_12
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->isLowBatt()Z

    move-result v0

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    if-eqz v0, :cond_e

    move v1, v6

    :cond_e
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 258
    :sswitch_13
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->silence()V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 265
    :sswitch_14
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->restartRingingOrCallWaiting()V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 272
    :sswitch_15
    const-string v0, "com.android.services.telephony.common.ISecConnectionServiceAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 275
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ISecConnectionServiceAdapter$Stub;->selectSimForEmergency(I)I

    move-result v0

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 41
    nop

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
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
