.class Lcom/android/server/MountService$MountShutdownLatch;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MountShutdownLatch"
.end annotation


# instance fields
.field private mCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mObserver:Landroid/os/storage/IMountShutdownObserver;


# direct methods
.method constructor <init>(Landroid/os/storage/IMountShutdownObserver;I)V
    .registers 4
    .param p1, "observer"    # Landroid/os/storage/IMountShutdownObserver;
    .param p2, "count"    # I

    .prologue
    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    iput-object p1, p0, mObserver:Landroid/os/storage/IMountShutdownObserver;

    .line 493
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 494
    return-void
.end method


# virtual methods
.method countDown()V
    .registers 5

    .prologue
    .line 497
    const/4 v1, 0x0

    .line 498
    .local v1, "sendShutdown":Z
    iget-object v2, p0, mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_a

    .line 499
    const/4 v1, 0x1

    .line 501
    :cond_a
    if-eqz v1, :cond_16

    iget-object v2, p0, mObserver:Landroid/os/storage/IMountShutdownObserver;

    if-eqz v2, :cond_16

    .line 503
    :try_start_10
    iget-object v2, p0, mObserver:Landroid/os/storage/IMountShutdownObserver;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_17

    .line 508
    :cond_16
    :goto_16
    return-void

    .line 504
    :catch_17
    move-exception v0

    .line 505
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MountService"

    const-string v3, "RemoteException when shutting down"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method
