.class final Lcom/android/server/telecom/secutils/TelecomUtils$3;
.super Ljava/lang/Object;
.source "TelecomUtils.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/secutils/TelecomUtils;->playCallEndTone(Landroid/content/Context;Lcom/android/server/telecom/Call;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2022
    const-string v0, "TelecomUtils"

    const-string v1, "call disconnect tone - excuted"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2023
    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->access$002(Z)Z

    .line 2024
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->resetAudioStateAfterDisconnect()V

    .line 2026
    return-void
.end method
