.class Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagePreviewSnapDelay"
.end annotation


# instance fields
.field private delay:J

.field private isRunning:Z

.field private pageIndex:I

.field final synthetic this$0:Lcom/android/launcher2/PagedView;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/PagedView;)V
    .locals 2

    .prologue
    .line 3972
    iput-object p1, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->this$0:Lcom/android/launcher2/PagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3968
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->isRunning:Z

    .line 3969
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->pageIndex:I

    .line 3973
    invoke-virtual {p1}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->delay:J

    .line 3974
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 3989
    iget-object v0, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->this$0:Lcom/android/launcher2/PagedView;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3990
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->pageIndex:I

    .line 3991
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->isRunning:Z

    .line 3992
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 3996
    iget-object v0, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->this$0:Lcom/android/launcher2/PagedView;

    iget v1, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->pageIndex:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 3997
    return-void
.end method

.method public snapTo(I)V
    .locals 4
    .param p1, "pageIndex"    # I

    .prologue
    .line 3977
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->isRunning:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->pageIndex:I

    if-eq p1, v0, :cond_0

    .line 3978
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->cancel()V

    .line 3981
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->isRunning:Z

    if-nez v0, :cond_1

    .line 3982
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->isRunning:Z

    .line 3983
    iput p1, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->pageIndex:I

    .line 3984
    iget-object v0, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->this$0:Lcom/android/launcher2/PagedView;

    iget-wide v2, p0, Lcom/android/launcher2/PagedView$PagePreviewSnapDelay;->delay:J

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/launcher2/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3986
    :cond_1
    return-void
.end method
