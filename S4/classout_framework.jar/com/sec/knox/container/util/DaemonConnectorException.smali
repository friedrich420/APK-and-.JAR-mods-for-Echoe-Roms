.class public Lcom/sec/knox/container/util/DaemonConnectorException;
.super Ljava/lang/Exception;
.source "DaemonConnectorException.java"


# instance fields
.field private mCmd:Ljava/lang/String;

.field private mEvent:Lcom/sec/knox/container/util/DaemonEvent;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sec/knox/container/util/DaemonEvent;)V
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "event"    # Lcom/sec/knox/container/util/DaemonEvent;

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "command \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' failed with \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, mCmd:Ljava/lang/String;

    .line 40
    iput-object p2, p0, mEvent:Lcom/sec/knox/container/util/DaemonEvent;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getCmd()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, mCmd:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, mEvent:Lcom/sec/knox/container/util/DaemonEvent;

    invoke-virtual {v0}, Lcom/sec/knox/container/util/DaemonEvent;->getCode()I

    move-result v0

    return v0
.end method

.method public rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;
    .registers 3

    .prologue
    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
