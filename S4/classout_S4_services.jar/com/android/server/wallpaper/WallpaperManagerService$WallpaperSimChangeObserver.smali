.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperSimChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 2

    .prologue
    .line 1794
    iput-object p1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1800
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v7, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1801
    :try_start_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 1802
    .local v6, "action":Ljava/lang/String;
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1804
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkWallpaperForMultiSimSkip()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1806
    monitor-exit v7

    .line 1816
    :goto_20
    return-void

    .line 1809
    :cond_21
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_31

    iget-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    if-eqz v0, :cond_4a

    .line 1810
    :cond_31
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->SimStatusVerify()I
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$500(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v1

    iput v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->whichSimSetWallpaper:I

    .line 1811
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    sget-object v1, Lcom/android/server/wallpaper/WallpaperManagerService;->IMAGE_WALLPAPER:Landroid/content/ComponentName;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 1813
    iget-object v0, p0, this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    invoke-static {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$200(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1815
    :cond_4a
    monitor-exit v7

    goto :goto_20

    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v6    # "action":Ljava/lang/String;
    :catchall_4c
    move-exception v0

    monitor-exit v7
    :try_end_4e
    .catchall {:try_start_5 .. :try_end_4e} :catchall_4c

    throw v0
.end method
