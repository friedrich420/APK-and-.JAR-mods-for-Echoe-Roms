.class final Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;
.super Landroid/os/Handler;
.source "SecAsyncRingtonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x14

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 214
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 216
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-static {v1, v0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$000(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;Landroid/net/Uri;)V

    goto :goto_0

    .line 219
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    # invokes: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->handleRepeat()V
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$100(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)V

    goto :goto_0

    .line 222
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    # invokes: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->handleStop()V
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$200(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)V

    goto :goto_0

    .line 225
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    # getter for: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$400(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)Landroid/content/Context;

    move-result-object v1

    const-string v2, " "

    invoke-static {v1, v5, v2}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/android/server/telecom/secutils/CallTextToSpeech;

    move-result-object v1

    # setter for: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$302(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;Lcom/android/server/telecom/secutils/CallTextToSpeech;)Lcom/android/server/telecom/secutils/CallTextToSpeech;

    goto :goto_0

    .line 229
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$500(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)V

    .line 230
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    # getter for: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$600(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    const v1, 0x3c23d70a    # 0.01f

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$716(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;F)F

    .line 232
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    # getter for: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCurrentVolume:F
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$700(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    # getter for: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$600(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)Landroid/media/Ringtone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    # getter for: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCurrentVolume:F
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$700(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    # getter for: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCurrentVolume:F
    invoke-static {v2}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$700(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/Ringtone;->setVolume(FF)V

    .line 234
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    # getter for: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$800(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    # setter for: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCurrentVolume:F
    invoke-static {v0, v3}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$702(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;F)F

    .line 237
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    # getter for: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$600(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)Landroid/media/Ringtone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    # getter for: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCurrentVolume:F
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$700(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    # getter for: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCurrentVolume:F
    invoke-static {v2}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$700(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/Ringtone;->setVolume(FF)V

    goto/16 :goto_0

    .line 241
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$500(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)V

    .line 242
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    # getter for: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$600(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)Landroid/media/Ringtone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    const v1, 0x3ca3d70a    # 0.02f

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$724(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;F)F

    .line 244
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    # getter for: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCurrentVolume:F
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$700(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    # getter for: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$600(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)Landroid/media/Ringtone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    # getter for: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCurrentVolume:F
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$700(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    # getter for: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCurrentVolume:F
    invoke-static {v2}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$700(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/Ringtone;->setVolume(FF)V

    .line 246
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    # getter for: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$800(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    # setter for: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCurrentVolume:F
    invoke-static {v0, v2}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$702(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;F)F

    .line 249
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    # getter for: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$600(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)Landroid/media/Ringtone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    # getter for: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCurrentVolume:F
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$700(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    # getter for: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCurrentVolume:F
    invoke-static {v2}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$700(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/Ringtone;->setVolume(FF)V

    goto/16 :goto_0

    .line 256
    :sswitch_6
    const-string v0, "RETURN_ORIGIN_VOLUME: "

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    # getter for: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mOriginRingtoneVolume:I
    invoke-static {v2}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$900(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    # getter for: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$1000(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;->this$0:Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;

    # getter for: Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mOriginRingtoneVolume:I
    invoke-static {v2}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->access$900(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_0

    .line 214
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x64 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x6b -> :sswitch_6
    .end sparse-switch
.end method
