.class final Lcom/android/launcher2/MenuWidgets$1;
.super Ljava/lang/Object;
.source "MenuWidgets.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuWidgets;->sortByValues(Ljava/util/Map;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$mCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Ljava/text/Collator;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$1;->val$mCollator:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 305
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/util/Map$Entry;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/MenuWidgets$1;->compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)I"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "o1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .local p2, "o2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v0, 0x0

    .line 311
    .local v0, "ret":I
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$1;->val$mCollator:Ljava/text/Collator;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 316
    :cond_0
    :goto_0
    return v0

    .line 313
    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 314
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, -0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method
