.class Landroid/widget/AdapterViewAnimator$2;
.super Ljava/lang/Object;
.source "AdapterViewAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AdapterViewAnimator;->checkForAndHandleDataChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AdapterViewAnimator;


# direct methods
.method constructor <init>(Landroid/widget/AdapterViewAnimator;)V
    .registers 2

    .prologue
    .line 742
    iput-object p1, p0, this$0:Landroid/widget/AdapterViewAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 744
    iget-object v0, p0, this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v0}, Landroid/widget/AdapterViewAnimator;->handleDataChanged()V

    .line 747
    iget-object v0, p0, this$0:Landroid/widget/AdapterViewAnimator;

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    iget-object v1, p0, this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v1

    if-lt v0, v1, :cond_2a

    .line 748
    iget-object v0, p0, this$0:Landroid/widget/AdapterViewAnimator;

    iput v2, v0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 750
    iget-object v0, p0, this$0:Landroid/widget/AdapterViewAnimator;

    iget-object v1, p0, this$0:Landroid/widget/AdapterViewAnimator;

    iget v1, v1, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 754
    :cond_1f
    :goto_1f
    iget-object v0, p0, this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v0}, Landroid/widget/AdapterViewAnimator;->refreshChildren()V

    .line 755
    iget-object v0, p0, this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v0}, Landroid/widget/AdapterViewAnimator;->requestLayout()V

    .line 756
    return-void

    .line 751
    :cond_2a
    iget-object v0, p0, this$0:Landroid/widget/AdapterViewAnimator;

    iget v0, v0, Landroid/widget/AdapterViewAnimator;->mOldItemCount:I

    iget-object v1, p0, this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v1}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_1f

    .line 752
    iget-object v0, p0, this$0:Landroid/widget/AdapterViewAnimator;

    iget-object v1, p0, this$0:Landroid/widget/AdapterViewAnimator;

    iget v1, v1, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    goto :goto_1f
.end method
