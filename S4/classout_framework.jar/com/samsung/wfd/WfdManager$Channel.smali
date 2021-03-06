.class public Lcom/samsung/wfd/WfdManager$Channel;
.super Ljava/lang/Object;
.source "WfdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Channel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WfdManager$Channel$WfdHandler;
    }
.end annotation


# instance fields
.field mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private mChannelListener:Lcom/samsung/wfd/WfdManager$ChannelListener;

.field mHandler:Lcom/samsung/wfd/WfdManager$Channel$WfdHandler;

.field private mListenerKey:I

.field private mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerMapLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/samsung/wfd/WfdManager$ChannelListener;)V
    .registers 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "l"    # Lcom/samsung/wfd/WfdManager$ChannelListener;

    .prologue
    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mListenerMap:Ljava/util/HashMap;

    .line 516
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mListenerMapLock:Ljava/lang/Object;

    .line 517
    const/4 v0, 0x0

    iput v0, p0, mListenerKey:I

    .line 510
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 511
    new-instance v0, Lcom/samsung/wfd/WfdManager$Channel$WfdHandler;

    invoke-direct {v0, p0, p1}, Lcom/samsung/wfd/WfdManager$Channel$WfdHandler;-><init>(Lcom/samsung/wfd/WfdManager$Channel;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Lcom/samsung/wfd/WfdManager$Channel$WfdHandler;

    .line 512
    iput-object p2, p0, mChannelListener:Lcom/samsung/wfd/WfdManager$ChannelListener;

    .line 513
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/wfd/WfdManager$Channel;)Lcom/samsung/wfd/WfdManager$ChannelListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/wfd/WfdManager$Channel;

    .prologue
    .line 508
    iget-object v0, p0, mChannelListener:Lcom/samsung/wfd/WfdManager$ChannelListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/wfd/WfdManager$Channel;Lcom/samsung/wfd/WfdManager$ChannelListener;)Lcom/samsung/wfd/WfdManager$ChannelListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/wfd/WfdManager$Channel;
    .param p1, "x1"    # Lcom/samsung/wfd/WfdManager$ChannelListener;

    .prologue
    .line 508
    iput-object p1, p0, mChannelListener:Lcom/samsung/wfd/WfdManager$ChannelListener;

    return-object p1
.end method


# virtual methods
.method getListener(I)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # I

    .prologue
    .line 554
    iget-object v1, p0, mListenerMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 555
    :try_start_3
    iget-object v0, p0, mListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 556
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method putListener(Ljava/lang/Object;)I
    .registers 6
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 544
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 550
    :goto_3
    return v0

    .line 546
    :cond_4
    iget-object v2, p0, mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 547
    :try_start_7
    iget v0, p0, mListenerKey:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, mListenerKey:I

    .line 548
    .local v0, "key":I
    iget-object v1, p0, mListenerMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    monitor-exit v2

    goto :goto_3

    .end local v0    # "key":I
    :catchall_18
    move-exception v1

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method
