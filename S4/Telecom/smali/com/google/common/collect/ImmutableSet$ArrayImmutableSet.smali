.class abstract Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;
.super Lcom/google/common/collect/ImmutableSet;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ArrayImmutableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private transient elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 382
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    .line 383
    return-void
.end method


# virtual methods
.method public containsAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 421
    if-ne p1, p0, :cond_1

    .line 435
    :cond_0
    :goto_0
    return v0

    .line 424
    :cond_1
    instance-of v2, p1, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;

    if-nez v2, :cond_2

    .line 425
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0

    .line 427
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->size()I

    move-result v3

    if-le v2, v3, :cond_3

    move v0, v1

    .line 428
    goto :goto_0

    .line 430
    :cond_3
    check-cast p1, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;

    iget-object v3, p1, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 431
    invoke-virtual {p0, v5}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v0, v1

    .line 432
    goto :goto_0

    .line 430
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method final createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 443
    new-instance v0, Lcom/google/common/collect/ImmutableAsList;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/ImmutableAsList;-><init>([Ljava/lang/Object;Lcom/google/common/collect/ImmutableCollection;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->forArray([Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->forArray([Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 404
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 405
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->size()I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 410
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->size()I

    move-result v0

    .line 411
    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 412
    invoke-static {p1, v0}, Lcom/google/common/collect/AbstractBiMap$1;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 416
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;->elements:[Ljava/lang/Object;

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    return-object p1

    .line 413
    :cond_1
    array-length v1, p1

    if-le v1, v0, :cond_0

    .line 414
    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_0
.end method
