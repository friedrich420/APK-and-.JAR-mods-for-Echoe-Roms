.class Lcom/android/server/connectivity/Vpn$3;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn;)V
    .registers 2

    .prologue
    .line 892
    iput-object p1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 8
    .param p1, "interfaze"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 904
    iget-object v3, p0, this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v3

    .line 905
    :try_start_4
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->jniCheck(Ljava/lang/String;)I
    invoke-static {v2, p1}, Lcom/android/server/connectivity/Vpn;->access$600(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8e

    .line 906
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$700(Lcom/android/server/connectivity/Vpn;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/UidRange;

    .line 907
    .local v1, "uidRange":Landroid/net/UidRange;
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1}, Landroid/net/UidRange;->getStartUser()I

    move-result v4

    # invokes: Lcom/android/server/connectivity/Vpn;->hideNotification(I)V
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;I)V

    goto :goto_22

    .line 928
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "uidRange":Landroid/net/UidRange;
    :catchall_38
    move-exception v2

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_38

    throw v2

    .line 910
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3b
    :try_start_3b
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->getKnoxVpnFeature()I
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)I

    move-result v2

    if-lt v2, v5, :cond_5a

    .line 911
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mRouteInfo:Z
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1000(Lcom/android/server/connectivity/Vpn;)Z

    move-result v2

    if-ne v2, v5, :cond_5a

    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->isMetaDataEnabled:Z
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1100(Lcom/android/server/connectivity/Vpn;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 912
    const-string v2, "net.vpn.markbase"

    const-string v4, "false"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    :cond_5a
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/connectivity/Vpn;->mStatusIntent:Landroid/app/PendingIntent;
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$1202(Lcom/android/server/connectivity/Vpn;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 917
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/connectivity/Vpn;->mVpnUsers:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$702(Lcom/android/server/connectivity/Vpn;Ljava/util/List;)Ljava/util/List;

    .line 918
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$502(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 919
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;

    move-result-object v2

    if-eqz v2, :cond_90

    .line 920
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1400(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->access$1300(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 921
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/connectivity/Vpn;->mConnection:Lcom/android/server/connectivity/Vpn$Connection;
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$1302(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;

    .line 922
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # invokes: Lcom/android/server/connectivity/Vpn;->agentDisconnect()V
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$1500(Lcom/android/server/connectivity/Vpn;)V

    .line 928
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_8e
    :goto_8e
    monitor-exit v3

    .line 929
    return-void

    .line 923
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_90
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$400(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object v2

    if-eqz v2, :cond_8e

    .line 924
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$400(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 925
    iget-object v2, p0, this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    invoke-static {v2, v4}, Lcom/android/server/connectivity/Vpn;->access$402(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    :try_end_a7
    .catchall {:try_start_3b .. :try_end_a7} :catchall_38

    goto :goto_8e
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "interfaze"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .prologue
    .line 895
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v1

    .line 896
    if-nez p2, :cond_16

    :try_start_5
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$400(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 897
    iget-object v0, p0, this$0:Lcom/android/server/connectivity/Vpn;

    # getter for: Lcom/android/server/connectivity/Vpn;->mLegacyVpnRunner:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$400(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->check(Ljava/lang/String;)V

    .line 899
    :cond_16
    monitor-exit v1

    .line 900
    return-void

    .line 899
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v0
.end method
