.class final Lcom/android/server/telecom/IAutoCSP$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAutoCSP.java"

# interfaces
.implements Lcom/android/server/telecom/IAutoCSP;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/IAutoCSP$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/server/telecom/IAutoCSP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 72
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/telecom/IAutoCSP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public final getAutoCSPNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 104
    :try_start_0
    const-string v0, "com.android.server.telecom.IAutoCSP"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/server/telecom/IAutoCSP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 107
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 108
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 111
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 114
    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 112
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final isAutoCSPEnabled()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 84
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 87
    :try_start_0
    const-string v4, "com.android.server.telecom.IAutoCSP"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 88
    iget-object v4, p0, Lcom/android/server/telecom/IAutoCSP$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 89
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 90
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 94
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 96
    return v0

    :cond_0
    move v0, v1

    .line 90
    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 94
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
