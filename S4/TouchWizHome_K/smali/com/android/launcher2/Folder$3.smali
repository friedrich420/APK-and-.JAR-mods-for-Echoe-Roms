.class Lcom/android/launcher2/Folder$3;
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

.field final synthetic val$viewToast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder;Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/launcher2/Folder$3;->this$0:Lcom/android/launcher2/Folder;

    iput-object p2, p0, Lcom/android/launcher2/Folder$3;->val$viewToast:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    .line 444
    iget-object v2, p0, Lcom/android/launcher2/Folder$3;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-double v4, v3

    mul-double/2addr v4, v6

    double-to-int v3, v4

    add-int v0, v2, v3

    .line 445
    .local v0, "offsetX":I
    iget-object v2, p0, Lcom/android/launcher2/Folder$3;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getTop()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iget-object v4, p0, Lcom/android/launcher2/Folder$3;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0077

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-int v1, v2

    .line 446
    .local v1, "offsetY":I
    iget-object v2, p0, Lcom/android/launcher2/Folder$3;->val$viewToast:Landroid/widget/Toast;

    const/16 v3, 0x35

    invoke-virtual {v2, v3, v0, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 447
    iget-object v2, p0, Lcom/android/launcher2/Folder$3;->val$viewToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 448
    const/4 v2, 0x1

    return v2
.end method
