.class Lcom/android/server/notification/NotificationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .prologue
    .line 737
    iput-object p1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 35
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 740
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    .line 742
    .local v20, "action":Ljava/lang/String;
    const/16 v30, 0x0

    .line 743
    .local v30, "queryRestart":Z
    const/16 v28, 0x0

    .line 744
    .local v28, "queryRemove":Z
    const/16 v26, 0x0

    .line 745
    .local v26, "packageChanged":Z
    const/16 v22, 0x1

    .line 747
    .local v22, "cancelNotifications":Z
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_48

    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_48

    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_48

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_113

    .line 753
    :cond_48
    const/16 v27, 0x0

    .line 754
    .local v27, "pkgList":[Ljava/lang/String;
    if-eqz v28, :cond_b2

    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b2

    const/16 v29, 0x1

    .line 757
    .local v29, "queryReplace":Z
    :goto_59
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 758
    const-string v2, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 794
    :goto_6b
    const/4 v9, -0x1

    .line 795
    .local v9, "userHandle":I
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 796
    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 800
    :cond_7f
    if-eqz v27, :cond_f4

    move-object/from16 v0, v27

    array-length v2, v0

    if-lez v2, :cond_f4

    .line 801
    move-object/from16 v21, v27

    .local v21, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v25, v0

    .local v25, "len$":I
    const/16 v24, 0x0

    .local v24, "i$":I
    :goto_8f
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_f4

    aget-object v5, v21, v24

    .line 802
    .local v5, "pkgName":Ljava/lang/String;
    if-eqz v22, :cond_af

    .line 803
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_UID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$500()I

    move-result v3

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_PID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$600()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v30, :cond_f2

    const/4 v8, 0x1

    :goto_aa
    const/4 v10, 0x5

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    .line 801
    :cond_af
    add-int/lit8 v24, v24, 0x1

    goto :goto_8f

    .line 754
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v9    # "userHandle":I
    .end local v21    # "arr$":[Ljava/lang/String;
    .end local v24    # "i$":I
    .end local v25    # "len$":I
    .end local v29    # "queryReplace":Z
    :cond_b2
    const/16 v29, 0x0

    goto :goto_59

    .line 759
    .restart local v29    # "queryReplace":Z
    :cond_b5
    if-eqz v30, :cond_c0

    .line 760
    const-string v2, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    goto :goto_6b

    .line 762
    :cond_c0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v31

    .line 763
    .local v31, "uri":Landroid/net/Uri;
    if-nez v31, :cond_c7

    .line 885
    .end local v27    # "pkgList":[Ljava/lang/String;
    .end local v29    # "queryReplace":Z
    .end local v31    # "uri":Landroid/net/Uri;
    :cond_c6
    :goto_c6
    return-void

    .line 766
    .restart local v27    # "pkgList":[Ljava/lang/String;
    .restart local v29    # "queryReplace":Z
    .restart local v31    # "uri":Landroid/net/Uri;
    :cond_c7
    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 767
    .restart local v5    # "pkgName":Ljava/lang/String;
    if-eqz v5, :cond_c6

    .line 770
    if-eqz v26, :cond_e8

    .line 773
    :try_start_cf
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_de
    .catch Ljava/lang/IllegalArgumentException; {:try_start_cf .. :try_end_de} :catch_2b3

    move-result v23

    .line 775
    .local v23, "enabled":I
    const/4 v2, 0x1

    move/from16 v0, v23

    if-eq v0, v2, :cond_e6

    if-nez v23, :cond_e8

    .line 777
    :cond_e6
    const/16 v22, 0x0

    .line 787
    .end local v23    # "enabled":I
    :cond_e8
    :goto_e8
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v27, v0

    .end local v27    # "pkgList":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object v5, v27, v2

    .restart local v27    # "pkgList":[Ljava/lang/String;
    goto/16 :goto_6b

    .line 803
    .end local v31    # "uri":Landroid/net/Uri;
    .restart local v9    # "userHandle":I
    .restart local v21    # "arr$":[Ljava/lang/String;
    .restart local v24    # "i$":I
    .restart local v25    # "len$":I
    :cond_f2
    const/4 v8, 0x0

    goto :goto_aa

    .line 808
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v21    # "arr$":[Ljava/lang/String;
    .end local v24    # "i$":I
    .end local v25    # "len$":I
    :cond_f4
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    move/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;)V

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    move/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v2, v0, v1}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;)V

    goto :goto_c6

    .line 810
    .end local v9    # "userHandle":I
    .end local v27    # "pkgList":[Ljava/lang/String;
    .end local v29    # "queryReplace":Z
    :cond_113
    const-string v2, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_189

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z
    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$402(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 816
    const-string v2, "NotificationService"

    const-string v3, "ACTION_SCREEN_ON"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPickupPlayer:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    if-eqz v2, :cond_181

    .line 818
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPickupPlayer:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    # invokes: Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->unregister()V
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->access$900(Lcom/android/server/notification/NotificationManagerService$PickupPlayer;)V

    .line 825
    :goto_13d
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mIsPlaying:Z
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 826
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mMethodRingtonePlayer:Ljava/lang/reflect/Method;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1000(Lcom/android/server/notification/NotificationManagerService;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_178

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_178

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v2

    if-nez v2, :cond_178

    .line 828
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->register()V

    .line 835
    :cond_178
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)V

    goto/16 :goto_c6

    .line 820
    :cond_181
    const-string v2, "NotificationService"

    const-string v3, "mPickupPlayer == null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13d

    .line 837
    :cond_189
    const-string v2, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1dd

    .line 838
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z
    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$402(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 841
    const-string v2, "NotificationService"

    const-string v3, "ACTION_SCREEN_OFF"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPickupPlayer:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    if-eqz v2, :cond_1d5

    .line 843
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPickupPlayer:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    # invokes: Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->register()V
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->access$1200(Lcom/android/server/notification/NotificationManagerService$PickupPlayer;)V

    .line 850
    :goto_1b3
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v2

    if-eqz v2, :cond_1cc

    .line 851
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->unregister()V

    .line 856
    :cond_1cc
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)V

    goto/16 :goto_c6

    .line 845
    :cond_1d5
    const-string v2, "NotificationService"

    const-string v3, "mPickupPlayer == null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b3

    .line 858
    :cond_1dd
    const-string v2, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_206

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    const-string/jumbo v4, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    # setter for: Lcom/android/server/notification/NotificationManagerService;->mInCall:Z
    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$1302(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 861
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)V

    goto/16 :goto_c6

    .line 862
    :cond_206
    const-string v2, "android.intent.action.USER_STOPPED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_237

    .line 863
    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 864
    .restart local v9    # "userHandle":I
    if-ltz v9, :cond_c6

    .line 865
    move-object/from16 v0, p0

    iget-object v10, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_UID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$500()I

    move-result v11

    # getter for: Lcom/android/server/notification/NotificationManagerService;->MY_PID:I
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$600()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v18, 0x6

    const/16 v19, 0x0

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v19}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    goto/16 :goto_c6

    .line 868
    .end local v9    # "userHandle":I
    :cond_237
    const-string v2, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25f

    .line 870
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    .line 871
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->notificationLightOff()V

    .line 873
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/notification/NotificationManagerService;->setLEDCoverState(Z)V
    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;Z)V

    goto/16 :goto_c6

    .line 875
    :cond_25f
    const-string v2, "android.intent.action.USER_SWITCHED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29a

    .line 877
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 878
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 880
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/notification/ConditionProviders;->onUserSwitched()V

    .line 881
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onUserSwitched()V

    goto/16 :goto_c6

    .line 882
    :cond_29a
    const-string v2, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 883
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    goto/16 :goto_c6

    .line 779
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v27    # "pkgList":[Ljava/lang/String;
    .restart local v29    # "queryReplace":Z
    .restart local v31    # "uri":Landroid/net/Uri;
    :catch_2b3
    move-exception v2

    goto/16 :goto_e8
.end method
