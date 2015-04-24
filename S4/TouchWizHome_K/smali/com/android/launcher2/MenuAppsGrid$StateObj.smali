.class abstract Lcom/android/launcher2/MenuAppsGrid$StateObj;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "StateObj"
.end annotation


# instance fields
.field protected mHasEntered:Z

.field protected mLastStatesSavedCurrentPage:I

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 1

    .prologue
    .line 1336
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mHasEntered:Z

    .line 1400
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mLastStatesSavedCurrentPage:I

    return-void
.end method


# virtual methods
.method public allowCustomizeGrid()Z
    .locals 1

    .prologue
    .line 1370
    const/4 v0, 0x1

    return v0
.end method

.method public appBadgeUpdated(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1352
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    return-void
.end method

.method public abstract enter(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
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
.end method

.method public enterItemViews(Ljava/lang/Iterable;)V
    .locals 0
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
    .line 1360
    .local p1, "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/launcher2/AppIconView;>;"
    return-void
.end method

.method public abstract exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
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
.end method

.method public exitItemViews(Ljava/lang/Iterable;)V
    .locals 0
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
    .line 1361
    .local p1, "items":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/android/launcher2/AppIconView;>;"
    return-void
.end method

.method public getAppsList()Ljava/util/List;
    .locals 5
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
    .line 1364
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v1

    .line 1365
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    if-nez v1, :cond_1

    const/4 v0, -0x1

    .line 1366
    .local v0, "itemCount":I
    :goto_0
    # getter for: Lcom/android/launcher2/MenuAppsGrid;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Launcher.MenuAppsGrid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StateObj::getAppsList() item count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    :cond_0
    return-object v1

    .line 1365
    .end local v0    # "itemCount":I
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public onAppModelUpdated()V
    .locals 0

    .prologue
    .line 1393
    return-void
.end method

.method public abstract onClickAppItem(Lcom/android/launcher2/AppItem;Landroid/view/View;)Z
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 1338
    return-void
.end method

.method public preOpenFolder(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/Folder;)V
    .locals 0
    .param p1, "folderItem"    # Lcom/android/launcher2/FolderItem;
    .param p2, "folder"    # Lcom/android/launcher2/Folder;

    .prologue
    .line 1376
    return-void
.end method

.method public restore(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1391
    const/4 v0, 0x1

    return v0
.end method

.method protected restoreLastStatesCurrentPage()V
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 1407
    iget v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mLastStatesSavedCurrentPage:I

    if-eq v2, v0, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mLastStatesSavedCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->initCurrentPage(I)V

    .line 1409
    iput v2, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mLastStatesSavedCurrentPage:I

    .line 1411
    :cond_0
    return-void
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1384
    return-void
.end method

.method protected saveLastStatesCurrentPage()V
    .locals 1

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateObj;->mLastStatesSavedCurrentPage:I

    .line 1404
    return-void
.end method
