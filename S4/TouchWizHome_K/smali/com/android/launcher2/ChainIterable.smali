.class public Lcom/android/launcher2/ChainIterable;
.super Ljava/lang/Object;
.source "ChainIterable.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ChainIterable$ChainIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mIterables:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Iterable",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Iterable",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/android/launcher2/ChainIterable;, "Lcom/android/launcher2/ChainIterable<TT;>;"
    .local p1, "iterables":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Iterable<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/launcher2/ChainIterable;->mIterables:Ljava/lang/Iterable;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/android/launcher2/ChainIterable;, "Lcom/android/launcher2/ChainIterable<TT;>;"
    .local p1, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p2, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v0, "iterables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Iterable<TT;>;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iput-object v0, p0, Lcom/android/launcher2/ChainIterable;->mIterables:Ljava/lang/Iterable;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/ChainIterable;)Ljava/lang/Iterable;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/ChainIterable;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/launcher2/ChainIterable;->mIterables:Ljava/lang/Iterable;

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/android/launcher2/ChainIterable;, "Lcom/android/launcher2/ChainIterable<TT;>;"
    new-instance v0, Lcom/android/launcher2/ChainIterable$ChainIterator;

    invoke-direct {v0, p0}, Lcom/android/launcher2/ChainIterable$ChainIterator;-><init>(Lcom/android/launcher2/ChainIterable;)V

    return-object v0
.end method
