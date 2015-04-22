.class public abstract Lcom/android/internal/appwidget/IAppWidgetService$Stub;
.super Landroid/os/Binder;
.source "IAppWidgetService.java"

# interfaces
.implements Lcom/android/internal/appwidget/IAppWidgetService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/appwidget/IAppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.appwidget.IAppWidgetService"

.field static final TRANSACTION_allocateAppWidgetId:I = 0x3

.field static final TRANSACTION_bindAppWidgetId:I = 0x14

.field static final TRANSACTION_bindRemoteViewsService:I = 0x15

.field static final TRANSACTION_createAppWidgetConfigIntentSender:I = 0x9

.field static final TRANSACTION_deleteAllHosts:I = 0x6

.field static final TRANSACTION_deleteAppWidgetId:I = 0x4

.field static final TRANSACTION_deleteHost:I = 0x5

.field static final TRANSACTION_getAllProvidersForProfile:I = 0x19

.field static final TRANSACTION_getAllWidgets:I = 0x18

.field static final TRANSACTION_getAppWidgetIds:I = 0x17

.field static final TRANSACTION_getAppWidgetIdsForHost:I = 0x8

.field static final TRANSACTION_getAppWidgetInfo:I = 0x11

.field static final TRANSACTION_getAppWidgetOptions:I = 0xc

.field static final TRANSACTION_getAppWidgetViews:I = 0x7

.field static final TRANSACTION_getInstalledProvidersForProfile:I = 0x10

.field static final TRANSACTION_hasBindAppWidgetPermission:I = 0x12

.field static final TRANSACTION_notifyAppWidgetViewDataChanged:I = 0xf

.field static final TRANSACTION_partiallyUpdateAppWidgetIds:I = 0xd

.field static final TRANSACTION_setBindAppWidgetPermission:I = 0x13

.field static final TRANSACTION_startListening:I = 0x1

.field static final TRANSACTION_stopListening:I = 0x2

.field static final TRANSACTION_unbindRemoteViewsService:I = 0x16

.field static final TRANSACTION_updateAppWidgetIds:I = 0xa

.field static final TRANSACTION_updateAppWidgetOptions:I = 0xb

.field static final TRANSACTION_updateAppWidgetProvider:I = 0xe


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p0, p0, v0}, attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_4

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_3
    return-object v0

    .line 27
    :cond_4
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/internal/appwidget/IAppWidgetService;

    if-eqz v1, :cond_13

    .line 29
    check-cast v0, Lcom/android/internal/appwidget/IAppWidgetService;

    goto :goto_3

    .line 31
    :cond_13
    new-instance v0, Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 35
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
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_330

    .line 432
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_9
    return v9

    .line 43
    :sswitch_a
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 48
    :sswitch_10
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetHost;

    move-result-object v1

    .line 52
    .local v1, "_arg0":Lcom/android/internal/appwidget/IAppWidgetHost;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 56
    .local v3, "_arg2":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v6, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RemoteViews;>;"
    invoke-virtual {p0, v1, v2, v3, v6}, startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;)[I

    move-result-object v7

    .line 58
    .local v7, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 60
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_9

    .line 65
    .end local v1    # "_arg0":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v6    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RemoteViews;>;"
    .end local v7    # "_result":[I
    :sswitch_38
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 70
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, stopListening(Ljava/lang/String;I)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 76
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_4c
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 81
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, allocateAppWidgetId(Ljava/lang/String;I)I

    move-result v7

    .line 82
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 88
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v7    # "_result":I
    :sswitch_64
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 93
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, deleteAppWidgetId(Ljava/lang/String;I)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 99
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_78
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 104
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, deleteHost(Ljava/lang/String;I)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 110
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_8d
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, deleteAllHosts()V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 117
    :sswitch_9a
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 122
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;

    move-result-object v7

    .line 123
    .local v7, "_result":Landroid/widget/RemoteViews;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v7, :cond_b8

    .line 125
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    invoke-virtual {v7, p3, v9}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 129
    :cond_b8
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 135
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v7    # "_result":Landroid/widget/RemoteViews;
    :sswitch_bd
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 139
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 140
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, getAppWidgetIdsForHost(Ljava/lang/String;I)[I

    move-result-object v7

    .line 141
    .local v7, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .line 147
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v7    # "_result":[I
    :sswitch_d6
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 151
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 153
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 154
    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;

    move-result-object v7

    .line 155
    .local v7, "_result":Landroid/content/IntentSender;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v7, :cond_f8

    .line 157
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    invoke-virtual {v7, p3, v9}, Landroid/content/IntentSender;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 161
    :cond_f8
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 167
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v7    # "_result":Landroid/content/IntentSender;
    :sswitch_fd
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 171
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 173
    .local v2, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_120

    .line 174
    sget-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 179
    .local v3, "_arg2":Landroid/widget/RemoteViews;
    :goto_118
    invoke-virtual {p0, v1, v2, v3}, updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 177
    .end local v3    # "_arg2":Landroid/widget/RemoteViews;
    :cond_120
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/widget/RemoteViews;
    goto :goto_118

    .line 185
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[I
    .end local v3    # "_arg2":Landroid/widget/RemoteViews;
    :sswitch_122
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 191
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_145

    .line 192
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 197
    .local v3, "_arg2":Landroid/os/Bundle;
    :goto_13d
    invoke-virtual {p0, v1, v2, v3}, updateAppWidgetOptions(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 195
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :cond_145
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/Bundle;
    goto :goto_13d

    .line 203
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/os/Bundle;
    :sswitch_147
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 207
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 208
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, getAppWidgetOptions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v7

    .line 209
    .local v7, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    if-eqz v7, :cond_165

    .line 211
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    invoke-virtual {v7, p3, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 215
    :cond_165
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 221
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v7    # "_result":Landroid/os/Bundle;
    :sswitch_16a
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 227
    .local v2, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18d

    .line 228
    sget-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 233
    .local v3, "_arg2":Landroid/widget/RemoteViews;
    :goto_185
    invoke-virtual {p0, v1, v2, v3}, partiallyUpdateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 231
    .end local v3    # "_arg2":Landroid/widget/RemoteViews;
    :cond_18d
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/widget/RemoteViews;
    goto :goto_185

    .line 239
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[I
    .end local v3    # "_arg2":Landroid/widget/RemoteViews;
    :sswitch_18f
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b8

    .line 242
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 248
    .local v1, "_arg0":Landroid/content/ComponentName;
    :goto_1a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1ba

    .line 249
    sget-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    .line 254
    .local v2, "_arg1":Landroid/widget/RemoteViews;
    :goto_1b0
    invoke-virtual {p0, v1, v2}, updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 245
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Landroid/widget/RemoteViews;
    :cond_1b8
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    goto :goto_1a2

    .line 252
    :cond_1ba
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/widget/RemoteViews;
    goto :goto_1b0

    .line 260
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v2    # "_arg1":Landroid/widget/RemoteViews;
    :sswitch_1bc
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 266
    .local v2, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 267
    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, notifyAppWidgetViewDataChanged(Ljava/lang/String;[II)V

    .line 268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 273
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":[I
    .end local v3    # "_arg2":I
    :sswitch_1d5
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 277
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 278
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, getInstalledProvidersForProfile(II)Ljava/util/List;

    move-result-object v8

    .line 279
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 285
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :sswitch_1ee
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 290
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, getAppWidgetInfo(Ljava/lang/String;I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v7

    .line 291
    .local v7, "_result":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    if-eqz v7, :cond_20c

    .line 293
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    invoke-virtual {v7, p3, v9}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 297
    :cond_20c
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 303
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v7    # "_result":Landroid/appwidget/AppWidgetProviderInfo;
    :sswitch_211
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 307
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 308
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, hasBindAppWidgetPermission(Ljava/lang/String;I)Z

    move-result v7

    .line 309
    .local v7, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    if-eqz v7, :cond_22d

    move v0, v9

    :goto_228
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :cond_22d
    move v0, v10

    goto :goto_228

    .line 315
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v7    # "_result":Z
    :sswitch_22f
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 319
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 321
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24b

    move v3, v9

    .line 322
    .local v3, "_arg2":Z
    :goto_243
    invoke-virtual {p0, v1, v2, v3}, setBindAppWidgetPermission(Ljava/lang/String;IZ)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .end local v3    # "_arg2":Z
    :cond_24b
    move v3, v10

    .line 321
    goto :goto_243

    .line 328
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_24d
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 332
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 334
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 336
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28a

    .line 337
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 343
    .local v4, "_arg3":Landroid/content/ComponentName;
    :goto_26c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28c

    .line 344
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .local v5, "_arg4":Landroid/os/Bundle;
    :goto_27a
    move-object v0, p0

    .line 349
    invoke-virtual/range {v0 .. v5}, bindAppWidgetId(Ljava/lang/String;IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v7

    .line 350
    .restart local v7    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    if-eqz v7, :cond_285

    move v10, v9

    :cond_285
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 340
    .end local v4    # "_arg3":Landroid/content/ComponentName;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    .end local v7    # "_result":Z
    :cond_28a
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/content/ComponentName;
    goto :goto_26c

    .line 347
    :cond_28c
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/os/Bundle;
    goto :goto_27a

    .line 356
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":Landroid/content/ComponentName;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :sswitch_28e
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 360
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 362
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b5

    .line 363
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 369
    .local v3, "_arg2":Landroid/content/Intent;
    :goto_2a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 370
    .local v4, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3, v4}, bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 366
    .end local v3    # "_arg2":Landroid/content/Intent;
    .end local v4    # "_arg3":Landroid/os/IBinder;
    :cond_2b5
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/content/Intent;
    goto :goto_2a9

    .line 376
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/Intent;
    :sswitch_2b7
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 380
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 382
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2da

    .line 383
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 388
    .restart local v3    # "_arg2":Landroid/content/Intent;
    :goto_2d2
    invoke-virtual {p0, v1, v2, v3}, unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V

    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 386
    .end local v3    # "_arg2":Landroid/content/Intent;
    :cond_2da
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/content/Intent;
    goto :goto_2d2

    .line 394
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/Intent;
    :sswitch_2dc
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2fb

    .line 397
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 402
    .local v1, "_arg0":Landroid/content/ComponentName;
    :goto_2ef
    invoke-virtual {p0, v1}, getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v7

    .line 403
    .local v7, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .line 400
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    .end local v7    # "_result":[I
    :cond_2fb
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2ef

    .line 409
    .end local v1    # "_arg0":Landroid/content/ComponentName;
    :sswitch_2fd
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 414
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, getAllWidgets(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v7

    .line 415
    .local v7, "_result":Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_9

    .line 421
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v7    # "_result":Ljava/util/Map;
    :sswitch_316
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 425
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 426
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, getAllProvidersForProfile(II)Ljava/util/List;

    move-result-object v8

    .line 427
    .restart local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 39
    nop

    :sswitch_data_330
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_38
        0x3 -> :sswitch_4c
        0x4 -> :sswitch_64
        0x5 -> :sswitch_78
        0x6 -> :sswitch_8d
        0x7 -> :sswitch_9a
        0x8 -> :sswitch_bd
        0x9 -> :sswitch_d6
        0xa -> :sswitch_fd
        0xb -> :sswitch_122
        0xc -> :sswitch_147
        0xd -> :sswitch_16a
        0xe -> :sswitch_18f
        0xf -> :sswitch_1bc
        0x10 -> :sswitch_1d5
        0x11 -> :sswitch_1ee
        0x12 -> :sswitch_211
        0x13 -> :sswitch_22f
        0x14 -> :sswitch_24d
        0x15 -> :sswitch_28e
        0x16 -> :sswitch_2b7
        0x17 -> :sswitch_2dc
        0x18 -> :sswitch_2fd
        0x19 -> :sswitch_316
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
