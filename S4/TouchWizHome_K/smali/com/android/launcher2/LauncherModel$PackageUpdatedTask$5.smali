.class Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$5;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

.field final synthetic val$appModelUpdated:Z

.field final synthetic val$origCallbacks:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Ljava/lang/ref/WeakReference;Z)V
    .locals 0

    .prologue
    .line 2597
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$5;->this$1:Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$5;->val$origCallbacks:Ljava/lang/ref/WeakReference;

    iput-boolean p3, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$5;->val$appModelUpdated:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2600
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$5;->this$1:Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 2601
    .local v0, "cb":Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$5;->val$origCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2602
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$5;->val$appModelUpdated:Z

    invoke-interface {v0, v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindPackagesChanged(Z)V

    .line 2604
    :cond_0
    return-void
.end method
