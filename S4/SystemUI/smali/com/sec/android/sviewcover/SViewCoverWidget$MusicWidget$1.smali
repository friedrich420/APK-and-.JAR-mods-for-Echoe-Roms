.class Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$1;
.super Ljava/lang/Object;
.source "SViewCoverWidget.java"

# interfaces
.implements Landroid/media/RemoteController$OnClientUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)V
    .locals 0

    .prologue
    .line 2971
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientChange(Z)V
    .locals 1
    .param p1, "clearing"    # Z

    .prologue
    .line 2974
    if-eqz p1, :cond_0

    .line 2975
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-virtual {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->clearMetadata()V

    .line 2977
    :cond_0
    return-void
.end method

.method public onClientFolderInfoBrowsedPlayer(Ljava/lang/String;)V
    .locals 0
    .param p1, "stringUri"    # Ljava/lang/String;

    .prologue
    .line 3030
    return-void
.end method

.method public onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V
    .locals 1
    .param p1, "metadataEditor"    # Landroid/media/RemoteController$MetadataEditor;

    .prologue
    .line 3040
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-virtual {v0, p1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->updateMetadata(Landroid/media/RemoteController$MetadataEditor;)V

    .line 3041
    return-void
.end method

.method public onClientNowPlayingContentChange()V
    .locals 0

    .prologue
    .line 3026
    return-void
.end method

.method public onClientPlayItemResponse(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 3018
    return-void
.end method

.method public onClientPlaybackStateUpdate(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 2985
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    # invokes: Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->updatePlayPauseState(I)V
    invoke-static {v0, p1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$2000(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;I)V

    .line 2986
    return-void
.end method

.method public onClientPlaybackStateUpdate(IJJF)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "stateChangeTimeMs"    # J
    .param p4, "currentPosMs"    # J
    .param p6, "speed"    # F

    .prologue
    .line 2994
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mCurrentPlayState:I
    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$2100(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 3014
    :goto_0
    return-void

    .line 2999
    :cond_0
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    # invokes: Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->updatePlayPauseState(I)V
    invoke-static {v0, p1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$2000(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;I)V

    .line 3000
    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClientPlaybackStateUpdate(state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", stateChangeTimeMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentPosMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", speed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mUpdateSeekBars:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$UpdateSeekBarRunnable;
    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$2200(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$UpdateSeekBarRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3012
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->mUpdateSeekBars:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$UpdateSeekBarRunnable;
    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$2200(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$UpdateSeekBarRunnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onClientSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2981
    return-void
.end method

.method public onClientTransportControlUpdate(I)V
    .locals 1
    .param p1, "transportControlFlags"    # I

    .prologue
    .line 3034
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    # invokes: Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->updateTransportControls(I)V
    invoke-static {v0, p1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$2300(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;I)V

    .line 3035
    return-void
.end method

.method public onClientUpdateNowPlayingEntries([J)V
    .locals 0
    .param p1, "playList"    # [J

    .prologue
    .line 3022
    return-void
.end method
