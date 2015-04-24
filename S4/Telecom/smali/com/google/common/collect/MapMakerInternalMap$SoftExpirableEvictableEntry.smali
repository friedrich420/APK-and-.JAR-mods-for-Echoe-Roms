.class final Lcom/google/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;
.super Lcom/google/common/collect/MapMakerInternalMap$SoftEntry;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SoftExpirableEvictableEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$SoftEntry",
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
    .line 1405
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$SoftEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 1410
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->time:J

    .line 1422
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->nextExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1435
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->previousExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1450
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->nextEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1463
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->previousEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1406
    return-void
.end method


# virtual methods
.method public final getExpirationTime()J
    .locals 2

    .prologue
    .line 1414
    iget-wide v0, p0, Lcom/google/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->time:J

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
    .line 1455
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->nextEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

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
    .line 1427
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->nextExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

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
    .line 1468
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->previousEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

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
    .line 1440
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->previousExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public final setExpirationTime(J)V
    .locals 1

    .prologue
    .line 1419
    iput-wide p1, p0, Lcom/google/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->time:J

    .line 1420
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
    .line 1460
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->nextEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1461
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
    .line 1432
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->nextExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1433
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
    .line 1473
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->previousEvictable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1474
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
    .line 1445
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$SoftExpirableEvictableEntry;->previousExpirable:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1446
    return-void
.end method
