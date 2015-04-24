.class Lcom/android/launcher2/MenuAppsGrid$StateRemoveFolder;
.super Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateRemoveFolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 1

    .prologue
    .line 3410
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFolder;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher2/MenuAppsGrid;
    .param p2, "x1"    # Lcom/android/launcher2/MenuAppsGrid$1;

    .prologue
    .line 3410
    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFolder;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method


# virtual methods
.method public allowCustomizeGrid()Z
    .locals 1

    .prologue
    .line 3459
    const/4 v0, 0x0

    return v0
.end method

.method protected complete()V
    .locals 3

    .prologue
    .line 3413
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFolder;->getCheckedItems()Ljava/util/List;

    move-result-object v0

    .line 3414
    .local v0, "checkedFolder":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 3415
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFolder;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsGrid;->access$3200(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 3420
    :goto_0
    return-void

    .line 3419
    :cond_0
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher2/AppFolderRemoveDialog;->createAndShow(Ljava/util/List;Landroid/app/FragmentManager;)V

    goto :goto_0
.end method

.method public enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 0
    .param p2, "oldState"    # Lcom/android/launcher2/MenuAppsGrid$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3424
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFolder;->saveLastStatesCurrentPage()V

    .line 3425
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 3426
    return-void
.end method

.method public enterItemViews(Ljava/lang/Iterable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/launcher2/AppIconView;>;"
    const/4 v4, 0x1

    .line 3438
    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->enterItemViews(Ljava/lang/Iterable;)V

    .line 3439
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppIconView;

    .line 3440
    .local v2, "v":Lcom/android/launcher2/AppIconView;
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFolder;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItem(ZLcom/android/launcher2/AppIconView;)V
    invoke-static {v3, v4, v2}, Lcom/android/launcher2/MenuAppsGrid;->access$3500(Lcom/android/launcher2/MenuAppsGrid;ZLcom/android/launcher2/AppIconView;)V

    .line 3441
    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 3442
    .local v1, "item":Lcom/android/launcher2/AppItem;
    instance-of v3, v1, Lcom/android/launcher2/FolderItem;

    if-eqz v3, :cond_0

    .line 3443
    invoke-virtual {v2, v4}, Lcom/android/launcher2/AppIconView;->setCheckingEnabled(Z)V

    goto :goto_0

    .line 3446
    .end local v1    # "item":Lcom/android/launcher2/AppItem;
    .end local v2    # "v":Lcom/android/launcher2/AppIconView;
    :cond_1
    return-void
.end method

.method public exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2
    .param p2, "newState"    # Lcom/android/launcher2/MenuAppsGrid$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3430
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    .line 3432
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateRemoveFolder;->restoreLastStatesCurrentPage()V

    .line 3433
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    .line 3434
    return-void
.end method

.method public getAppsList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3450
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3451
    .local v2, "returnItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 3452
    .local v1, "item":Lcom/android/launcher2/AppItem;
    instance-of v3, v1, Lcom/android/launcher2/AppFolderItem;

    if-eqz v3, :cond_0

    .line 3453
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3455
    .end local v1    # "item":Lcom/android/launcher2/AppItem;
    :cond_1
    return-object v2
.end method
