.class public Lcom/android/settings/fingerprint/DownloadNotification;
.super Ljava/lang/Object;
.source "DownloadNotification.java"


# instance fields
.field private intent:Landroid/content/Intent;

.field private mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mContext:Landroid/content/Context;

    .line 23
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 25
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/DownloadNotification;->intent:Landroid/content/Intent;

    .line 26
    iget-object v0, p0, Lcom/android/settings/fingerprint/DownloadNotification;->intent:Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$PaypalPaymentActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    iget-object v0, p0, Lcom/android/settings/fingerprint/DownloadNotification;->intent:Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 28
    return-void
.end method


# virtual methods
.method public cancelAll()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 40
    return-void
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public updateNotification(Lcom/android/settings/fingerprint/DownloadInfo;)V
    .locals 14
    .param p1, "info"    # Lcom/android/settings/fingerprint/DownloadInfo;

    .prologue
    const/16 v13, 0x4cb5

    const v12, 0x1080081

    const/16 v11, 0x64

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 47
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v5, :cond_0

    .line 48
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getProductName()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "title":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 55
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/fingerprint/DownloadNotification;->intent:Landroid/content/Intent;

    const/high16 v8, 0x8000000

    invoke-static {v6, v9, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 58
    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 108
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 112
    :cond_1
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v5, v6, v13, v7}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 119
    :goto_1
    return-void

    .line 60
    :pswitch_1
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a1e62

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 61
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 62
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5, v11, v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 65
    :pswitch_2
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a1e63

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 66
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 67
    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getCurrentBytes()J

    move-result-wide v6

    long-to-int v0, v6

    .line 68
    .local v0, "currentBytes":I
    invoke-virtual {p1}, Lcom/android/settings/fingerprint/DownloadInfo;->getTotalBytes()J

    move-result-wide v6

    long-to-int v4, v6

    .line 69
    .local v4, "totalBytes":I
    if-le v0, v4, :cond_2

    .line 70
    move v0, v4

    .line 72
    :cond_2
    mul-int/lit8 v5, v0, 0x64

    div-int v1, v5, v4

    .line 73
    .local v1, "progress":I
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5, v11, v1, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "progressText":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_0

    .line 78
    .end local v0    # "currentBytes":I
    .end local v1    # "progress":I
    .end local v2    # "progressText":Ljava/lang/String;
    .end local v4    # "totalBytes":I
    :pswitch_3
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a1e65

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 79
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 80
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5, v11, v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 81
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_0

    .line 84
    :pswitch_4
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a1e67

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 85
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const v6, 0x1080082

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 86
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5, v9, v9, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 87
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 88
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_0

    .line 92
    :pswitch_5
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a1e64

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 93
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const v6, 0x108008a

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 94
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5, v9, v9, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 95
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 96
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_0

    .line 99
    :pswitch_6
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a1e66

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 100
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const v6, 0x108008a

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 101
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5, v9, v9, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 102
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 103
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v5, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_0

    .line 116
    :cond_3
    iget-object v5, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v6, p0, Lcom/android/settings/fingerprint/DownloadNotification;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v5, v13, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method
