.class public Lcom/samsung/android/contextaware/aggregator/BatchAggregator;
.super Lcom/samsung/android/contextaware/manager/BatchContextProvider;
.source "BatchAggregator.java"


# direct methods
.method public constructor <init>(Lcom/samsung/android/contextaware/manager/ContextComponent;)V
    .registers 2
    .param p1, "provider"    # Lcom/samsung/android/contextaware/manager/ContextComponent;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/manager/BatchContextProvider;-><init>(Lcom/samsung/android/contextaware/manager/ContextComponent;)V

    .line 37
    return-void
.end method


# virtual methods
.method public final start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "operation"    # I

    .prologue
    .line 48
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 49
    iget-object v0, p0, mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    .line 50
    return-void
.end method

.method public final stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "operation"    # I

    .prologue
    .line 61
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 62
    iget-object v0, p0, mProvider:Lcom/samsung/android/contextaware/manager/ContextComponent;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    .line 63
    return-void
.end method
