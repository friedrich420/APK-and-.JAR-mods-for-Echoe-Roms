.class final Lcom/android/server/telecom/secutils/TelecomUtils$6;
.super Ljava/lang/Object;
.source "TelecomUtils.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/secutils/TelecomUtils;->playMediaTone(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;ILandroid/media/MediaPlayer$OnErrorListener;)Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2109
    const-string v0, "TelecomUtils"

    const-string v1, "onError: playMediaTone error"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2110
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2111
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 2112
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 2113
    return v5
.end method
