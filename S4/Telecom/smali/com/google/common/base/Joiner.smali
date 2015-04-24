.class public Lcom/google/common/base/Joiner;
.super Ljava/lang/Object;
.source "Joiner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Joiner$MapJoiner;
    }
.end annotation


# instance fields
.field private final separator:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p1}, Lcom/google/common/base/Equivalences;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/String;

    .line 82
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/base/Joiner;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/String;

    return-object v0
.end method

.method private appendTo(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Iterator",
            "<*>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 181
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Equivalences;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 185
    :cond_0
    return-object p1
.end method

.method public static on(Ljava/lang/String;)Lcom/google/common/base/Joiner;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/google/common/base/Joiner;

    invoke-direct {v0, p0}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 168
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 532
    invoke-static {p1}, Lcom/google/common/base/Equivalences;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public final withKeyValueSeparator(Ljava/lang/String;)Lcom/google/common/base/Joiner$MapJoiner;
    .locals 2

    .prologue
    .line 325
    new-instance v0, Lcom/google/common/base/Joiner$MapJoiner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/base/Joiner$MapJoiner;-><init>(Lcom/google/common/base/Joiner;Ljava/lang/String;B)V

    return-object v0
.end method
