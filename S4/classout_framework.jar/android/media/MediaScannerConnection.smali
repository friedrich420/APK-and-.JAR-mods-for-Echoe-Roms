.class public Landroid/media/MediaScannerConnection;
.super Ljava/lang/Object;
.source "MediaScannerConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScannerConnection$ClientProxy;,
        Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;,
        Landroid/media/MediaScannerConnection$OnScanCompletedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaScannerConnection"


# instance fields
.field private mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field private final mListener:Landroid/media/IMediaScannerListener$Stub;

.field private mService:Landroid/media/IMediaScannerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "client"    # Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/media/MediaScannerConnection$1;

    invoke-direct {v0, p0}, Landroid/media/MediaScannerConnection$1;-><init>(Landroid/media/MediaScannerConnection;)V

    iput-object v0, p0, mListener:Landroid/media/IMediaScannerListener$Stub;

    .line 103
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    .line 105
    return-void
.end method

.method static synthetic access$000(Landroid/media/MediaScannerConnection;)Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaScannerConnection;

    .prologue
    .line 40
    iget-object v0, p0, mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    return-object v0
.end method

.method public static scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paths"    # [Ljava/lang/String;
    .param p2, "mimeTypes"    # [Ljava/lang/String;
    .param p3, "callback"    # Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    .prologue
    .line 235
    new-instance v0, Landroid/media/MediaScannerConnection$ClientProxy;

    invoke-direct {v0, p1, p2, p3}, Landroid/media/MediaScannerConnection$ClientProxy;-><init>([Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 236
    .local v0, "client":Landroid/media/MediaScannerConnection$ClientProxy;
    new-instance v1, Landroid/media/MediaScannerConnection;

    invoke-direct {v1, p0, v0}, <init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 237
    .local v1, "connection":Landroid/media/MediaScannerConnection;
    iput-object v1, v0, Landroid/media/MediaScannerConnection$ClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    .line 238
    invoke-virtual {v1}, connect()V

    .line 239
    return-void
.end method


# virtual methods
.method public connect()V
    .registers 5

    .prologue
    .line 113
    monitor-enter p0

    .line 114
    :try_start_1
    iget-boolean v1, p0, mConnected:Z

    if-nez v1, :cond_25

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/media/IMediaScannerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.providers.media"

    const-string v3, "com.android.providers.media.MediaScannerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 120
    const/4 v1, 0x1

    iput-boolean v1, p0, mConnected:Z

    .line 122
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_25
    monitor-exit p0

    .line 123
    return-void

    .line 122
    :catchall_27
    move-exception v1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 129
    monitor-enter p0

    .line 130
    :try_start_1
    iget-boolean v0, p0, mConnected:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-eqz v0, :cond_d

    .line 135
    :try_start_5
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_a} :catch_12
    .catchall {:try_start_5 .. :try_end_a} :catchall_f

    .line 141
    :goto_a
    const/4 v0, 0x0

    :try_start_b
    iput-boolean v0, p0, mConnected:Z

    .line 143
    :cond_d
    monitor-exit p0

    .line 144
    return-void

    .line 143
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_f

    throw v0

    .line 136
    :catch_12
    move-exception v0

    goto :goto_a
.end method

.method public declared-synchronized isConnected()Z
    .registers 2

    .prologue
    .line 151
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mService:Landroid/media/IMediaScannerService;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, mConnected:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 248
    monitor-enter p0

    .line 249
    :try_start_1
    invoke-static {p2}, Landroid/media/IMediaScannerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerService;

    move-result-object v0

    iput-object v0, p0, mService:Landroid/media/IMediaScannerService;

    .line 250
    iget-object v0, p0, mService:Landroid/media/IMediaScannerService;

    if-eqz v0, :cond_14

    iget-object v0, p0, mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    if-eqz v0, :cond_14

    .line 251
    iget-object v0, p0, mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    invoke-interface {v0}, Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;->onMediaScannerConnected()V

    .line 253
    :cond_14
    monitor-exit p0

    .line 254
    return-void

    .line 253
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 263
    monitor-enter p0

    .line 264
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, mService:Landroid/media/IMediaScannerService;

    .line 265
    monitor-exit p0

    .line 266
    return-void

    .line 265
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public scanFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 164
    monitor-enter p0

    .line 165
    :try_start_1
    iget-object v0, p0, mService:Landroid/media/IMediaScannerService;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, mConnected:Z

    if-nez v0, :cond_15

    .line 166
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not connected to MediaScannerService"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0

    .line 172
    :cond_15
    :try_start_15
    iget-object v0, p0, mService:Landroid/media/IMediaScannerService;

    iget-object v1, p0, mListener:Landroid/media/IMediaScannerListener$Stub;

    invoke-interface {v0, p1, p2, v1}, Landroid/media/IMediaScannerService;->requestScanFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/IMediaScannerListener;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1c} :catch_1e
    .catchall {:try_start_15 .. :try_end_1c} :catchall_12

    .line 178
    :goto_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_12

    .line 179
    return-void

    .line 173
    :catch_1e
    move-exception v0

    goto :goto_1c
.end method
