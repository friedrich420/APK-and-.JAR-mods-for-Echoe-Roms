.class Lcom/android/launcher2/LauncherExModel$LoaderTask$6;
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

.field final synthetic val$folders:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 948
    iput-object p1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$6;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$6;->val$folders:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 950
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$6;->this$1:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    # invokes: Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;
    invoke-static {v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->access$600(Lcom/android/launcher2/LauncherExModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    .line 951
    .local v0, "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 952
    sget-object v1, Lcom/android/launcher2/HomeView;->sFolders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 953
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask$6;->val$folders:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHomeFolders(Ljava/util/Map;)V

    .line 955
    :cond_0
    return-void
.end method
