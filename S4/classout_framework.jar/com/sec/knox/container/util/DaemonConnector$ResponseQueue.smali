.class Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue;
.super Ljava/lang/Object;
.source "DaemonConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/util/DaemonConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResponseQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    }
.end annotation


# instance fields
.field private mMaxCount:I

.field private final mPendingCmds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "maxCount"    # I

    .prologue
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, mPendingCmds:Ljava/util/LinkedList;

    .line 532
    iput p1, p0, mMaxCount:I

    .line 533
    return-void
.end method


# virtual methods
.method public add(ILcom/sec/knox/container/util/DaemonEvent;)V
    .registers 11
    .param p1, "cmdNum"    # I
    .param p2, "response"    # Lcom/sec/knox/container/util/DaemonEvent;

    .prologue
    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    iget-object v5, p0, mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v5

    .line 538
    :try_start_4
    iget-object v4, p0, mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;

    .line 539
    .local v3, "pendingCmd":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    iget v4, v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_af

    if-ne v4, p1, :cond_a

    .line 540
    move-object v0, v3

    move-object v1, v0

    .line 544
    .end local v0    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .end local v3    # "pendingCmd":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .local v1, "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :goto_1c
    if-nez v1, :cond_b1

    .line 547
    :goto_1e
    :try_start_1e
    iget-object v4, p0, mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    iget v6, p0, mMaxCount:I

    if-lt v4, v6, :cond_8c

    .line 548
    const-string v4, "DaemonConnector.ResponseQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "more buffered than allowed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " >= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mMaxCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v4, p0, mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;

    .line 552
    .restart local v3    # "pendingCmd":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    const-string v4, "DaemonConnector.ResponseQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->request:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_1e .. :try_end_87} :catchall_88

    goto :goto_1e

    .line 564
    .end local v3    # "pendingCmd":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :catchall_88
    move-exception v4

    move-object v0, v1

    .end local v1    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .end local v2    # "i$":Ljava/util/Iterator;
    .restart local v0    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :goto_8a
    :try_start_8a
    monitor-exit v5
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_af

    throw v4

    .line 555
    .end local v0    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v1    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_8c
    :try_start_8c
    new-instance v0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;

    const/4 v4, 0x0

    invoke-direct {v0, p1, v4}, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V
    :try_end_92
    .catchall {:try_start_8c .. :try_end_92} :catchall_88

    .line 556
    .end local v1    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v0    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :try_start_92
    iget-object v4, p0, mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 558
    :goto_97
    iget v4, v0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    .line 562
    iget v4, v0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    if-nez v4, :cond_a6

    .line 563
    iget-object v4, p0, mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 564
    :cond_a6
    monitor-exit v5
    :try_end_a7
    .catchall {:try_start_92 .. :try_end_a7} :catchall_af

    .line 566
    :try_start_a7
    iget-object v4, v0, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_ac
    .catch Ljava/lang/InterruptedException; {:try_start_a7 .. :try_end_ac} :catch_ad

    .line 569
    :goto_ac
    return-void

    .line 567
    :catch_ad
    move-exception v4

    goto :goto_ac

    .line 564
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_af
    move-exception v4

    goto :goto_8a

    .end local v0    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v1    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_b1
    move-object v0, v1

    .end local v1    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v0    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    goto :goto_97

    :cond_b3
    move-object v1, v0

    .end local v0    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v1    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    goto/16 :goto_1c
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 606
    const-string v2, "Pending requests:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    iget-object v3, p0, mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v3

    .line 608
    :try_start_8
    iget-object v2, p0, mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;

    .line 609
    .local v1, "pendingCmd":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Cmd "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->request:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 611
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pendingCmd":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :catchall_3f
    move-exception v2

    monitor-exit v3
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_3f

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_42
    :try_start_42
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_3f

    .line 612
    return-void
.end method

.method public remove(IILjava/lang/String;)Lcom/sec/knox/container/util/DaemonEvent;
    .registers 15
    .param p1, "cmdNum"    # I
    .param p2, "timeoutMs"    # I
    .param p3, "origCmd"    # Ljava/lang/String;

    .prologue
    .line 575
    const/4 v2, 0x0

    .line 576
    .local v2, "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    iget-object v8, p0, mPendingCmds:Ljava/util/LinkedList;

    monitor-enter v8

    .line 577
    :try_start_4
    iget-object v7, p0, mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;

    .line 578
    .local v5, "pendingCmd":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    iget v7, v5, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->cmdNum:I
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_50

    if-ne v7, p1, :cond_a

    .line 579
    move-object v2, v5

    move-object v3, v2

    .line 583
    .end local v2    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .end local v5    # "pendingCmd":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .local v3, "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :goto_1c
    if-nez v3, :cond_58

    .line 584
    :try_start_1e
    new-instance v2, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;

    invoke-direct {v2, p1, p3}, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;-><init>(ILjava/lang/String;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_55

    .line 585
    .end local v3    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v2    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :try_start_23
    iget-object v7, p0, mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 587
    :goto_28
    iget v7, v2, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v2, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    .line 591
    iget v7, v2, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->availableResponseCount:I

    if-nez v7, :cond_37

    .line 592
    iget-object v7, p0, mPendingCmds:Ljava/util/LinkedList;

    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 593
    :cond_37
    monitor-exit v8
    :try_end_38
    .catchall {:try_start_23 .. :try_end_38} :catchall_50

    .line 594
    const/4 v6, 0x0

    .line 596
    .local v6, "result":Lcom/sec/knox/container/util/DaemonEvent;
    :try_start_39
    iget-object v7, v2, Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;->responses:Ljava/util/concurrent/BlockingQueue;

    int-to-long v8, p2

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v8, v9, v10}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/sec/knox/container/util/DaemonEvent;

    move-object v6, v0
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_46} :catch_53

    .line 599
    :goto_46
    if-nez v6, :cond_4f

    .line 600
    const-string v7, "DaemonConnector.ResponseQueue"

    const-string v8, "Timeout waiting for response"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_4f
    return-object v6

    .line 593
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "result":Lcom/sec/knox/container/util/DaemonEvent;
    :catchall_50
    move-exception v7

    :goto_51
    :try_start_51
    monitor-exit v8
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v7

    .line 597
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "result":Lcom/sec/knox/container/util/DaemonEvent;
    :catch_53
    move-exception v7

    goto :goto_46

    .line 593
    .end local v2    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .end local v6    # "result":Lcom/sec/knox/container/util/DaemonEvent;
    .restart local v3    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :catchall_55
    move-exception v7

    move-object v2, v3

    .end local v3    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v2    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    goto :goto_51

    .end local v2    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v3    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    :cond_58
    move-object v2, v3

    .end local v3    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v2    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    goto :goto_28

    :cond_5a
    move-object v3, v2

    .end local v2    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    .restart local v3    # "found":Lcom/sec/knox/container/util/DaemonConnector$ResponseQueue$PendingCmd;
    goto :goto_1c
.end method
