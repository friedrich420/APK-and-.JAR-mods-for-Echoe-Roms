.class Lcom/android/launcher2/CellLayoutHotseat$4;
.super Ljava/lang/Object;
.source "CellLayoutHotseat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayoutHotseat;->setupAllAppsIcon(Landroid/content/Context;Lcom/android/launcher2/AllappsIcon;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayoutHotseat;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayoutHotseat;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/android/launcher2/CellLayoutHotseat$4;->this$0:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 613
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_1

    .line 614
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat$4;->this$0:Lcom/android/launcher2/CellLayoutHotseat;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutHotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v2, :cond_0

    .line 620
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat$4;->this$0:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutHotseat;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    .line 621
    .local v0, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    .line 622
    .local v1, "mMenuView":Lcom/android/launcher2/MenuView;
    if-eqz v1, :cond_2

    .line 623
    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    .line 624
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat$4;->this$0:Lcom/android/launcher2/CellLayoutHotseat;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutHotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/HomeView;->onClickAllAppsButton(Landroid/view/View;)V

    goto :goto_0
.end method
