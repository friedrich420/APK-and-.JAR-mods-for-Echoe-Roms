.class Lcom/android/launcher2/LauncherExModel$LoaderTask$26;
.super Ljava/lang/Object;
.source "LauncherExModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindFestivalPageModeChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V
    .locals 0

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$26;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1340
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$26;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    # invokes: Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;
    invoke-static {v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->access$600(Lcom/android/launcher2/LauncherExModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    .line 1341
    .local v0, "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1342
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$26;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    # getter for: Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsFestival:Z
    invoke-static {v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->access$1000(Lcom/android/launcher2/LauncherExModel$LoaderTask;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindFestivalModeChange(Z)V

    .line 1343
    :cond_0
    return-void
.end method
