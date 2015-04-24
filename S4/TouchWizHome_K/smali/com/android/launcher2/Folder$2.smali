.class Lcom/android/launcher2/Folder$2;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 418
    iput-object p1, p0, Lcom/android/launcher2/Folder$2;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 421
    iget-object v0, p0, Lcom/android/launcher2/Folder$2;->this$0:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/launcher2/Folder$2;->this$0:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderEditText;->setEnabled(Z)V

    .line 423
    iget-object v0, p0, Lcom/android/launcher2/Folder$2;->this$0:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/FolderEditText;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/android/launcher2/Folder$2;->this$0:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 433
    :goto_0
    return-void

    .line 427
    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/android/launcher2/Folder$2;->this$0:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/FolderEditText;->setEnabled(Z)V

    .line 429
    iget-object v0, p0, Lcom/android/launcher2/Folder$2;->this$0:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/FolderEditText;->setVisibility(I)V

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Folder$2;->this$0:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
