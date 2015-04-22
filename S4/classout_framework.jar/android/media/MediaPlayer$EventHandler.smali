.class Landroid/media/MediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V
    .registers 4
    .param p2, "mp"    # Landroid/media/MediaPlayer;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3340
    iput-object p1, p0, this$0:Landroid/media/MediaPlayer;

    .line 3341
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3342
    iput-object p2, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    .line 3343
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3347
    iget-object v8, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mNativeContext:J
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$500(Landroid/media/MediaPlayer;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_15

    .line 3348
    const-string v8, "MediaPlayer"

    const-string/jumbo v9, "mediaplayer went away with unhandled events"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3587
    :cond_14
    :goto_14
    :sswitch_14
    return-void

    .line 3351
    :cond_15
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_538

    .line 3584
    const-string v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown message type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 3353
    :sswitch_35
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # invokes: Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$600(Landroid/media/MediaPlayer;)V

    .line 3354
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v8

    if-eqz v8, :cond_14

    .line 3355
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v8

    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v8, v9}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    goto :goto_14

    .line 3359
    :sswitch_4e
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v8

    if-eqz v8, :cond_61

    .line 3360
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v8

    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v8, v9}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 3361
    :cond_61
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    const/4 v9, 0x0

    # invokes: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v8, v9}, Landroid/media/MediaPlayer;->access$900(Landroid/media/MediaPlayer;Z)V

    .line 3363
    # getter for: Landroid/media/MediaPlayer;->MMFWContextAware:Z
    invoke-static {}, Landroid/media/MediaPlayer;->access$1000()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 3364
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mContextAwareSend:Z
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$1100(Landroid/media/MediaPlayer;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 3365
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    const-string v9, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "TYPE"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "complete"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "URI"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget-object v12, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mContextAwareUri:Ljava/lang/String;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "ID"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    iget-object v12, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mContextAwareId:I
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "PID"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    iget-object v12, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mPid:I
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    # invokes: Landroid/media/MediaPlayer;->sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z
    invoke-static {v8, v9, v10}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 3366
    const-string v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sendBroadcast CONTEXT_AWARE_MUSIC_INFO - type(complete) - id("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mContextAwareId:I
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 3375
    :sswitch_e3
    :try_start_e3
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v8

    if-eqz v8, :cond_14

    .line 3376
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/MediaPlayer$TimeProvider;->onStopped()V
    :try_end_f4
    .catch Ljava/lang/NullPointerException; {:try_start_e3 .. :try_end_f4} :catch_f6

    goto/16 :goto_14

    .line 3378
    :catch_f6
    move-exception v1

    .line 3379
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v8, "MediaPlayer"

    const-string v9, "handleMessage MEDIA_STOPPED e : "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    .line 3392
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :sswitch_100
    :try_start_100
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v8

    if-eqz v8, :cond_14

    .line 3393
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v9

    iget v8, p1, Landroid/os/Message;->what:I

    const/4 v10, 0x7

    if-ne v8, v10, :cond_123

    const/4 v8, 0x1

    :goto_114
    invoke-virtual {v9, v8}, Landroid/media/MediaPlayer$TimeProvider;->onPaused(Z)V
    :try_end_117
    .catch Ljava/lang/NullPointerException; {:try_start_100 .. :try_end_117} :catch_119

    goto/16 :goto_14

    .line 3395
    :catch_119
    move-exception v1

    .line 3396
    .restart local v1    # "e":Ljava/lang/NullPointerException;
    const-string v8, "MediaPlayer"

    const-string v9, "handleMessage MEDIA_STARTED or MEDIA_PAUSED e : "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    .line 3393
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_123
    const/4 v8, 0x0

    goto :goto_114

    .line 3406
    :sswitch_125
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$1700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v8

    if-eqz v8, :cond_14

    .line 3407
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$1700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v8

    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v8, v9, v10}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    goto/16 :goto_14

    .line 3411
    :sswitch_13c
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$1800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v8

    if-eqz v8, :cond_14f

    .line 3412
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$1800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v8

    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v8, v9}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 3419
    :cond_14f
    :sswitch_14f
    :try_start_14f
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v8

    if-eqz v8, :cond_14

    .line 3420
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mTimeProvider:Landroid/media/MediaPlayer$TimeProvider;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v8

    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer$TimeProvider;->onSeekComplete(Landroid/media/MediaPlayer;)V
    :try_end_162
    .catch Ljava/lang/NullPointerException; {:try_start_14f .. :try_end_162} :catch_164

    goto/16 :goto_14

    .line 3422
    :catch_164
    move-exception v1

    .line 3423
    .restart local v1    # "e":Ljava/lang/NullPointerException;
    const-string v8, "MediaPlayer"

    const-string v9, "handleMessage MEDIA_SKIPPED e : "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    .line 3433
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :sswitch_16e
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$1900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v8

    if-eqz v8, :cond_185

    .line 3434
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$1900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v8

    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    iget v10, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v8, v9, v10, v11}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    .line 3436
    :cond_185
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_1c0

    iget v8, p1, Landroid/os/Message;->arg2:I

    if-eqz v8, :cond_1c0

    .line 3438
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    const/4 v9, 0x1

    # setter for: Landroid/media/MediaPlayer;->mIsVideo:Z
    invoke-static {v8, v9}, Landroid/media/MediaPlayer;->access$2002(Landroid/media/MediaPlayer;Z)Z

    .line 3439
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mIsStart:Z
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2100(Landroid/media/MediaPlayer;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 3441
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mAIAContext:Z
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2200(Landroid/media/MediaPlayer;)Z

    move-result v8

    if-nez v8, :cond_1b7

    .line 3443
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    const-string v9, "android.media.IMediaPlayer.videoexist"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    # invokes: Landroid/media/MediaPlayer;->sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z
    invoke-static {v8, v9, v10}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 3444
    const-string v8, "MediaPlayer"

    const-string/jumbo v9, "sendBroadcast android.media.IMediaPlayer.videoexist"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 3447
    :cond_1b7
    const-string v8, "MediaPlayer"

    const-string v9, "context is 1, don\'t send BroadcastIntent!!!!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 3451
    :cond_1c0
    const-string v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Don\'t send intent. msg.arg1 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", msg.arg2 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 3456
    :sswitch_1e8
    const-string v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3457
    const/4 v2, 0x0

    .line 3458
    .local v2, "error_was_handled":Z
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v8

    if-eqz v8, :cond_271

    .line 3462
    iget v8, p1, Landroid/os/Message;->arg2:I

    const/16 v9, -0x31

    if-eq v8, v9, :cond_235

    iget v8, p1, Landroid/os/Message;->arg2:I

    const/16 v9, -0x3c

    if-eq v8, v9, :cond_235

    iget v8, p1, Landroid/os/Message;->arg2:I

    const/16 v9, -0x3d

    if-eq v8, v9, :cond_235

    iget v8, p1, Landroid/os/Message;->arg2:I

    const/16 v9, -0x40

    if-ne v8, v9, :cond_2a6

    :cond_235
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    move-result-object v8

    if-eqz v8, :cond_2a6

    .line 3468
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v8, :cond_28e

    .line 3469
    const-string v9, "MediaPlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PlayReadyAcquistion Failed \n sending onPlayReadyError "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3470
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnPlayReadyErrorListener:Landroid/media/MediaPlayer$OnPlayReadyErrorListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2400(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPlayReadyErrorListener;

    move-result-object v9

    iget-object v10, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-interface {v9, v10, v11, v12, v8}, Landroid/media/MediaPlayer$OnPlayReadyErrorListener;->onPlayReadyError(Landroid/media/MediaPlayer;IILjava/lang/String;)Z

    move-result v2

    .line 3491
    :cond_271
    :goto_271
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v8

    if-eqz v8, :cond_286

    if-nez v2, :cond_286

    .line 3492
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v8

    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v8, v9}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 3494
    :cond_286
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    const/4 v9, 0x0

    # invokes: Landroid/media/MediaPlayer;->stayAwake(Z)V
    invoke-static {v8, v9}, Landroid/media/MediaPlayer;->access$900(Landroid/media/MediaPlayer;Z)V

    goto/16 :goto_14

    .line 3473
    :cond_28e
    const-string v8, "MediaPlayer"

    const-string v9, "PlayReadyAcquistion Failed \n sending onPlayReadyError NULL"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3474
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v8

    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    iget v10, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v8, v9, v10, v11}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v2

    goto :goto_271

    .line 3478
    :cond_2a6
    iget v8, p1, Landroid/os/Message;->arg2:I

    const/16 v9, 0x12c

    if-ne v8, v9, :cond_2c4

    .line 3479
    const-string v8, "MediaPlayer"

    const-string v9, "License Not Found, propagate error to MoviePlaybackService.java"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3480
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v8

    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    iget v10, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v8, v9, v10, v11}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v2

    goto :goto_271

    .line 3483
    :cond_2c4
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v8

    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    iget v10, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v8, v9, v10, v11}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v2

    goto :goto_271

    .line 3498
    .end local v2    # "error_was_handled":Z
    :sswitch_2d5
    iget v8, p1, Landroid/os/Message;->arg1:I

    sparse-switch v8, :sswitch_data_576

    .line 3515
    :cond_2da
    :goto_2da
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v8

    if-eqz v8, :cond_14

    .line 3516
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v8

    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    iget v10, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v8, v9, v10, v11}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_14

    .line 3500
    :sswitch_2f3
    const-string v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Info ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2da

    .line 3503
    :sswitch_320
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # invokes: Landroid/media/MediaPlayer;->scanInternalSubtitleTracks()V
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$600(Landroid/media/MediaPlayer;)V

    .line 3507
    :sswitch_325
    const/16 v8, 0x322

    iput v8, p1, Landroid/os/Message;->arg1:I

    .line 3509
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v8

    if-eqz v8, :cond_2da

    .line 3510
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mSubtitleController:Landroid/media/SubtitleController;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$100(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    goto :goto_2da

    .line 3521
    :sswitch_33b
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v8

    if-eqz v8, :cond_14

    .line 3523
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v8, :cond_355

    .line 3524
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v8

    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto/16 :goto_14

    .line 3526
    :cond_355
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v8, v8, Landroid/os/Parcel;

    if-eqz v8, :cond_14

    .line 3527
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Parcel;

    .line 3528
    .local v4, "parcel":Landroid/os/Parcel;
    new-instance v5, Landroid/media/TimedText;

    invoke-direct {v5, v4}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;)V

    .line 3529
    .local v5, "text":Landroid/media/TimedText;
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 3530
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v8

    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v8, v9, v5}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto/16 :goto_14

    .line 3536
    .end local v4    # "parcel":Landroid/os/Parcel;
    .end local v5    # "text":Landroid/media/TimedText;
    :sswitch_374
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    move-result-object v8

    if-eqz v8, :cond_14

    .line 3539
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v8, v8, Landroid/os/Parcel;

    if-eqz v8, :cond_14

    .line 3540
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Parcel;

    .line 3541
    .restart local v4    # "parcel":Landroid/os/Parcel;
    new-instance v0, Landroid/media/SubtitleData;

    invoke-direct {v0, v4}, Landroid/media/SubtitleData;-><init>(Landroid/os/Parcel;)V

    .line 3542
    .local v0, "data":Landroid/media/SubtitleData;
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 3543
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mOnSubtitleDataListener:Landroid/media/MediaPlayer$OnSubtitleDataListener;
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    move-result-object v8

    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v8, v9, v0}, Landroid/media/MediaPlayer$OnSubtitleDataListener;->onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V

    goto/16 :goto_14

    .line 3551
    .end local v0    # "data":Landroid/media/SubtitleData;
    .end local v4    # "parcel":Landroid/os/Parcel;
    :sswitch_39b
    # getter for: Landroid/media/MediaPlayer;->MMFWContextAware:Z
    invoke-static {}, Landroid/media/MediaPlayer;->access$1000()Z

    move-result v8

    if-eqz v8, :cond_43d

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v8, v8, Landroid/os/Parcel;

    if-eqz v8, :cond_43d

    .line 3552
    const-string v8, "MediaPlayer"

    const-string/jumbo v9, "send context aware event"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3553
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Parcel;

    .line 3554
    .restart local v4    # "parcel":Landroid/os/Parcel;
    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3555
    .local v6, "type":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3556
    .local v7, "uri":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3558
    .local v3, "id":I
    const-string/jumbo v8, "start"

    invoke-virtual {v6, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3d8

    .line 3559
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    const/4 v9, 0x1

    # setter for: Landroid/media/MediaPlayer;->mContextAwareSend:Z
    invoke-static {v8, v9}, Landroid/media/MediaPlayer;->access$1102(Landroid/media/MediaPlayer;Z)Z

    .line 3560
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # setter for: Landroid/media/MediaPlayer;->mContextAwareId:I
    invoke-static {v8, v3}, Landroid/media/MediaPlayer;->access$1302(Landroid/media/MediaPlayer;I)I

    .line 3561
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # setter for: Landroid/media/MediaPlayer;->mContextAwareUri:Ljava/lang/String;
    invoke-static {v8, v7}, Landroid/media/MediaPlayer;->access$1202(Landroid/media/MediaPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 3563
    :cond_3d8
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    const-string v9, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "TYPE"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    const/4 v11, 0x2

    const-string v12, "URI"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object v7, v10, v11

    const/4 v11, 0x4

    const-string v12, "ID"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "PID"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    iget-object v12, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mPid:I
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    # invokes: Landroid/media/MediaPlayer;->sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z
    invoke-static {v8, v9, v10}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 3564
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 3565
    const-string v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sendBroadcast CONTEXT_AWARE_MUSIC_INFO - type("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") - id ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3568
    .end local v3    # "id":I
    .end local v4    # "parcel":Landroid/os/Parcel;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "uri":Ljava/lang/String;
    :cond_43d
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mPendingCommand:I
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2800(Landroid/media/MediaPlayer;)I

    move-result v8

    if-eqz v8, :cond_14

    .line 3569
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mPendingCommand:I
    invoke-static {v8}, Landroid/media/MediaPlayer;->access$2800(Landroid/media/MediaPlayer;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4c9

    .line 3570
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    const-string v9, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "TYPE"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "pause"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "URI"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget-object v12, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mContextAwareUri:Ljava/lang/String;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "ID"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    iget-object v12, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mContextAwareId:I
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "PID"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    iget-object v12, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mPid:I
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    # invokes: Landroid/media/MediaPlayer;->sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z
    invoke-static {v8, v9, v10}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 3571
    const-string v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sendBroadcast CONTEXT_AWARE_MUSIC_INFO - type(pause) - id("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mContextAwareId:I
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3577
    :goto_4bb
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    const/4 v9, 0x0

    # setter for: Landroid/media/MediaPlayer;->mPendingCommand:I
    invoke-static {v8, v9}, Landroid/media/MediaPlayer;->access$2802(Landroid/media/MediaPlayer;I)I

    .line 3578
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    const/4 v9, 0x0

    # setter for: Landroid/media/MediaPlayer;->mContextAwareSend:Z
    invoke-static {v8, v9}, Landroid/media/MediaPlayer;->access$1102(Landroid/media/MediaPlayer;Z)Z

    goto/16 :goto_14

    .line 3574
    :cond_4c9
    iget-object v8, p0, this$0:Landroid/media/MediaPlayer;

    const-string v9, "com.samsung.CONTEXT_AWARE_MUSIC_INFO"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "TYPE"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "stop"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "URI"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget-object v12, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mContextAwareUri:Ljava/lang/String;
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$1200(Landroid/media/MediaPlayer;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "ID"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    iget-object v12, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mContextAwareId:I
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "PID"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    iget-object v12, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mPid:I
    invoke-static {v12}, Landroid/media/MediaPlayer;->access$1400(Landroid/media/MediaPlayer;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    # invokes: Landroid/media/MediaPlayer;->sendBroadcastingIntent(Ljava/lang/String;[Ljava/lang/Object;)Z
    invoke-static {v8, v9, v10}, Landroid/media/MediaPlayer;->access$1500(Landroid/media/MediaPlayer;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 3575
    const-string v8, "MediaPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sendBroadcast CONTEXT_AWARE_MUSIC_INFO - type(stop) - id("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, this$0:Landroid/media/MediaPlayer;

    # getter for: Landroid/media/MediaPlayer;->mContextAwareId:I
    invoke-static {v10}, Landroid/media/MediaPlayer;->access$1300(Landroid/media/MediaPlayer;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4bb

    .line 3351
    nop

    :sswitch_data_538
    .sparse-switch
        0x0 -> :sswitch_14
        0x1 -> :sswitch_35
        0x2 -> :sswitch_4e
        0x3 -> :sswitch_125
        0x4 -> :sswitch_13c
        0x5 -> :sswitch_16e
        0x6 -> :sswitch_100
        0x7 -> :sswitch_100
        0x8 -> :sswitch_e3
        0x9 -> :sswitch_14f
        0x63 -> :sswitch_33b
        0x64 -> :sswitch_1e8
        0xc8 -> :sswitch_2d5
        0xc9 -> :sswitch_374
        0x12c -> :sswitch_39b
    .end sparse-switch

    .line 3498
    :sswitch_data_576
    .sparse-switch
        0x2bc -> :sswitch_2f3
        0x322 -> :sswitch_320
        0x323 -> :sswitch_325
    .end sparse-switch
.end method
