.class Lcom/android/launcher2/CreateFolderDialog$5;
.super Ljava/lang/Object;
.source "CreateFolderDialog.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

.field final synthetic val$res:Landroid/content/res/Resources;

.field final synthetic val$viewToast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CreateFolderDialog;Landroid/content/res/Resources;Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/android/launcher2/CreateFolderDialog$5;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    iput-object p2, p0, Lcom/android/launcher2/CreateFolderDialog$5;->val$res:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/android/launcher2/CreateFolderDialog$5;->val$viewToast:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    .line 513
    const/4 v1, 0x0

    .line 514
    .local v1, "offsetX":I
    new-array v3, v5, [I

    .line 515
    .local v3, "rect":[I
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 516
    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog$5;->val$res:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_0

    .line 517
    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog$5;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    iget-object v4, v4, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x3

    .line 520
    :goto_0
    aget v4, v3, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog$5;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    invoke-virtual {v5}, Lcom/android/launcher2/CreateFolderDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0077

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 521
    .local v2, "offsetY":I
    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog$5;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    invoke-virtual {v4}, Lcom/android/launcher2/CreateFolderDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    .line 522
    .local v0, "menuView":Lcom/android/launcher2/MenuView;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 523
    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog$5;->val$viewToast:Landroid/widget/Toast;

    const/16 v5, 0x33

    invoke-virtual {v4, v5, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 526
    :goto_1
    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog$5;->val$viewToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 527
    return v7

    .line 519
    .end local v0    # "menuView":Lcom/android/launcher2/MenuView;
    .end local v2    # "offsetY":I
    :cond_0
    const/4 v4, 0x0

    aget v1, v3, v4

    goto :goto_0

    .line 525
    .restart local v0    # "menuView":Lcom/android/launcher2/MenuView;
    .restart local v2    # "offsetY":I
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog$5;->val$viewToast:Landroid/widget/Toast;

    const/16 v5, 0x35

    invoke-virtual {v4, v5, v1, v2}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1
.end method
