.class Lcom/android/launcher2/HomeView$12$1;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeView$12;->onLayoutChange(Landroid/view/View;IIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/HomeView$12;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView$12;)V
    .locals 0

    .prologue
    .line 1842
    iput-object p1, p0, Lcom/android/launcher2/HomeView$12$1;->this$1:Lcom/android/launcher2/HomeView$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/android/launcher2/HomeView$12$1;->this$1:Lcom/android/launcher2/HomeView$12;

    iget-object v0, v0, Lcom/android/launcher2/HomeView$12;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1847
    iget-object v0, p0, Lcom/android/launcher2/HomeView$12$1;->this$1:Lcom/android/launcher2/HomeView$12;

    iget-object v0, v0, Lcom/android/launcher2/HomeView$12;->this$0:Lcom/android/launcher2/HomeView;

    # getter for: Lcom/android/launcher2/HomeView;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v0}, Lcom/android/launcher2/HomeView;->access$000(Lcom/android/launcher2/HomeView;)Lcom/android/launcher2/Workspace;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher2/HomeView$12$1;->this$1:Lcom/android/launcher2/HomeView$12;

    iget-object v0, v0, Lcom/android/launcher2/HomeView$12;->val$launcherInfo:Lcom/android/launcher2/HomeWidgetItem;

    iget-object v0, v0, Lcom/android/launcher2/HomeWidgetItem;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher2/HomeView$12$1;->this$1:Lcom/android/launcher2/HomeView$12;

    iget-object v2, v2, Lcom/android/launcher2/HomeView$12;->val$layout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher2/Workspace;->enterWidgetResizeMode(Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    .line 1849
    :cond_0
    return-void
.end method
