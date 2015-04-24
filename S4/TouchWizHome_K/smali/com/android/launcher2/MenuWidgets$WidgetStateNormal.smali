.class Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;
.super Lcom/android/launcher2/MenuWidgets$WidgetStateObj;
.source "MenuWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetStateNormal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuWidgets;)V
    .locals 0

    .prologue
    .line 1522
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher2/MenuWidgets;
    .param p2, "x1"    # Lcom/android/launcher2/MenuWidgets$1;

    .prologue
    .line 1522
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;-><init>(Lcom/android/launcher2/MenuWidgets;)V

    return-void
.end method


# virtual methods
.method public enter(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V
    .locals 4
    .param p1, "oldState"    # Lcom/android/launcher2/MenuWidgets$WidgetState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuWidgets$WidgetState;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v1, 0x0

    .line 1534
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 1535
    .local v0, "immediate":Z
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTitleBarManager:Lcom/android/launcher2/MenuTitleBarManager;
    invoke-static {v2}, Lcom/android/launcher2/MenuWidgets;->access$2000(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuTitleBarManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v3

    invoke-virtual {v2, p2, v3, v0}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Lcom/android/launcher2/MenuWidgets$WidgetState;Z)V

    .line 1536
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/MenuWidgets;->setVisibility(I)V

    .line 1538
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mIsFirstEnter:Z
    invoke-static {v2}, Lcom/android/launcher2/MenuWidgets;->access$2100(Lcom/android/launcher2/MenuWidgets;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1547
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    # setter for: Lcom/android/launcher2/MenuWidgets;->mIsFirstEnter:Z
    invoke-static {v2, v1}, Lcom/android/launcher2/MenuWidgets;->access$2102(Lcom/android/launcher2/MenuWidgets;Z)Z

    .line 1550
    :cond_0
    return-void

    .end local v0    # "immediate":Z
    :cond_1
    move v0, v1

    .line 1534
    goto :goto_0
.end method

.method public exit(Lcom/android/launcher2/MenuWidgets$WidgetState;Ljava/util/List;)V
    .locals 0
    .param p1, "newState"    # Lcom/android/launcher2/MenuWidgets$WidgetState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuWidgets$WidgetState;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1554
    .local p2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    return-void
.end method

.method public onClickWidget(Lcom/android/launcher2/HomePendingItem;Landroid/view/View;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher2/HomePendingItem;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1526
    instance-of v0, p2, Lcom/android/launcher2/WidgetFolderView;

    if-eqz v0, :cond_0

    .line 1527
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    check-cast p2, Lcom/android/launcher2/WidgetFolderView;

    .end local p2    # "view":Landroid/view/View;
    # invokes: Lcom/android/launcher2/MenuWidgets;->openWidgetFolder(Lcom/android/launcher2/WidgetFolderView;)V
    invoke-static {v0, p2}, Lcom/android/launcher2/MenuWidgets;->access$1800(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/WidgetFolderView;)V

    .line 1530
    :goto_0
    return-void

    .line 1529
    .restart local p2    # "view":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$WidgetStateNormal;->this$0:Lcom/android/launcher2/MenuWidgets;

    # invokes: Lcom/android/launcher2/MenuWidgets;->clickNotAllowed(Landroid/view/View;)V
    invoke-static {v0, p2}, Lcom/android/launcher2/MenuWidgets;->access$1900(Lcom/android/launcher2/MenuWidgets;Landroid/view/View;)V

    goto :goto_0
.end method
