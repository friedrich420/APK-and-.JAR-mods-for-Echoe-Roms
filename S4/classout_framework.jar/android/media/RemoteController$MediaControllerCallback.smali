.class Landroid/media/RemoteController$MediaControllerCallback;
.super Landroid/media/session/MediaController$Callback;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteController;


# direct methods
.method private constructor <init>(Landroid/media/RemoteController;)V
    .registers 2

    .prologue
    .line 813
    iput-object p1, p0, this$0:Landroid/media/RemoteController;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/RemoteController;Landroid/media/RemoteController$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/media/RemoteController;
    .param p2, "x1"    # Landroid/media/RemoteController$1;

    .prologue
    .line 813
    invoke-direct {p0, p1}, <init>(Landroid/media/RemoteController;)V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .registers 3
    .param p1, "metadata"    # Landroid/media/MediaMetadata;

    .prologue
    .line 821
    iget-object v0, p0, this$0:Landroid/media/RemoteController;

    # invokes: Landroid/media/RemoteController;->onNewMediaMetadata(Landroid/media/MediaMetadata;)V
    invoke-static {v0, p1}, Landroid/media/RemoteController;->access$900(Landroid/media/RemoteController;Landroid/media/MediaMetadata;)V

    .line 822
    return-void
.end method

.method public onPlayItemResponse(Z)V
    .registers 4
    .param p1, "success"    # Z

    .prologue
    .line 844
    const-string v0, "RemoteController"

    const-string v1, "MediaControllerCallback: onPlayItemResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object v0, p0, this$0:Landroid/media/RemoteController;

    invoke-virtual {v0, p1}, Landroid/media/RemoteController;->onSetPlayItemResponse(Z)V

    .line 846
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .registers 3
    .param p1, "state"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 816
    iget-object v0, p0, this$0:Landroid/media/RemoteController;

    # invokes: Landroid/media/RemoteController;->onNewPlaybackState(Landroid/media/session/PlaybackState;)V
    invoke-static {v0, p1}, Landroid/media/RemoteController;->access$800(Landroid/media/RemoteController;Landroid/media/session/PlaybackState;)V

    .line 817
    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 851
    iget-object v0, p0, this$0:Landroid/media/RemoteController;

    # invokes: Landroid/media/RemoteController;->onNewSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v0, p1, p2}, Landroid/media/RemoteController;->access$1000(Landroid/media/RemoteController;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 852
    return-void
.end method

.method public onUpdateFolderInfoBrowsedPlayer(Ljava/lang/String;)V
    .registers 4
    .param p1, "stringUri"    # Ljava/lang/String;

    .prologue
    .line 826
    const-string v0, "RemoteController"

    const-string v1, "MediaControllerCallback: onUpdateFolderInfoBrowsedPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v0, p0, this$0:Landroid/media/RemoteController;

    invoke-virtual {v0, p1}, Landroid/media/RemoteController;->onFolderInfoBrowsedPlayer(Ljava/lang/String;)V

    .line 828
    return-void
.end method

.method public onUpdateNowPlayingContentChange()V
    .registers 3

    .prologue
    .line 838
    const-string v0, "RemoteController"

    const-string v1, "MediaControllerCallback: onUpdateNowPlayingContentChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v0, p0, this$0:Landroid/media/RemoteController;

    invoke-virtual {v0}, Landroid/media/RemoteController;->onNowPlayingContentChange()V

    .line 840
    return-void
.end method

.method public onUpdateNowPlayingEntries([J)V
    .registers 4
    .param p1, "playList"    # [J

    .prologue
    .line 832
    const-string v0, "RemoteController"

    const-string v1, "MediaControllerCallback: onUpdateNowPlayingEntries"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v0, p0, this$0:Landroid/media/RemoteController;

    invoke-virtual {v0, p1}, Landroid/media/RemoteController;->onNowPlayingEntriesUpdate([J)V

    .line 834
    return-void
.end method
