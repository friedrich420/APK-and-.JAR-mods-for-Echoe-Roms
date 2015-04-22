.class Lcom/sec/android/sviewcover/SViewCoverView$11;
.super Landroid/service/notification/NotificationListenerService;
.source "SViewCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverView;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 0

    .prologue
    .line 2787
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverView$11;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerConnected()V
    .locals 2

    .prologue
    .line 2790
    const-string v0, "CoverUI"

    const-string v1, "onListenerConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$11;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView$11;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/sviewcover/SViewCoverView;->mNotifications:[Landroid/service/notification/StatusBarNotification;

    .line 2792
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$11;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->access$400(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$11;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    iget-object v1, v1, Lcom/sec/android/sviewcover/SViewCoverView;->mUpdateMissedEventCount:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2793
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 2798
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2799
    .local v0, "pkg":Ljava/lang/String;
    const-string v1, "com.android.phone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.server.telecom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.mms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2803
    :cond_0
    const-string v1, "CoverUI"

    const-string v2, "onNotificationPosted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$11;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView$11;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/sviewcover/SViewCoverView;->mNotifications:[Landroid/service/notification/StatusBarNotification;

    .line 2805
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$11;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$400(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView$11;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    iget-object v2, v2, Lcom/sec/android/sviewcover/SViewCoverView;->mUpdateMissedEventCount:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2807
    :cond_1
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 2812
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2813
    .local v0, "pkg":Ljava/lang/String;
    const-string v1, "com.android.phone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.server.telecom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.mms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2817
    :cond_0
    const-string v1, "CoverUI"

    const-string v2, "onNotificationRemoved"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$11;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-virtual {p0}, Lcom/sec/android/sviewcover/SViewCoverView$11;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/sviewcover/SViewCoverView;->mNotifications:[Landroid/service/notification/StatusBarNotification;

    .line 2819
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverView$11;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->access$400(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverView$11;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    iget-object v2, v2, Lcom/sec/android/sviewcover/SViewCoverView;->mUpdateMissedEventCount:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2821
    :cond_1
    return-void
.end method
