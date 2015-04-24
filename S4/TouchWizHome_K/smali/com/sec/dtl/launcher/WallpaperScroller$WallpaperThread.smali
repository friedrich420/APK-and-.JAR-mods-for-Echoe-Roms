.class Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;
.super Ljava/lang/Thread;
.source "WallpaperScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/dtl/launcher/WallpaperScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WallpaperThread"
.end annotation


# instance fields
.field mBorder:F

.field mHeight:F

.field mStop:Z

.field mToken:Landroid/os/IBinder;

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field mWidth:F

.field mX:F

.field mY:F


# direct methods
.method public constructor <init>(Landroid/app/WallpaperManager;Landroid/os/IBinder;F)V
    .locals 1
    .param p1, "wm"    # Landroid/app/WallpaperManager;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "border"    # F

    .prologue
    .line 80
    const-string v0, "updateWallpaper"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mStop:Z

    .line 81
    iput-object p1, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 82
    iput-object p2, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mToken:Landroid/os/IBinder;

    .line 83
    iput p3, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mBorder:F

    .line 84
    return-void
.end method

.method static synthetic access$300(Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;FFFF)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->update(FFFF)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->shutdown()V

    return-void
.end method

.method private declared-synchronized shutdown()V
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mStop:Z

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized update(FFFF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 93
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mBorder:F

    mul-float/2addr v0, v2

    div-float v0, p1, v0

    sub-float v0, v1, v0

    iput v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mX:F

    .line 94
    iget v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mBorder:F

    mul-float/2addr v0, v2

    div-float v0, p2, v0

    sub-float v0, v1, v0

    iput v0, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mY:F

    .line 95
    iput p3, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mWidth:F

    .line 96
    iput p4, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mHeight:F

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 101
    const/4 v3, 0x0

    .line 102
    .local v3, "lastWidth":I
    const/4 v2, 0x0

    .line 104
    .local v2, "lastHeight":I
    :goto_0
    const/4 v4, 0x0

    .line 105
    .local v4, "width":I
    const/4 v1, 0x0

    .line 106
    .local v1, "height":I
    monitor-enter p0

    .line 113
    if-nez v3, :cond_0

    :try_start_0
    iget v5, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mWidth:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    .line 115
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 117
    :cond_1
    iget-boolean v5, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mStop:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    .line 118
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    return-void

    .line 119
    :cond_2
    :try_start_2
    iget v5, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    iget v7, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mBorder:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v4, v5

    .line 120
    iget v5, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mHeight:F
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    float-to-int v1, v5

    .line 124
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    if-ne v4, v3, :cond_3

    if-eq v1, v2, :cond_4

    .line 126
    :cond_3
    move v3, v4

    .line 127
    move v2, v1

    .line 128
    iget-object v5, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v5, v4, v1}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 130
    :cond_4
    iget-object v5, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v6, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mToken:Landroid/os/IBinder;

    iget v7, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mX:F

    iget v8, p0, Lcom/sec/dtl/launcher/WallpaperScroller$WallpaperThread;->mY:F

    invoke-virtual {v5, v6, v7, v8}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 124
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5
.end method
