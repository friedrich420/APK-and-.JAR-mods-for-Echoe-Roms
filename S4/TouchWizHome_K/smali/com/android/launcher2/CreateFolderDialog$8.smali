.class Lcom/android/launcher2/CreateFolderDialog$8;
.super Ljava/lang/Object;
.source "CreateFolderDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CreateFolderDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CreateFolderDialog;

.field final synthetic val$addIcon:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CreateFolderDialog;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/launcher2/CreateFolderDialog$8;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    iput-object p2, p0, Lcom/android/launcher2/CreateFolderDialog$8;->val$addIcon:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 599
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 601
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 615
    .end local p1    # "dialog":Landroid/content/DialogInterface;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 603
    .restart local p1    # "dialog":Landroid/content/DialogInterface;
    :sswitch_0
    iget-object v0, p0, Lcom/android/launcher2/CreateFolderDialog$8;->val$addIcon:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CreateFolderDialog$8;->val$addIcon:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/CreateFolderDialog$8;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/CreateFolderDialog$8;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/CreateFolderDialog$8;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    # invokes: Lcom/android/launcher2/CreateFolderDialog;->isColorViewFocussed()Z
    invoke-static {v0}, Lcom/android/launcher2/CreateFolderDialog;->access$400(Lcom/android/launcher2/CreateFolderDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    :sswitch_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/CreateFolderDialog;->okButtonSelected:Z

    .line 609
    iget-object v0, p0, Lcom/android/launcher2/CreateFolderDialog$8;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    check-cast p1, Landroid/app/Dialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    # invokes: Lcom/android/launcher2/CreateFolderDialog;->doCreateFolder(Landroid/app/Dialog;)V
    invoke-static {v0, p1}, Lcom/android/launcher2/CreateFolderDialog;->access$300(Lcom/android/launcher2/CreateFolderDialog;Landroid/app/Dialog;)V

    goto :goto_0

    .line 601
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
