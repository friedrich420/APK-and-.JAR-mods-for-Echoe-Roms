.class Lcom/android/launcher2/Launcher$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$viewToast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 587
    iput-object p1, p0, Lcom/android/launcher2/Launcher$1;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$1;->val$viewToast:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 590
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/launcher2/Launcher$1;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v0, v2, v3

    .line 591
    .local v0, "offsetX":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/Launcher$1;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e007b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v1, v2, v3

    .line 592
    .local v1, "offsetY":I
    iget-object v2, p0, Lcom/android/launcher2/Launcher$1;->val$viewToast:Landroid/widget/Toast;

    const/16 v3, 0x35

    invoke-virtual {v2, v3, v0, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 593
    iget-object v2, p0, Lcom/android/launcher2/Launcher$1;->val$viewToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 594
    const/4 v2, 0x1

    return v2
.end method
