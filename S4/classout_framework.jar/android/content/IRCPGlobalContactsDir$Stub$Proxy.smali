.class Landroid/content/IRCPGlobalContactsDir$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRCPGlobalContactsDir.java"

# interfaces
.implements Landroid/content/IRCPGlobalContactsDir;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IRCPGlobalContactsDir$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, mRemote:Landroid/os/IBinder;

    .line 74
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;
    .registers 8
    .param p1, "contactRefUriAsString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 86
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 89
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.content.IRCPGlobalContactsDir"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v3, p0, mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 92
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 93
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2f

    .line 94
    sget-object v3, Landroid/content/CustomCursor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/CustomCursor;
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_31

    .line 101
    .local v2, "_result":Landroid/content/CustomCursor;
    :goto_28
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 104
    return-object v2

    .line 97
    .end local v2    # "_result":Landroid/content/CustomCursor;
    :cond_2f
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/content/CustomCursor;
    goto :goto_28

    .line 101
    .end local v2    # "_result":Landroid/content/CustomCursor;
    :catchall_31
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    const-string v0, "android.content.IRCPGlobalContactsDir"

    return-object v0
.end method
