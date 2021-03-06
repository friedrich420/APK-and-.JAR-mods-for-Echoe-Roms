.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "WallpaperManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperConnection"
.end annotation


# instance fields
.field mDimensionsChanged:Z

.field mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field final mInfo:Landroid/app/WallpaperInfo;

.field mPaddingChanged:Z

.field mReply:Landroid/os/IRemoteCallback;

.field mService:Landroid/service/wallpaper/IWallpaperService;

.field final mToken:Landroid/os/Binder;

.field mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 6
    .param p2, "info"    # Landroid/app/WallpaperInfo;
    .param p3, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v1, 0x0

    .line 298
    iput-object p1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 289
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, mToken:Landroid/os/Binder;

    .line 295
    iput-boolean v1, p0, mDimensionsChanged:Z

    .line 296
    iput-boolean v1, p0, mPaddingChanged:Z

    .line 299
    iput-object p2, p0, mInfo:Landroid/app/WallpaperInfo;

    .line 300
    iput-object p3, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 301
    return-void
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    .registers 7
    .param p1, "engine"    # Landroid/service/wallpaper/IWallpaperEngine;

    .prologue
    .line 348
    iget-object v1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 349
    :try_start_5
    iput-object p1, p0, mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 350
    iget-boolean v1, p0, mDimensionsChanged:Z
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_36

    if-eqz v1, :cond_1b

    .line 352
    :try_start_b
    iget-object v1, p0, mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget-object v3, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iget-object v4, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-interface {v1, v3, v4}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_2d
    .catchall {:try_start_b .. :try_end_18} :catchall_36

    .line 356
    :goto_18
    const/4 v1, 0x0

    :try_start_19
    iput-boolean v1, p0, mDimensionsChanged:Z

    .line 358
    :cond_1b
    iget-boolean v1, p0, mPaddingChanged:Z
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_36

    if-eqz v1, :cond_2b

    .line 360
    :try_start_1f
    iget-object v1, p0, mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget-object v3, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-interface {v1, v3}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_28} :catch_39
    .catchall {:try_start_1f .. :try_end_28} :catchall_36

    .line 364
    :goto_28
    const/4 v1, 0x0

    :try_start_29
    iput-boolean v1, p0, mPaddingChanged:Z

    .line 366
    :cond_2b
    monitor-exit v2

    .line 367
    return-void

    .line 353
    :catch_2d
    move-exception v0

    .line 354
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WallpaperManagerService"

    const-string v3, "Failed to set wallpaper dimensions"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 366
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_36
    move-exception v1

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_29 .. :try_end_38} :catchall_36

    throw v1

    .line 361
    :catch_39
    move-exception v0

    .line 362
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_3a
    const-string v1, "WallpaperManagerService"

    const-string v3, "Failed to set wallpaper padding"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_36

    goto :goto_28
.end method

.method public engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    .registers 8
    .param p1, "engine"    # Landroid/service/wallpaper/IWallpaperEngine;

    .prologue
    .line 371
    iget-object v1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 372
    :try_start_5
    iget-object v1, p0, mReply:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_16

    .line 373
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1d

    move-result-wide v2

    .line 375
    .local v2, "ident":J
    :try_start_d
    iget-object v1, p0, mReply:Landroid/os/IRemoteCallback;

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_18
    .catchall {:try_start_d .. :try_end_13} :catchall_1d

    .line 379
    :goto_13
    const/4 v1, 0x0

    :try_start_14
    iput-object v1, p0, mReply:Landroid/os/IRemoteCallback;

    .line 381
    .end local v2    # "ident":J
    :cond_16
    monitor-exit v4

    .line 382
    return-void

    .line 376
    .restart local v2    # "ident":J
    :catch_18
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_13

    .line 381
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "ident":J
    :catchall_1d
    move-exception v1

    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 305
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 306
    :try_start_5
    iget-object v0, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-ne v0, p0, :cond_1f

    .line 307
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object v0

    iput-object v0, p0, mService:Landroid/service/wallpaper/IWallpaperService;

    .line 308
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v0, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 313
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    invoke-static {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$200(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 315
    :cond_1f
    monitor-exit v1

    .line 316
    return-void

    .line 315
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 320
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 321
    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, mService:Landroid/service/wallpaper/IWallpaperService;

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 323
    iget-object v0, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-ne v0, p0, :cond_68

    .line 324
    const-string v0, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wallpaper service gone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-boolean v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v0, :cond_68

    iget-object v0, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget-object v2, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v0, v2, :cond_68

    .line 333
    iget-object v0, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-wide v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6a

    iget-object v0, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-wide v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_6a

    .line 336
    const-string v0, "WallpaperManagerService"

    const-string v2, "Reverting to built-in wallpaper!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v2, 0x1

    iget-object v3, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    .line 343
    :cond_68
    :goto_68
    monitor-exit v1

    .line 344
    return-void

    .line 339
    :cond_6a
    iget-object v0, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    goto :goto_68

    .line 343
    :catchall_73
    move-exception v0

    monitor-exit v1
    :try_end_75
    .catchall {:try_start_6 .. :try_end_75} :catchall_73

    throw v0
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 386
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 387
    :try_start_5
    iget-object v0, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-ne v0, p0, :cond_15

    .line 388
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, p0, mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    monitor-exit v1

    .line 390
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_14

    .line 391
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v0
.end method
