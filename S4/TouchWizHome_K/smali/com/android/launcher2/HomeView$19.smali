.class Lcom/android/launcher2/HomeView$19;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeView;->addSurfaceWidget(Lcom/android/launcher2/HomePendingSurfaceWidget;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeView;

.field final synthetic val$homeItem:Lcom/android/launcher2/SurfaceWidgetItem;

.field final synthetic val$layout:Lcom/android/launcher2/CellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeView;Lcom/android/launcher2/SurfaceWidgetItem;Lcom/android/launcher2/CellLayout;)V
    .locals 0

    .prologue
    .line 2427
    iput-object p1, p0, Lcom/android/launcher2/HomeView$19;->this$0:Lcom/android/launcher2/HomeView;

    iput-object p2, p0, Lcom/android/launcher2/HomeView$19;->val$homeItem:Lcom/android/launcher2/SurfaceWidgetItem;

    iput-object p3, p0, Lcom/android/launcher2/HomeView$19;->val$layout:Lcom/android/launcher2/CellLayout;

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
    .line 2431
    iget-object v0, p0, Lcom/android/launcher2/HomeView$19;->val$homeItem:Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/SurfaceWidgetView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2432
    iget-object v0, p0, Lcom/android/launcher2/HomeView$19;->val$homeItem:Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    new-instance v1, Lcom/android/launcher2/HomeView$19$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeView$19$1;-><init>(Lcom/android/launcher2/HomeView$19;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SurfaceWidgetView;->post(Ljava/lang/Runnable;)Z

    .line 2442
    return-void
.end method
