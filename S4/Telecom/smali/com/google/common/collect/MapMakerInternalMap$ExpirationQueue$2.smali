.class final Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$2;
.super Lcom/google/common/collect/AbstractLinkedIterator;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractLinkedIterator",
        "<",
        "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0

    .prologue
    .line 3399
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$2;->this$0:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractLinkedIterator;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic computeNext(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3399
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue$2;->this$0:Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;

    iget-object v1, v1, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method
