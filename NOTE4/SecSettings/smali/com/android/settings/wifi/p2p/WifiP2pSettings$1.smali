.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 296
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "action":Ljava/lang/String;
    const-string v9, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 299
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 300
    const-string v9, "wifi_p2p_state"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    .line 302
    const-string v9, "WifiP2pSettings"

    const-string v10, "WIFI_P2P_STATE_ENABLED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 304
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 305
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 307
    :cond_0
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 308
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/Button;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 310
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/Button;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090054

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 312
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addThisDevicePreference()V
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    .line 314
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x1

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$502(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 316
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 319
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v10

    new-instance v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$1;

    invoke-direct {v11, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;)V

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 324
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 326
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$900()Z

    move-result v9

    if-nez v9, :cond_1

    .line 327
    const-string v9, "WifiP2pSettings"

    const-string v10, "not multiconnect"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 331
    :cond_1
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 340
    :cond_2
    :goto_0
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHasMotionRecognitionService:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-eqz v9, :cond_3

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1400()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 342
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1400()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/hardware/motion/MRListener;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 343
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x1

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1502(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 346
    :cond_3
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 347
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 349
    :cond_4
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 568
    :cond_5
    :goto_1
    return-void

    .line 333
    :cond_6
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1000()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 334
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x1

    const/4 v11, 0x0

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 336
    :cond_7
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1000()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 337
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_0

    .line 350
    :cond_8
    const-string v9, "wifi_p2p_state"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 352
    const-string v9, "WifiP2pSettings"

    const-string v10, "WIFI_P2P_STATE_DISABLED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v9, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1002(Z)Z

    .line 355
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1802(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 356
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1902(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 357
    const/4 v9, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$902(Z)Z

    .line 358
    const/4 v9, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectionComplete:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2002(Z)Z

    .line 359
    const/4 v9, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2102(Z)Z

    .line 360
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    const/4 v11, 0x0

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 361
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x1

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2202(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 362
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    .line 365
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x1

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;I)V

    .line 366
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/settings/ProgressCategory;->setProgressText(ZI)V

    .line 367
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 368
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 369
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 370
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 371
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2600()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 372
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2600()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 373
    :cond_9
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const v10, 0x7f0a05d2

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addMessagePreference(I)V
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;I)V

    .line 375
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/Button;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 377
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/Button;

    move-result-object v9

    const v10, -0x333334

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 381
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/TextView;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 382
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 383
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 384
    :cond_a
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 385
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 386
    const/4 v3, 0x0

    .line 387
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "input_method"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 388
    .restart local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_b

    .line 389
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v3, v9, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 392
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_b
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 393
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2902(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 395
    :cond_c
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 396
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 397
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3102(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 400
    :cond_d
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 401
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 402
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3202(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 404
    :cond_e
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 405
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 406
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3302(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 408
    :cond_f
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 409
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 410
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3402(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 412
    :cond_10
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMaxClientSupportDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMaxClientSupportDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 413
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMaxClientSupportDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 414
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMaxClientSupportDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3502(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 417
    :cond_11
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHasMotionRecognitionService:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-eqz v9, :cond_12

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1400()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v9

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 419
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1400()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/hardware/motion/MRListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 420
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mIsRegisteredMotionListener:Z
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1502(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 423
    :cond_12
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 426
    :cond_13
    const-string v9, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 427
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 428
    const-string v9, "p2pGroupInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pGroup;

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$702(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 429
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$700()Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v9

    if-eqz v9, :cond_15

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$700()Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 430
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-eqz v9, :cond_14

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$900()Z

    move-result v9

    if-nez v9, :cond_14

    .line 431
    const/4 v9, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1002(Z)Z

    .line 433
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->finish()V

    .line 436
    :cond_14
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_15

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 437
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    const v10, 0x7f1005d8

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 439
    .local v4, "mDeviceInfoMac":Ljava/lang/String;
    const-string v9, "connectedDevAddress"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, "connectedDevAddr":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 441
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 442
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3402(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 446
    .end local v1    # "connectedDevAddr":Ljava/lang/String;
    .end local v4    # "mDeviceInfoMac":Ljava/lang/String;
    :cond_15
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_1

    .line 448
    :cond_16
    const-string v9, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26

    .line 449
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 450
    const-string v9, "wifiP2pInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 453
    .local v7, "p2pInfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const-string v9, "networkInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkInfo;

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v10, v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1702(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 455
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 456
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v9, v10, :cond_1e

    .line 457
    const-string v9, "WifiP2pSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connected!!!! multi-connect? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v11}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_17

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_17

    .line 460
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 461
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2902(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 465
    :cond_17
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_18

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 466
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 467
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3102(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 471
    :cond_18
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 474
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-nez v9, :cond_19

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 475
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->finish()V

    .line 477
    :cond_19
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1a

    .line 478
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    const/4 v11, 0x0

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 480
    :cond_1a
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1d

    .line 481
    const-string v9, "WifiP2pSettings"

    const-string v10, "AUTO GO is created for multiple connect"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    new-instance v6, Landroid/net/wifi/p2p/WifiP2pConfigList;

    invoke-direct {v6}, Landroid/net/wifi/p2p/WifiP2pConfigList;-><init>()V

    .line 484
    .local v6, "mSelectedConfigList":Landroid/net/wifi/p2p/WifiP2pConfigList;
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3700()Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 485
    .local v8, "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-static {v9, v8}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3800(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/net/wifi/p2p/WifiP2pConfigList;->update(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    goto :goto_2

    .line 487
    .end local v8    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_1b
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    if-eqz v9, :cond_1c

    .line 488
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v10

    new-instance v11, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$2;

    invoke-direct {v11, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;)V

    invoke-virtual {v9, v10, v6, v11}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfigList;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 498
    :cond_1c
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1902(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 499
    const/4 v9, 0x1

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$902(Z)Z

    .line 500
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x1

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2202(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 501
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    .line 553
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "mSelectedConfigList":Landroid/net/wifi/p2p/WifiP2pConfigList;
    :cond_1d
    :goto_3
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 503
    :cond_1e
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v9, v10, :cond_1f

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1700(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v9, v10, :cond_1d

    .line 506
    :cond_1f
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_20

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_20

    .line 507
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 508
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3202(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 511
    :cond_20
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_21

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_21

    .line 512
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 513
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mEndConnectDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3302(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 516
    :cond_21
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    if-eqz v9, :cond_22

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_22

    .line 517
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 518
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mDeviceInfoDialog:Landroid/app/AlertDialog;
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3402(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 520
    :cond_22
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 521
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3900(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 522
    const-string v9, "WifiP2pSettings"

    const-string v10, "disconnected"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v9, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$702(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 524
    const/4 v9, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$902(Z)Z

    .line 525
    const/4 v9, 0x0

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectionComplete:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2002(Z)Z

    .line 527
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2100()Z

    move-result v9

    if-nez v9, :cond_23

    .line 528
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x6

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$2400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;I)V

    .line 530
    :cond_23
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->isInitialStickyBroadcast()Z

    move-result v9

    if-nez v9, :cond_24

    .line 531
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-nez v9, :cond_24

    .line 532
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x1

    const/4 v11, 0x0

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 535
    :cond_24
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-nez v9, :cond_1d

    .line 536
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 537
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 538
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/settings/ProgressCategory;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 539
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->addThisDevicePreference()V
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V

    .line 541
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x1

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z
    invoke-static {v9, v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$502(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 543
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1000()Z

    move-result v9

    if-nez v9, :cond_25

    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Z

    move-result v9

    if-nez v9, :cond_25

    .line 544
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x1

    const/4 v11, 0x0

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V

    .line 545
    :cond_25
    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mInvited:Z
    invoke-static {}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1000()Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 546
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$000(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    # getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v10}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$600(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_3

    .line 554
    .end local v7    # "p2pInfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    :cond_26
    const-string v9, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 555
    const-string v9, "wifiP2pDevice"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    # setter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v9}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$4002(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    goto/16 :goto_1

    .line 560
    :cond_27
    const-string v9, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 562
    const-string v9, "requestState"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 564
    .local v5, "mRequestAccepted":Z
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->isInitialStickyBroadcast()Z

    move-result v9

    if-nez v9, :cond_5

    if-nez v5, :cond_5

    .line 565
    iget-object v9, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v10, 0x1

    const/4 v11, 0x0

    # invokes: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$1200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;ZZ)V

    goto/16 :goto_1
.end method
