.class Landroid/media/MediaPlayer$TimeProvider;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaTimeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$TimeProvider$EventHandler;
    }
.end annotation


# static fields
.field private static final MAX_EARLY_CALLBACK_US:J = 0x3e8L

.field private static final MAX_NS_WITHOUT_POSITION_CHECK:J = 0x12a05f200L

.field private static final NOTIFY:I = 0x1

.field private static final NOTIFY_SEEK:I = 0x3

.field private static final NOTIFY_STOP:I = 0x2

.field private static final NOTIFY_TIME:I = 0x0

.field private static final REFRESH_AND_NOTIFY_TIME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MTP"

.field private static final TIME_ADJUSTMENT_RATE:J = 0x2L


# instance fields
.field public DEBUG:Z

.field private mEventHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLastNanoTime:J

.field private mLastReportedTime:J

.field private mLastTimeUs:J

.field private mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

.field private mPaused:Z

.field private mPausing:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mRefresh:Z

.field private mSeeking:Z

.field private mStopped:Z

.field private mTimeAdjustment:J

.field private mTimes:[J


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;)V
    .registers 10
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4262
    iput-wide v6, p0, mLastTimeUs:J

    .line 4264
    iput-boolean v4, p0, mPaused:Z

    .line 4265
    iput-boolean v4, p0, mStopped:Z

    .line 4274
    iput-boolean v5, p0, mRefresh:Z

    .line 4275
    iput-boolean v5, p0, mPausing:Z

    .line 4276
    iput-boolean v5, p0, mSeeking:Z

    .line 4285
    iput-boolean v5, p0, DEBUG:Z

    .line 4288
    iput-object p1, p0, mPlayer:Landroid/media/MediaPlayer;

    .line 4290
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_19
    invoke-virtual {p0, v2, v3}, getCurrentTimeUs(ZZ)J
    :try_end_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_1c} :catch_51

    .line 4297
    :goto_1c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .local v1, "looper":Landroid/os/Looper;
    if-nez v1, :cond_3d

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_3d

    .line 4300
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "MediaPlayerMTPEventThread"

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 4302
    iget-object v2, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 4303
    iget-object v2, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 4305
    :cond_3d
    new-instance v2, Landroid/media/MediaPlayer$TimeProvider$EventHandler;

    invoke-direct {v2, p0, v1}, Landroid/media/MediaPlayer$TimeProvider$EventHandler;-><init>(Landroid/media/MediaPlayer$TimeProvider;Landroid/os/Looper;)V

    iput-object v2, p0, mEventHandler:Landroid/os/Handler;

    .line 4307
    new-array v2, v5, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iput-object v2, p0, mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 4308
    new-array v2, v5, [J

    iput-object v2, p0, mTimes:[J

    .line 4309
    iput-wide v6, p0, mLastTimeUs:J

    .line 4310
    iput-wide v6, p0, mTimeAdjustment:J

    .line 4311
    return-void

    .line 4291
    .end local v1    # "looper":Landroid/os/Looper;
    :catch_51
    move-exception v0

    .line 4293
    .local v0, "e":Ljava/lang/IllegalStateException;
    iput-boolean v4, p0, mRefresh:Z

    goto :goto_1c
.end method

.method static synthetic access$2900(Landroid/media/MediaPlayer$TimeProvider;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/media/MediaPlayer$TimeProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 4256
    invoke-direct {p0, p1}, notifyTimedEvent(Z)V

    return-void
.end method

.method static synthetic access$3000(Landroid/media/MediaPlayer$TimeProvider;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/MediaPlayer$TimeProvider;

    .prologue
    .line 4256
    invoke-direct {p0}, notifyStop()V

    return-void
.end method

.method static synthetic access$3100(Landroid/media/MediaPlayer$TimeProvider;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/MediaPlayer$TimeProvider;

    .prologue
    .line 4256
    invoke-direct {p0}, notifySeek()V

    return-void
.end method

.method private getEstimatedTime(JZ)J
    .registers 15
    .param p1, "nanoTime"    # J
    .param p3, "monotonic"    # Z

    .prologue
    const-wide/16 v8, 0x0

    .line 4557
    iget-boolean v4, p0, mPaused:Z

    if-eqz v4, :cond_10

    .line 4558
    iget-wide v4, p0, mLastTimeUs:J

    iget-wide v6, p0, mTimeAdjustment:J

    add-long/2addr v4, v6

    iput-wide v4, p0, mLastReportedTime:J

    .line 4572
    :cond_d
    :goto_d
    iget-wide v4, p0, mLastReportedTime:J

    return-wide v4

    .line 4560
    :cond_10
    iget-wide v4, p0, mLastNanoTime:J

    sub-long v4, p1, v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 4561
    .local v2, "timeSinceRead":J
    iget-wide v4, p0, mLastTimeUs:J

    add-long/2addr v4, v2

    iput-wide v4, p0, mLastReportedTime:J

    .line 4562
    iget-wide v4, p0, mTimeAdjustment:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_d

    .line 4563
    iget-wide v4, p0, mTimeAdjustment:J

    const-wide/16 v6, 0x2

    div-long v6, v2, v6

    sub-long v0, v4, v6

    .line 4565
    .local v0, "adjustment":J
    cmp-long v4, v0, v8

    if-gtz v4, :cond_32

    .line 4566
    iput-wide v8, p0, mTimeAdjustment:J

    goto :goto_d

    .line 4568
    :cond_32
    iget-wide v4, p0, mLastReportedTime:J

    add-long/2addr v4, v0

    iput-wide v4, p0, mLastReportedTime:J

    goto :goto_d
.end method

.method private declared-synchronized notifySeek()V
    .registers 11

    .prologue
    .line 4391
    monitor-enter p0

    const/4 v5, 0x0

    :try_start_2
    iput-boolean v5, p0, mSeeking:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_4e

    .line 4393
    const/4 v5, 0x1

    const/4 v8, 0x0

    :try_start_6
    invoke-virtual {p0, v5, v8}, getCurrentTimeUs(ZZ)J

    move-result-wide v6

    .line 4394
    .local v6, "timeUs":J
    iget-boolean v5, p0, DEBUG:Z

    if-eqz v5, :cond_27

    const-string v5, "MTP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onSeekComplete at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4396
    :cond_27
    iget-object v0, p0, mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .local v0, "arr$":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2b
    if-ge v2, v3, :cond_31

    aget-object v4, v0, v2
    :try_end_2f
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_2f} :catch_39
    .catchall {:try_start_6 .. :try_end_2f} :catchall_4e

    .line 4397
    .local v4, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    if-nez v4, :cond_33

    .line 4408
    .end local v0    # "arr$":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v6    # "timeUs":J
    :cond_31
    :goto_31
    monitor-exit p0

    return-void

    .line 4400
    .restart local v0    # "arr$":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .restart local v6    # "timeUs":J
    :cond_33
    :try_start_33
    invoke-interface {v4, v6, v7}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onSeek(J)V
    :try_end_36
    .catch Ljava/lang/IllegalStateException; {:try_start_33 .. :try_end_36} :catch_39
    .catchall {:try_start_33 .. :try_end_36} :catchall_4e

    .line 4396
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 4402
    .end local v0    # "arr$":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v6    # "timeUs":J
    :catch_39
    move-exception v1

    .line 4404
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_3a
    iget-boolean v5, p0, DEBUG:Z

    if-eqz v5, :cond_46

    const-string v5, "MTP"

    const-string/jumbo v8, "onSeekComplete but no player"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4405
    :cond_46
    const/4 v5, 0x1

    iput-boolean v5, p0, mPausing:Z

    .line 4406
    const/4 v5, 0x0

    invoke-direct {p0, v5}, notifyTimedEvent(Z)V
    :try_end_4d
    .catchall {:try_start_3a .. :try_end_4d} :catchall_4e

    goto :goto_31

    .line 4391
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catchall_4e
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized notifyStop()V
    .registers 6

    .prologue
    .line 4411
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .local v0, "arr$":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_5
    if-ge v1, v2, :cond_b

    aget-object v3, v0, v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_13

    .line 4412
    .local v3, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    if-nez v3, :cond_d

    .line 4417
    .end local v3    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    :cond_b
    monitor-exit p0

    return-void

    .line 4415
    .restart local v3    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    :cond_d
    :try_start_d
    invoke-interface {v3}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onStop()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_13

    .line 4411
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v0    # "arr$":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    :catchall_13
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized notifyTimedEvent(Z)V
    .registers 26
    .param p1, "refreshTime"    # Z

    .prologue
    .line 4494
    monitor-enter p0

    const/16 v17, 0x1

    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, getCurrentTimeUs(ZZ)J
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_c} :catch_18
    .catchall {:try_start_3 .. :try_end_c} :catchall_127

    move-result-wide v14

    .line 4501
    .local v14, "nowUs":J
    :goto_d
    move-wide v12, v14

    .line 4503
    .local v12, "nextTimeUs":J
    :try_start_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, mSeeking:Z

    move/from16 v17, v0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_127

    if-eqz v17, :cond_36

    .line 4554
    :cond_16
    monitor-exit p0

    return-void

    .line 4495
    .end local v12    # "nextTimeUs":J
    .end local v14    # "nowUs":J
    :catch_18
    move-exception v6

    .line 4497
    .local v6, "e":Ljava/lang/IllegalStateException;
    const/16 v17, 0x1

    :try_start_1b
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mRefresh:Z

    .line 4498
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mPausing:Z

    .line 4499
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, getCurrentTimeUs(ZZ)J

    move-result-wide v14

    .restart local v14    # "nowUs":J
    goto :goto_d

    .line 4508
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    .restart local v12    # "nextTimeUs":J
    :cond_36
    move-object/from16 v0, p0

    iget-boolean v0, v0, DEBUG:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a8

    .line 4509
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 4510
    .local v16, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v17, "notifyTimedEvent("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, mLastTimeUs:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, " -> "

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v20, ") from {"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4512
    const/4 v7, 0x1

    .line 4513
    .local v7, "first":Z
    move-object/from16 v0, p0

    iget-object v5, v0, mTimes:[J

    .local v5, "arr$":[J
    array-length v10, v5

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_78
    if-ge v8, v10, :cond_95

    aget-wide v18, v5, v8

    .line 4514
    .local v18, "time":J
    const-wide/16 v20, -0x1

    cmp-long v17, v18, v20

    if-nez v17, :cond_85

    .line 4513
    :goto_82
    add-int/lit8 v8, v8, 0x1

    goto :goto_78

    .line 4517
    :cond_85
    if-nez v7, :cond_8c

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4518
    :cond_8c
    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4519
    const/4 v7, 0x0

    goto :goto_82

    .line 4521
    .end local v18    # "time":J
    :cond_95
    const-string/jumbo v17, "}"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4522
    const-string v17, "MTP"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4525
    .end local v5    # "arr$":[J
    .end local v7    # "first":Z
    .end local v8    # "i$":I
    .end local v10    # "len$":I
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    :cond_a8
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 4527
    .local v4, "activatedListeners":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/MediaTimeProvider$OnMediaTimeListener;>;"
    const/4 v9, 0x0

    .local v9, "ix":I
    :goto_ae
    move-object/from16 v0, p0

    iget-object v0, v0, mTimes:[J

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_c7

    .line 4528
    move-object/from16 v0, p0

    iget-object v0, v0, mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    move-object/from16 v17, v0

    aget-object v17, v17, v9

    if-nez v17, :cond_12a

    .line 4542
    :cond_c7
    cmp-long v17, v12, v14

    if-lez v17, :cond_191

    move-object/from16 v0, p0

    iget-boolean v0, v0, mPaused:Z

    move/from16 v17, v0

    if-nez v17, :cond_191

    .line 4544
    move-object/from16 v0, p0

    iget-boolean v0, v0, DEBUG:Z

    move/from16 v17, v0

    if-eqz v17, :cond_106

    const-string v17, "MTP"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "scheduling for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " and "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4545
    :cond_106
    const/16 v17, 0x0

    sub-long v20, v12, v14

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, scheduleNotification(IJ)V

    .line 4551
    :goto_113
    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_117
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_16

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 4552
    .local v11, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    invoke-interface {v11, v14, v15}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onTimedEvent(J)V
    :try_end_126
    .catchall {:try_start_1b .. :try_end_126} :catchall_127

    goto :goto_117

    .line 4494
    .end local v4    # "activatedListeners":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/MediaTimeProvider$OnMediaTimeListener;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "ix":I
    .end local v11    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v12    # "nextTimeUs":J
    .end local v14    # "nowUs":J
    :catchall_127
    move-exception v17

    monitor-exit p0

    throw v17

    .line 4531
    .restart local v4    # "activatedListeners":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/MediaTimeProvider$OnMediaTimeListener;>;"
    .restart local v9    # "ix":I
    .restart local v12    # "nextTimeUs":J
    .restart local v14    # "nowUs":J
    :cond_12a
    :try_start_12a
    move-object/from16 v0, p0

    iget-object v0, v0, mTimes:[J

    move-object/from16 v17, v0

    aget-wide v20, v17, v9

    const-wide/16 v22, -0x1

    cmp-long v17, v20, v22

    if-gtz v17, :cond_13c

    .line 4527
    :cond_138
    :goto_138
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_ae

    .line 4533
    :cond_13c
    move-object/from16 v0, p0

    iget-object v0, v0, mTimes:[J

    move-object/from16 v17, v0

    aget-wide v20, v17, v9

    const-wide/16 v22, 0x3e8

    add-long v22, v22, v14

    cmp-long v17, v20, v22

    if-gtz v17, :cond_178

    .line 4534
    move-object/from16 v0, p0

    iget-object v0, v0, mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    move-object/from16 v17, v0

    aget-object v17, v17, v9

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 4535
    move-object/from16 v0, p0

    iget-boolean v0, v0, DEBUG:Z

    move/from16 v17, v0

    if-eqz v17, :cond_16d

    const-string v17, "MTP"

    const-string/jumbo v20, "removed"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4536
    :cond_16d
    move-object/from16 v0, p0

    iget-object v0, v0, mTimes:[J

    move-object/from16 v17, v0

    const-wide/16 v20, -0x1

    aput-wide v20, v17, v9

    goto :goto_138

    .line 4537
    :cond_178
    cmp-long v17, v12, v14

    if-eqz v17, :cond_188

    move-object/from16 v0, p0

    iget-object v0, v0, mTimes:[J

    move-object/from16 v17, v0

    aget-wide v20, v17, v9

    cmp-long v17, v20, v12

    if-gez v17, :cond_138

    .line 4538
    :cond_188
    move-object/from16 v0, p0

    iget-object v0, v0, mTimes:[J

    move-object/from16 v17, v0

    aget-wide v12, v17, v9

    goto :goto_138

    .line 4547
    :cond_191
    move-object/from16 v0, p0

    iget-object v0, v0, mEventHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1a0
    .catchall {:try_start_12a .. :try_end_1a0} :catchall_127

    goto/16 :goto_113
.end method

.method private registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I
    .registers 8
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .prologue
    const/4 v5, 0x0

    .line 4420
    const/4 v0, 0x0

    .line 4421
    .local v0, "i":I
    :goto_2
    iget-object v3, p0, mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v3, v3

    if-ge v0, v3, :cond_13

    .line 4422
    iget-object v3, p0, mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v3, v3, v0

    if-eq v3, p1, :cond_13

    iget-object v3, p0, mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v3, v3, v0

    if-nez v3, :cond_45

    .line 4428
    :cond_13
    iget-object v3, p0, mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v3, v3

    if-lt v0, v3, :cond_34

    .line 4429
    add-int/lit8 v3, v0, 0x1

    new-array v1, v3, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 4431
    .local v1, "newListeners":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    add-int/lit8 v3, v0, 0x1

    new-array v2, v3, [J

    .line 4432
    .local v2, "newTimes":[J
    iget-object v3, p0, mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v4, p0, mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4433
    iget-object v3, p0, mTimes:[J

    iget-object v4, p0, mTimes:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 4434
    iput-object v1, p0, mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 4435
    iput-object v2, p0, mTimes:[J

    .line 4438
    .end local v1    # "newListeners":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v2    # "newTimes":[J
    :cond_34
    iget-object v3, p0, mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v3, v3, v0

    if-nez v3, :cond_44

    .line 4439
    iget-object v3, p0, mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aput-object p1, v3, v0

    .line 4440
    iget-object v3, p0, mTimes:[J

    const-wide/16 v4, -0x1

    aput-wide v4, v3, v0

    .line 4442
    :cond_44
    return v0

    .line 4421
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private scheduleNotification(IJ)V
    .registers 10
    .param p1, "type"    # I
    .param p2, "delayUs"    # J

    .prologue
    const/4 v4, 0x1

    .line 4315
    iget-boolean v1, p0, mSeeking:Z

    if-eqz v1, :cond_a

    if-eqz p1, :cond_9

    if-ne p1, v4, :cond_a

    .line 4324
    :cond_9
    :goto_9
    return-void

    .line 4320
    :cond_a
    iget-boolean v1, p0, DEBUG:Z

    if-eqz v1, :cond_31

    const-string v1, "MTP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleNotification "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4321
    :cond_31
    iget-object v1, p0, mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 4322
    iget-object v1, p0, mEventHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4323
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mEventHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    long-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_9
.end method


# virtual methods
.method public cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .registers 8
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .prologue
    .line 4470
    monitor-enter p0

    .line 4471
    const/4 v0, 0x0

    .line 4472
    .local v0, "i":I
    :goto_2
    :try_start_2
    iget-object v1, p0, mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v1, v1

    if-ge v0, v1, :cond_40

    .line 4473
    iget-object v1, p0, mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_48

    .line 4474
    iget-object v1, p0, mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v4, p0, mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v4, v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4476
    iget-object v1, p0, mTimes:[J

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, mTimes:[J

    iget-object v4, p0, mTimes:[J

    array-length v4, v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 4478
    iget-object v1, p0, mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v2, p0, mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 4479
    iget-object v1, p0, mTimes:[J

    iget-object v2, p0, mTimes:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const-wide/16 v4, -0x1

    aput-wide v4, v1, v2

    .line 4486
    :cond_40
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, scheduleNotification(IJ)V

    .line 4487
    monitor-exit p0

    .line 4488
    return-void

    .line 4481
    :cond_48
    iget-object v1, p0, mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_40

    .line 4472
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4487
    :catchall_51
    move-exception v1

    monitor-exit p0
    :try_end_53
    .catchall {:try_start_2 .. :try_end_53} :catchall_51

    throw v1
.end method

.method public close()V
    .registers 3

    .prologue
    .line 4328
    iget-object v0, p0, mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4329
    iget-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_12

    .line 4330
    iget-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 4331
    const/4 v0, 0x0

    iput-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 4333
    :cond_12
    return-void
.end method

.method protected finalize()V
    .registers 2

    .prologue
    .line 4337
    iget-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_9

    .line 4338
    iget-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 4340
    :cond_9
    return-void
.end method

.method public getCurrentTimeUs(ZZ)J
    .registers 13
    .param p1, "refreshTime"    # Z
    .param p2, "monotonic"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 4577
    monitor-enter p0

    .line 4580
    :try_start_3
    iget-boolean v5, p0, mPaused:Z

    if-eqz v5, :cond_d

    if-nez p1, :cond_d

    .line 4581
    iget-wide v4, p0, mLastReportedTime:J

    monitor-exit p0

    .line 4619
    :goto_c
    return-wide v4

    .line 4584
    :cond_d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 4585
    .local v2, "nanoTime":J
    if-nez p1, :cond_1f

    iget-wide v6, p0, mLastNanoTime:J
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_8c

    const-wide v8, 0x12a05f200L

    add-long/2addr v6, v8

    cmp-long v5, v2, v6

    if-ltz v5, :cond_86

    .line 4588
    :cond_1f
    :try_start_1f
    iget-object v5, p0, mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v5

    int-to-long v6, v5

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iput-wide v6, p0, mLastTimeUs:J

    .line 4589
    iget-object v5, p0, mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v5

    if-nez v5, :cond_8f

    :goto_33
    iput-boolean v1, p0, mPaused:Z

    .line 4590
    iget-boolean v1, p0, DEBUG:Z

    if-eqz v1, :cond_5e

    const-string v4, "MTP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, mPaused:Z

    if-eqz v1, :cond_91

    const-string/jumbo v1, "paused"

    :goto_47
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " at "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, p0, mLastTimeUs:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_5e} :catch_95
    .catchall {:try_start_1f .. :try_end_5e} :catchall_8c

    .line 4603
    :cond_5e
    :try_start_5e
    iput-wide v2, p0, mLastNanoTime:J

    .line 4604
    if-eqz p2, :cond_c7

    iget-wide v4, p0, mLastTimeUs:J

    iget-wide v6, p0, mLastReportedTime:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_c7

    .line 4606
    iget-wide v4, p0, mLastReportedTime:J

    iget-wide v6, p0, mLastTimeUs:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, mTimeAdjustment:J

    .line 4607
    iget-wide v4, p0, mTimeAdjustment:J

    const-wide/32 v6, 0xf4240

    cmp-long v1, v4, v6

    if-lez v1, :cond_86

    .line 4610
    const/4 v1, 0x0

    iput-boolean v1, p0, mStopped:Z

    .line 4611
    const/4 v1, 0x1

    iput-boolean v1, p0, mSeeking:Z

    .line 4612
    const/4 v1, 0x3

    const-wide/16 v4, 0x0

    invoke-direct {p0, v1, v4, v5}, scheduleNotification(IJ)V

    .line 4619
    :cond_86
    :goto_86
    invoke-direct {p0, v2, v3, p2}, getEstimatedTime(JZ)J

    move-result-wide v4

    monitor-exit p0

    goto :goto_c

    .line 4620
    .end local v2    # "nanoTime":J
    :catchall_8c
    move-exception v1

    monitor-exit p0
    :try_end_8e
    .catchall {:try_start_5e .. :try_end_8e} :catchall_8c

    throw v1

    .restart local v2    # "nanoTime":J
    :cond_8f
    move v1, v4

    .line 4589
    goto :goto_33

    .line 4590
    :cond_91
    :try_start_91
    const-string/jumbo v1, "playing"
    :try_end_94
    .catch Ljava/lang/IllegalStateException; {:try_start_91 .. :try_end_94} :catch_95
    .catchall {:try_start_91 .. :try_end_94} :catchall_8c

    goto :goto_47

    .line 4591
    :catch_95
    move-exception v0

    .line 4592
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_96
    iget-boolean v1, p0, mPausing:Z

    if-eqz v1, :cond_c6

    .line 4594
    const/4 v1, 0x0

    iput-boolean v1, p0, mPausing:Z

    .line 4595
    invoke-direct {p0, v2, v3, p2}, getEstimatedTime(JZ)J

    .line 4596
    const/4 v1, 0x1

    iput-boolean v1, p0, mPaused:Z

    .line 4597
    iget-boolean v1, p0, DEBUG:Z

    if-eqz v1, :cond_c1

    const-string v1, "MTP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal state, but pausing: estimating at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, mLastReportedTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4598
    :cond_c1
    iget-wide v4, p0, mLastReportedTime:J

    monitor-exit p0

    goto/16 :goto_c

    .line 4601
    :cond_c6
    throw v0

    .line 4615
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_c7
    const-wide/16 v4, 0x0

    iput-wide v4, p0, mTimeAdjustment:J
    :try_end_cb
    .catchall {:try_start_96 .. :try_end_cb} :catchall_8c

    goto :goto_86
.end method

.method public notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .registers 9
    .param p1, "timeUs"    # J
    .param p3, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .prologue
    .line 4447
    monitor-enter p0

    .line 4448
    :try_start_1
    iget-boolean v0, p0, DEBUG:Z

    if-eqz v0, :cond_1e

    const-string v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyAt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4449
    :cond_1e
    iget-object v0, p0, mTimes:[J

    invoke-direct {p0, p3}, registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    move-result v1

    aput-wide p1, v0, v1

    .line 4450
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, scheduleNotification(IJ)V

    .line 4451
    monitor-exit p0

    .line 4452
    return-void

    .line 4451
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public onNewPlayer()V
    .registers 5

    .prologue
    .line 4381
    iget-boolean v0, p0, mRefresh:Z

    if-eqz v0, :cond_12

    .line 4382
    monitor-enter p0

    .line 4383
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, mStopped:Z

    .line 4384
    const/4 v0, 0x1

    iput-boolean v0, p0, mSeeking:Z

    .line 4385
    const/4 v0, 0x3

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, scheduleNotification(IJ)V

    .line 4386
    monitor-exit p0

    .line 4388
    :cond_12
    return-void

    .line 4386
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public onPaused(Z)V
    .registers 6
    .param p1, "paused"    # Z

    .prologue
    .line 4344
    monitor-enter p0

    .line 4345
    :try_start_1
    iget-boolean v0, p0, DEBUG:Z

    if-eqz v0, :cond_1e

    const-string v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4346
    :cond_1e
    iget-boolean v0, p0, mStopped:Z

    if-eqz v0, :cond_30

    .line 4347
    const/4 v0, 0x0

    iput-boolean v0, p0, mStopped:Z

    .line 4348
    const/4 v0, 0x1

    iput-boolean v0, p0, mSeeking:Z

    .line 4349
    const/4 v0, 0x3

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, scheduleNotification(IJ)V

    .line 4355
    :goto_2e
    monitor-exit p0

    .line 4356
    return-void

    .line 4351
    :cond_30
    iput-boolean p1, p0, mPausing:Z

    .line 4352
    const/4 v0, 0x0

    iput-boolean v0, p0, mSeeking:Z

    .line 4353
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, scheduleNotification(IJ)V

    goto :goto_2e

    .line 4355
    :catchall_3c
    move-exception v0

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 4372
    monitor-enter p0

    .line 4373
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, mStopped:Z

    .line 4374
    const/4 v0, 0x1

    iput-boolean v0, p0, mSeeking:Z

    .line 4375
    const/4 v0, 0x3

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, scheduleNotification(IJ)V

    .line 4376
    monitor-exit p0

    .line 4377
    return-void

    .line 4376
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public onStopped()V
    .registers 5

    .prologue
    .line 4360
    monitor-enter p0

    .line 4361
    :try_start_1
    iget-boolean v0, p0, DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "MTP"

    const-string/jumbo v1, "onStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4362
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, mPaused:Z

    .line 4363
    const/4 v0, 0x1

    iput-boolean v0, p0, mStopped:Z

    .line 4364
    const/4 v0, 0x0

    iput-boolean v0, p0, mSeeking:Z

    .line 4365
    const/4 v0, 0x2

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, scheduleNotification(IJ)V

    .line 4366
    monitor-exit p0

    .line 4367
    return-void

    .line 4366
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .prologue
    .line 4455
    monitor-enter p0

    .line 4456
    :try_start_1
    iget-boolean v1, p0, DEBUG:Z

    if-eqz v1, :cond_d

    const-string v1, "MTP"

    const-string/jumbo v2, "scheduleUpdate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4457
    :cond_d
    invoke-direct {p0, p1}, registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    move-result v0

    .line 4459
    .local v0, "i":I
    iget-boolean v1, p0, mStopped:Z

    if-eqz v1, :cond_1d

    .line 4460
    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, scheduleNotification(IJ)V

    .line 4465
    :goto_1b
    monitor-exit p0

    .line 4466
    return-void

    .line 4462
    :cond_1d
    iget-object v1, p0, mTimes:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 4463
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, scheduleNotification(IJ)V

    goto :goto_1b

    .line 4465
    .end local v0    # "i":I
    :catchall_2a
    move-exception v1

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2a

    throw v1
.end method
