.class Lcom/android/launcher2/LauncherExModel$LoaderTask$29;
.super Ljava/lang/Object;
.source "LauncherExModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherExModel$LoaderTask;->checkBindFestivalWorkspace(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

.field final synthetic val$festivalAppWidgets:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1390
    iput-object p1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$29;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$29;->val$festivalAppWidgets:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1392
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$29;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    # invokes: Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;
    invoke-static {v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->access$600(Lcom/android/launcher2/LauncherExModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    .line 1393
    .local v0, "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1394
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$29;->val$festivalAppWidgets:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHomeDeleteFestivalPage(Ljava/util/List;)V

    .line 1395
    :cond_0
    return-void
.end method
