.class Lcom/android/launcher2/LauncherModel$LoaderTask$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->waitForIdle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V
    .locals 0

    .prologue
    .line 1478
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1481
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    monitor-enter v1

    .line 1482
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    const/4 v2, 0x1

    # setter for: Lcom/android/launcher2/LauncherModel$LoaderTask;->mStep1Finished:Z
    invoke-static {v0, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->access$002(Lcom/android/launcher2/LauncherModel$LoaderTask;Z)Z

    .line 1484
    const-string v0, "Launcher.Model"

    const-string v2, "done with first binding step"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1487
    monitor-exit v1

    .line 1488
    return-void

    .line 1487
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
