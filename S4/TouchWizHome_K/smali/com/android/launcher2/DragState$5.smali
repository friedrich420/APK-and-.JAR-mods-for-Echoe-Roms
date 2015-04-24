.class Lcom/android/launcher2/DragState$5;
.super Ljava/lang/Object;
.source "DragState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DragState;->onEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DragState;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragState;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/launcher2/DragState$5;->this$0:Lcom/android/launcher2/DragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 735
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/HomeEditBar;->isfolderCreated:Z

    .line 736
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/launcher2/CellLayout;->isWidgetResized:Z

    if-nez v1, :cond_0

    .line 737
    const/4 v0, 0x0

    .line 738
    .local v0, "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v0, Lcom/android/launcher2/guide/CreateFolderGuider;

    .end local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    iget-object v1, p0, Lcom/android/launcher2/DragState$5;->this$0:Lcom/android/launcher2/DragState;

    # getter for: Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/launcher2/DragState;->access$000(Lcom/android/launcher2/DragState;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/CreateFolderGuider;-><init>(Landroid/app/Activity;)V

    .line 739
    .restart local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v0, Lcom/android/launcher2/guide/CreateFolderGuider;

    .end local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v0}, Lcom/android/launcher2/guide/CreateFolderGuider;->dismissHelpDialog()V

    .line 740
    iget-object v1, p0, Lcom/android/launcher2/DragState$5;->this$0:Lcom/android/launcher2/DragState;

    # getter for: Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/launcher2/DragState;->access$000(Lcom/android/launcher2/DragState;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-static {v1}, Lcom/android/launcher2/guide/GuideFragment;->showWrongActionDialog(Landroid/app/Activity;)V

    .line 742
    :cond_0
    return-void
.end method
