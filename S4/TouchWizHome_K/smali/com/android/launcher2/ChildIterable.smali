.class public Lcom/android/launcher2/ChildIterable;
.super Ljava/lang/Object;
.source "ChildIterable.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ChildIterable$1;,
        Lcom/android/launcher2/ChildIterable$ChildIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    .line 30
    .local p0, "this":Lcom/android/launcher2/ChildIterable;, "Lcom/android/launcher2/ChildIterable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/launcher2/ChildIterable;->mView:Landroid/view/ViewGroup;

    .line 32
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/ChildIterable;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/ChildIterable;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/launcher2/ChildIterable;->mView:Landroid/view/ViewGroup;

    return-object v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/android/launcher2/ChildIterable;, "Lcom/android/launcher2/ChildIterable<TT;>;"
    new-instance v0, Lcom/android/launcher2/ChildIterable$ChildIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/ChildIterable$ChildIterator;-><init>(Lcom/android/launcher2/ChildIterable;Lcom/android/launcher2/ChildIterable$1;)V

    return-object v0
.end method
