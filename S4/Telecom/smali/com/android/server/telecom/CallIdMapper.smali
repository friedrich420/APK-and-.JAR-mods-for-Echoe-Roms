.class public Lcom/android/server/telecom/CallIdMapper;
.super Ljava/lang/Object;
.source "CallIdMapper.java"


# static fields
.field private static sIdCount:I


# instance fields
.field private final mCallIdPrefix:Ljava/lang/String;

.field private final mCalls:Lcom/google/common/collect/HashBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/telecom/Call;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcom/google/common/collect/HashBiMap;->create()Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/CallIdMapper;->mCalls:Lcom/google/common/collect/HashBiMap;

    .line 28
    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/CallIdMapper;->mCallIdPrefix:Ljava/lang/String;

    .line 30
    return-void
.end method

.method static isValidConferenceId(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 98
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final addCall(Lcom/android/server/telecom/Call;)V
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    .line 50
    sget v0, Lcom/android/server/telecom/CallIdMapper;->sIdCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/telecom/CallIdMapper;->sIdCount:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/telecom/CallIdMapper;->mCallIdPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/telecom/CallIdMapper;->sIdCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/telecom/CallIdMapper;->addCall(Lcom/android/server/telecom/Call;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method final addCall(Lcom/android/server/telecom/Call;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    .line 45
    iget-object v0, p0, Lcom/android/server/telecom/CallIdMapper;->mCalls:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v0, p2, p1}, Lcom/google/common/collect/HashBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method final clear()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/telecom/CallIdMapper;->mCalls:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/HashBiMap;->clear()V

    .line 90
    return-void
.end method

.method public final getCall(Ljava/lang/Object;)Lcom/android/server/telecom/Call;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 78
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 79
    check-cast p1, Ljava/lang/String;

    .line 81
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/server/telecom/CallIdMapper;->isValidConferenceId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallIdMapper;->mCalls:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/HashBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    goto :goto_1

    :cond_1
    move-object p1, v0

    goto :goto_0
.end method

.method public final getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallIdMapper;->mCalls:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/HashBiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final isValidCallId(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 94
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallIdMapper;->mCallIdPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final removeCall(Lcom/android/server/telecom/Call;)V
    .locals 1

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    .line 58
    iget-object v0, p0, Lcom/android/server/telecom/CallIdMapper;->mCalls:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/HashBiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/BiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method final removeCall(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    .line 63
    iget-object v0, p0, Lcom/android/server/telecom/CallIdMapper;->mCalls:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/HashBiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method
