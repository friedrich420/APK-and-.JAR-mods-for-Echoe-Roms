.class Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApAllowedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAllActionModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    .prologue
    .line 909
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Lcom/android/settings/wifi/mobileap/WifiApAllowedList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList;
    .param p2, "x1"    # Lcom/android/settings/wifi/mobileap/WifiApAllowedList$1;

    .prologue
    .line 909
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 923
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionBarView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1700(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 913
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 928
    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z
    invoke-static {}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isKmodelUI:Z
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$700(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    const/4 v0, 0x0

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$402(Z)Z

    .line 930
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$800(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    .line 931
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$SelectAllActionModeCallback;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1802(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 934
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 918
    const/4 v0, 0x1

    return v0
.end method
