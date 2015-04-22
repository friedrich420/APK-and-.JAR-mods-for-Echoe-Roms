.class final Lcom/android/server/hdmi/UnmodifiableSparseArray;
.super Ljava/lang/Object;
.source "UnmodifiableSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImmutableSparseArray"


# instance fields
.field private final mArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/android/server/hdmi/UnmodifiableSparseArray;, "Lcom/android/server/hdmi/UnmodifiableSparseArray<TE;>;"
    .local p1, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, mArray:Landroid/util/SparseArray;

    .line 31
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/android/server/hdmi/UnmodifiableSparseArray;, "Lcom/android/server/hdmi/UnmodifiableSparseArray<TE;>;"
    iget-object v0, p0, mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/android/server/hdmi/UnmodifiableSparseArray;, "Lcom/android/server/hdmi/UnmodifiableSparseArray<TE;>;"
    .local p2, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/android/server/hdmi/UnmodifiableSparseArray;, "Lcom/android/server/hdmi/UnmodifiableSparseArray<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public keyAt(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 46
    .local p0, "this":Lcom/android/server/hdmi/UnmodifiableSparseArray;, "Lcom/android/server/hdmi/UnmodifiableSparseArray<TE;>;"
    iget-object v0, p0, mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 34
    .local p0, "this":Lcom/android/server/hdmi/UnmodifiableSparseArray;, "Lcom/android/server/hdmi/UnmodifiableSparseArray<TE;>;"
    iget-object v0, p0, mArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    .local p0, "this":Lcom/android/server/hdmi/UnmodifiableSparseArray;, "Lcom/android/server/hdmi/UnmodifiableSparseArray<TE;>;"
    iget-object v0, p0, mArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/android/server/hdmi/UnmodifiableSparseArray;, "Lcom/android/server/hdmi/UnmodifiableSparseArray<TE;>;"
    iget-object v0, p0, mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
