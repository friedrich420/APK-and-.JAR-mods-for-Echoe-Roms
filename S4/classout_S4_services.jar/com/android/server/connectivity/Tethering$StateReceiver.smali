.class Lcom/android/server/connectivity/Tethering$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .registers 2

    .prologue
    .line 1275
    iput-object p1, p0, this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p2, "x1"    # Lcom/android/server/connectivity/Tethering$1;

    .prologue
    .line 1275
    invoke-direct {p0, p1}, <init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 47
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1278
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 1279
    .local v6, "action":Ljava/lang/String;
    if-nez v6, :cond_7

    .line 1633
    :cond_6
    :goto_6
    :pswitch_6
    return-void

    .line 1280
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 1281
    .local v12, "cr":Landroid/content/ContentResolver;
    const-string v39, "android.hardware.usb.action.USB_STATE"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_e5

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v40

    monitor-enter v40

    .line 1283
    :try_start_2a
    const-string v39, "connected"

    const/16 v41, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v36

    .line 1284
    .local v36, "usbConnected":Z
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const-string/jumbo v41, "rndis"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v41

    move-object/from16 v0, v39

    move/from16 v1, v41

    # setter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$402(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1286
    if-eqz v36, :cond_7d

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Z

    move-result v39

    if-eqz v39, :cond_7d

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v39

    if-eqz v39, :cond_7d

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const/16 v41, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v41

    # invokes: Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;Z)V

    .line 1289
    :cond_7d
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const/16 v41, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v41

    # setter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$502(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const-string v41, "ncm"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v41

    move-object/from16 v0, v39

    move/from16 v1, v41

    # setter for: Lcom/android/server/connectivity/Tethering;->mNcmEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$702(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1292
    if-eqz v36, :cond_d0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mNcmEnabled:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$700(Lcom/android/server/connectivity/Tethering;)Z

    move-result v39

    if-eqz v39, :cond_d0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mNcmTetherRequested:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$800(Lcom/android/server/connectivity/Tethering;)Z

    move-result v39

    if-eqz v39, :cond_d0

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const/16 v41, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v41

    # invokes: Lcom/android/server/connectivity/Tethering;->tetherNcm(Z)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;Z)V

    .line 1295
    :cond_d0
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const/16 v41, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v41

    # setter for: Lcom/android/server/connectivity/Tethering;->mNcmTetherRequested:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$802(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1297
    monitor-exit v40

    goto/16 :goto_6

    .end local v36    # "usbConnected":Z
    :catchall_e2
    move-exception v39

    monitor-exit v40
    :try_end_e4
    .catchall {:try_start_2a .. :try_end_e4} :catchall_e2

    throw v39

    .line 1298
    :cond_e5
    const-string v39, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_120

    .line 1299
    const-string v39, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v25

    check-cast v25, Landroid/net/NetworkInfo;

    .line 1301
    .local v25, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v25, :cond_6

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v39

    sget-object v40, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    if-eq v0, v1, :cond_6

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v39

    const/16 v40, 0x3

    move-object/from16 v0, v39

    move/from16 v1, v40

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 1306
    .end local v25    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_120
    const-string v39, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_135

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    goto/16 :goto_6

    .line 1308
    :cond_135
    const-string v39, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1bb

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiTethered:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v39

    if-eqz v39, :cond_17d

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v39

    if-eqz v39, :cond_6

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z
    invoke-static/range {v39 .. v40}, Lcom/android/server/connectivity/Tethering;->access$1302(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v40

    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v40, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static/range {v39 .. v40}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_6

    .line 1314
    :cond_17d
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v39

    if-eqz v39, :cond_6

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v39

    if-eqz v39, :cond_6

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z
    invoke-static/range {v39 .. v40}, Lcom/android/server/connectivity/Tethering;->access$1302(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v40

    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v40, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V
    invoke-static/range {v39 .. v40}, Lcom/android/server/connectivity/Tethering;->access$1600(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_6

    .line 1320
    :cond_1bb
    const-string v39, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_392

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v39

    if-nez v39, :cond_1dd

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiTethered:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v39

    if-eqz v39, :cond_392

    :cond_1dd
    # getter for: Lcom/android/server/connectivity/Tethering;->mRVFMode:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1700()I

    move-result v39

    if-nez v39, :cond_392

    .line 1322
    const-string v39, "EVENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1323
    .local v35, "type":Ljava/lang/String;
    const-string v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "[WIFI] onReceive() WIFI_AP_STA_STATUS_CHANGED_ACTION intent, type of EVENT: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    if-eqz v35, :cond_6

    .line 1325
    const-string v39, "NUM"

    const/16 v40, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    .line 1326
    .local v26, "numExtra":I
    if-gez v26, :cond_21d

    const/16 v26, 0x0

    .line 1327
    :cond_21d
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1800()I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v26

    if-eq v0, v1, :cond_6

    .line 1329
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1800()I

    move-result v39

    # setter for: Lcom/android/server/connectivity/Tethering;->mLastClients:I
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$1902(I)I

    .line 1330
    # setter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Tethering;->access$1802(I)I

    .line 1331
    const-string v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "**number of client: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1800()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->add_client_event:Z
    invoke-static/range {v39 .. v40}, Lcom/android/server/connectivity/Tethering;->access$2002(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1336
    const-string v39, "VZW"

    const-string v40, "ALL"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_2fc

    .line 1337
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    const-string/jumbo v40, "statusbar"

    invoke-virtual/range {v39 .. v40}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/app/StatusBarManager;

    .line 1338
    .local v34, "statusBar":Landroid/app/StatusBarManager;
    const/16 v18, 0x0

    .line 1339
    .local v18, "iconId":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    const-string/jumbo v40, "wifi"

    invoke-virtual/range {v39 .. v40}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/net/wifi/WifiManager;

    .line 1340
    .local v38, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v38 .. v38}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v39

    if-eqz v39, :cond_2db

    .line 1341
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1800()I

    move-result v39

    sget-object v40, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_2d2

    .line 1342
    sget-object v39, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    sget-object v40, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0x1

    aget v18, v39, v40

    .line 1346
    :goto_2ae
    const-string/jumbo v39, "wifi_ap"

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    move/from16 v2, v18

    move/from16 v3, v40

    move-object/from16 v4, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 1347
    const-string/jumbo v39, "wifi_ap"

    const/16 v40, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 1344
    :cond_2d2
    sget-object v39, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1800()I

    move-result v40

    aget v18, v39, v40

    goto :goto_2ae

    .line 1349
    :cond_2db
    const-string v39, "Tethering"

    const-string v40, "Wifi Ap is not enabled."

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    const-string/jumbo v39, "wifi_ap"

    const/16 v40, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1351
    const-string/jumbo v39, "wifi_ap"

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1353
    .end local v18    # "iconId":I
    .end local v34    # "statusBar":Landroid/app/StatusBarManager;
    .end local v38    # "wm":Landroid/net/wifi/WifiManager;
    :cond_2fc
    const-string v39, "SPRINT"

    const-string v40, "ALL"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_314

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const v40, 0x10808d1

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V
    invoke-static/range {v39 .. v40}, Lcom/android/server/connectivity/Tethering;->access$1600(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_6

    .line 1355
    :cond_314
    const-string v39, "TMO"

    const-string v40, "ALL"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_328

    const-string v39, "NEWCO"

    const-string v40, "ALL"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_336

    .line 1357
    :cond_328
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const v40, 0x10808ce

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static/range {v39 .. v40}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_6

    .line 1361
    :cond_336
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const v40, 0x10808d0

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static/range {v39 .. v40}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;I)V

    .line 1363
    const-string v39, "ATT"

    const-string v40, "ALL"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_6

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v39

    if-nez v39, :cond_6

    .line 1364
    const-string v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "createMaxApNotification(), clients = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1800()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1800()I

    move-result v39

    # getter for: Lcom/android/server/connectivity/Tethering;->MAX_CLIENTS:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2100()I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_387

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->createMaxApNotification()V

    goto/16 :goto_6

    .line 1368
    :cond_387
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V

    goto/16 :goto_6

    .line 1373
    .end local v26    # "numExtra":I
    .end local v35    # "type":Ljava/lang/String;
    :cond_392
    const-string v39, "ATT"

    const-string v40, "ALL"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_3b1

    const-string v39, "android.net.wifi.MAXAP_NOTI"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_3b1

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V

    goto/16 :goto_6

    .line 1375
    :cond_3b1
    const-string v39, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_3ea

    .line 1376
    const-string/jumbo v39, "wifi_state"

    const/16 v40, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1377
    .local v9, "apState":I
    packed-switch v9, :pswitch_data_9fa

    :pswitch_3cd
    goto/16 :goto_6

    .line 1388
    :pswitch_3cf
    const-string v39, "ATT"

    const-string v40, "ALL"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_6

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v39

    if-nez v39, :cond_6

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V

    goto/16 :goto_6

    .line 1393
    .end local v9    # "apState":I
    :cond_3ea
    const-string v39, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_6b0

    .line 1394
    const-string/jumbo v39, "wifiap_power_mode_alarm_option"

    const/16 v40, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 1395
    .local v27, "option":I
    if-nez v27, :cond_508

    .line 1398
    :try_start_405
    const-string/jumbo v39, "wifi_ap_plugged_type"

    move-object/from16 v0, v39

    invoke-static {v12, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_40d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_405 .. :try_end_40d} :catch_4b2

    move-result v29

    .line 1402
    .local v29, "pluggedType":I
    :goto_40e
    const-string v39, "TMO"

    const-string v40, "ALL"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_41a

    if-nez v29, :cond_6

    .line 1403
    :cond_41a
    const-string/jumbo v39, "wifi_ap_time_out_value"

    # getter for: Lcom/android/server/connectivity/Tethering;->defaultTimeoutValue:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2200()I

    move-result v40

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    .line 1404
    .local v31, "powermode_value":I
    const-string v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "ALARM_START : set "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " sec"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    if-eqz v31, :cond_4b7

    .line 1406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    move/from16 v0, v31

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v39, v0

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v14, v40, v42

    .line 1408
    .local v14, "expireTime":J
    new-instance v7, Landroid/content/Intent;

    const-string v39, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v39

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1409
    .local v7, "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v39, "wifiap_power_mode_alarm_option"

    const/16 v40, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    const/16 v40, 0x0

    const/high16 v41, 0x10000000

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v28

    .line 1412
    .local v28, "pending":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    const-string v40, "alarm"

    invoke-virtual/range {v39 .. v40}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 1413
    .local v8, "am":Landroid/app/AlarmManager;
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v28

    invoke-virtual {v8, v0, v14, v15, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1415
    const/16 v39, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->bExpireAlarm:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$2302(Z)Z

    .line 1416
    const/16 v39, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$2402(Z)Z

    goto/16 :goto_6

    .line 1399
    .end local v7    # "alarm_intent":Landroid/content/Intent;
    .end local v8    # "am":Landroid/app/AlarmManager;
    .end local v14    # "expireTime":J
    .end local v28    # "pending":Landroid/app/PendingIntent;
    .end local v29    # "pluggedType":I
    .end local v31    # "powermode_value":I
    :catch_4b2
    move-exception v13

    .line 1400
    .local v13, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v29, 0x0

    .restart local v29    # "pluggedType":I
    goto/16 :goto_40e

    .line 1418
    .end local v13    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v31    # "powermode_value":I
    :cond_4b7
    # getter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Z

    move-result v39

    if-eqz v39, :cond_501

    .line 1419
    new-instance v7, Landroid/content/Intent;

    const-string v39, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v39

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1420
    .restart local v7    # "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v39, "wifiap_power_mode_alarm_option"

    const/16 v40, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    const/16 v40, 0x0

    const/high16 v41, 0x10000000

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v28

    .line 1423
    .restart local v28    # "pending":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    const-string v40, "alarm"

    invoke-virtual/range {v39 .. v40}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 1424
    .restart local v8    # "am":Landroid/app/AlarmManager;
    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1426
    .end local v7    # "alarm_intent":Landroid/content/Intent;
    .end local v8    # "am":Landroid/app/AlarmManager;
    .end local v28    # "pending":Landroid/app/PendingIntent;
    :cond_501
    const/16 v39, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$2402(Z)Z

    goto/16 :goto_6

    .line 1429
    .end local v29    # "pluggedType":I
    .end local v31    # "powermode_value":I
    :cond_508
    const/16 v39, 0x4

    move/from16 v0, v27

    move/from16 v1, v39

    if-ne v0, v1, :cond_550

    .line 1430
    const-string v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "WIFIAP_POWER_MODE_VALUE_CHANGED, clients = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1800()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1800()I

    move-result v39

    if-nez v39, :cond_6

    .line 1432
    const-string v39, "Tethering"

    const-string v40, "ALARM_START because of WIFIAP_POWER_MODE_VALUE_CHANGED"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v40

    const/16 v41, 0x0

    # invokes: Lcom/android/server/connectivity/Tethering;->sendWifiApPowerModeAlarmIntent(Landroid/content/Context;I)V
    invoke-static/range {v39 .. v41}, Lcom/android/server/connectivity/Tethering;->access$2500(Lcom/android/server/connectivity/Tethering;Landroid/content/Context;I)V

    goto/16 :goto_6

    .line 1435
    :cond_550
    const/16 v39, 0x1

    move/from16 v0, v27

    move/from16 v1, v39

    if-ne v0, v1, :cond_64a

    .line 1436
    const-string v39, "Tethering"

    const-string v40, "ALARM_EXPIRE"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    const/16 v39, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->bExpireAlarm:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$2302(Z)Z

    .line 1438
    const/16 v39, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$2402(Z)Z

    .line 1441
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    const-string/jumbo v40, "power"

    invoke-virtual/range {v39 .. v40}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/PowerManager;

    .line 1442
    .local v30, "pm":Landroid/os/PowerManager;
    const/16 v39, 0x1

    const-string v40, "MobileAPCloseService"

    move-object/from16 v0, v30

    move/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v24

    .line 1444
    .local v24, "mStopService":Landroid/os/PowerManager$WakeLock;
    :try_start_58a
    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_58d
    .catch Ljava/lang/Throwable; {:try_start_58a .. :try_end_58d} :catch_610

    .line 1449
    :goto_58d
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    const-string/jumbo v40, "wifi"

    invoke-virtual/range {v39 .. v40}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/net/wifi/WifiManager;

    .line 1451
    .restart local v38    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v38 .. v38}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v37

    .line 1452
    .local v37, "wifiApState":I
    const-string/jumbo v39, "wifi_ap_time_out_value"

    # getter for: Lcom/android/server/connectivity/Tethering;->defaultTimeoutValue:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2200()I

    move-result v40

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    .line 1453
    .restart local v31    # "powermode_value":I
    const-string v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "powermode_value = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1800()I

    move-result v39

    if-nez v39, :cond_607

    const/16 v39, 0xd

    move/from16 v0, v37

    move/from16 v1, v39

    if-ne v0, v1, :cond_607

    if-eqz v31, :cond_607

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    const-string v40, "connectivity"

    invoke-virtual/range {v39 .. v40}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/ConnectivityManager;

    .line 1456
    .local v22, "mCm":Landroid/net/ConnectivityManager;
    const-string v39, "Tethering"

    const-string v40, "--> data disable"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    const-string v39, "Tethering"

    const-string v40, "--> ap disable"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    const/16 v39, 0x0

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1462
    .end local v22    # "mCm":Landroid/net/ConnectivityManager;
    :cond_607
    if-eqz v24, :cond_6

    .line 1464
    :try_start_609
    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_60c
    .catch Ljava/lang/Throwable; {:try_start_609 .. :try_end_60c} :catch_62d

    .line 1465
    const/16 v24, 0x0

    goto/16 :goto_6

    .line 1445
    .end local v31    # "powermode_value":I
    .end local v37    # "wifiApState":I
    .end local v38    # "wm":Landroid/net/wifi/WifiManager;
    :catch_610
    move-exception v13

    .line 1446
    .local v13, "e":Ljava/lang/Throwable;
    const-string v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Cannot acquire wake lock ~~"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58d

    .line 1466
    .end local v13    # "e":Ljava/lang/Throwable;
    .restart local v31    # "powermode_value":I
    .restart local v37    # "wifiApState":I
    .restart local v38    # "wm":Landroid/net/wifi/WifiManager;
    :catch_62d
    move-exception v13

    .line 1467
    .restart local v13    # "e":Ljava/lang/Throwable;
    const-string v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Cannot release wake lock ~~"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1470
    .end local v13    # "e":Ljava/lang/Throwable;
    .end local v24    # "mStopService":Landroid/os/PowerManager$WakeLock;
    .end local v30    # "pm":Landroid/os/PowerManager;
    .end local v31    # "powermode_value":I
    .end local v37    # "wifiApState":I
    .end local v38    # "wm":Landroid/net/wifi/WifiManager;
    :cond_64a
    const/16 v39, 0x2

    move/from16 v0, v27

    move/from16 v1, v39

    if-ne v0, v1, :cond_6

    .line 1471
    const-string v39, "Tethering"

    const-string v40, "ALARM_STOP"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    # getter for: Lcom/android/server/connectivity/Tethering;->bExpireAlarm:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2300()Z

    move-result v39

    if-nez v39, :cond_6

    # getter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Z

    move-result v39

    if-eqz v39, :cond_6

    .line 1473
    new-instance v7, Landroid/content/Intent;

    const-string v39, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v39

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1474
    .restart local v7    # "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v39, "wifiap_power_mode_alarm_option"

    const/16 v40, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    const/16 v40, 0x0

    const/high16 v41, 0x10000000

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v28

    .line 1476
    .restart local v28    # "pending":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    const-string v40, "alarm"

    invoke-virtual/range {v39 .. v40}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 1477
    .restart local v8    # "am":Landroid/app/AlarmManager;
    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1478
    const/16 v39, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$2402(Z)Z

    goto/16 :goto_6

    .line 1481
    .end local v7    # "alarm_intent":Landroid/content/Intent;
    .end local v8    # "am":Landroid/app/AlarmManager;
    .end local v27    # "option":I
    .end local v28    # "pending":Landroid/app/PendingIntent;
    :cond_6b0
    const-string v39, "android.net.wifi.wifiap_stand_by_mode_start"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_711

    .line 1482
    const-string v39, "EVENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1483
    .restart local v35    # "type":Ljava/lang/String;
    if-eqz v35, :cond_6

    .line 1484
    const-string v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "[WIFI] onReceive() WIFIAP_STAND_BY_MODE_START intent, type of EVENT: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    const-string v39, "no_data"

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_6

    .line 1486
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    const-string/jumbo v40, "wifi"

    invoke-virtual/range {v39 .. v40}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/net/wifi/WifiManager;

    .line 1487
    .restart local v38    # "wm":Landroid/net/wifi/WifiManager;
    const-string v39, "Tethering"

    const-string v40, "--> ap disable"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    const/16 v39, 0x0

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_6

    .line 1491
    .end local v35    # "type":Ljava/lang/String;
    .end local v38    # "wm":Landroid/net/wifi/WifiManager;
    :cond_711
    const-string v39, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_83c

    .line 1492
    const-string v39, "TMO"

    const-string v40, "ALL"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_72f

    const-string v39, "NEWCO"

    const-string v40, "ALL"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_6

    .line 1494
    :cond_72f
    const-string v39, "level"

    const/16 v40, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 1495
    .local v23, "mLevel":I
    const-string/jumbo v39, "plugged"

    const/16 v40, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    .line 1496
    .restart local v29    # "pluggedType":I
    const-string v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "BATTERY_CHANGED, level = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "lowBatteryThreshold = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0xf

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiTethered:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v39

    if-nez v39, :cond_78c

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v39

    if-eqz v39, :cond_811

    :cond_78c
    const/16 v39, 0xf

    move/from16 v0, v23

    move/from16 v1, v39

    if-gt v0, v1, :cond_811

    if-nez v29, :cond_811

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v39

    if-nez v39, :cond_811

    .line 1499
    const-string v39, "Tethering"

    const-string/jumbo v40, "showLowBatteryNotification"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->showLowBatteryNotification()V
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$2700(Lcom/android/server/connectivity/Tethering;)V

    .line 1508
    :cond_7b3
    :goto_7b3
    if-nez v29, :cond_7bb

    # getter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2900()Z

    move-result v39

    if-nez v39, :cond_7c3

    :cond_7bb
    if-eqz v29, :cond_6

    # getter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2900()Z

    move-result v39

    if-nez v39, :cond_6

    .line 1509
    :cond_7c3
    const-string/jumbo v39, "wifi_ap_plugged_type"

    move-object/from16 v0, v39

    move/from16 v1, v29

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1510
    new-instance v16, Landroid/content/Intent;

    const-string v39, "com.android.settings.wifi.PLUG_STATE_CHANGED"

    move-object/from16 v0, v16

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1511
    .local v16, "i":Landroid/content/Intent;
    const-string/jumbo v39, "wifiap_plug_state_changed_option"

    move-object/from16 v0, v16

    move-object/from16 v1, v39

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$3000(Lcom/android/server/connectivity/Tethering;)Z

    move-result v39

    if-eqz v39, :cond_801

    .line 1513
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1515
    :cond_801
    if-nez v29, :cond_82e

    .line 1516
    const-string v39, "Tethering"

    const-string v40, "Unplugged"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    const/16 v39, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$2902(Z)Z

    goto/16 :goto_6

    .line 1502
    .end local v16    # "i":Landroid/content/Intent;
    :cond_811
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v39

    if-eqz v39, :cond_7b3

    .line 1503
    const-string v39, "Tethering"

    const-string v40, "clearLowBatteryNotification"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->clearLowBatteryNotification()V
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$2800(Lcom/android/server/connectivity/Tethering;)V

    goto :goto_7b3

    .line 1532
    .restart local v16    # "i":Landroid/content/Intent;
    :cond_82e
    const-string v39, "Tethering"

    const-string v40, "Plugged"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    const/16 v39, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$2902(Z)Z

    goto/16 :goto_6

    .line 1546
    .end local v16    # "i":Landroid/content/Intent;
    .end local v23    # "mLevel":I
    .end local v29    # "pluggedType":I
    :cond_83c
    const-string v39, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_90a

    .line 1547
    const-string v39, "Tethering"

    const-string v40, "Boot complete."

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z
    invoke-static/range {v39 .. v40}, Lcom/android/server/connectivity/Tethering;->access$3002(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1550
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const-string v40, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static/range {v40 .. v40}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v40

    # setter for: Lcom/android/server/connectivity/Tethering;->knoxUri:Landroid/net/Uri;
    invoke-static/range {v39 .. v40}, Lcom/android/server/connectivity/Tethering;->access$3102(Lcom/android/server/connectivity/Tethering;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->knoxUri:Landroid/net/Uri;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$3100(Lcom/android/server/connectivity/Tethering;)Landroid/net/Uri;

    move-result-object v41

    const-string v42, "getSealedState"

    invoke-virtual/range {v40 .. v42}, Lcom/android/server/connectivity/Tethering;->getKnoxValue(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v40

    # setter for: Lcom/android/server/connectivity/Tethering;->getSealedState:Z
    invoke-static/range {v39 .. v40}, Lcom/android/server/connectivity/Tethering;->access$3202(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1552
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->knoxUri:Landroid/net/Uri;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$3100(Lcom/android/server/connectivity/Tethering;)Landroid/net/Uri;

    move-result-object v41

    const-string v42, "getSealedUsbNetState"

    invoke-virtual/range {v40 .. v42}, Lcom/android/server/connectivity/Tethering;->getKnoxValue(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v40

    # setter for: Lcom/android/server/connectivity/Tethering;->getSealedUsbNetState:Z
    invoke-static/range {v39 .. v40}, Lcom/android/server/connectivity/Tethering;->access$3302(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->getSealedState:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$3200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v39

    if-eqz v39, :cond_8df

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->getSealedUsbNetState:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$3300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v39

    if-eqz v39, :cond_6

    const-string v39, "adb_enabled"

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v39

    if-nez v39, :cond_6

    .line 1557
    const-string v39, "Tethering"

    const-string v40, "Activate Sealed USB Net on boot up"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    invoke-virtual/range {v39 .. v40}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    goto/16 :goto_6

    .line 1563
    :cond_8df
    const-string v39, "enabled"

    const-string v40, "TETHER_ALWAYS_ON_MODE"

    move-object/from16 v0, v40

    invoke-static {v12, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_6

    .line 1564
    const-string v39, "Tethering"

    const-string v40, "[Tethering always mode] call setUsbTethering()"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const-string v39, "net.tether.always"

    const-string v40, "1"

    invoke-static/range {v39 .. v40}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    invoke-virtual/range {v39 .. v40}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    goto/16 :goto_6

    .line 1571
    :cond_90a
    const-string v39, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_9ed

    .line 1572
    const-string v39, "Tethering"

    const-string v40, "[ActiveSync] onReceive() ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED intent"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->isInternetSharingBlockedByActiveSync()Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$3400(Lcom/android/server/connectivity/Tethering;)Z

    move-result v39

    if-eqz v39, :cond_9e4

    .line 1575
    const-string v39, "Tethering"

    const-string v40, "[ActiveSync] onReceive() Internet sharing has banned due to security policy."

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    const-string v39, "network_management"

    invoke-static/range {v39 .. v39}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    .line 1578
    .local v11, "b":Landroid/os/IBinder;
    invoke-static {v11}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v32

    .line 1579
    .local v32, "service":Landroid/os/INetworkManagementService;
    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 1582
    .local v20, "ifaces":[Ljava/lang/String;
    :try_start_940
    invoke-interface/range {v32 .. v32}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_943
    .catch Ljava/lang/Exception; {:try_start_940 .. :try_end_943} :catch_9c7

    move-result-object v20

    .line 1588
    move-object/from16 v10, v20

    .local v10, "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_94b
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    aget-object v19, v10, v17

    .line 1589
    .local v19, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v19

    # invokes: Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$3500(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_9c4

    .line 1590
    const-string v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "[ActiveSync] onReceive() Internet sharing is banned on "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$3600(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1593
    .local v33, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v33, :cond_9c4

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v39

    if-eqz v39, :cond_9c4

    .line 1594
    const-string v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "[ActiveSync] onReceive() Untether on "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v19

    # invokes: Lcom/android/server/connectivity/Tethering;->blockInternetSharingByActiveSync(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$3700(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)V

    .line 1588
    .end local v33    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_9c4
    add-int/lit8 v17, v17, 0x1

    goto :goto_94b

    .line 1583
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v19    # "iface":Ljava/lang/String;
    .end local v21    # "len$":I
    :catch_9c7
    move-exception v13

    .line 1584
    .local v13, "e":Ljava/lang/Exception;
    const-string v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "[ActiveSync] onReceive() Error listing Interfaces :"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1600
    .end local v11    # "b":Landroid/os/IBinder;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v20    # "ifaces":[Ljava/lang/String;
    .end local v32    # "service":Landroid/os/INetworkManagementService;
    :cond_9e4
    const-string v39, "Tethering"

    const-string v40, "[ActiveSync] onReceive() Internet sharing is NOT banned any more."

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1603
    :cond_9ed
    const-string v39, "android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_6

    goto/16 :goto_6

    .line 1377
    nop

    :pswitch_data_9fa
    .packed-switch 0xb
        :pswitch_3cf
        :pswitch_3cd
        :pswitch_6
        :pswitch_3cf
    .end packed-switch
.end method
