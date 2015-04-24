.class final Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;
.super Lcom/google/common/collect/MapMakerInternalMap$WeakEntry;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakExpirableEvictableEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$WeakEntry",
        "<TK;TV;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private nextEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private nextExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private previousEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private previousExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile time:J


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1663
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$WeakEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1668
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->time:J

    .line 1680
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->nextExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1693
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->previousExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1708
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->nextEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1721
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->previousEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1664
    return-void
.end method


# virtual methods
.method public final getExpirationTime()J
    .locals 2

    .prologue
    .line 1672
    iget-wide v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->time:J

    return-wide v0
.end method

.method public final getNextEvictable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->nextEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public final getNextExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->nextExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public final getPreviousEvictable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->previousEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public final getPreviousExpirable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->previousExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public final setExpirationTime(J)V
    .locals 1

    .prologue
    .line 1677
    iput-wide p1, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->time:J

    .line 1678
    return-void
.end method

.method public final setNextEvictable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1718
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->nextEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1719
    return-void
.end method

.method public final setNextExpirable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1690
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->nextExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1691
    return-void
.end method

.method public final setPreviousEvictable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1731
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->previousEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1732
    return-void
.end method

.method public final setPreviousExpirable(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1703
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$WeakExpirableEvictableEntry;->previousExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1704
    return-void
.end method
