.class Lcom/android/server/display/WifiDisplayController$30;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .registers 2

    .prologue
    .line 2295
    iput-object p1, p0, this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2298
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 2299
    .local v5, "action":Ljava/lang/String;
    const-string v18, "android.net.wifi.p2p.STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4e

    .line 2302
    const-string/jumbo v18, "wifi_p2p_state"

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4c

    const/4 v10, 0x1

    .line 2306
    .local v10, "enabled":Z
    :goto_26
    const-string v18, "WifiDisplayController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Received WIFI_P2P_STATE_CHANGED_ACTION: enabled="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/display/WifiDisplayController;->handleStateChanged(Z)V
    invoke-static {v0, v10}, Lcom/android/server/display/WifiDisplayController;->access$5400(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 2495
    .end local v10    # "enabled":Z
    :cond_4b
    :goto_4b
    return-void

    .line 2302
    :cond_4c
    const/4 v10, 0x0

    goto :goto_26

    .line 2311
    :cond_4e
    const-string v18, "android.net.wifi.p2p.PEERS_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_69

    .line 2313
    const-string v18, "WifiDisplayController"

    const-string v19, "Received WIFI_P2P_PEERS_CHANGED_ACTION."

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->handlePeersChanged()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$5500(Lcom/android/server/display/WifiDisplayController;)V

    goto :goto_4b

    .line 2317
    :cond_69
    const-string v18, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a5

    .line 2318
    const-string v18, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/NetworkInfo;

    .line 2321
    .local v12, "networkInfo":Landroid/net/NetworkInfo;
    const-string v18, "WifiDisplayController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Received WIFI_P2P_CONNECTION_CHANGED_ACTION: networkInfo="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/display/WifiDisplayController;->handleConnectionChanged(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v12}, Lcom/android/server/display/WifiDisplayController;->access$5600(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;)V

    goto :goto_4b

    .line 2326
    .end local v12    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_a5
    const-string v18, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_ed

    .line 2327
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v19, v0

    const-string/jumbo v18, "wifiP2pDevice"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    # setter for: Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$4202(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2330
    const-string v18, "WifiDisplayController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Received WIFI_P2P_THIS_DEVICE_CHANGED_ACTION: mThisDevice= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static/range {v20 .. v20}, Lcom/android/server/display/WifiDisplayController;->access$4200(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b

    .line 2336
    :cond_ed
    const-string v18, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1bc

    .line 2337
    const/16 v6, 0xe

    .line 2338
    .local v6, "apState":I
    const-string/jumbo v18, "wifi_state"

    const/16 v19, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 2340
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$5700(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v18

    if-eqz v18, :cond_12e

    const/16 v18, 0xb

    move/from16 v0, v18

    if-ne v6, v0, :cond_12e

    .line 2341
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$5702(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2342
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->updateSettings()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$000(Lcom/android/server/display/WifiDisplayController;)V

    .line 2345
    :cond_12e
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$2800(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "wifi_display_on"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_1ba

    const/4 v15, 0x1

    .line 2346
    .local v15, "turningWifiDisplayOn":Z
    :goto_148
    const-string/jumbo v18, "wlan.wfd.pickerdialogontop"

    const-string v19, "0"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    .line 2347
    .local v13, "pickerDialogOnTop":Z
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$2800(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$2800(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    const-string v19, "display"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/display/DisplayManager;

    .line 2348
    .local v8, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v8}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v9

    .line 2349
    .local v9, "displayStatus":Landroid/hardware/display/WifiDisplayStatus;
    if-eqz v15, :cond_4b

    if-eqz v13, :cond_4b

    const/16 v18, 0xd

    move/from16 v0, v18

    if-ne v6, v0, :cond_4b

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v18

    if-nez v18, :cond_4b

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v18

    if-nez v18, :cond_4b

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4b

    invoke-virtual {v9}, Landroid/hardware/display/WifiDisplayStatus;->getConnectedState()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4b

    .line 2355
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$5702(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2356
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->updateSettings()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$000(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_4b

    .line 2345
    .end local v8    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v9    # "displayStatus":Landroid/hardware/display/WifiDisplayStatus;
    .end local v13    # "pickerDialogOnTop":Z
    .end local v15    # "turningWifiDisplayOn":Z
    :cond_1ba
    const/4 v15, 0x0

    goto :goto_148

    .line 2358
    .end local v6    # "apState":I
    :cond_1bc
    const-string v18, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_243

    .line 2359
    const-string v18, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkInfo;

    .line 2361
    .local v11, "info":Landroid/net/NetworkInfo;
    if-eqz v11, :cond_4b

    .line 2362
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v18

    if-eqz v18, :cond_4b

    .line 2363
    const-string/jumbo v18, "wifiInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/WifiInfo;

    .line 2364
    .local v16, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v16, :cond_4b

    .line 2368
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v4

    .line 2370
    .local v4, "APFrequency":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$2700(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v18

    if-eqz v18, :cond_4b

    .line 2371
    const-string v18, "WifiDisplayController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AP is connected! AP Frquency:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ? WfdFrequency:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdFrequency:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/display/WifiDisplayController;->access$4000(Lcom/android/server/display/WifiDisplayController;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdFrequency:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$4000(Lcom/android/server/display/WifiDisplayController;)I

    move-result v18

    move/from16 v0, v18

    if-eq v4, v0, :cond_4b

    .line 2373
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    const v19, 0x22073

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$2300(Lcom/android/server/display/WifiDisplayController;I)V

    goto/16 :goto_4b

    .line 2378
    .end local v4    # "APFrequency":I
    .end local v11    # "info":Landroid/net/NetworkInfo;
    .end local v16    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_243
    const-string v18, "android.net.wifi.WIFI_OXYGEN_STATE_CHANGE"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2a2

    .line 2379
    const-string/jumbo v18, "wifi_state"

    const/16 v19, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 2380
    .local v17, "wifiState":I
    const-string v18, "WifiDisplayController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "WIFI_OXYGEN_STATE_CHANGED_ACTION : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$5700(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v18

    if-eqz v18, :cond_4b

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4b

    .line 2383
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$5702(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2384
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->updateSettings()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$000(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_4b

    .line 2386
    .end local v17    # "wifiState":I
    :cond_2a2
    const-string v18, "android.intent.action.HDMI_PLUGGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_379

    .line 2387
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mIsBootCompleted:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$5800(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v18

    if-eqz v18, :cond_2ce

    .line 2388
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$2800(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v18

    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.intent.action.DETACH_WFD_BROKER"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v20, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2389
    :cond_2ce
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    const-string/jumbo v19, "state"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    # setter for: Lcom/android/server/display/WifiDisplayController;->mHDMIConnected:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$5302(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2390
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHDMIConnected:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$5300(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v18

    if-eqz v18, :cond_326

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$2600(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v18

    if-eqz v18, :cond_326

    .line 2391
    const-string v18, "WifiDisplayController"

    const-string v19, "Screen Mirroring is disabled because HDMI is connected..."

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$5900(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/WifiDisplay;

    move-result-object v18

    if-eqz v18, :cond_34a

    .line 2393
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    const v19, 0x22074

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$2300(Lcom/android/server/display/WifiDisplayController;I)V

    .line 2394
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->disconnect()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$2500(Lcom/android/server/display/WifiDisplayController;)V

    .line 2399
    :cond_326
    :goto_326
    const-string v18, "WifiDisplayController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Received ACTION_HDMI_PLUGGED : mHDMIConnected = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHDMIConnected:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/display/WifiDisplayController;->access$5300(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b

    .line 2396
    :cond_34a
    const-string/jumbo v18, "wlan.wfd.pickerdialogontop"

    const-string v19, "0"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_36c

    const-string/jumbo v18, "wlan.wfd.settingontop"

    const-string v19, "0"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_326

    .line 2397
    :cond_36c
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    const v19, 0x22074

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$2300(Lcom/android/server/display/WifiDisplayController;I)V

    goto :goto_326

    .line 2400
    :cond_379
    const-string v18, "android.intent.action.WIFI_DISPLAY_URL_FROM_NATIVE"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3f6

    .line 2402
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    const-string v19, "URL"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    # setter for: Lcom/android/server/display/WifiDisplayController;->mUpdateURL:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$6002(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;

    .line 2404
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mUpdateURL:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$6000(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_4b

    .line 2405
    const-string v18, "WifiDisplayController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "dongle Update URL:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mUpdateURL:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/server/display/WifiDisplayController;->access$6000(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$2100(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$3300(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2407
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$2100(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitTillBrokerClosed:Ljava/lang/Runnable;
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$6100(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v19

    const-wide/16 v20, 0x2ee

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4b

    .line 2409
    :cond_3f6
    const-string v18, "android.settings.POWERSAVING_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_49d

    .line 2410
    const-string/jumbo v7, "true"

    .line 2411
    .local v7, "changed":Ljava/lang/String;
    const-string v18, "changed"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_419

    .line 2412
    const-string v18, "changed"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2415
    :cond_419
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->getPowerSavingMode()I
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$6200(Lcom/android/server/display/WifiDisplayController;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_464

    const-string/jumbo v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_464

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$400(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v18

    if-nez v18, :cond_44e

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$2700(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v18

    if-eqz v18, :cond_464

    .line 2416
    :cond_44e
    const-string v18, "WifiDisplayController"

    const-string/jumbo v19, "received power saving mode enabled"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    const v19, 0x22084

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$2300(Lcom/android/server/display/WifiDisplayController;I)V

    goto/16 :goto_4b

    .line 2418
    :cond_464
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$5700(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v18

    if-eqz v18, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->getPowerSavingMode()I
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$6200(Lcom/android/server/display/WifiDisplayController;)I

    move-result v18

    if-nez v18, :cond_4b

    const-string/jumbo v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4b

    .line 2419
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$5702(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2420
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->updateSettings()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$000(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_4b

    .line 2422
    .end local v7    # "changed":Ljava/lang/String;
    :cond_49d
    const-string v18, "android.intent.action.NOT_ALLOWED_SCREEN_MIRRORING"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_556

    .line 2423
    const-string v18, "WifiDisplayController"

    const-string v19, "LimitedContents : android.intent.action.NOT_ALLOWED_SCREEN_MIRRORING"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v19

    # setter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsType:Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$6302(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;

    .line 2426
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsType:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$6300(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_4d0

    .line 2427
    const-string v18, "WifiDisplayController"

    const-string v19, "LimitedContents type is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b

    .line 2430
    :cond_4d0
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$2700(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v18

    if-eqz v18, :cond_52c

    .line 2431
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsType:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$6300(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "recording"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_504

    .line 2432
    const-string v18, "WifiDisplayController"

    const-string v19, "LimitedContents : recording"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    const v19, 0x22087

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$2300(Lcom/android/server/display/WifiDisplayController;I)V

    goto/16 :goto_4b

    .line 2435
    :cond_504
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsType:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$6300(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "playback"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4b

    .line 2436
    const-string v18, "WifiDisplayController"

    const-string v19, "LimitedContents : playback"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    const v19, 0x22086

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$2300(Lcom/android/server/display/WifiDisplayController;I)V

    goto/16 :goto_4b

    .line 2441
    :cond_52c
    const-string v18, "WifiDisplayController"

    const-string v19, "LimitedContents : Video playing"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsEnabled:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$6402(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2443
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$2800(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "wifi_display_limited_contents_playing"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4b

    .line 2446
    :cond_556
    const-string v18, "android.intent.action.VIDEO_PLAYBACK_STOP"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_596

    .line 2447
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsEnabled:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$6400(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v18

    if-eqz v18, :cond_4b

    .line 2448
    const-string v18, "WifiDisplayController"

    const-string v19, "LimitedContents : android.intent.action.VIDEO_PLAYBACK_STOP"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mLimitedContentsEnabled:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$6402(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2450
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$2800(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "wifi_display_limited_contents_playing"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4b

    .line 2453
    :cond_596
    const-string/jumbo v18, "sidesync.app.action.DISMISS_FINISH_DIALOG"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5db

    .line 2454
    const-string v18, "WifiDisplayController"

    const-string/jumbo v19, "sidesync.app.action.DISMISS_FINISH_DIALOG"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$5700(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v18

    if-eqz v18, :cond_4b

    .line 2456
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$5702(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2457
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$2100(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitTillSideSyncClosed:Ljava/lang/Runnable;
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$6500(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v19

    const-wide/16 v20, 0x2ee

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4b

    .line 2459
    :cond_5db
    const-string v18, "com.sec.android.sidesync.action.FINISH_SIDESYNC_APP"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_617

    .line 2460
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$5700(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v18

    if-eqz v18, :cond_4b

    .line 2461
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mWaitForAction:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$5702(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2462
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$2100(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWaitTillSideSyncClosed:Ljava/lang/Runnable;
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$6500(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v19

    const-wide/16 v20, 0x2ee

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4b

    .line 2464
    :cond_617
    const-string v18, "com.samsung.wfd.RESULT_WFD_UPDATE"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_668

    .line 2465
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    const-string/jumbo v19, "result"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    # setter for: Lcom/android/server/display/WifiDisplayController;->mDongleUpdateResult:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$6602(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2466
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayController;->mDongleUpdateOnGoing:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$3202(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2467
    const-string v18, "WifiDisplayController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ACTION_RESULT_WFD_UPDATE << result:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDongleUpdateResult:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/display/WifiDisplayController;->access$6600(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b

    .line 2468
    :cond_668
    const-string v18, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6f5

    .line 2470
    const-string/jumbo v18, "requestState"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 2473
    .local v14, "requestAccepted":Z
    const-string v18, "WifiDisplayController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Received WifiP2pManager.WIFI_P2P_REQUEST_CHANGED_ACTION : requestAccepted = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$3400(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v18

    if-nez v18, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$1300(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v18

    if-eqz v18, :cond_4b

    .line 2478
    if-eqz v14, :cond_6e3

    .line 2480
    const-string v18, "WifiDisplayController"

    const-string v19, "User accepted PIN connect"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    const v19, 0x2208a

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$2300(Lcom/android/server/display/WifiDisplayController;I)V

    .line 2482
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$2100(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;
    invoke-static/range {v19 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$2000(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v19

    const-wide/16 v20, 0x7530

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4b

    .line 2486
    :cond_6e3
    const-string v18, "WifiDisplayController"

    const-string v19, "User cancelled PIN connect or timeout"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    # invokes: Lcom/android/server/display/WifiDisplayController;->disconnect()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/display/WifiDisplayController;->access$2500(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_4b

    .line 2490
    .end local v14    # "requestAccepted":Z
    :cond_6f5
    const-string v18, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4b

    .line 2491
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/display/WifiDisplayController;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Lcom/android/server/display/WifiDisplayController;->mIsBootCompleted:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/display/WifiDisplayController;->access$5802(Lcom/android/server/display/WifiDisplayController;Z)Z

    goto/16 :goto_4b
.end method
