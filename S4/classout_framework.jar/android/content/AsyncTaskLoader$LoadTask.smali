.class final Landroid/content/AsyncTaskLoader$LoadTask;
.super Landroid/os/AsyncTask;
.source "AsyncTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AsyncTaskLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final mDone:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Landroid/content/AsyncTaskLoader;

.field waiting:Z


# direct methods
.method constructor <init>(Landroid/content/AsyncTaskLoader;)V
    .registers 4

    .prologue
    .line 57
    .local p0, "this":Landroid/content/AsyncTaskLoader$LoadTask;, "Landroid/content/AsyncTaskLoader<TD;>.LoadTask;"
    iput-object p1, p0, this$0:Landroid/content/AsyncTaskLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, mDone:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 57
    .local p0, "this":Landroid/content/AsyncTaskLoader$LoadTask;, "Landroid/content/AsyncTaskLoader<TD;>.LoadTask;"
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .registers 5
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TD;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Landroid/content/AsyncTaskLoader$LoadTask;, "Landroid/content/AsyncTaskLoader<TD;>.LoadTask;"
    :try_start_0
    iget-object v2, p0, this$0:Landroid/content/AsyncTaskLoader;

    invoke-virtual {v2}, Landroid/content/AsyncTaskLoader;->onLoadInBackground()Ljava/lang/Object;
    :try_end_5
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 83
    :goto_6
    return-object v0

    .line 72
    :catch_7
    move-exception v1

    .line 73
    .local v1, "ex":Landroid/os/OperationCanceledException;
    invoke-virtual {p0}, isCancelled()Z

    move-result v2

    if-nez v2, :cond_f

    .line 80
    throw v1

    .line 83
    :cond_f
    const/4 v0, 0x0

    goto :goto_6
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Landroid/content/AsyncTaskLoader$LoadTask;, "Landroid/content/AsyncTaskLoader<TD;>.LoadTask;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    :try_start_0
    iget-object v0, p0, this$0:Landroid/content/AsyncTaskLoader;

    invoke-virtual {v0, p0, p1}, Landroid/content/AsyncTaskLoader;->dispatchOnCancelled(Landroid/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 105
    iget-object v0, p0, mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 107
    return-void

    .line 105
    :catchall_b
    move-exception v0

    iget-object v1, p0, mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Landroid/content/AsyncTaskLoader$LoadTask;, "Landroid/content/AsyncTaskLoader<TD;>.LoadTask;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    :try_start_0
    iget-object v0, p0, this$0:Landroid/content/AsyncTaskLoader;

    invoke-virtual {v0, p0, p1}, Landroid/content/AsyncTaskLoader;->dispatchOnLoadComplete(Landroid/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 94
    iget-object v0, p0, mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 96
    return-void

    .line 94
    :catchall_b
    move-exception v0

    iget-object v1, p0, mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public run()V
    .registers 2

    .prologue
    .line 113
    .local p0, "this":Landroid/content/AsyncTaskLoader$LoadTask;, "Landroid/content/AsyncTaskLoader<TD;>.LoadTask;"
    const/4 v0, 0x0

    iput-boolean v0, p0, waiting:Z

    .line 114
    iget-object v0, p0, this$0:Landroid/content/AsyncTaskLoader;

    invoke-virtual {v0}, Landroid/content/AsyncTaskLoader;->executePendingTask()V

    .line 115
    return-void
.end method

.method public waitForLoader()V
    .registers 2

    .prologue
    .line 120
    .local p0, "this":Landroid/content/AsyncTaskLoader$LoadTask;, "Landroid/content/AsyncTaskLoader<TD;>.LoadTask;"
    :try_start_0
    iget-object v0, p0, mDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 124
    :goto_5
    return-void

    .line 121
    :catch_6
    move-exception v0

    goto :goto_5
.end method