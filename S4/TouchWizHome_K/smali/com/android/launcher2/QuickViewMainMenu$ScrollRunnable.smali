.class Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;
.super Ljava/lang/Object;
.source "QuickViewMainMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/QuickViewMainMenu;
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

.field final synthetic this$0:Lcom/android/launcher2/QuickViewMainMenu;


# direct methods
.method constructor <init>(Lcom/android/launcher2/QuickViewMainMenu;)V
    .locals 1

    .prologue
    .line 1675
    iput-object p1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1673
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->mState:I

    .line 1676
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;

    .prologue
    .line 1665
    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->mState:I

    return v0
.end method

.method private postForScrollToComplete()V
    .locals 4

    .prologue
    .line 1728
    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->mState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    # getter for: Lcom/android/launcher2/QuickViewMainMenu;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/launcher2/QuickViewMainMenu;->access$600(Lcom/android/launcher2/QuickViewMainMenu;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    iget v1, v1, Lcom/android/launcher2/QuickViewMainMenu;->PAGE_SNAP_ANIMATION_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1730
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->mState:I

    .line 1732
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    .line 1733
    return-void
.end method


# virtual methods
.method public postForScrollDelayed()V
    .locals 4

    .prologue
    .line 1721
    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->mState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    # getter for: Lcom/android/launcher2/QuickViewMainMenu;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/launcher2/QuickViewMainMenu;->access$600(Lcom/android/launcher2/QuickViewMainMenu;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    # getter for: Lcom/android/launcher2/QuickViewMainMenu;->mScrollDelay:I
    invoke-static {v1}, Lcom/android/launcher2/QuickViewMainMenu;->access$500(Lcom/android/launcher2/QuickViewMainMenu;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1722
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->mState:I

    .line 1724
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    .line 1725
    return-void
.end method

.method public removeSelf()V
    .locals 1

    .prologue
    .line 1736
    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->mState:I

    if-eqz v0, :cond_0

    .line 1737
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    # getter for: Lcom/android/launcher2/QuickViewMainMenu;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/launcher2/QuickViewMainMenu;->access$600(Lcom/android/launcher2/QuickViewMainMenu;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1738
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->mState:I

    .line 1739
    iget-object v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickViewMainMenu;->invalidate()V

    .line 1741
    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 1680
    iget v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->mState:I

    if-nez v1, :cond_1

    .line 1718
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1683
    :cond_1
    iget v0, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->mState:I

    .line 1684
    .local v0, "oldState":I
    iput v4, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->mState:I

    .line 1685
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isLauncherDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1688
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1689
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->postForScrollDelayed()V

    goto :goto_0

    .line 1692
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    # getter for: Lcom/android/launcher2/QuickViewMainMenu;->mScrollState:I
    invoke-static {v1}, Lcom/android/launcher2/QuickViewMainMenu;->access$200(Lcom/android/launcher2/QuickViewMainMenu;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1696
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    # getter for: Lcom/android/launcher2/QuickViewMainMenu;->mIsReadOnly:Z
    invoke-static {v1}, Lcom/android/launcher2/QuickViewMainMenu;->access$300(Lcom/android/launcher2/QuickViewMainMenu;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1697
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    # getter for: Lcom/android/launcher2/QuickViewMainMenu;->mReadOnlyToastResId:I
    invoke-static {v1}, Lcom/android/launcher2/QuickViewMainMenu;->access$400(Lcom/android/launcher2/QuickViewMainMenu;)I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 1698
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    # getter for: Lcom/android/launcher2/QuickViewMainMenu;->mReadOnlyToastResId:I
    invoke-static {v3}, Lcom/android/launcher2/QuickViewMainMenu;->access$400(Lcom/android/launcher2/QuickViewMainMenu;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1704
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->postForScrollToComplete()V

    goto :goto_0

    .line 1702
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->scrollLeft()V

    goto :goto_1

    .line 1707
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    # getter for: Lcom/android/launcher2/QuickViewMainMenu;->mIsReadOnly:Z
    invoke-static {v1}, Lcom/android/launcher2/QuickViewMainMenu;->access$300(Lcom/android/launcher2/QuickViewMainMenu;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1708
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    # getter for: Lcom/android/launcher2/QuickViewMainMenu;->mReadOnlyToastResId:I
    invoke-static {v1}, Lcom/android/launcher2/QuickViewMainMenu;->access$400(Lcom/android/launcher2/QuickViewMainMenu;)I

    move-result v1

    if-eq v1, v2, :cond_5

    .line 1709
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewMainMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    # getter for: Lcom/android/launcher2/QuickViewMainMenu;->mReadOnlyToastResId:I
    invoke-static {v3}, Lcom/android/launcher2/QuickViewMainMenu;->access$400(Lcom/android/launcher2/QuickViewMainMenu;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1715
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->postForScrollToComplete()V

    goto/16 :goto_0

    .line 1713
    :cond_6
    iget-object v1, p0, Lcom/android/launcher2/QuickViewMainMenu$ScrollRunnable;->this$0:Lcom/android/launcher2/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewMainMenu;->scrollRight()V

    goto :goto_2

    .line 1692
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
