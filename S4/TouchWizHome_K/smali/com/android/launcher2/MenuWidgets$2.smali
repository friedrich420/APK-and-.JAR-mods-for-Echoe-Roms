.class Lcom/android/launcher2/MenuWidgets$2;
.super Ljava/lang/Object;
.source "MenuWidgets.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuWidgets;->packagesChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuWidgets;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$2;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 477
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$2;->this$0:Lcom/android/launcher2/MenuWidgets;

    const-string v2, "packagesChanged"

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgets;->updatePackages(Ljava/lang/String;)V

    .line 479
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$2;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    iget-object v0, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 480
    .local v0, "homeView":Lcom/android/launcher2/HomeView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->updateWidgetButtonState()V

    .line 483
    :cond_0
    return-void
.end method
