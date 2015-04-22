.class Landroid/media/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .registers 2

    .prologue
    .line 4679
    iput-object p1, p0, this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/media/AudioService;
    .param p2, "x1"    # Landroid/media/AudioService$1;

    .prologue
    .line 4679
    invoke-direct {p0, p1}, <init>(Landroid/media/AudioService;)V

    return-void
.end method

.method static synthetic access$6100(Landroid/media/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService$AudioHandler;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 4679
    invoke-direct {p0, p1}, cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private cleanupPlayer(Landroid/media/MediaPlayer;)V
    .registers 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 4994
    if-eqz p1, :cond_8

    .line 4996
    :try_start_2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 4997
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_8} :catch_9

    .line 5002
    :cond_8
    :goto_8
    return-void

    .line 4998
    :catch_9
    move-exception v0

    .line 4999
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method private onLoadSoundEffects()Z
    .registers 16

    .prologue
    .line 4762
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v10}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 4763
    :try_start_7
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSystemReady:Z
    invoke-static {v10}, Landroid/media/AudioService;->access$5600(Landroid/media/AudioService;)Z

    move-result v10

    if-nez v10, :cond_1a

    .line 4764
    const-string v10, "AudioService"

    const-string/jumbo v12, "onLoadSoundEffects() called before boot complete"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4765
    const/4 v10, 0x0

    monitor-exit v11

    .line 4880
    :goto_19
    return v10

    .line 4768
    :cond_1a
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    if-eqz v10, :cond_28

    .line 4769
    const/4 v10, 0x1

    monitor-exit v11

    goto :goto_19

    .line 4879
    :catchall_25
    move-exception v10

    monitor-exit v11
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_25

    throw v10

    .line 4772
    :cond_28
    :try_start_28
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->loadTouchSoundAssets()V
    invoke-static {v10}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)V

    .line 4774
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    new-instance v12, Landroid/media/SoundPool$Builder;

    invoke-direct {v12}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v12

    new-instance v13, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v13}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v14, 0xd

    invoke-virtual {v13, v14}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v12

    # setter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$2102(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 4781
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    const/4 v12, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolCallback;)Landroid/media/AudioService$SoundPoolCallback;

    .line 4782
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    new-instance v12, Landroid/media/AudioService$SoundPoolListenerThread;

    iget-object v13, p0, this$0:Landroid/media/AudioService;

    invoke-direct {v12, v13}, Landroid/media/AudioService$SoundPoolListenerThread;-><init>(Landroid/media/AudioService;)V

    # setter for: Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$5802(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolListenerThread;)Landroid/media/AudioService$SoundPoolListenerThread;

    .line 4783
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;
    invoke-static {v10}, Landroid/media/AudioService;->access$5800(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolListenerThread;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioService$SoundPoolListenerThread;->start()V

    .line 4784
    const/4 v0, 0x3

    .local v0, "attempts":I
    move v1, v0

    .line 4785
    .end local v0    # "attempts":I
    .local v1, "attempts":I
    :goto_75
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v10}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;
    :try_end_7a
    .catchall {:try_start_28 .. :try_end_7a} :catchall_25

    move-result-object v10

    if-nez v10, :cond_98

    add-int/lit8 v0, v1, -0x1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    if-lez v1, :cond_99

    .line 4788
    :try_start_81
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v10}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v10

    const-wide/16 v12, 0x1388

    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_8c
    .catch Ljava/lang/InterruptedException; {:try_start_81 .. :try_end_8c} :catch_8e
    .catchall {:try_start_81 .. :try_end_8c} :catchall_25

    move v1, v0

    .line 4791
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_75

    .line 4789
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    :catch_8e
    move-exception v2

    .line 4790
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_8f
    const-string v10, "AudioService"

    const-string v12, "Interrupted while waiting sound pool listener thread."

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 4791
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_75

    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_98
    move v0, v1

    .line 4794
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    :cond_99
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v10}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;

    move-result-object v10

    if-nez v10, :cond_d9

    .line 4795
    const-string v10, "AudioService"

    const-string/jumbo v12, "onLoadSoundEffects() SoundPool listener or thread creation error"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4796
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Landroid/os/Looper;

    move-result-object v10

    if-eqz v10, :cond_c0

    .line 4797
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Looper;->quit()V

    .line 4798
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    const/4 v12, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$1902(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 4800
    :cond_c0
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    const/4 v12, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$5802(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolListenerThread;)Landroid/media/AudioService$SoundPoolListenerThread;

    .line 4801
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/SoundPool;->release()V

    .line 4802
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    const/4 v12, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$2102(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 4803
    const/4 v10, 0x0

    monitor-exit v11

    goto/16 :goto_19

    .line 4811
    :cond_d9
    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$5900()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    new-array v7, v10, [I

    .line 4812
    .local v7, "poolId":[I
    const/4 v4, 0x0

    .local v4, "fileIdx":I
    :goto_e4
    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$5900()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_f4

    .line 4813
    const/4 v10, -0x1

    aput v10, v7, v4

    .line 4812
    add-int/lit8 v4, v4, 0x1

    goto :goto_e4

    .line 4821
    :cond_f4
    const/4 v6, 0x0

    .line 4822
    .local v6, "numSamples":I
    const/4 v3, 0x0

    .local v3, "effect":I
    :goto_f6
    const/16 v10, 0xe

    if-ge v3, v10, :cond_1a6

    .line 4824
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    aget v10, v10, v12

    if-nez v10, :cond_10a

    .line 4822
    :goto_107
    add-int/lit8 v3, v3, 0x1

    goto :goto_f6

    .line 4827
    :cond_10a
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x0

    aget v10, v10, v12

    aget v10, v7, v10

    const/4 v12, -0x1

    if-ne v10, v12, :cond_18c

    .line 4828
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "/media/audio/ui/"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$5900()Ljava/util/List;

    move-result-object v10

    iget-object v13, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v13}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v3

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4831
    .local v5, "filePath":Ljava/lang/String;
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v12}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v8

    .line 4832
    .local v8, "sampleId":I
    if-gtz v8, :cond_170

    .line 4833
    const-string v10, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Soundpool could not load file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_107

    .line 4835
    :cond_170
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    aput v8, v10, v12

    .line 4836
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x0

    aget v10, v10, v12

    aput v8, v7, v10

    .line 4837
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_107

    .line 4840
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v8    # "sampleId":I
    :cond_18c
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    iget-object v13, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v13}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v13

    aget-object v13, v13, v3

    const/4 v14, 0x0

    aget v13, v13, v14

    aget v13, v7, v13

    aput v13, v10, v12

    goto/16 :goto_107

    .line 4845
    :cond_1a6
    if-lez v6, :cond_1dc

    .line 4846
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v10}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/media/AudioService$SoundPoolCallback;->setSamples([I)V
    :try_end_1b1
    .catchall {:try_start_8f .. :try_end_1b1} :catchall_25

    .line 4848
    const/4 v0, 0x3

    .line 4849
    const/4 v9, 0x1

    .local v9, "status":I
    move v1, v0

    .line 4850
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    :goto_1b4
    const/4 v10, 0x1

    if-ne v9, v10, :cond_254

    add-int/lit8 v0, v1, -0x1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    if-lez v1, :cond_1dd

    .line 4852
    :try_start_1bb
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v10}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v10

    const-wide/16 v12, 0x1388

    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V

    .line 4853
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;
    invoke-static {v10}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioService$SoundPoolCallback;->status()I
    :try_end_1cf
    .catch Ljava/lang/InterruptedException; {:try_start_1bb .. :try_end_1cf} :catch_1d2
    .catchall {:try_start_1bb .. :try_end_1cf} :catchall_25

    move-result v9

    move v1, v0

    .line 4856
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_1b4

    .line 4854
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    :catch_1d2
    move-exception v2

    .line 4855
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    :try_start_1d3
    const-string v10, "AudioService"

    const-string v12, "Interrupted while waiting sound pool callback."

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 4856
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_1b4

    .line 4859
    .end local v1    # "attempts":I
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v9    # "status":I
    .restart local v0    # "attempts":I
    :cond_1dc
    const/4 v9, -0x1

    .line 4862
    .restart local v9    # "status":I
    :cond_1dd
    :goto_1dd
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Landroid/os/Looper;

    move-result-object v10

    if-eqz v10, :cond_1f4

    .line 4863
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Looper;->quit()V

    .line 4864
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    const/4 v12, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$1902(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 4866
    :cond_1f4
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    const/4 v12, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$5802(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolListenerThread;)Landroid/media/AudioService$SoundPoolListenerThread;

    .line 4867
    if-eqz v9, :cond_24b

    .line 4868
    const-string v10, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "onLoadSoundEffects(), Error "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " while loading samples"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4870
    const/4 v3, 0x0

    :goto_21c
    const/16 v10, 0xe

    if-ge v3, v10, :cond_23c

    .line 4871
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    aget v10, v10, v12

    if-lez v10, :cond_239

    .line 4872
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v10}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v10

    aget-object v10, v10, v3

    const/4 v12, 0x1

    const/4 v13, -0x1

    aput v13, v10, v12

    .line 4870
    :cond_239
    add-int/lit8 v3, v3, 0x1

    goto :goto_21c

    .line 4876
    :cond_23c
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/SoundPool;->release()V

    .line 4877
    iget-object v10, p0, this$0:Landroid/media/AudioService;

    const/4 v12, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v10, v12}, Landroid/media/AudioService;->access$2102(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 4879
    :cond_24b
    monitor-exit v11
    :try_end_24c
    .catchall {:try_start_1d3 .. :try_end_24c} :catchall_25

    .line 4880
    if-nez v9, :cond_251

    const/4 v10, 0x1

    goto/16 :goto_19

    :cond_251
    const/4 v10, 0x0

    goto/16 :goto_19

    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    :cond_254
    move v0, v1

    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    goto :goto_1dd
.end method

.method private onPersistSafeVolumeState(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    .line 5009
    iget-object v0, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "audio_safe_volume_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5012
    return-void
.end method

.method private onPlaySoundEffect(II)V
    .registers 15
    .param p1, "effectType"    # I
    .param p2, "volume"    # I

    .prologue
    .line 4915
    iget-object v0, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 4917
    :try_start_7
    invoke-direct {p0}, onLoadSoundEffects()Z

    .line 4919
    iget-object v0, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 4920
    const-string v0, "AudioService"

    const-string/jumbo v1, "playSoundEffect mSoundPool == null !!!."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4921
    monitor-exit v11

    .line 4991
    :goto_1b
    return-void

    .line 4933
    :cond_1c
    const/high16 v2, 0x3f800000    # 1.0f

    .line 4934
    .local v2, "volFloat":F
    iget-object v0, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setStreamType(I)V
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_60

    .line 4936
    packed-switch p1, :pswitch_data_124

    .line 4947
    :goto_2b
    :pswitch_2b
    const/high16 v2, 0x3f800000    # 1.0f

    .line 4949
    :try_start_2d
    const-string/jumbo v0, "situation=1;device=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_37} :catch_71
    .catchall {:try_start_2d .. :try_end_37} :catchall_60

    move-result v2

    .line 4958
    :goto_38
    :try_start_38
    iget-object v0, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v0}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v0

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget v0, v0, v1

    if-lez v0, :cond_7c

    .line 4959
    iget-object v0, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v1}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v1

    aget-object v1, v1, p1

    const/4 v3, 0x1

    aget v1, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 4990
    :goto_5e
    monitor-exit v11

    goto :goto_1b

    .end local v2    # "volFloat":F
    :catchall_60
    move-exception v0

    monitor-exit v11
    :try_end_62
    .catchall {:try_start_38 .. :try_end_62} :catchall_60

    throw v0

    .line 4941
    .restart local v2    # "volFloat":F
    :pswitch_63
    const/high16 v2, 0x3f000000    # 0.5f

    .line 4942
    goto :goto_38

    .line 4944
    :pswitch_66
    :try_start_66
    iget-object v0, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setStreamType(I)V

    goto :goto_2b

    .line 4950
    :catch_71
    move-exception v7

    .line 4951
    .local v7, "e":Ljava/lang/NumberFormatException;
    const-string v0, "AudioService"

    const-string v1, "NumberFormatException occurred. Play default volume touch tone."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4952
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_38

    .line 4962
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_7c
    new-instance v10, Landroid/media/MediaPlayer;

    invoke-direct {v10}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_81
    .catchall {:try_start_66 .. :try_end_81} :catchall_60

    .line 4964
    .local v10, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$5900()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, p1

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4966
    .local v9, "filePath":Ljava/lang/String;
    invoke-virtual {v10, v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 4967
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 4968
    invoke-virtual {v10}, Landroid/media/MediaPlayer;->prepare()V

    .line 4969
    invoke-virtual {v10, v2}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 4970
    new-instance v0, Landroid/media/AudioService$AudioHandler$1;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioHandler$1;-><init>(Landroid/media/AudioService$AudioHandler;)V

    invoke-virtual {v10, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 4975
    new-instance v0, Landroid/media/AudioService$AudioHandler$2;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioHandler$2;-><init>(Landroid/media/AudioService$AudioHandler;)V

    invoke-virtual {v10, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 4981
    invoke-virtual {v10}, Landroid/media/MediaPlayer;->start()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_d1} :catch_d2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_81 .. :try_end_d1} :catch_ed
    .catch Ljava/lang/IllegalStateException; {:try_start_81 .. :try_end_d1} :catch_108
    .catchall {:try_start_81 .. :try_end_d1} :catchall_60

    goto :goto_5e

    .line 4982
    .end local v9    # "filePath":Ljava/lang/String;
    :catch_d2
    move-exception v8

    .line 4983
    .local v8, "ex":Ljava/io/IOException;
    :try_start_d3
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IOException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5e

    .line 4984
    .end local v8    # "ex":Ljava/io/IOException;
    :catch_ed
    move-exception v8

    .line 4985
    .local v8, "ex":Ljava/lang/IllegalArgumentException;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5e

    .line 4986
    .end local v8    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_108
    move-exception v8

    .line 4987
    .local v8, "ex":Ljava/lang/IllegalStateException;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer IllegalStateException: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_121
    .catchall {:try_start_d3 .. :try_end_121} :catchall_60

    goto/16 :goto_5e

    .line 4936
    nop

    :pswitch_data_124
    .packed-switch 0x5
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_63
        :pswitch_2b
        :pswitch_2b
        :pswitch_66
    .end packed-switch
.end method

.method private onUnloadSoundEffects()V
    .registers 8

    .prologue
    .line 4889
    iget-object v3, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 4890
    :try_start_7
    iget-object v3, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    if-nez v3, :cond_11

    .line 4891
    monitor-exit v4

    .line 4912
    :goto_10
    return-void

    .line 4894
    :cond_11
    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$5900()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 4895
    .local v2, "poolId":[I
    const/4 v1, 0x0

    .local v1, "fileIdx":I
    :goto_1c
    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;
    invoke-static {}, Landroid/media/AudioService;->access$5900()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2c

    .line 4896
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 4895
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 4899
    :cond_2c
    const/4 v0, 0x0

    .local v0, "effect":I
    :goto_2d
    const/16 v3, 0xe

    if-ge v0, v3, :cond_82

    .line 4900
    iget-object v3, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    if-gtz v3, :cond_41

    .line 4899
    :cond_3e
    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 4903
    :cond_41
    iget-object v3, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    aget v3, v2, v3

    if-nez v3, :cond_3e

    .line 4904
    iget-object v3, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    iget-object v5, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v5}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v5

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/media/SoundPool;->unload(I)Z

    .line 4905
    iget-object v3, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, v3, v5

    .line 4906
    iget-object v3, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I
    invoke-static {v3}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)[[I

    move-result-object v3

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    const/4 v5, -0x1

    aput v5, v2, v3

    goto :goto_3e

    .line 4911
    .end local v0    # "effect":I
    .end local v1    # "fileIdx":I
    .end local v2    # "poolId":[I
    :catchall_7f
    move-exception v3

    monitor-exit v4
    :try_end_81
    .catchall {:try_start_7 .. :try_end_81} :catchall_7f

    throw v3

    .line 4909
    .restart local v0    # "effect":I
    .restart local v1    # "fileIdx":I
    .restart local v2    # "poolId":[I
    :cond_82
    :try_start_82
    iget-object v3, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Landroid/media/SoundPool;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/SoundPool;->release()V

    .line 4910
    iget-object v3, p0, this$0:Landroid/media/AudioService;

    const/4 v5, 0x0

    # setter for: Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v3, v5}, Landroid/media/AudioService;->access$2102(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 4911
    monitor-exit v4
    :try_end_92
    .catchall {:try_start_82 .. :try_end_92} :catchall_7f

    goto/16 :goto_10
.end method

.method private persistRingerMode(I)V
    .registers 4
    .param p1, "ringerMode"    # I

    .prologue
    .line 4753
    iget-object v0, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4757
    :goto_8
    return-void

    .line 4756
    :cond_9
    iget-object v0, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_ringer"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8
.end method

.method private persistVolume(Landroid/media/AudioService$VolumeStreamState;I)V
    .registers 8
    .param p1, "streamState"    # Landroid/media/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .prologue
    .line 4729
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 4750
    :cond_8
    :goto_8
    return-void

    .line 4732
    :cond_9
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->isPlatformTelevision()Z
    invoke-static {v1}, Landroid/media/AudioService;->access$5500(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_18

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    .line 4736
    :cond_18
    invoke-virtual {p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v0, v1, 0xa

    .line 4737
    .local v0, "nVolume":I
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_34

    .line 4738
    const/4 v1, 0x2

    if-ne p2, v1, :cond_4b

    .line 4739
    const-string/jumbo v1, "persist.audio.sysvolume"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4746
    :cond_34
    :goto_34
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_8

    .line 4740
    :cond_4b
    const/4 v1, 0x4

    if-ne p2, v1, :cond_59

    .line 4741
    const-string/jumbo v1, "persist.audio.headsetsysvolume"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 4742
    :cond_59
    const/16 v1, 0x8

    if-ne p2, v1, :cond_34

    .line 4743
    const-string/jumbo v1, "persist.audio.hphonesysvolume"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
.end method

.method private setAllVolumes(Landroid/media/AudioService$VolumeStreamState;)V
    .registers 6
    .param p1, "streamState"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 4716
    invoke-virtual {p1}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 4719
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 4720
    .local v0, "numStreamTypes":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "streamType":I
    :goto_9
    if-ltz v1, :cond_2d

    .line 4721
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    if-eq v1, v2, :cond_2a

    iget-object v2, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v2}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)[I

    move-result-object v2

    aget v2, v2, v1

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    if-ne v2, v3, :cond_2a

    .line 4723
    iget-object v2, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v2}, Landroid/media/AudioService;->access$5200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 4720
    :cond_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 4726
    :cond_2d
    return-void
.end method

.method private setDeviceVolume(Landroid/media/AudioService$VolumeStreamState;I)V
    .registers 13
    .param p1, "streamState"    # Landroid/media/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .prologue
    .line 4684
    invoke-virtual {p1, p2}, Landroid/media/AudioService$VolumeStreamState;->applyDeviceVolume(I)V

    .line 4687
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v7

    .line 4688
    .local v7, "numStreamTypes":I
    add-int/lit8 v9, v7, -0x1

    .local v9, "streamType":I
    :goto_9
    if-ltz v9, :cond_4c

    .line 4689
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eq v9, v0, :cond_49

    iget-object v0, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v0}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)[I

    move-result-object v0

    aget v0, v0, v9

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    if-ne v0, v1, :cond_49

    .line 4693
    iget-object v0, p0, this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v0, v9}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;I)I

    move-result v8

    .line 4694
    .local v8, "streamDevice":I
    if-eq p2, v8, :cond_3e

    iget-object v0, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_3e

    and-int/lit16 v0, p2, 0x380

    if-eqz v0, :cond_3e

    .line 4696
    iget-object v0, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v0}, Landroid/media/AudioService;->access$5200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeStreamState;->applyDeviceVolume(I)V

    .line 4698
    :cond_3e
    iget-object v0, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v0}, Landroid/media/AudioService;->access$5200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v0

    aget-object v0, v0, v9

    invoke-virtual {v0, v8}, Landroid/media/AudioService$VolumeStreamState;->applyDeviceVolume(I)V

    .line 4688
    .end local v8    # "streamDevice":I
    :cond_49
    add-int/lit8 v9, v9, -0x1

    goto :goto_9

    .line 4703
    :cond_4c
    iget-object v0, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v0}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/16 v6, 0x1f4

    move v3, p2

    move-object v5, p1

    # invokes: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4711
    return-void
.end method

.method private setForceUse(II)V
    .registers 3
    .param p1, "usage"    # I
    .param p2, "config"    # I

    .prologue
    .line 5005
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5006
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 5015
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_464

    .line 5300
    :cond_7
    :goto_7
    return-void

    .line 5018
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, setDeviceVolume(Landroid/media/AudioService$VolumeStreamState;I)V

    goto :goto_7

    .line 5022
    :sswitch_18
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, setAllVolumes(Landroid/media/AudioService$VolumeStreamState;)V

    goto :goto_7

    .line 5026
    :sswitch_24
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioService$VolumeStreamState;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, persistVolume(Landroid/media/AudioService$VolumeStreamState;I)V

    goto :goto_7

    .line 5030
    :sswitch_34
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 5033
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volume_master"

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    goto :goto_7

    .line 5040
    :sswitch_56
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 5043
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volume_master_mute"

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_7

    .line 5052
    :sswitch_77
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, persistRingerMode(I)V

    goto :goto_7

    .line 5056
    :sswitch_85
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSystemReady:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$5600(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v1

    if-eqz v1, :cond_b0

    .line 5058
    :cond_95
    const-string v1, "AudioService"

    const-string v2, "Media server died."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5059
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v1}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    # invokes: Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v1 .. v7}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_7

    .line 5063
    :cond_b0
    const-string v1, "AudioService"

    const-string v2, "Media server started."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5071
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMode:I
    invoke-static {v1}, Landroid/media/AudioService;->access$6200(Landroid/media/AudioService;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_cd

    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMode:I
    invoke-static {v1}, Landroid/media/AudioService;->access$6200(Landroid/media/AudioService;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_fe

    :cond_cd
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 5073
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "realcall=on in case of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMode:I
    invoke-static {v3}, Landroid/media/AudioService;->access$6200(Landroid/media/AudioService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5074
    const-string/jumbo v1, "realcall=on"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5077
    :cond_fe
    const-string/jumbo v1, "restarting=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5079
    # invokes: Landroid/media/AudioService;->readAndSetLowRamDevice()V
    invoke-static {}, Landroid/media/AudioService;->access$6300()V

    .line 5082
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 5083
    :try_start_110
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    .line 5084
    .local v17, "set":Ljava/util/Set;
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 5085
    .local v10, "i":Ljava/util/Iterator;
    :goto_120
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15b

    .line 5086
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 5090
    .local v9, "device":Ljava/util/Map$Entry;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v3, 0x800000

    if-ne v1, v3, :cond_143

    .line 5091
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5095
    :cond_143
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v4, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    goto :goto_120

    .line 5100
    .end local v9    # "device":Ljava/util/Map$Entry;
    .end local v10    # "i":Ljava/util/Iterator;
    .end local v17    # "set":Ljava/util/Set;
    :catchall_158
    move-exception v1

    monitor-exit v2
    :try_end_15a
    .catchall {:try_start_110 .. :try_end_15a} :catchall_158

    throw v1

    .restart local v10    # "i":Ljava/util/Iterator;
    .restart local v17    # "set":Ljava/util/Set;
    :cond_15b
    :try_start_15b
    monitor-exit v2
    :try_end_15c
    .catchall {:try_start_15b .. :try_end_15c} :catchall_158

    .line 5102
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMode:I
    invoke-static {v1}, Landroid/media/AudioService;->access$6200(Landroid/media/AudioService;)I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    .line 5105
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mForcedUseForComm:I
    invoke-static {v2}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5106
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mForcedUseForComm:I
    invoke-static {v2}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5107
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    invoke-static {v1}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1c5

    const/16 v1, 0xb

    :goto_190
    invoke-static {v2, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5110
    const/4 v1, 0x6

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mForcedUseForFMRadio:I
    invoke-static {v2}, Landroid/media/AudioService;->access$6400(Landroid/media/AudioService;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5113
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v13

    .line 5114
    .local v13, "numStreamTypes":I
    add-int/lit8 v19, v13, -0x1

    .local v19, "streamType":I
    :goto_1a5
    if-ltz v19, :cond_1c7

    .line 5115
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v1}, Landroid/media/AudioService;->access$5200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v1

    aget-object v18, v1, v19

    .line 5116
    .local v18, "streamState":Landroid/media/AudioService$VolumeStreamState;
    const/4 v1, 0x0

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mIndexMax:I
    invoke-static/range {v18 .. v18}, Landroid/media/AudioService$VolumeStreamState;->access$6500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    move/from16 v0, v19

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 5118
    invoke-virtual/range {v18 .. v18}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 5114
    add-int/lit8 v19, v19, -0x1

    goto :goto_1a5

    .line 5107
    .end local v13    # "numStreamTypes":I
    .end local v18    # "streamState":Landroid/media/AudioService$VolumeStreamState;
    .end local v19    # "streamType":I
    :cond_1c5
    const/4 v1, 0x0

    goto :goto_190

    .line 5121
    .restart local v13    # "numStreamTypes":I
    .restart local v19    # "streamType":I
    :cond_1c7
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->isFMPlayerActive()Z

    move-result v1

    if-eqz v1, :cond_1da

    .line 5122
    const v1, -0x7fffe000

    const/4 v2, 0x1

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 5126
    :cond_1da
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->getRingerMode()I

    move-result v2

    const/4 v3, 0x0

    # invokes: Landroid/media/AudioService;->setRingerModeInt(IZ)V
    invoke-static {v1, v2, v3}, Landroid/media/AudioService;->access$6600(Landroid/media/AudioService;IZ)V

    .line 5129
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->restoreMasterVolume()V
    invoke-static {v1}, Landroid/media/AudioService;->access$6700(Landroid/media/AudioService;)V

    .line 5132
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMonitorOrientation:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$6800(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_202

    .line 5133
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->setOrientationForAudioSystem()V
    invoke-static {v1}, Landroid/media/AudioService;->access$6900(Landroid/media/AudioService;)V

    .line 5135
    :cond_202
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mMonitorRotation:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$7000(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_213

    .line 5136
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->setRotationForAudioSystem()V
    invoke-static {v1}, Landroid/media/AudioService;->access$1100(Landroid/media/AudioService;)V

    .line 5139
    :cond_213
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/AudioService;->access$7100(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 5140
    const/4 v3, 0x1

    :try_start_21d
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$7200(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_286

    const/4 v1, 0x0

    :goto_228
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5143
    monitor-exit v2
    :try_end_22c
    .catchall {:try_start_21d .. :try_end_22c} :catchall_289

    .line 5145
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/media/AudioService;->access$7300(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 5146
    const/4 v3, 0x3

    :try_start_236
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mDockAudioMediaEnabled:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$7400(Landroid/media/AudioService;)Z

    move-result v1

    if-eqz v1, :cond_28c

    const/16 v1, 0x8

    :goto_242
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5149
    monitor-exit v2
    :try_end_246
    .catchall {:try_start_236 .. :try_end_246} :catchall_28e

    .line 5150
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;
    invoke-static {v1}, Landroid/media/AudioService;->access$7500(Landroid/media/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v1

    if-eqz v1, :cond_273

    .line 5151
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;
    invoke-static {v1}, Landroid/media/AudioService;->access$7500(Landroid/media/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v2

    monitor-enter v2

    .line 5152
    :try_start_259
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;
    invoke-static {v1}, Landroid/media/AudioService;->access$7600(Landroid/media/AudioService;)Landroid/hardware/hdmi/HdmiTvClient;

    move-result-object v1

    if-eqz v1, :cond_272

    .line 5153
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z
    invoke-static {v3}, Landroid/media/AudioService;->access$7700(Landroid/media/AudioService;)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/media/AudioService;->setHdmiSystemAudioSupported(Z)I

    .line 5155
    :cond_272
    monitor-exit v2
    :try_end_273
    .catchall {:try_start_259 .. :try_end_273} :catchall_291

    .line 5158
    :cond_273
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSamsungAudioService:Landroid/media/SamsungAudioService;
    invoke-static {v1}, Landroid/media/AudioService;->access$7800(Landroid/media/AudioService;)Landroid/media/SamsungAudioService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/SamsungAudioService;->mediaServerDied()V

    .line 5161
    const-string/jumbo v1, "restarting=false"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_7

    .line 5140
    :cond_286
    const/16 v1, 0xa

    goto :goto_228

    .line 5143
    :catchall_289
    move-exception v1

    :try_start_28a
    monitor-exit v2
    :try_end_28b
    .catchall {:try_start_28a .. :try_end_28b} :catchall_289

    throw v1

    .line 5146
    :cond_28c
    const/4 v1, 0x0

    goto :goto_242

    .line 5149
    :catchall_28e
    move-exception v1

    :try_start_28f
    monitor-exit v2
    :try_end_290
    .catchall {:try_start_28f .. :try_end_290} :catchall_28e

    throw v1

    .line 5155
    :catchall_291
    move-exception v1

    :try_start_292
    monitor-exit v2
    :try_end_293
    .catchall {:try_start_292 .. :try_end_293} :catchall_291

    throw v1

    .line 5165
    .end local v10    # "i":Ljava/util/Iterator;
    .end local v13    # "numStreamTypes":I
    .end local v17    # "set":Ljava/util/Set;
    .end local v19    # "streamType":I
    :sswitch_294
    invoke-direct/range {p0 .. p0}, onUnloadSoundEffects()V

    goto/16 :goto_7

    .line 5171
    :sswitch_299
    invoke-direct/range {p0 .. p0}, onLoadSoundEffects()Z

    move-result v11

    .line 5172
    .local v11, "loaded":Z
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 5173
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/media/AudioService$LoadSoundEffectReply;

    .line 5174
    .local v15, "reply":Landroid/media/AudioService$LoadSoundEffectReply;
    monitor-enter v15

    .line 5175
    if-eqz v11, :cond_2b8

    const/4 v1, 0x0

    :goto_2ad
    :try_start_2ad
    iput v1, v15, Landroid/media/AudioService$LoadSoundEffectReply;->mStatus:I

    .line 5176
    invoke-virtual {v15}, Ljava/lang/Object;->notify()V

    .line 5177
    monitor-exit v15

    goto/16 :goto_7

    :catchall_2b5
    move-exception v1

    monitor-exit v15
    :try_end_2b7
    .catchall {:try_start_2ad .. :try_end_2b7} :catchall_2b5

    throw v1

    .line 5175
    :cond_2b8
    const/4 v1, -0x1

    goto :goto_2ad

    .line 5182
    .end local v11    # "loaded":Z
    .end local v15    # "reply":Landroid/media/AudioService$LoadSoundEffectReply;
    :sswitch_2ba
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, onPlaySoundEffect(II)V

    goto/16 :goto_7

    .line 5187
    :sswitch_2c9
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/media/AudioService;->access$3700(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 5188
    :try_start_2d2
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v3, v1}, Landroid/media/AudioService;->access$7900(Landroid/media/AudioService;Ljava/lang/String;)V

    .line 5189
    monitor-exit v2

    goto/16 :goto_7

    :catchall_2e2
    move-exception v1

    monitor-exit v2
    :try_end_2e4
    .catchall {:try_start_2d2 .. :try_end_2e4} :catchall_2e2

    throw v1

    .line 5194
    :sswitch_2e5
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, setForceUse(II)V

    goto/16 :goto_7

    .line 5198
    :sswitch_2f4
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->resetBluetoothSco()V
    invoke-static {v1}, Landroid/media/AudioService;->access$8000(Landroid/media/AudioService;)V

    goto/16 :goto_7

    .line 5203
    :sswitch_2fd
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "h2w-before-boot-completed"

    if-ne v1, v2, :cond_342

    .line 5204
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSystemReady:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$5600(Landroid/media/AudioService;)Z

    move-result v1

    if-nez v1, :cond_318

    .line 5205
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    sparse-switch v1, :sswitch_data_4d6

    .line 5221
    :cond_318
    :goto_318
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Landroid/media/AudioService;->access$8300(Landroid/media/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    .line 5208
    :sswitch_325
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const-string v4, "h2w"

    # invokes: Landroid/media/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;)V
    invoke-static {v1, v2, v3, v4}, Landroid/media/AudioService;->access$8100(Landroid/media/AudioService;IILjava/lang/String;)V

    .line 5210
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    # setter for: Landroid/media/AudioService;->mLateBootCompleted_WiredDevice:I
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$8202(Landroid/media/AudioService;I)I

    goto :goto_318

    .line 5219
    :cond_342
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Landroid/media/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;)V
    invoke-static {v2, v3, v4, v1}, Landroid/media/AudioService;->access$8100(Landroid/media/AudioService;IILjava/lang/String;)V

    goto :goto_318

    .line 5225
    :sswitch_358
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/media/AudioService;->onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v2, v1, v3}, Landroid/media/AudioService;->access$8400(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 5226
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Landroid/media/AudioService;->access$8300(Landroid/media/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    .line 5230
    :sswitch_376
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/media/AudioService;->onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v2, v1, v3}, Landroid/media/AudioService;->access$8500(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 5231
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Landroid/media/AudioService;->access$8300(Landroid/media/AudioService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    .line 5235
    :sswitch_394
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    iget-object v1, v1, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v8

    .line 5236
    .local v8, "N":I
    if-lez v8, :cond_3d0

    .line 5238
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    iget-object v2, v1, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v2

    .line 5239
    :try_start_3a7
    new-instance v16, Landroid/media/AudioRoutesInfo;

    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    iget-object v1, v1, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 5240
    .local v16, "routes":Landroid/media/AudioRoutesInfo;
    monitor-exit v2
    :try_end_3b5
    .catchall {:try_start_3a7 .. :try_end_3b5} :catchall_3cd

    .line 5241
    :goto_3b5
    if-lez v8, :cond_3d0

    .line 5242
    add-int/lit8 v8, v8, -0x1

    .line 5243
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    iget-object v1, v1, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v14

    check-cast v14, Landroid/media/IAudioRoutesObserver;

    .line 5245
    .local v14, "obs":Landroid/media/IAudioRoutesObserver;
    :try_start_3c5
    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/media/IAudioRoutesObserver;->dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    :try_end_3ca
    .catch Landroid/os/RemoteException; {:try_start_3c5 .. :try_end_3ca} :catch_3cb

    goto :goto_3b5

    .line 5246
    :catch_3cb
    move-exception v1

    goto :goto_3b5

    .line 5240
    .end local v14    # "obs":Landroid/media/IAudioRoutesObserver;
    .end local v16    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_3cd
    move-exception v1

    :try_start_3ce
    monitor-exit v2
    :try_end_3cf
    .catchall {:try_start_3ce .. :try_end_3cf} :catchall_3cd

    throw v1

    .line 5250
    :cond_3d0
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    iget-object v1, v1, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_7

    .line 5255
    .end local v8    # "N":I
    :sswitch_3db
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->onCheckMusicActive()V
    invoke-static {v1}, Landroid/media/AudioService;->access$8600(Landroid/media/AudioService;)V

    goto/16 :goto_7

    .line 5263
    :sswitch_3e4
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/media/AudioService;->onSendBecomingNoisyIntent(I)V
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$8700(Landroid/media/AudioService;I)V

    goto/16 :goto_7

    .line 5268
    :sswitch_3f1
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    # invokes: Landroid/media/AudioService;->onSendBecomingNoisyIntent(II)V
    invoke-static {v1, v2, v3}, Landroid/media/AudioService;->access$8800(Landroid/media/AudioService;II)V

    goto/16 :goto_7

    .line 5273
    :sswitch_402
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x11

    if-ne v1, v3, :cond_414

    const/4 v1, 0x1

    :goto_40f
    # invokes: Landroid/media/AudioService;->onConfigureSafeVolume(Z)V
    invoke-static {v2, v1}, Landroid/media/AudioService;->access$8900(Landroid/media/AudioService;Z)V

    goto/16 :goto_7

    :cond_414
    const/4 v1, 0x0

    goto :goto_40f

    .line 5276
    :sswitch_416
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, onPersistSafeVolumeState(I)V

    goto/16 :goto_7

    .line 5280
    :sswitch_421
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/media/AudioService;->onBroadcastScoConnectionState(I)V
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$9000(Landroid/media/AudioService;I)V

    goto/16 :goto_7

    .line 5284
    :sswitch_42e
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->onSystemReady()V

    goto/16 :goto_7

    .line 5288
    :sswitch_437
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 5289
    .local v12, "musicActiveMs":I
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "unsafe_volume_music_active_ms"

    const/4 v3, -0x2

    invoke-static {v1, v2, v12, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_7

    .line 5294
    .end local v12    # "musicActiveMs":I
    :sswitch_44c
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "microphone_mute"

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_7

    .line 5015
    :sswitch_data_464
    .sparse-switch
        0x0 -> :sswitch_8
        0x1 -> :sswitch_24
        0x2 -> :sswitch_34
        0x3 -> :sswitch_77
        0x4 -> :sswitch_85
        0x5 -> :sswitch_2ba
        0x6 -> :sswitch_2c9
        0x7 -> :sswitch_299
        0x8 -> :sswitch_2e5
        0x9 -> :sswitch_2f4
        0xa -> :sswitch_18
        0xb -> :sswitch_56
        0xc -> :sswitch_394
        0xd -> :sswitch_2e5
        0xe -> :sswitch_3db
        0xf -> :sswitch_3e4
        0x10 -> :sswitch_402
        0x11 -> :sswitch_402
        0x12 -> :sswitch_416
        0x13 -> :sswitch_421
        0x14 -> :sswitch_294
        0x15 -> :sswitch_42e
        0x16 -> :sswitch_437
        0x17 -> :sswitch_44c
        0x18 -> :sswitch_3f1
        0x64 -> :sswitch_2fd
        0x65 -> :sswitch_358
        0x66 -> :sswitch_376
    .end sparse-switch

    .line 5205
    :sswitch_data_4d6
    .sparse-switch
        0x4 -> :sswitch_325
        0x8 -> :sswitch_325
    .end sparse-switch
.end method
