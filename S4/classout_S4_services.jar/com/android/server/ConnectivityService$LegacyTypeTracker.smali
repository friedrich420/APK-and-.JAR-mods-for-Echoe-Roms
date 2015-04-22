.class Lcom/android/server/ConnectivityService$LegacyTypeTracker;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyTypeTracker"
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "CSLegacyTypeTracker"

.field private static final VDBG:Z = true


# instance fields
.field private mTypeLists:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 3

    .prologue
    .line 635
    iput-object p1, p0, this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/util/ArrayList;

    check-cast v0, [Ljava/util/ArrayList;

    iput-object v0, p0, mTypeLists:[Ljava/util/ArrayList;

    .line 638
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 760
    const-string v0, "CSLegacyTypeTracker"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    return-void
.end method

.method private maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;ZI)V
    .registers 6
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "connected"    # Z
    .param p3, "type"    # I

    .prologue
    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_43

    const-string v0, "connected"

    :goto_f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " broadcast for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isDefaultNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    invoke-static {v1, p1}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, log(Ljava/lang/String;)V

    .line 670
    return-void

    .line 666
    :cond_43
    const-string v0, "disconnected"

    goto :goto_f
.end method

.method private naiToString(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/lang/String;
    .registers 6
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 736
    if-eqz p1, :cond_45

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, "name":Ljava/lang/String;
    :goto_6
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v2, :cond_48

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 740
    .local v1, "state":Ljava/lang/String;
    :goto_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 736
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "state":Ljava/lang/String;
    :cond_45
    const-string v0, "null"

    goto :goto_6

    .line 737
    .restart local v0    # "name":Ljava/lang/String;
    :cond_48
    const-string v1, "???/???"

    goto :goto_2d
.end method


# virtual methods
.method public add(ILcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    const/4 v4, 0x1

    .line 674
    invoke-virtual {p0, p1}, isTypeSupported(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 694
    :goto_7
    return-void

    .line 677
    :cond_8
    const-string v1, "CSLegacyTypeTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add() : Adding agent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for legacy network type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v1, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v2, v1, p1

    monitor-enter v2

    .line 679
    :try_start_2f
    iget-object v1, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v0, v1, p1

    .line 680
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to register duplicate agent for type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    .line 682
    monitor-exit v2

    goto :goto_7

    .line 693
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    :catchall_5b
    move-exception v1

    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_2f .. :try_end_5d} :catchall_5b

    throw v1

    .line 685
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    :cond_5e
    :try_start_5e
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v1, v4, :cond_6f

    iget-object v1, p0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    invoke-static {v1, p2}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    if-eqz v1, :cond_7d

    :cond_6f
    const/16 v1, 0xd

    if-eq p1, v1, :cond_7d

    .line 690
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1, p1}, maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;ZI)V

    .line 691
    iget-object v1, p0, this$0:Lcom/android/server/ConnectivityService;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/ConnectivityService;->sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;ZI)V
    invoke-static {v1, p2, v3, p1}, Lcom/android/server/ConnectivityService;->access$300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;ZI)V

    .line 693
    :cond_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_5e .. :try_end_7e} :catchall_5b

    goto :goto_7
.end method

.method public addSupportedType(I)V
    .registers 5
    .param p1, "type"    # I

    .prologue
    .line 641
    iget-object v0, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    if-eqz v0, :cond_25

    .line 642
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "legacy list for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "already initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_25
    iget-object v0, p0, mTypeLists:[Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, p1

    .line 646
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 744
    const/4 v2, 0x0

    .local v2, "type":I
    :goto_1
    iget-object v3, p0, mTypeLists:[Ljava/util/ArrayList;

    array-length v3, v3

    if-ge v2, v3, :cond_60

    .line 745
    iget-object v3, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    if-nez v3, :cond_f

    .line 744
    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 746
    :cond_f
    iget-object v3, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v4, v3, v2

    monitor-enter v4

    .line 747
    :try_start_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 748
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 749
    iget-object v3, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3c

    const-string v3, "none"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 750
    :cond_3c
    iget-object v3, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 751
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {p0, v1}, naiToString(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_44

    .line 754
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :catchall_58
    move-exception v3

    monitor-exit v4
    :try_end_5a
    .catchall {:try_start_14 .. :try_end_5a} :catchall_58

    throw v3

    .line 753
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 754
    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_58

    goto :goto_c

    .line 756
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_60
    return-void
.end method

.method public getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 7
    .param p1, "type"    # I

    .prologue
    .line 653
    const/4 v1, 0x0

    .line 654
    .local v1, "agentInfo":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-virtual {p0, p1}, isTypeSupported(I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 655
    iget-object v2, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v3, v2, p1

    monitor-enter v3

    .line 656
    :try_start_c
    iget-object v2, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 657
    iget-object v2, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v2, v2, p1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    move-object v1, v0

    .line 659
    :cond_23
    monitor-exit v3

    .line 661
    :cond_24
    return-object v1

    .line 659
    :catchall_25
    move-exception v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_25

    throw v2
.end method

.method public isTypeSupported(I)Z
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 649
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public remove(ILcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 698
    iget-object v2, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v0, v2, p1

    .line 699
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    if-nez v0, :cond_7

    .line 725
    :goto_6
    return-void

    .line 702
    :cond_7
    iget-object v2, p0, mTypeLists:[Ljava/util/ArrayList;

    aget-object v3, v2, p1

    monitor-enter v3

    .line 703
    :try_start_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 704
    monitor-exit v3

    goto :goto_6

    .line 724
    :catchall_14
    move-exception v2

    monitor-exit v3
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v2

    .line 707
    :cond_17
    const/4 v2, 0x0

    :try_start_18
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 709
    .local v1, "wasFirstNetwork":Z
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 710
    monitor-exit v3

    goto :goto_6

    .line 713
    :cond_2a
    if-nez v1, :cond_34

    iget-object v2, p0, this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    invoke-static {v2, p2}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 714
    :cond_34
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2, p1}, maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;ZI)V

    .line 715
    iget-object v2, p0, this$0:Lcom/android/server/ConnectivityService;

    const/4 v4, 0x0

    # invokes: Lcom/android/server/ConnectivityService;->sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;ZI)V
    invoke-static {v2, p2, v4, p1}, Lcom/android/server/ConnectivityService;->access$300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;ZI)V

    .line 718
    :cond_3e
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7a

    if-eqz v1, :cond_7a

    .line 719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Other network available for type "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", sending connected broadcast"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, log(Ljava/lang/String;)V

    .line 721
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v4, p1}, maybeLogBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;ZI)V

    .line 722
    iget-object v4, p0, this$0:Lcom/android/server/ConnectivityService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/ConnectivityService;->sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;ZI)V
    invoke-static {v4, v2, v5, p1}, Lcom/android/server/ConnectivityService;->access$300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;ZI)V

    .line 724
    :cond_7a
    monitor-exit v3
    :try_end_7b
    .catchall {:try_start_18 .. :try_end_7b} :catchall_14

    goto :goto_6
.end method

.method public remove(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing agent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, log(Ljava/lang/String;)V

    .line 730
    const/4 v0, 0x0

    .local v0, "type":I
    :goto_17
    iget-object v1, p0, mTypeLists:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_22

    .line 731
    invoke-virtual {p0, v0, p1}, remove(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 730
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 733
    :cond_22
    return-void
.end method
