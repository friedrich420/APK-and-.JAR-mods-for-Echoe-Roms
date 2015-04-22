.class public Landroid/media/AudioService$VolumeStreamState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeStreamState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    }
.end annotation


# instance fields
.field private mDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mIndex:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexMax:I

.field private final mStreamType:I

.field private mVolumeIndexSettingName:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;Ljava/lang/String;I)V
    .registers 8
    .param p2, "settingName"    # Ljava/lang/String;
    .param p3, "streamType"    # I

    .prologue
    .line 4206
    iput-object p1, p0, this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4202
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4208
    iput-object p2, p0, mVolumeIndexSettingName:Ljava/lang/String;

    .line 4210
    iput p3, p0, mStreamType:I

    .line 4218
    # getter for: Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I
    invoke-static {}, Landroid/media/AudioService;->access$4100()[I

    move-result-object v0

    aget v0, v0, p3

    iput v0, p0, mIndexMax:I

    .line 4222
    const/4 v0, 0x0

    iget v1, p0, mIndexMax:I

    invoke-static {p3, v0, v1}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 4223
    iget v0, p0, mIndexMax:I

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, mIndexMax:I

    .line 4226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDeathHandlers:Ljava/util/ArrayList;

    .line 4228
    invoke-virtual {p0}, readSettings()V

    .line 4229
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V
    .registers 5
    .param p1, "x0"    # Landroid/media/AudioService;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/media/AudioService$1;

    .prologue
    .line 4197
    invoke-direct {p0, p1, p2, p3}, <init>(Landroid/media/AudioService;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2400(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 4197
    iget-object v0, p0, mDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/AudioService$VolumeStreamState;)Z
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 4197
    invoke-direct {p0}, isMuted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/media/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 4197
    invoke-direct {p0, p1}, dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$600(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 4197
    iget-object v0, p0, mVolumeIndexSettingName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6500(Landroid/media/AudioService$VolumeStreamState;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 4197
    iget v0, p0, mIndexMax:I

    return v0
.end method

.method static synthetic access$700(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 4197
    iget-object v0, p0, mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$800(Landroid/media/AudioService$VolumeStreamState;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 4197
    iget v0, p0, mStreamType:I

    return v0
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 4623
    const-string v6, "   Mute count: "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4624
    invoke-direct {p0}, muteCount()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 4625
    const-string v6, "   Max: "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4626
    iget v6, p0, mIndexMax:I

    add-int/lit8 v6, v6, 0x5

    div-int/lit8 v6, v6, 0xa

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 4627
    const-string v6, "   Current: "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4628
    iget-object v6, p0, mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 4629
    .local v5, "set":Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4630
    .local v3, "i":Ljava/util/Iterator;
    :cond_29
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_86

    .line 4631
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4632
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4633
    .local v0, "device":I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4634
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v0, v6, :cond_81

    const-string v1, "default"

    .line 4636
    .local v1, "deviceName":Ljava/lang/String;
    :goto_4c
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5f

    .line 4637
    const-string v6, " ("

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4638
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4639
    const-string v6, ")"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4641
    :cond_5f
    const-string v6, ": "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4642
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x5

    div-int/lit8 v4, v6, 0xa

    .line 4643
    .local v4, "index":I
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 4644
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 4645
    const-string v6, ", "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_29

    .line 4634
    .end local v1    # "deviceName":Ljava/lang/String;
    .end local v4    # "index":I
    :cond_81
    invoke-static {v0}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4c

    .line 4649
    .end local v0    # "device":I
    .end local v2    # "entry":Ljava/util/Map$Entry;
    :cond_86
    const-string v6, "   SCO Device count: "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4650
    iget-object v6, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mScoDevices:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/media/AudioService;->access$3400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 4652
    return-void
.end method

.method private getDeathHandler(Landroid/os/IBinder;Z)Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .registers 9
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "state"    # Z

    .prologue
    .line 4604
    iget-object v4, p0, mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4605
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v3, :cond_1c

    .line 4606
    iget-object v4, p0, mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    .line 4607
    .local v0, "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    # getter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mICallback:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$5300(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)Landroid/os/IBinder;

    move-result-object v4

    if-ne p1, v4, :cond_19

    move-object v1, v0

    .line 4619
    .end local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .local v1, "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :goto_18
    return-object v1

    .line 4605
    .end local v1    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .restart local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 4613
    .end local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_1c
    if-eqz p2, :cond_25

    .line 4614
    new-instance v0, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;-><init>(Landroid/media/AudioService$VolumeStreamState;Landroid/os/IBinder;)V

    .restart local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :goto_23
    move-object v1, v0

    .line 4619
    .end local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    .restart local v1    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    goto :goto_18

    .line 4616
    .end local v1    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :cond_25
    const-string v4, "AudioService"

    const-string/jumbo v5, "stream was not muted by this client"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4617
    const/4 v0, 0x0

    .restart local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    goto :goto_23
.end method

.method private getValidIndex(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 4485
    if-gez p1, :cond_4

    .line 4486
    const/4 p1, 0x0

    .line 4491
    .end local p1    # "index":I
    :cond_3
    :goto_3
    return p1

    .line 4487
    .restart local p1    # "index":I
    :cond_4
    iget-object v0, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v0}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;)Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, mIndexMax:I

    if-le p1, v0, :cond_3

    .line 4488
    :cond_10
    iget p1, p0, mIndexMax:I

    goto :goto_3
.end method

.method private declared-synchronized isMuted()Z
    .registers 2

    .prologue
    .line 4598
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, muteCount()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized muteCount()I
    .registers 7

    .prologue
    .line 4576
    monitor-enter p0

    const/4 v0, 0x0

    .line 4577
    .local v0, "count":I
    :try_start_2
    iget-object v5, p0, mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_2b

    move-result v4

    .line 4579
    .local v4, "size":I
    if-nez v4, :cond_d

    move v1, v0

    .line 4594
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_b
    monitor-exit p0

    return v1

    .line 4582
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_d
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v4, :cond_29

    .line 4584
    :try_start_10
    iget-object v5, p0, mDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    # getter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    invoke-static {v5}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$2500(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;)I
    :try_end_1b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_1b} :catch_20
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_1b} :catch_23
    .catchall {:try_start_10 .. :try_end_1b} :catchall_2b

    move-result v5

    add-int/2addr v0, v5

    .line 4582
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 4586
    :catch_20
    move-exception v2

    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    move v1, v0

    .line 4587
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_b

    .line 4588
    .end local v1    # "count":I
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v0    # "count":I
    :catch_23
    move-exception v2

    .line 4589
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_24
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2b

    move v1, v0

    .line 4590
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_b

    .end local v1    # "count":I
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "count":I
    :cond_29
    move v1, v0

    .line 4594
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_b

    .line 4576
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v4    # "size":I
    .restart local v0    # "count":I
    :catchall_2b
    move-exception v5

    monitor-exit p0

    throw v5
.end method


# virtual methods
.method public adjustIndex(II)Z
    .registers 4
    .param p1, "deltaIndex"    # I
    .param p2, "device"    # I

    .prologue
    .line 4355
    invoke-virtual {p0, p2}, getIndex(I)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, setIndex(II)Z

    move-result v0

    return v0
.end method

.method public applyAllVolumes()V
    .registers 10

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 4321
    const-class v6, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v6

    .line 4325
    :try_start_5
    invoke-direct {p0}, isMuted()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 4326
    const/4 v3, 0x0

    .line 4330
    .local v3, "index":I
    :goto_c
    iget v5, p0, mStreamType:I

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v5, v3, v7}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 4332
    iget-object v5, p0, mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 4333
    .local v4, "set":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4334
    .local v2, "i":Ljava/util/Iterator;
    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_79

    .line 4335
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4336
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4337
    .local v0, "device":I
    if-eq v0, v8, :cond_1d

    .line 4338
    invoke-direct {p0}, isMuted()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 4339
    const/4 v3, 0x0

    .line 4348
    :goto_3c
    iget v5, p0, mStreamType:I

    invoke-static {v5, v3, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    goto :goto_1d

    .line 4351
    .end local v0    # "device":I
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "i":Ljava/util/Iterator;
    .end local v3    # "index":I
    .end local v4    # "set":Ljava/util/Set;
    :catchall_42
    move-exception v5

    monitor-exit v6
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_42

    throw v5

    .line 4328
    :cond_45
    const/high16 v5, 0x40000000    # 2.0f

    :try_start_47
    invoke-virtual {p0, v5}, getIndex(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    div-int/lit8 v3, v5, 0xa

    .restart local v3    # "index":I
    goto :goto_c

    .line 4340
    .restart local v0    # "device":I
    .restart local v1    # "entry":Ljava/util/Map$Entry;
    .restart local v2    # "i":Ljava/util/Iterator;
    .restart local v4    # "set":Ljava/util/Set;
    :cond_50
    and-int/lit16 v5, v0, 0x380

    if-eqz v5, :cond_5c

    iget-object v5, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z
    invoke-static {v5}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)Z

    move-result v5

    if-nez v5, :cond_63

    :cond_5c
    iget-object v5, p0, this$0:Landroid/media/AudioService;

    iget v5, v5, Landroid/media/AudioService;->mFullVolumeDevices:I

    and-int/2addr v5, v0

    if-eqz v5, :cond_6a

    .line 4344
    :cond_63
    iget v5, p0, mIndexMax:I

    add-int/lit8 v5, v5, 0x5

    div-int/lit8 v3, v5, 0xa

    goto :goto_3c

    .line 4346
    :cond_6a
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    div-int/lit8 v3, v5, 0xa

    goto :goto_3c

    .line 4351
    .end local v0    # "device":I
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_79
    monitor-exit v6
    :try_end_7a
    .catchall {:try_start_47 .. :try_end_7a} :catchall_42

    .line 4352
    return-void
.end method

.method public applyDeviceVolume(I)V
    .registers 6
    .param p1, "device"    # I

    .prologue
    const/4 v3, 0x0

    .line 4296
    invoke-direct {p0}, isMuted()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4297
    const/4 v0, 0x0

    .line 4306
    .local v0, "index":I
    :goto_8
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->isPlatformVoice()Z
    invoke-static {v1}, Landroid/media/AudioService;->access$4500(Landroid/media/AudioService;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 4317
    :cond_10
    :goto_10
    iget v1, p0, mStreamType:I

    invoke-static {v1, v0, p1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 4318
    return-void

    .line 4298
    .end local v0    # "index":I
    :cond_16
    and-int/lit16 v1, p1, 0x380

    if-eqz v1, :cond_22

    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z
    invoke-static {v1}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;)Z

    move-result v1

    if-nez v1, :cond_29

    :cond_22
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    iget v1, v1, Landroid/media/AudioService;->mFullVolumeDevices:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_30

    .line 4300
    :cond_29
    iget v1, p0, mIndexMax:I

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v0, v1, 0xa

    .restart local v0    # "index":I
    goto :goto_8

    .line 4302
    .end local v0    # "index":I
    :cond_30
    invoke-virtual {p0, p1}, getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v0, v1, 0xa

    .restart local v0    # "index":I
    goto :goto_8

    .line 4307
    :cond_39
    iget v1, p0, mStreamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    iget-object v1, p0, this$0:Landroid/media/AudioService;

    invoke-virtual {v1}, Landroid/media/AudioService;->isMediaSilentMode()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0, p1}, getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    if-eqz v1, :cond_10

    .line 4310
    const-string v1, "AudioService"

    const-string/jumbo v2, "setStreamVolumeIndex reset mMediaSilentMode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4311
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # setter for: Landroid/media/AudioService;->mMediaSilentMode:Z
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$4602(Landroid/media/AudioService;Z)Z

    .line 4312
    iget-object v1, p0, this$0:Landroid/media/AudioService;

    # setter for: Landroid/media/AudioService;->mMediaLastAudibleIndex:I
    invoke-static {v1, v3}, Landroid/media/AudioService;->access$4702(Landroid/media/AudioService;I)I

    goto :goto_10
.end method

.method public checkFixedVolumeDevices()V
    .registers 9

    .prologue
    .line 4465
    const-class v6, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v6

    .line 4467
    :try_start_3
    iget-object v5, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v5}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)[I

    move-result-object v5

    iget v7, p0, mStreamType:I

    aget v5, v5, v7

    const/4 v7, 0x3

    if-ne v5, v7, :cond_5a

    .line 4468
    iget-object v5, p0, mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 4469
    .local v4, "set":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4470
    .local v2, "i":Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 4471
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4472
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4473
    .local v0, "device":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4474
    .local v3, "index":I
    iget-object v5, p0, this$0:Landroid/media/AudioService;

    iget v5, v5, Landroid/media/AudioService;->mFullVolumeDevices:I

    and-int/2addr v5, v0

    if-nez v5, :cond_4a

    iget-object v5, p0, this$0:Landroid/media/AudioService;

    iget v5, v5, Landroid/media/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v5, v0

    if-eqz v5, :cond_53

    if-eqz v3, :cond_53

    .line 4476
    :cond_4a
    iget v5, p0, mIndexMax:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4478
    :cond_53
    invoke-virtual {p0, v0}, applyDeviceVolume(I)V

    goto :goto_1a

    .line 4481
    .end local v0    # "device":I
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "i":Ljava/util/Iterator;
    .end local v3    # "index":I
    .end local v4    # "set":Ljava/util/Set;
    :catchall_57
    move-exception v5

    monitor-exit v6
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw v5

    :cond_5a
    :try_start_5a
    monitor-exit v6
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_57

    .line 4482
    return-void
.end method

.method public getIndex(I)I
    .registers 6
    .param p1, "device"    # I

    .prologue
    .line 4397
    const-class v2, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v2

    .line 4398
    :try_start_3
    iget-object v1, p0, mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4399
    .local v0, "index":Ljava/lang/Integer;
    if-nez v0, :cond_1f

    .line 4401
    iget-object v1, p0, mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "index":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 4403
    .restart local v0    # "index":Ljava/lang/Integer;
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v2

    return v1

    .line 4404
    .end local v0    # "index":Ljava/lang/Integer;
    :catchall_25
    move-exception v1

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public getMaxIndex()I
    .registers 2

    .prologue
    .line 4408
    iget v0, p0, mIndexMax:I

    return v0
.end method

.method public getSettingNameForDevice(I)Ljava/lang/String;
    .registers 6
    .param p1, "device"    # I

    .prologue
    .line 4232
    iget-object v0, p0, mVolumeIndexSettingName:Ljava/lang/String;

    .line 4233
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    .line 4234
    .local v1, "suffix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4237
    .end local v0    # "name":Ljava/lang/String;
    :goto_c
    return-object v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public getStreamType()I
    .registers 2

    .prologue
    .line 4461
    iget v0, p0, mStreamType:I

    return v0
.end method

.method public mute(Landroid/os/IBinder;Z)V
    .registers 8
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "state"    # Z

    .prologue
    .line 4450
    const-class v2, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v2

    .line 4451
    :try_start_3
    invoke-direct {p0, p1, p2}, getDeathHandler(Landroid/os/IBinder;Z)Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    move-result-object v0

    .line 4452
    .local v0, "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    if-nez v0, :cond_25

    .line 4453
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get client death handler for stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mStreamType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4454
    monitor-exit v2

    .line 4458
    :goto_24
    return-void

    .line 4456
    :cond_25
    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(Z)V

    .line 4457
    monitor-exit v2

    goto :goto_24

    .end local v0    # "handler":Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;
    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public readSettings()V
    .registers 13

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v6, -0x1

    .line 4241
    const-class v7, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v7

    .line 4243
    :try_start_6
    iget-object v8, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mUseFixedVolume:Z
    invoke-static {v8}, Landroid/media/AudioService;->access$4200(Landroid/media/AudioService;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 4244
    iget-object v6, p0, mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p0, mIndexMax:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4245
    monitor-exit v7

    .line 4292
    :goto_20
    return-void

    .line 4268
    :cond_21
    const v5, 0x4fbfffff

    .line 4270
    .local v5, "remainingDevices":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    if-eqz v5, :cond_66

    .line 4271
    const/4 v8, 0x1

    shl-int v1, v8, v2

    .line 4272
    .local v1, "device":I
    and-int v8, v1, v5

    if-nez v8, :cond_31

    .line 4270
    :cond_2e
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 4275
    :cond_31
    xor-int/lit8 v8, v1, -0x1

    and-int/2addr v5, v8

    .line 4278
    invoke-virtual {p0, v1}, getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v4

    .line 4281
    .local v4, "name":Ljava/lang/String;
    if-ne v1, v11, :cond_64

    sget-object v8, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    iget v9, p0, mStreamType:I

    aget v0, v8, v9

    .line 4283
    .local v0, "defaultIndex":I
    :goto_40
    iget-object v8, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v8}, Landroid/media/AudioService;->access$4300(Landroid/media/AudioService;)Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, -0x2

    invoke-static {v8, v4, v0, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 4285
    .local v3, "index":I
    if-eq v3, v6, :cond_2e

    .line 4289
    iget-object v8, p0, mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    mul-int/lit8 v10, v3, 0xa

    invoke-direct {p0, v10}, getValidIndex(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 4291
    .end local v0    # "defaultIndex":I
    .end local v1    # "device":I
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "remainingDevices":I
    :catchall_61
    move-exception v6

    monitor-exit v7
    :try_end_63
    .catchall {:try_start_6 .. :try_end_63} :catchall_61

    throw v6

    .restart local v1    # "device":I
    .restart local v2    # "i":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "remainingDevices":I
    :cond_64
    move v0, v6

    .line 4281
    goto :goto_40

    .line 4291
    .end local v1    # "device":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_66
    :try_start_66
    monitor-exit v7
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_61

    goto :goto_20
.end method

.method public setAllIndexes(Landroid/media/AudioService$VolumeStreamState;)V
    .registers 11
    .param p1, "srcStream"    # Landroid/media/AudioService$VolumeStreamState;

    .prologue
    .line 4412
    const-class v7, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v7

    .line 4413
    :try_start_3
    invoke-virtual {p1}, getStreamType()I

    move-result v5

    .line 4416
    .local v5, "srcStreamType":I
    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {p1, v6}, getIndex(I)I

    move-result v3

    .line 4417
    .local v3, "index":I
    iget-object v6, p0, this$0:Landroid/media/AudioService;

    iget v8, p0, mStreamType:I

    # invokes: Landroid/media/AudioService;->rescaleIndex(III)I
    invoke-static {v6, v3, v5, v8}, Landroid/media/AudioService;->access$5100(Landroid/media/AudioService;III)I

    move-result v3

    .line 4418
    iget-object v6, p0, mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 4419
    .local v4, "set":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4420
    .local v2, "i":Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 4421
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4422
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 4435
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "i":Ljava/util/Iterator;
    .end local v3    # "index":I
    .end local v4    # "set":Ljava/util/Set;
    .end local v5    # "srcStreamType":I
    :catchall_33
    move-exception v6

    monitor-exit v7
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v6

    .line 4425
    .restart local v2    # "i":Ljava/util/Iterator;
    .restart local v3    # "index":I
    .restart local v4    # "set":Ljava/util/Set;
    .restart local v5    # "srcStreamType":I
    :cond_36
    :try_start_36
    iget-object v6, p1, mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 4426
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4427
    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 4428
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4429
    .restart local v1    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4430
    .local v0, "device":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4431
    iget-object v6, p0, this$0:Landroid/media/AudioService;

    iget v8, p0, mStreamType:I

    # invokes: Landroid/media/AudioService;->rescaleIndex(III)I
    invoke-static {v6, v3, v5, v8}, Landroid/media/AudioService;->access$5100(Landroid/media/AudioService;III)I

    move-result v3

    .line 4433
    invoke-virtual {p0, v3, v0}, setIndex(II)Z

    goto :goto_40

    .line 4435
    .end local v0    # "device":I
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_6c
    monitor-exit v7
    :try_end_6d
    .catchall {:try_start_36 .. :try_end_6d} :catchall_33

    .line 4436
    return-void
.end method

.method public setAllIndexesToMax()V
    .registers 6

    .prologue
    .line 4439
    const-class v4, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v4

    .line 4440
    :try_start_3
    iget-object v3, p0, mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 4441
    .local v2, "set":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4442
    .local v1, "i":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 4443
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4444
    .local v0, "entry":Ljava/util/Map$Entry;
    iget v3, p0, mIndexMax:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 4446
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "i":Ljava/util/Iterator;
    .end local v2    # "set":Ljava/util/Set;
    :catchall_23
    move-exception v3

    monitor-exit v4
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v3

    .restart local v1    # "i":Ljava/util/Iterator;
    .restart local v2    # "set":Ljava/util/Set;
    :cond_26
    :try_start_26
    monitor-exit v4
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 4447
    return-void
.end method

.method public setIndex(II)Z
    .registers 14
    .param p1, "index"    # I
    .param p2, "device"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4360
    const-class v7, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v7

    .line 4361
    :try_start_5
    invoke-virtual {p0, p2}, getIndex(I)I

    move-result v2

    .line 4362
    .local v2, "oldIndex":I
    invoke-direct {p0, p1}, getValidIndex(I)I

    move-result p1

    .line 4363
    iget-object v8, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    invoke-static {v8}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)Ljava/lang/Boolean;

    move-result-object v8

    monitor-enter v8
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_88

    .line 4364
    :try_start_14
    iget v9, p0, mStreamType:I

    const/4 v10, 0x7

    if-ne v9, v10, :cond_27

    iget-object v9, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;
    invoke-static {v9}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_27

    .line 4365
    iget p1, p0, mIndexMax:I

    .line 4367
    :cond_27
    monitor-exit v8
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_85

    .line 4368
    :try_start_28
    monitor-enter p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_88

    .line 4369
    :try_start_29
    iget-object v8, p0, mIndex:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4370
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_29 .. :try_end_37} :catchall_8b

    .line 4371
    if-eq v2, p1, :cond_92

    .line 4375
    :try_start_39
    iget-object v8, p0, this$0:Landroid/media/AudioService;

    iget v9, p0, mStreamType:I

    # invokes: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v8, v9}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;I)I

    move-result v8

    if-ne p2, v8, :cond_8e

    move v0, v5

    .line 4376
    .local v0, "currentDevice":Z
    :goto_44
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 4377
    .local v1, "numStreamTypes":I
    add-int/lit8 v4, v1, -0x1

    .local v4, "streamType":I
    :goto_4a
    if-ltz v4, :cond_90

    .line 4378
    iget v6, p0, mStreamType:I

    if-eq v4, v6, :cond_82

    iget-object v6, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamVolumeAlias:[I
    invoke-static {v6}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;)[I

    move-result-object v6

    aget v6, v6, v4

    iget v8, p0, mStreamType:I

    if-ne v6, v8, :cond_82

    .line 4380
    iget-object v6, p0, this$0:Landroid/media/AudioService;

    iget v8, p0, mStreamType:I

    # invokes: Landroid/media/AudioService;->rescaleIndex(III)I
    invoke-static {v6, p1, v8, v4}, Landroid/media/AudioService;->access$5100(Landroid/media/AudioService;III)I

    move-result v3

    .line 4381
    .local v3, "scaledIndex":I
    iget-object v6, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v6}, Landroid/media/AudioService;->access$5200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6, v3, p2}, setIndex(II)Z

    .line 4383
    if-eqz v0, :cond_82

    .line 4384
    iget-object v6, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static {v6}, Landroid/media/AudioService;->access$5200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v6

    aget-object v6, v6, v4

    iget-object v8, p0, this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->getDeviceForStream(I)I
    invoke-static {v8, v4}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;I)I

    move-result v8

    invoke-virtual {v6, v3, v8}, setIndex(II)Z
    :try_end_82
    .catchall {:try_start_39 .. :try_end_82} :catchall_88

    .line 4377
    .end local v3    # "scaledIndex":I
    :cond_82
    add-int/lit8 v4, v4, -0x1

    goto :goto_4a

    .line 4367
    .end local v0    # "currentDevice":Z
    .end local v1    # "numStreamTypes":I
    .end local v4    # "streamType":I
    :catchall_85
    move-exception v5

    :try_start_86
    monitor-exit v8
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    :try_start_87
    throw v5

    .line 4393
    .end local v2    # "oldIndex":I
    :catchall_88
    move-exception v5

    monitor-exit v7
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_88

    throw v5

    .line 4370
    .restart local v2    # "oldIndex":I
    :catchall_8b
    move-exception v5

    :try_start_8c
    monitor-exit p0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    :try_start_8d
    throw v5

    :cond_8e
    move v0, v6

    .line 4375
    goto :goto_44

    .line 4389
    .restart local v0    # "currentDevice":Z
    .restart local v1    # "numStreamTypes":I
    .restart local v4    # "streamType":I
    :cond_90
    monitor-exit v7

    .line 4391
    .end local v0    # "currentDevice":Z
    .end local v1    # "numStreamTypes":I
    .end local v4    # "streamType":I
    :goto_91
    return v5

    :cond_92
    monitor-exit v7
    :try_end_93
    .catchall {:try_start_8d .. :try_end_93} :catchall_88

    move v5, v6

    goto :goto_91
.end method
