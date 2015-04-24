.class Lcom/android/settings/SettingsIntentReceiver$1;
.super Ljava/lang/Object;
.source "SettingsIntentReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsIntentReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsIntentReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsIntentReceiver;)V
    .locals 0

    .prologue
    .line 1403
    iput-object p1, p0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 1406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # invokes: Lcom/android/settings/SettingsIntentReceiver;->makeSecurityWarningNotificaiton()V
    invoke-static {v3}, Lcom/android/settings/SettingsIntentReceiver;->access$000(Lcom/android/settings/SettingsIntentReceiver;)V

    .line 1408
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # getter for: Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/SettingsIntentReceiver;->access$100(Lcom/android/settings/SettingsIntentReceiver;)Landroid/content/Context;

    move-result-object v4

    # invokes: Lcom/android/settings/SettingsIntentReceiver;->makeActiveKeyNotification(Landroid/content/Context;)V
    invoke-static {v3, v4}, Lcom/android/settings/SettingsIntentReceiver;->access$200(Lcom/android/settings/SettingsIntentReceiver;Landroid/content/Context;)V

    .line 1410
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # getter for: Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/SettingsIntentReceiver;->access$100(Lcom/android/settings/SettingsIntentReceiver;)Landroid/content/Context;

    move-result-object v4

    # invokes: Lcom/android/settings/SettingsIntentReceiver;->sendDrivingmodeNotification(Landroid/content/Context;)V
    invoke-static {v3, v4}, Lcom/android/settings/SettingsIntentReceiver;->access$300(Lcom/android/settings/SettingsIntentReceiver;Landroid/content/Context;)V

    .line 1411
    const-string v3, "SettingsIntentReceiver"

    const-string v4, "LOCALE_CHANGED"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # getter for: Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/SettingsIntentReceiver;->access$100(Lcom/android/settings/SettingsIntentReceiver;)Landroid/content/Context;

    move-result-object v4

    # invokes: Lcom/android/settings/SettingsIntentReceiver;->SetMyProfileTextSize(Landroid/content/Context;)V
    invoke-static {v3, v4}, Lcom/android/settings/SettingsIntentReceiver;->access$400(Lcom/android/settings/SettingsIntentReceiver;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1419
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # getter for: Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/SettingsIntentReceiver;->access$100(Lcom/android/settings/SettingsIntentReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 1420
    .local v12, "dateFormats":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # getter for: Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/SettingsIntentReceiver;->access$100(Lcom/android/settings/SettingsIntentReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "regional"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1421
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1422
    .local v2, "dummydate_for_dateformat":Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xb

    const/16 v5, 0x1f

    const/16 v6, 0xd

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # getter for: Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/SettingsIntentReceiver;->access$100(Lcom/android/settings/SettingsIntentReceiver;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v12, v4

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 1425
    .local v14, "formatted":Ljava/lang/String;
    const/4 v10, -0x1

    .line 1426
    .local v10, "SetDate":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    invoke-virtual {v3}, Lcom/android/settings/SettingsIntentReceiver;->SetRegionalDate_Update()I

    move-result v10

    .line 1427
    aget-object v14, v12, v10

    .line 1428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # getter for: Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/SettingsIntentReceiver;->access$100(Lcom/android/settings/SettingsIntentReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format"

    invoke-static {v3, v4, v14}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1431
    .end local v2    # "dummydate_for_dateformat":Ljava/util/Calendar;
    .end local v10    # "SetDate":I
    .end local v14    # "formatted":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # getter for: Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/SettingsIntentReceiver;->access$100(Lcom/android/settings/SettingsIntentReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.spen_usp"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v23

    .line 1432
    .local v23, "uspLevel":I
    const/4 v3, 0x1

    move/from16 v0, v23

    if-le v0, v3, :cond_2

    .line 1433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # getter for: Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/SettingsIntentReceiver;->access$100(Lcom/android/settings/SettingsIntentReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 1434
    .local v21, "provision":I
    if-nez v21, :cond_2

    .line 1435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # getter for: Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/SettingsIntentReceiver;->access$100(Lcom/android/settings/SettingsIntentReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "handwriting_language"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1436
    .local v11, "currentLang":Ljava/lang/String;
    if-nez v11, :cond_1

    .line 1437
    const-string v11, ""

    .line 1439
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # invokes: Lcom/android/settings/SettingsIntentReceiver;->setHandwritingLanguage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v11}, Lcom/android/settings/SettingsIntentReceiver;->access$500(Lcom/android/settings/SettingsIntentReceiver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1440
    .local v22, "setLanguage":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1441
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # getter for: Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/SettingsIntentReceiver;->access$100(Lcom/android/settings/SettingsIntentReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "handwriting_language"

    move-object/from16 v0, v22

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1442
    new-instance v15, Landroid/content/Intent;

    const-string v3, "com.android.setting.HANDWRITING_LANGUAGE_CHANGED"

    invoke-direct {v15, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1443
    .local v15, "handwritingIntent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v15, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1444
    const-string v3, "language"

    move-object/from16 v0, v22

    invoke-virtual {v15, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1445
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # getter for: Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/SettingsIntentReceiver;->access$100(Lcom/android/settings/SettingsIntentReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1450
    .end local v11    # "currentLang":Ljava/lang/String;
    .end local v15    # "handwritingIntent":Landroid/content/Intent;
    .end local v21    # "provision":I
    .end local v22    # "setLanguage":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # getter for: Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/SettingsIntentReceiver;->access$100(Lcom/android/settings/SettingsIntentReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sound_detector"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const/16 v16, 0x1

    .line 1451
    .local v16, "isSoundDetectorOn":Z
    :goto_1
    if-eqz v16, :cond_3

    .line 1452
    const v9, 0xd2158

    .line 1453
    .local v9, "SOUND_DETECTOR_RUNNING_ID":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # getter for: Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/SettingsIntentReceiver;->access$100(Lcom/android/settings/SettingsIntentReceiver;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/NotificationManager;

    .line 1457
    .local v19, "notificationManager":Landroid/app/NotificationManager;
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 1458
    .local v17, "mSdIntent":Landroid/content/Intent;
    const-string v3, "android.settings.accessibility.BABYCRYING_DETECTING"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1459
    const-string v3, "mNotify"

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1460
    const/high16 v3, 0x24800000

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1462
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # getter for: Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/SettingsIntentReceiver;->access$100(Lcom/android/settings/SettingsIntentReceiver;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x10000000

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v20

    .line 1463
    .local v20, "pie":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # getter for: Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/SettingsIntentReceiver;->access$100(Lcom/android/settings/SettingsIntentReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isBabyCryingEnable"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1465
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # getter for: Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/SettingsIntentReceiver;->access$100(Lcom/android/settings/SettingsIntentReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # getter for: Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/SettingsIntentReceiver;->access$100(Lcom/android/settings/SettingsIntentReceiver;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0aeb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const v4, 0x7f0205f5

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # getter for: Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/SettingsIntentReceiver;->access$100(Lcom/android/settings/SettingsIntentReceiver;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0aef

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # getter for: Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/SettingsIntentReceiver;->access$100(Lcom/android/settings/SettingsIntentReceiver;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0aef

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v18

    .line 1472
    .local v18, "notification":Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # getter for: Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/SettingsIntentReceiver;->access$100(Lcom/android/settings/SettingsIntentReceiver;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # getter for: Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/SettingsIntentReceiver;->access$100(Lcom/android/settings/SettingsIntentReceiver;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0aeb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # getter for: Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/settings/SettingsIntentReceiver;->access$100(Lcom/android/settings/SettingsIntentReceiver;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0aef

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1474
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1476
    .end local v9    # "SOUND_DETECTOR_RUNNING_ID":I
    .end local v17    # "mSdIntent":Landroid/content/Intent;
    .end local v18    # "notification":Landroid/app/Notification;
    .end local v19    # "notificationManager":Landroid/app/NotificationManager;
    .end local v20    # "pie":Landroid/app/PendingIntent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # getter for: Lcom/android/settings/SettingsIntentReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/SettingsIntentReceiver;->access$100(Lcom/android/settings/SettingsIntentReceiver;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/SettingsIntentReceiver$1;->this$0:Lcom/android/settings/SettingsIntentReceiver;

    # invokes: Lcom/android/settings/SettingsIntentReceiver;->isEnabledScreenReaderService()Z
    invoke-static {v5}, Lcom/android/settings/SettingsIntentReceiver;->access$600(Lcom/android/settings/SettingsIntentReceiver;)Z

    move-result v5

    # invokes: Lcom/android/settings/SettingsIntentReceiver;->sendTalkbackNotification(Landroid/content/Context;Z)V
    invoke-static {v3, v4, v5}, Lcom/android/settings/SettingsIntentReceiver;->access$700(Lcom/android/settings/SettingsIntentReceiver;Landroid/content/Context;Z)V

    .line 1477
    return-void

    .line 1415
    .end local v12    # "dateFormats":[Ljava/lang/String;
    .end local v16    # "isSoundDetectorOn":Z
    .end local v23    # "uspLevel":I
    :catch_0
    move-exception v13

    .line 1416
    .local v13, "e":Ljava/lang/Exception;
    const-string v3, "SettingsIntentReceiver"

    const-string v4, " Error changing font size for myprofile"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1450
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v12    # "dateFormats":[Ljava/lang/String;
    .restart local v23    # "uspLevel":I
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_1
.end method
