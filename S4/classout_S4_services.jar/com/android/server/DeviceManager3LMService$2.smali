.class Lcom/android/server/DeviceManager3LMService$2;
.super Ljava/lang/Thread;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DeviceManager3LMService;->notify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceManager3LMService;

.field final synthetic val$flags:I

.field final synthetic val$id:I

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$notificationBar:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceManager3LMService;Ljava/lang/String;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .prologue
    .line 769
    iput-object p1, p0, this$0:Lcom/android/server/DeviceManager3LMService;

    iput-object p2, p0, val$notificationBar:Ljava/lang/String;

    iput-object p3, p0, val$intent:Landroid/content/Intent;

    iput p4, p0, val$flags:I

    iput-object p5, p0, val$text:Ljava/lang/String;

    iput-object p6, p0, val$title:Ljava/lang/String;

    iput p7, p0, val$id:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 771
    const v0, 0x1080078

    .line 772
    .local v0, "icon":I
    new-instance v1, Landroid/app/Notification;

    iget-object v4, p0, val$notificationBar:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v1, v0, v4, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 775
    .local v1, "notification":Landroid/app/Notification;
    iget-object v4, p0, this$0:Lcom/android/server/DeviceManager3LMService;

    iget-object v4, v4, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    iget-object v6, p0, val$intent:Landroid/content/Intent;

    const/high16 v7, 0x10000000

    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 777
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    iget v4, v1, Landroid/app/Notification;->flags:I

    iget v5, p0, val$flags:I

    or-int/2addr v4, v5

    iput v4, v1, Landroid/app/Notification;->flags:I

    .line 780
    iget-object v4, p0, val$text:Ljava/lang/String;

    if-nez v4, :cond_42

    iget-object v4, p0, this$0:Lcom/android/server/DeviceManager3LMService;

    # getter for: Lcom/android/server/DeviceManager3LMService;->mUseCustomNotification:Z
    invoke-static {v4}, Lcom/android/server/DeviceManager3LMService;->access$100(Lcom/android/server/DeviceManager3LMService;)Z

    move-result v4

    if-nez v4, :cond_42

    .line 781
    iget-object v4, p0, this$0:Lcom/android/server/DeviceManager3LMService;

    iget-object v4, v4, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 782
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v4, p0, this$0:Lcom/android/server/DeviceManager3LMService;

    const v5, 0x1040950

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/server/DeviceManager3LMService;->mNotificationText:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/DeviceManager3LMService;->access$202(Lcom/android/server/DeviceManager3LMService;Ljava/lang/String;)Ljava/lang/String;

    .line 785
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_42
    iget-object v4, p0, this$0:Lcom/android/server/DeviceManager3LMService;

    iget-object v5, v4, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    iget-object v6, p0, val$title:Ljava/lang/String;

    iget-object v4, p0, val$text:Ljava/lang/String;

    if-nez v4, :cond_64

    iget-object v4, p0, this$0:Lcom/android/server/DeviceManager3LMService;

    # getter for: Lcom/android/server/DeviceManager3LMService;->mNotificationText:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/DeviceManager3LMService;->access$200(Lcom/android/server/DeviceManager3LMService;)Ljava/lang/String;

    move-result-object v4

    :goto_52
    invoke-virtual {v1, v5, v6, v4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 787
    iget-object v4, p0, this$0:Lcom/android/server/DeviceManager3LMService;

    # getter for: Lcom/android/server/DeviceManager3LMService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v4}, Lcom/android/server/DeviceManager3LMService;->access$300(Lcom/android/server/DeviceManager3LMService;)Landroid/app/NotificationManager;

    move-result-object v4

    const/4 v5, 0x0

    iget v6, p0, val$id:I

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 788
    return-void

    .line 785
    :cond_64
    iget-object v4, p0, val$text:Ljava/lang/String;

    goto :goto_52
.end method
