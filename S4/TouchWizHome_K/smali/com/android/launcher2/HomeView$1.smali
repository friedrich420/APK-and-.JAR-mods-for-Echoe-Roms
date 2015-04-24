.class Lcom/android/launcher2/HomeView$1;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeView;->onHomePressed(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;

.field final synthetic val$moveToDefaultScreen:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView;Z)V
    .locals 0

    .prologue
    .line 863
    iput-object p1, p0, Lcom/android/launcher2/HomeView$1;->this$0:Lcom/android/launcher2/HomeView;

    iput-boolean p2, p0, Lcom/android/launcher2/HomeView$1;->val$moveToDefaultScreen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/launcher2/HomeView$1;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Workspace;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 868
    iget-object v0, p0, Lcom/android/launcher2/HomeView$1;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/HomeView$1$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$1$1;-><init>(Lcom/android/launcher2/HomeView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 874
    return-void
.end method
