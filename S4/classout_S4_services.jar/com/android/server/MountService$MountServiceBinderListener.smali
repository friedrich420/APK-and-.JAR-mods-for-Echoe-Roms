.class final Lcom/android/server/MountService$MountServiceBinderListener;
.super Ljava/lang/Object;
.source "MountService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MountServiceBinderListener"
.end annotation


# instance fields
.field caller:I

.field final mListener:Landroid/os/storage/IMountServiceListener;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/storage/IMountServiceListener;)V
    .registers 4
    .param p2, "listener"    # Landroid/os/storage/IMountServiceListener;

    .prologue
    .line 782
    iput-object p1, p0, this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    const/4 v0, 0x0

    iput v0, p0, caller:I

    .line 783
    iput-object p2, p0, mListener:Landroid/os/storage/IMountServiceListener;

    .line 784
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 795
    iget-object v0, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 796
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 797
    iget-object v0, p0, mListener:Landroid/os/storage/IMountServiceListener;

    invoke-interface {v0}, Landroid/os/storage/IMountServiceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 798
    monitor-exit v1

    .line 799
    return-void

    .line 798
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method getCaller()I
    .registers 2

    .prologue
    .line 791
    iget v0, p0, caller:I

    return v0
.end method

.method setCaller(I)V
    .registers 2
    .param p1, "pid"    # I

    .prologue
    .line 787
    iput p1, p0, caller:I

    .line 788
    return-void
.end method
