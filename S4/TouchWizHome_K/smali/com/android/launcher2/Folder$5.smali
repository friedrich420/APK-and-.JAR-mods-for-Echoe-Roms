.class Lcom/android/launcher2/Folder$5;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder;->onFinishInflate()V
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
    .line 511
    iput-object p1, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 522
    iget-object v2, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mIsEditingName:Z
    invoke-static {v2}, Lcom/android/launcher2/Folder;->access$100(Lcom/android/launcher2/Folder;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 535
    :goto_0
    return v0

    .line 525
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    iget-object v2, v2, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/FolderEditText;->setCursorVisible(Z)V

    .line 526
    iget-object v2, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    iget-object v2, v2, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v2, v1, v1}, Lcom/android/launcher2/FolderEditText;->setSelection(II)V

    .line 527
    iget-object v2, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    iget-object v2, v2, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderEditText;->selectAll()V

    .line 529
    iget-object v2, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    iget-object v2, v2, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/FolderEditText;->setFocusableInTouchMode(Z)V

    .line 530
    iget-object v2, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    iget-object v2, v2, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderEditText;->requestFocus()Z

    .line 531
    iget-object v2, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v2}, Lcom/android/launcher2/Folder;->access$200(Lcom/android/launcher2/Folder;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    iget-object v3, v3, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 532
    iget-object v2, p0, Lcom/android/launcher2/Folder$5;->this$0:Lcom/android/launcher2/Folder;

    # setter for: Lcom/android/launcher2/Folder;->mIsEditingName:Z
    invoke-static {v2, v0}, Lcom/android/launcher2/Folder;->access$102(Lcom/android/launcher2/Folder;Z)Z

    move v0, v1

    .line 535
    goto :goto_0
.end method
