.class final Lcom/android/launcher2/LauncherModel$5;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$app:Lcom/android/launcher2/LauncherApplication;

.field final synthetic val$newPositions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherApplication;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$5;->val$app:Lcom/android/launcher2/LauncherApplication;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$5;->val$newPositions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 605
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$5;->val$app:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v3

    .line 606
    .local v3, "provider":Lcom/android/launcher2/LauncherProvider;
    if-eqz v3, :cond_4

    .line 607
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$5;->val$newPositions:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/LauncherProvider;->moveFavorites(Ljava/util/List;)V

    .line 610
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$5;->val$newPositions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherSettings$FavoritePos;

    .line 611
    .local v1, "item":Lcom/android/launcher2/LauncherSettings$FavoritePos;
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    iget-wide v6, v1, Lcom/android/launcher2/LauncherSettings$FavoritePos;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    .line 612
    .local v2, "modelItem":Lcom/android/launcher2/HomeItem;
    if-nez v2, :cond_1

    .line 613
    sget-boolean v4, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted to move an item that is not in sItemsIdMap. Id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lcom/android/launcher2/LauncherSettings$FavoritePos;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 615
    :cond_1
    iget-wide v4, v1, Lcom/android/launcher2/LauncherSettings$FavoritePos;->container:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-wide v4, v1, Lcom/android/launcher2/LauncherSettings$FavoritePos;->container:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 617
    :cond_2
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 618
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 621
    :cond_3
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 624
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/android/launcher2/LauncherSettings$FavoritePos;
    .end local v2    # "modelItem":Lcom/android/launcher2/HomeItem;
    :cond_4
    return-void
.end method
