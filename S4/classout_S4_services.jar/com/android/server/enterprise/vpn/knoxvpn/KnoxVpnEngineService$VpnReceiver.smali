.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KnoxVpnEngineService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VpnReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .registers 2

    .prologue
    .line 2786
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 2789
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2790
    .local v0, "action":Ljava/lang/String;
    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Vpn Receiver : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    invoke-virtual {p0}, isInitialStickyBroadcast()Z

    move-result v6

    if-nez v6, :cond_80

    .line 2793
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2795
    .local v2, "map":Landroid/os/Bundle;
    const-string v6, "com.sec.knox.migrationagent.START_VPN_MIGRATION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_101

    .line 2796
    const-string v6, "KnoxVpnEngineService"

    const-string v7, "KnoxVpnMigration : Receive a migration intent"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->isFail()Z

    move-result v6

    if-eq v6, v10, :cond_d9

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->isNeedToMigration()Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 2798
    const-string v6, "KnoxVpnEngineService"

    const-string v7, "KnoxVpnMigration : Have to do a migration"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2801
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    move-result-object v6

    if-nez v6, :cond_6f

    .line 2802
    new-instance v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    iget-object v7, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;
    invoke-static {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    move-result-object v8

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1200()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    # setter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    invoke-static {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$902(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    .line 2804
    :cond_6f
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_81

    .line 2805
    const-string v6, "KnoxVpnEngineService"

    const-string v7, "KnoxVpnMigration : have received a multiple request for a migration"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    .end local v2    # "map":Landroid/os/Bundle;
    :cond_80
    :goto_80
    return-void

    .line 2808
    .restart local v2    # "map":Landroid/os/Bundle;
    :cond_81
    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KnoxVpnMigration : start migration : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->getState()Ljava/lang/Thread$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->getState()Ljava/lang/Thread$State;

    move-result-object v6

    const-string v7, "NEW"

    invoke-static {v7}, Ljava/lang/Thread$State;->valueOf(Ljava/lang/String;)Ljava/lang/Thread$State;

    move-result-object v7

    if-ne v6, v7, :cond_b9

    .line 2810
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->start()V

    goto :goto_80

    .line 2813
    :cond_b9
    new-instance v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    iget-object v7, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;
    invoke-static {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    move-result-object v8

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1200()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    # setter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    invoke-static {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$902(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    .line 2814
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->start()V

    goto :goto_80

    .line 2820
    :cond_d9
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    move-result-object v6

    if-nez v6, :cond_f7

    .line 2821
    new-instance v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    iget-object v7, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;
    invoke-static {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    move-result-object v8

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1200()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    # setter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    invoke-static {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$902(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    .line 2823
    :cond_f7
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    move-result-object v6

    const-string v7, "Successful"

    invoke-virtual {v6, v10, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->sendMigrationSuccessIntent(ILjava/lang/String;)V

    goto :goto_80

    .line 2828
    :cond_101
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_176

    .line 2829
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 2830
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_113

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 2831
    .local v3, "packageName":Ljava/lang/String;
    :cond_113
    const-string v6, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2832
    .local v1, "extra_replacing":Z
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$000()Z

    move-result v6

    if-eqz v6, :cond_137

    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Vpn Receiver : The extra value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    :cond_137
    const-string v6, "android.intent.extra.UID"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2834
    .local v4, "uid":I
    if-le v4, v9, :cond_80

    .line 2835
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$000()Z

    move-result v6

    if-eqz v6, :cond_15d

    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Vpn Receiver : Package Added = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    :cond_15d
    const-string/jumbo v6, "uid"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2837
    const-string/jumbo v6, "package"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2838
    const-string v6, "new_install_or_update"

    invoke-virtual {v2, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2839
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/4 v7, 0x2

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    invoke-static {v6, v7, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_80

    .line 2842
    .end local v1    # "extra_replacing":Z
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_176
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1cb

    .line 2843
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 2844
    .restart local v5    # "uri":Landroid/net/Uri;
    if-eqz v5, :cond_188

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 2845
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_188
    const-string v6, "android.intent.extra.UID"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2846
    .restart local v4    # "uid":I
    const-string v6, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2847
    .restart local v1    # "extra_replacing":Z
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$000()Z

    move-result v6

    if-eqz v6, :cond_1b2

    const-string v6, "KnoxVpnEngineService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Vpn Receiver : Package Removed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    :cond_1b2
    const-string/jumbo v6, "uid"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2849
    const-string/jumbo v6, "package"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2850
    const-string v6, "new_install_or_update"

    invoke-virtual {v2, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2851
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/4 v7, 0x3

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    invoke-static {v6, v7, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_80

    .line 2853
    .end local v1    # "extra_replacing":Z
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_1cb
    const-string v6, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e0

    .line 2854
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2855
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/16 v7, 0x9

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    invoke-static {v6, v7, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_80

    .line 2857
    :cond_1e0
    const-string v6, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f5

    .line 2858
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2859
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/16 v7, 0xd

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    invoke-static {v6, v7, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_80

    .line 2861
    :cond_1f5
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_209

    .line 2862
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2863
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/4 v7, 0x4

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    invoke-static {v6, v7, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_80

    .line 2866
    :cond_209
    const-string v6, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21d

    .line 2867
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2868
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/4 v7, 0x6

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    invoke-static {v6, v7, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_80

    .line 2871
    :cond_21d
    const-string v6, "com.sec.enterprise.mdm.services.vpn.INTERFACE_STATUS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_230

    .line 2872
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2873
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    invoke-static {v6, v10, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_80

    .line 2885
    :cond_230
    const-string v6, "com.sec.enterprise.mdm.services.vpn.RETRY"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_245

    .line 2886
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2887
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/16 v7, 0xb

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    invoke-static {v6, v7, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_80

    .line 2888
    :cond_245
    const-string v6, "enterprise.container.admin.changed"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 2889
    const-string v6, "android.intent.extra.user_handle"

    const-string v7, "containerid"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2890
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/16 v7, 0xc

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    invoke-static {v6, v7, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_80
.end method
