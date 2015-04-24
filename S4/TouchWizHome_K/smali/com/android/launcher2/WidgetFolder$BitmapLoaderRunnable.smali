.class Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;
.super Ljava/lang/Object;
.source "WidgetFolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/WidgetFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapLoaderRunnable"
.end annotation


# instance fields
.field final immediate:Z

.field final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation
.end field

.field final layout:Landroid/widget/GridLayout;

.field final page:I

.field final synthetic this$0:Lcom/android/launcher2/WidgetFolder;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/WidgetFolder;Landroid/widget/GridLayout;ILjava/util/ArrayList;Z)V
    .locals 0
    .param p2, "mOpenWidgetGrid"    # Landroid/widget/GridLayout;
    .param p3, "p"    # I
    .param p5, "imm"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/GridLayout;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p4, "mWidgetFolderItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidget;>;"
    iput-object p1, p0, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput p3, p0, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;->page:I

    .line 420
    iput-object p2, p0, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;->layout:Landroid/widget/GridLayout;

    .line 421
    iput-boolean p5, p0, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;->immediate:Z

    .line 422
    iput-object p4, p0, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;->items:Ljava/util/List;

    .line 424
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 428
    # getter for: Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher2/WidgetFolder;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running C "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " immediate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;->immediate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " page: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;->page:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-boolean v1, p0, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;->immediate:Z

    if-eqz v1, :cond_0

    .line 430
    new-instance v0, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;->layout:Landroid/widget/GridLayout;

    iget v2, p0, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;->page:I

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;->items:Ljava/util/List;

    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;->this$0:Lcom/android/launcher2/WidgetFolder;

    # getter for: Lcom/android/launcher2/WidgetFolder;->mPreviewWidth:I
    invoke-static {v4}, Lcom/android/launcher2/WidgetFolder;->access$100(Lcom/android/launcher2/WidgetFolder;)I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;->this$0:Lcom/android/launcher2/WidgetFolder;

    # getter for: Lcom/android/launcher2/WidgetFolder;->mPreviewHeight:I
    invoke-static {v5}, Lcom/android/launcher2/WidgetFolder;->access$200(Lcom/android/launcher2/WidgetFolder;)I

    move-result v5

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;-><init>(Landroid/widget/GridLayout;ILjava/util/List;IILcom/android/launcher2/WidgetFolder$AsyncTaskPageData$AsyncTaskCallback;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData$AsyncTaskCallback;)V

    .line 432
    .local v0, "data":Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;
    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;->this$0:Lcom/android/launcher2/WidgetFolder;

    const-string v2, "syncWidgetPageItems"

    # invokes: Lcom/android/launcher2/WidgetFolder;->loadWidgetPreviewsInBackground(Ljava/lang/String;Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V
    invoke-static {v1, v2, v6, v0}, Lcom/android/launcher2/WidgetFolder;->access$300(Lcom/android/launcher2/WidgetFolder;Ljava/lang/String;Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V

    .line 433
    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;->this$0:Lcom/android/launcher2/WidgetFolder;

    const-string v2, "syncWidgetPageItems"

    # invokes: Lcom/android/launcher2/WidgetFolder;->onSyncWidgetPageItems(Ljava/lang/String;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V
    invoke-static {v1, v2, v0}, Lcom/android/launcher2/WidgetFolder;->access$400(Lcom/android/launcher2/WidgetFolder;Ljava/lang/String;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V

    .line 437
    .end local v0    # "data":Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;->this$0:Lcom/android/launcher2/WidgetFolder;

    iget-object v2, p0, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;->layout:Landroid/widget/GridLayout;

    iget v3, p0, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;->page:I

    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;->items:Ljava/util/List;

    iget-object v5, p0, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;->this$0:Lcom/android/launcher2/WidgetFolder;

    # getter for: Lcom/android/launcher2/WidgetFolder;->mPreviewWidth:I
    invoke-static {v5}, Lcom/android/launcher2/WidgetFolder;->access$100(Lcom/android/launcher2/WidgetFolder;)I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;->this$0:Lcom/android/launcher2/WidgetFolder;

    # getter for: Lcom/android/launcher2/WidgetFolder;->mPreviewHeight:I
    invoke-static {v6}, Lcom/android/launcher2/WidgetFolder;->access$200(Lcom/android/launcher2/WidgetFolder;)I

    move-result v6

    const/4 v7, 0x2

    # invokes: Lcom/android/launcher2/WidgetFolder;->prepareLoadWidgetPreviewsTask(Landroid/widget/GridLayout;ILjava/util/List;III)V
    invoke-static/range {v1 .. v7}, Lcom/android/launcher2/WidgetFolder;->access$500(Lcom/android/launcher2/WidgetFolder;Landroid/widget/GridLayout;ILjava/util/List;III)V

    goto :goto_0
.end method
