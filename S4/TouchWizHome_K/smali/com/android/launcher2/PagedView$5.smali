.class Lcom/android/launcher2/PagedView$5;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/PagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/PagedView;)V
    .locals 0

    .prologue
    .line 3810
    iput-object p1, p0, Lcom/android/launcher2/PagedView$5;->this$0:Lcom/android/launcher2/PagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 3814
    iget-object v0, p0, Lcom/android/launcher2/PagedView$5;->this$0:Lcom/android/launcher2/PagedView;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/PagedView;->onViewAddedInPagedView(Landroid/view/View;)V

    .line 3815
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 3819
    iget-object v0, p0, Lcom/android/launcher2/PagedView$5;->this$0:Lcom/android/launcher2/PagedView;

    invoke-virtual {v0, p2}, Lcom/android/launcher2/PagedView;->onViewRemovedInPagedView(Landroid/view/View;)V

    .line 3821
    return-void
.end method
