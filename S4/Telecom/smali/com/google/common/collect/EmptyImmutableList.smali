.class final Lcom/google/common/collect/EmptyImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "EmptyImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Ljava/lang/Object;

.field static final INSTANCE:Lcom/google/common/collect/EmptyImmutableList;

.field private static ITERATOR:Lcom/google/common/collect/UnmodifiableListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/UnmodifiableListIterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/google/common/collect/EmptyImmutableList;

    invoke-direct {v0}, Lcom/google/common/collect/EmptyImmutableList;-><init>()V

    sput-object v0, Lcom/google/common/collect/EmptyImmutableList;->INSTANCE:Lcom/google/common/collect/EmptyImmutableList;

    .line 39
    new-instance v0, Lcom/google/common/collect/EmptyImmutableList$1;

    invoke-direct {v0}, Lcom/google/common/collect/EmptyImmutableList$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/EmptyImmutableList;->ITERATOR:Lcom/google/common/collect/UnmodifiableListIterator;

    .line 90
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/google/common/collect/EmptyImmutableList;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 137
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 141
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 142
    check-cast p1, Ljava/util/List;

    .line 143
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/common/base/Equivalences;->checkElementIndex(II)I

    .line 107
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 111
    const/4 v0, -0x1

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 115
    const/4 v0, -0x1

    return v0
.end method

.method public final listIterator()Lcom/google/common/collect/UnmodifiableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableListIterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    sget-object v0, Lcom/google/common/collect/EmptyImmutableList;->ITERATOR:Lcom/google/common/collect/UnmodifiableListIterator;

    return-object v0
.end method

.method public final listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/UnmodifiableListIterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/common/base/Equivalences;->checkPositionIndex(II)I

    .line 133
    sget-object v0, Lcom/google/common/collect/EmptyImmutableList;->ITERATOR:Lcom/google/common/collect/UnmodifiableListIterator;

    return-object v0
.end method

.method public final bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/common/collect/EmptyImmutableList;->ITERATOR:Lcom/google/common/collect/UnmodifiableListIterator;

    return-object v0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/google/common/collect/EmptyImmutableList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method final readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/google/common/collect/EmptyImmutableList;->INSTANCE:Lcom/google/common/collect/EmptyImmutableList;

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public final subList(II)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Equivalences;->checkPositionIndexes(III)V

    .line 120
    return-object p0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Equivalences;->checkPositionIndexes(III)V

    return-object p0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/google/common/collect/EmptyImmutableList;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 97
    array-length v0, p1

    if-lez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 100
    :cond_0
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string v0, "[]"

    return-object v0
.end method
