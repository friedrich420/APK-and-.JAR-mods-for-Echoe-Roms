.class Landroid/media/AudioService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 5305
    iput-object p1, p0, this$0:Landroid/media/AudioService;

    .line 5306
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5307
    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer_streams_affected"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5309
    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dock_audio_media_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5311
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .param p1, "selfChange"    # Z

    .prologue
    .line 5315
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 5320
    iget-object v0, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5321
    :try_start_a
    iget-object v0, p0, this$0:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->updateRingerModeAffectedStreams()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 5326
    iget-object v0, p0, this$0:Landroid/media/AudioService;

    iget-object v2, p0, this$0:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->getRingerMode()I

    move-result v2

    const/4 v3, 0x0

    # invokes: Landroid/media/AudioService;->setRingerModeInt(IZ)V
    invoke-static {v0, v2, v3}, Landroid/media/AudioService;->access$6600(Landroid/media/AudioService;IZ)V

    .line 5328
    :cond_1e
    iget-object v0, p0, this$0:Landroid/media/AudioService;

    iget-object v2, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    # invokes: Landroid/media/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$9100(Landroid/media/AudioService;Landroid/content/ContentResolver;)V

    .line 5329
    monitor-exit v1

    .line 5330
    return-void

    .line 5329
    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_2b

    throw v0
.end method
