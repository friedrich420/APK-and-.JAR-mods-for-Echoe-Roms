.class Lcom/android/launcher2/LauncherExModel$LoaderTask$12;
.super Ljava/lang/Object;
.source "LauncherExModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindWorkspace()V
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
    .line 1042
    iput-object p1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$12;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1044
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$12;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    # invokes: Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;
    invoke-static {v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->access$600(Lcom/android/launcher2/LauncherExModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    .line 1045
    .local v0, "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1046
    invoke-interface {v0}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHomeEnd()V

    .line 1047
    :cond_0
    return-void
.end method
