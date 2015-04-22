.class Lcom/android/settings/wifi/WifiCredService$1;
.super Landroid/os/FileObserver;
.source "WifiCredService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiCredService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiCredService;

.field final synthetic val$pathToWatch:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiCredService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiCredService$1;->val$pathToWatch:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 13
    .param p1, "event"    # I
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 82
    const/16 v10, 0x8

    if-ne p1, v10, :cond_1

    const-string v10, "cred"

    invoke-virtual {p2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, ".conf"

    invoke-virtual {p2, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, ".zip"

    invoke-virtual {p2, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 84
    :cond_0
    const-string v10, "WifiCredService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File CLOSE_WRITE ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/wifi/WifiCredService$1;->val$pathToWatch:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v10, ".conf"

    invoke-virtual {p2, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 87
    :try_start_0
    iget-object v10, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/settings/wifi/WifiCredService$1;->val$pathToWatch:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/settings/wifi/WifiCredService;->readSdcard(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/settings/wifi/WifiCredService;->access$000(Lcom/android/settings/wifi/WifiCredService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "credInfo":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 89
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiCredService$1;->val$pathToWatch:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 91
    iget-object v10, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    iget-object v10, v10, Lcom/android/settings/wifi/WifiCredService;->list:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;

    .line 92
    .local v4, "hs":Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;
    # getter for: Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;->hs20_timer:Ljava/util/Timer;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;->access$100(Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;)Ljava/util/Timer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v1    # "credInfo":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "hs":Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 111
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 94
    .restart local v1    # "credInfo":Ljava/lang/String;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iget-object v10, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    iget-object v10, v10, Lcom/android/settings/wifi/WifiCredService;->list:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->clear()V

    .line 95
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 96
    .local v6, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, "b":Landroid/os/Bundle;
    const-string v10, "cred"

    invoke-virtual {v0, v10, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 99
    const/16 v10, 0x2a

    iput v10, v6, Landroid/os/Message;->what:I

    .line 100
    iget-object v10, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # getter for: Lcom/android/settings/wifi/WifiCredService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v10}, Lcom/android/settings/wifi/WifiCredService;->access$200(Lcom/android/settings/wifi/WifiCredService;)Landroid/net/wifi/WifiManager;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 102
    iget-object v10, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # getter for: Lcom/android/settings/wifi/WifiCredService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v10}, Lcom/android/settings/wifi/WifiCredService;->access$200(Lcom/android/settings/wifi/WifiCredService;)Landroid/net/wifi/WifiManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 103
    .local v8, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 104
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    .line 105
    iget-object v10, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # getter for: Lcom/android/settings/wifi/WifiCredService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v10}, Lcom/android/settings/wifi/WifiCredService;->access$200(Lcom/android/settings/wifi/WifiCredService;)Landroid/net/wifi/WifiManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # getter for: Lcom/android/settings/wifi/WifiCredService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v11}, Lcom/android/settings/wifi/WifiCredService;->access$200(Lcom/android/settings/wifi/WifiCredService;)Landroid/net/wifi/WifiManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 113
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "credInfo":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "msg":Landroid/os/Message;
    .end local v8    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_3
    const-string v10, ".zip"

    invoke-virtual {p2, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 114
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/settings/wifi/WifiCredService$1;->val$pathToWatch:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/cred.zip"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 115
    .local v9, "zipFile":Ljava/lang/String;
    const-string v7, "/data/bundle/"

    .line 116
    .local v7, "unzipLocation":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    invoke-virtual {v10}, Lcom/android/settings/wifi/WifiCredService;->installPathExists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 119
    iget-object v10, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    invoke-virtual {v10, v9, v7}, Lcom/android/settings/wifi/WifiCredService;->unzip(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 122
    iget-object v10, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    invoke-virtual {v10, v7}, Lcom/android/settings/wifi/WifiCredService;->loadCred(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .restart local v1    # "credInfo":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 124
    iget-object v10, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    iget-object v10, v10, Lcom/android/settings/wifi/WifiCredService;->list:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;

    .line 125
    .restart local v4    # "hs":Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;
    # getter for: Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;->hs20_timer:Ljava/util/Timer;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;->access$100(Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;)Ljava/util/Timer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Timer;->cancel()V

    goto :goto_2

    .line 127
    .end local v4    # "hs":Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;
    :cond_4
    iget-object v10, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    iget-object v10, v10, Lcom/android/settings/wifi/WifiCredService;->list:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->clear()V

    .line 128
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 129
    .restart local v6    # "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 130
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string v10, "cred"

    invoke-virtual {v0, v10, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 132
    const/16 v10, 0x2a

    iput v10, v6, Landroid/os/Message;->what:I

    .line 133
    iget-object v10, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # getter for: Lcom/android/settings/wifi/WifiCredService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v10}, Lcom/android/settings/wifi/WifiCredService;->access$200(Lcom/android/settings/wifi/WifiCredService;)Landroid/net/wifi/WifiManager;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 135
    iget-object v10, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # getter for: Lcom/android/settings/wifi/WifiCredService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v10}, Lcom/android/settings/wifi/WifiCredService;->access$200(Lcom/android/settings/wifi/WifiCredService;)Landroid/net/wifi/WifiManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 136
    .restart local v8    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 137
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    .line 138
    iget-object v10, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # getter for: Lcom/android/settings/wifi/WifiCredService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v10}, Lcom/android/settings/wifi/WifiCredService;->access$200(Lcom/android/settings/wifi/WifiCredService;)Landroid/net/wifi/WifiManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiCredService$1;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # getter for: Lcom/android/settings/wifi/WifiCredService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v11}, Lcom/android/settings/wifi/WifiCredService;->access$200(Lcom/android/settings/wifi/WifiCredService;)Landroid/net/wifi/WifiManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_1
.end method
