.class public abstract Lcom/android/internal/view/IInputMethod$Stub;
.super Landroid/os/Binder;
.source "IInputMethod.java"

# interfaces
.implements Lcom/android/internal/view/IInputMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/IInputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputMethod$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethod"

.field static final TRANSACTION_attachToken:I = 0x1

.field static final TRANSACTION_bindInput:I = 0x2

.field static final TRANSACTION_changeInputMethodSubtype:I = 0xc

.field static final TRANSACTION_createSession:I = 0x6

.field static final TRANSACTION_hideSoftInput:I = 0xa

.field static final TRANSACTION_minimizeSoftInput:I = 0xb

.field static final TRANSACTION_restartInput:I = 0x5

.field static final TRANSACTION_revokeSession:I = 0x8

.field static final TRANSACTION_setSessionEnabled:I = 0x7

.field static final TRANSACTION_showSoftInput:I = 0x9

.field static final TRANSACTION_startInput:I = 0x4

.field static final TRANSACTION_unbindInput:I = 0x3

.field static final TRANSACTION_updateFloatingState:I = 0xe

.field static final TRANSACTION_updateWacomState:I = 0xd


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.android.internal.view.IInputMethod"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethod;
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
    const-string v1, "com.android.internal.view.IInputMethod"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Lcom/android/internal/view/IInputMethod;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Lcom/android/internal/view/IInputMethod$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/view/IInputMethod$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sparse-switch p1, :sswitch_data_150

    .line 208
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 47
    :sswitch_9
    const-string v3, "com.android.internal.view.IInputMethod"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 52
    :sswitch_f
    const-string v3, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 55
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, attachToken(Landroid/os/IBinder;)V

    goto :goto_8

    .line 60
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_1c
    const-string v3, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_33

    .line 63
    sget-object v3, Landroid/view/inputmethod/InputBinding;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputBinding;

    .line 68
    .local v0, "_arg0":Landroid/view/inputmethod/InputBinding;
    :goto_2f
    invoke-virtual {p0, v0}, bindInput(Landroid/view/inputmethod/InputBinding;)V

    goto :goto_8

    .line 66
    .end local v0    # "_arg0":Landroid/view/inputmethod/InputBinding;
    :cond_33
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/inputmethod/InputBinding;
    goto :goto_2f

    .line 73
    .end local v0    # "_arg0":Landroid/view/inputmethod/InputBinding;
    :sswitch_35
    const-string v3, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, unbindInput()V

    goto :goto_8

    .line 79
    :sswitch_3e
    const-string v3, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v0

    .line 83
    .local v0, "_arg0":Lcom/android/internal/view/IInputContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5d

    .line 84
    sget-object v3, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/EditorInfo;

    .line 89
    .local v1, "_arg1":Landroid/view/inputmethod/EditorInfo;
    :goto_59
    invoke-virtual {p0, v0, v1}, startInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_8

    .line 87
    .end local v1    # "_arg1":Landroid/view/inputmethod/EditorInfo;
    :cond_5d
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/view/inputmethod/EditorInfo;
    goto :goto_59

    .line 94
    .end local v0    # "_arg0":Lcom/android/internal/view/IInputContext;
    .end local v1    # "_arg1":Landroid/view/inputmethod/EditorInfo;
    :sswitch_5f
    const-string v3, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v0

    .line 98
    .restart local v0    # "_arg0":Lcom/android/internal/view/IInputContext;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7e

    .line 99
    sget-object v3, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/EditorInfo;

    .line 104
    .restart local v1    # "_arg1":Landroid/view/inputmethod/EditorInfo;
    :goto_7a
    invoke-virtual {p0, v0, v1}, restartInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_8

    .line 102
    .end local v1    # "_arg1":Landroid/view/inputmethod/EditorInfo;
    :cond_7e
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/view/inputmethod/EditorInfo;
    goto :goto_7a

    .line 109
    .end local v0    # "_arg0":Lcom/android/internal/view/IInputContext;
    .end local v1    # "_arg1":Landroid/view/inputmethod/EditorInfo;
    :sswitch_80
    const-string v3, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a0

    .line 112
    sget-object v3, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputChannel;

    .line 118
    .local v0, "_arg0":Landroid/view/InputChannel;
    :goto_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputSessionCallback;

    move-result-object v1

    .line 119
    .local v1, "_arg1":Lcom/android/internal/view/IInputSessionCallback;
    invoke-virtual {p0, v0, v1}, createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V

    goto/16 :goto_8

    .line 115
    .end local v0    # "_arg0":Landroid/view/InputChannel;
    .end local v1    # "_arg1":Lcom/android/internal/view/IInputSessionCallback;
    :cond_a0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/InputChannel;
    goto :goto_93

    .line 124
    .end local v0    # "_arg0":Landroid/view/InputChannel;
    :sswitch_a2
    const-string v3, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;

    move-result-object v0

    .line 128
    .local v0, "_arg0":Lcom/android/internal/view/IInputMethodSession;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_bb

    move v1, v2

    .line 129
    .local v1, "_arg1":Z
    :goto_b6
    invoke-virtual {p0, v0, v1}, setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V

    goto/16 :goto_8

    .line 128
    .end local v1    # "_arg1":Z
    :cond_bb
    const/4 v1, 0x0

    goto :goto_b6

    .line 134
    .end local v0    # "_arg0":Lcom/android/internal/view/IInputMethodSession;
    :sswitch_bd
    const-string v3, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/IInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;

    move-result-object v0

    .line 137
    .restart local v0    # "_arg0":Lcom/android/internal/view/IInputMethodSession;
    invoke-virtual {p0, v0}, revokeSession(Lcom/android/internal/view/IInputMethodSession;)V

    goto/16 :goto_8

    .line 142
    .end local v0    # "_arg0":Lcom/android/internal/view/IInputMethodSession;
    :sswitch_cf
    const-string v3, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 146
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_eb

    .line 147
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 152
    .local v1, "_arg1":Landroid/os/ResultReceiver;
    :goto_e6
    invoke-virtual {p0, v0, v1}, showSoftInput(ILandroid/os/ResultReceiver;)V

    goto/16 :goto_8

    .line 150
    .end local v1    # "_arg1":Landroid/os/ResultReceiver;
    :cond_eb
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/ResultReceiver;
    goto :goto_e6

    .line 157
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/ResultReceiver;
    :sswitch_ed
    const-string v3, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 161
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_109

    .line 162
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    .line 167
    .restart local v1    # "_arg1":Landroid/os/ResultReceiver;
    :goto_104
    invoke-virtual {p0, v0, v1}, hideSoftInput(ILandroid/os/ResultReceiver;)V

    goto/16 :goto_8

    .line 165
    .end local v1    # "_arg1":Landroid/os/ResultReceiver;
    :cond_109
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/ResultReceiver;
    goto :goto_104

    .line 172
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/ResultReceiver;
    :sswitch_10b
    const-string v3, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 175
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, minimizeSoftInput(I)V

    goto/16 :goto_8

    .line 180
    .end local v0    # "_arg0":I
    :sswitch_119
    const-string v3, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_131

    .line 183
    sget-object v3, Landroid/view/inputmethod/InputMethodSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    .line 188
    .local v0, "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_12c
    invoke-virtual {p0, v0}, changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    goto/16 :goto_8

    .line 186
    .end local v0    # "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_131
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_12c

    .line 193
    .end local v0    # "_arg0":Landroid/view/inputmethod/InputMethodSubtype;
    :sswitch_133
    const-string v3, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 196
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, updateWacomState(I)V

    goto/16 :goto_8

    .line 201
    .end local v0    # "_arg0":I
    :sswitch_141
    const-string v3, "com.android.internal.view.IInputMethod"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 204
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, updateFloatingState(I)V

    goto/16 :goto_8

    .line 43
    nop

    :sswitch_data_150
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_35
        0x4 -> :sswitch_3e
        0x5 -> :sswitch_5f
        0x6 -> :sswitch_80
        0x7 -> :sswitch_a2
        0x8 -> :sswitch_bd
        0x9 -> :sswitch_cf
        0xa -> :sswitch_ed
        0xb -> :sswitch_10b
        0xc -> :sswitch_119
        0xd -> :sswitch_133
        0xe -> :sswitch_141
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
