.class Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;
.super Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingPackageBroadcastsWithList"
.end annotation


# instance fields
.field final mUidMapOfNewPkgState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 721
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;-><init>()V

    .line 722
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, mUidMapOfNewPkgState:Landroid/util/SparseArray;

    .line 723
    return-void
.end method

.method private getOrAllocateNewState(I)Ljava/util/HashMap;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 758
    iget-object v1, p0, mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 759
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v0, :cond_14

    .line 760
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 761
    .restart local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 763
    :cond_14
    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 753
    invoke-super {p0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->clear()V

    .line 754
    iget-object v0, p0, mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 755
    return-void
.end method

.method public getNewState(ILjava/lang/String;)I
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 726
    invoke-direct {p0, p1}, getOrAllocateNewState(I)Ljava/util/HashMap;

    move-result-object v0

    .line 727
    .local v0, "packagesNewState":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public packagesNewStateForUserId(I)Ljava/util/HashMap;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 749
    iget-object v0, p0, mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public putNewState(ILjava/lang/String;I)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "newState"    # I

    .prologue
    .line 731
    invoke-direct {p0, p1}, getOrAllocateNewState(I)Ljava/util/HashMap;

    move-result-object v0

    .line 732
    .local v0, "packagesNewState":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    return-void
.end method

.method public remove(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 744
    invoke-super {p0, p1}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->remove(I)V

    .line 745
    iget-object v0, p0, mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 746
    return-void
.end method

.method public remove(ILjava/lang/String;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 736
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->remove(ILjava/lang/String;)V

    .line 737
    iget-object v1, p0, mUidMapOfNewPkgState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 738
    .local v0, "packagesNewState":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_10

    .line 739
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    :cond_10
    return-void
.end method
