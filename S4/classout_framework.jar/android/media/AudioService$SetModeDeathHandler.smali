.class Landroid/media/AudioService$SetModeDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetModeDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mMode:I

.field private mPid:I

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/os/IBinder;I)V
    .registers 5
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I

    .prologue
    .line 2542
    iput-object p1, p0, this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2540
    const/4 v0, 0x0

    iput v0, p0, mMode:I

    .line 2543
    iput-object p2, p0, mCb:Landroid/os/IBinder;

    .line 2544
    iput p3, p0, mPid:I

    .line 2545
    return-void
.end method

.method static synthetic access$1800(Landroid/media/AudioService$SetModeDeathHandler;)I
    .registers 2
    .param p0, "x0"    # Landroid/media/AudioService$SetModeDeathHandler;

    .prologue
    .line 2537
    iget v0, p0, mPid:I

    return v0
.end method


# virtual methods
.method public binderDied()V
    .registers 10

    .prologue
    .line 2548
    const/4 v3, 0x0

    .line 2549
    .local v3, "newModeOwnerPid":I
    iget-object v4, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 2550
    :try_start_8
    const-string v4, "AudioService"

    const-string/jumbo v6, "setMode() client died"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    iget-object v4, p0, this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 2552
    .local v2, "index":I
    if-gez v2, :cond_34

    .line 2553
    const-string v4, "AudioService"

    const-string/jumbo v6, "unregistered setMode() client died"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    :goto_24
    monitor-exit v5
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_40

    .line 2560
    if-eqz v3, :cond_33

    .line 2561
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2562
    .local v0, "ident":J
    iget-object v4, p0, this$0:Landroid/media/AudioService;

    # invokes: Landroid/media/AudioService;->disconnectBluetoothSco(I)V
    invoke-static {v4, v3}, Landroid/media/AudioService;->access$1700(Landroid/media/AudioService;I)V

    .line 2563
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2565
    .end local v0    # "ident":J
    :cond_33
    return-void

    .line 2555
    :cond_34
    :try_start_34
    iget-object v4, p0, this$0:Landroid/media/AudioService;

    const/4 v6, 0x0

    iget-object v7, p0, mCb:Landroid/os/IBinder;

    iget v8, p0, mPid:I

    # invokes: Landroid/media/AudioService;->setModeInt(ILandroid/os/IBinder;I)I
    invoke-static {v4, v6, v7, v8}, Landroid/media/AudioService;->access$1600(Landroid/media/AudioService;ILandroid/os/IBinder;I)I

    move-result v3

    goto :goto_24

    .line 2557
    .end local v2    # "index":I
    :catchall_40
    move-exception v4

    monitor-exit v5
    :try_end_42
    .catchall {:try_start_34 .. :try_end_42} :catchall_40

    throw v4
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 2580
    iget-object v0, p0, mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 2576
    iget v0, p0, mMode:I

    return v0
.end method

.method public getPid()I
    .registers 2

    .prologue
    .line 2568
    iget v0, p0, mPid:I

    return v0
.end method

.method public setMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .prologue
    .line 2572
    iput p1, p0, mMode:I

    .line 2573
    return-void
.end method
