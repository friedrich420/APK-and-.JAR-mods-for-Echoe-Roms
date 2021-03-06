.class Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;
.super Ljava/lang/Object;
.source "QuickViewWorkspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/QuickViewWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# static fields
.field private static final STATE_NOT_IN_QUEUE:I = 0x0

.field private static final STATE_PAGE_SCROLLING:I = 0x1

.field private static final STATE_WAITING_TO_SCROLL:I = 0x2


# instance fields
.field private mState:I

.field final synthetic this$0:Lcom/android/launcher2/QuickViewWorkspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/QuickViewWorkspace;)V
    .locals 1

    .prologue
    .line 2543
    iput-object p1, p0, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2541
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->mState:I

    .line 2544
    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;

    .prologue
    .line 2533
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->mState:I

    return v0
.end method

.method private postForScrollToComplete()V
    .locals 4

    .prologue
    .line 2582
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->mState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    # getter for: Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/launcher2/QuickViewWorkspace;->access$600(Lcom/android/launcher2/QuickViewWorkspace;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    iget v1, v1, Lcom/android/launcher2/QuickViewWorkspace;->PAGE_SNAP_ANIMATION_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2584
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->mState:I

    .line 2586
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    .line 2587
    return-void
.end method


# virtual methods
.method public postForScrollDelayed()V
    .locals 4

    .prologue
    .line 2575
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->mState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    # getter for: Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/launcher2/QuickViewWorkspace;->access$600(Lcom/android/launcher2/QuickViewWorkspace;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    # getter for: Lcom/android/launcher2/QuickViewWorkspace;->mScrollDelay:I
    invoke-static {v1}, Lcom/android/launcher2/QuickViewWorkspace;->access$500(Lcom/android/launcher2/QuickViewWorkspace;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2576
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->mState:I

    .line 2578
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    .line 2579
    return-void
.end method

.method public removeSelf()V
    .locals 1

    .prologue
    .line 2590
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->mState:I

    if-eqz v0, :cond_0

    .line 2591
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    # getter for: Lcom/android/launcher2/QuickViewWorkspace;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/launcher2/QuickViewWorkspace;->access$600(Lcom/android/launcher2/QuickViewWorkspace;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2592
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->mState:I

    .line 2593
    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    .line 2595
    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 2548
    iget v1, p0, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->mState:I

    if-nez v1, :cond_1

    .line 2572
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2551
    :cond_1
    iget v0, p0, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->mState:I

    .line 2552
    .local v0, "oldState":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->mState:I

    .line 2553
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isLauncherDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2556
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2557
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->postForScrollDelayed()V

    goto :goto_0

    .line 2560
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    # getter for: Lcom/android/launcher2/QuickViewWorkspace;->mScrollState:I
    invoke-static {v1}, Lcom/android/launcher2/QuickViewWorkspace;->access$400(Lcom/android/launcher2/QuickViewWorkspace;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2564
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->scrollLeft()V

    .line 2565
    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->postForScrollToComplete()V

    goto :goto_0

    .line 2568
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->scrollRight()V

    .line 2569
    invoke-direct {p0}, Lcom/android/launcher2/QuickViewWorkspace$ScrollRunnable;->postForScrollToComplete()V

    goto :goto_0

    .line 2560
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
