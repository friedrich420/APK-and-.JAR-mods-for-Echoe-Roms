.class Lcom/android/launcher2/Folder$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder;->close(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder;)V
    .locals 0

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/android/launcher2/Folder$10;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 1373
    iget-object v0, p0, Lcom/android/launcher2/Folder$10;->this$0:Lcom/android/launcher2/Folder;

    # invokes: Lcom/android/launcher2/Folder;->onCloseComplete()V
    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$400(Lcom/android/launcher2/Folder;)V

    .line 1374
    iget-object v0, p0, Lcom/android/launcher2/Folder$10;->this$0:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mDragState:Lcom/android/launcher2/DragState;

    if-nez v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/android/launcher2/Folder$10;->this$0:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/FolderAnimator;->cleanupCloseAnims(Z)V

    .line 1376
    iget-object v0, p0, Lcom/android/launcher2/Folder$10;->this$0:Lcom/android/launcher2/Folder;

    # setter for: Lcom/android/launcher2/Folder;->mIsFolderOpenAnimationEnded:Z
    invoke-static {v0, v2}, Lcom/android/launcher2/Folder;->access$302(Lcom/android/launcher2/Folder;Z)Z

    .line 1378
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Folder$10;->this$0:Lcom/android/launcher2/Folder;

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/Folder;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1379
    return-void
.end method
