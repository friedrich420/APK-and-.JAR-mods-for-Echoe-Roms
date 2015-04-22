.class Lcom/sec/android/sviewcover/SViewCoverView$10;
.super Ljava/lang/Object;
.source "SViewCoverView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 2740
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 2743
    const/4 v4, 0x0

    .line 2744
    .local v4, "newCallCnt":I
    const/4 v5, 0x0

    .line 2746
    .local v5, "newMsgCnt":I
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    iget-object v0, v8, Lcom/sec/android/sviewcover/SViewCoverView;->mNotifications:[Landroid/service/notification/StatusBarNotification;

    .local v0, "arr$":[Landroid/service/notification/StatusBarNotification;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v7, v0, v1

    .line 2747
    .local v7, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 2748
    .local v3, "n":Landroid/app/Notification;
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2750
    .local v6, "pkg":Ljava/lang/String;
    const-string v8, "com.android.phone"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "com.android.server.telecom"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2752
    :cond_0
    if-eqz v3, :cond_1

    iget v8, v3, Landroid/app/Notification;->missedCount:I

    if-lez v8, :cond_1

    .line 2753
    iget v8, v3, Landroid/app/Notification;->missedCount:I

    add-int/2addr v4, v8

    .line 2756
    :cond_1
    const-string v8, "com.android.mms"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2757
    if-eqz v3, :cond_2

    iget v8, v3, Landroid/app/Notification;->missedCount:I

    if-lez v8, :cond_2

    .line 2758
    iget v8, v3, Landroid/app/Notification;->missedCount:I

    add-int/2addr v5, v8

    .line 2746
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2763
    .end local v3    # "n":Landroid/app/Notification;
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_3
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    iget v8, v8, Lcom/sec/android/sviewcover/SViewCoverView;->mNotiListenerMissecCallCount:I

    if-ne v4, v8, :cond_4

    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    iget v8, v8, Lcom/sec/android/sviewcover/SViewCoverView;->mNotiListenerUnreadMessageCount:I

    if-eq v5, v8, :cond_6

    .line 2765
    :cond_4
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    iput v4, v8, Lcom/sec/android/sviewcover/SViewCoverView;->mNotiListenerMissecCallCount:I

    .line 2766
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    iput v5, v8, Lcom/sec/android/sviewcover/SViewCoverView;->mNotiListenerUnreadMessageCount:I

    .line 2767
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    iget v8, v8, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    if-ne v8, v10, :cond_5

    .line 2769
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mJMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;
    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverView;->access$4200(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 2771
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mJMissedEventWidget:Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;
    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverView;->access$4200(Lcom/sec/android/sviewcover/SViewCoverView;)Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/sviewcover/SViewCoverWidget$MissedEvent;->updateMissedEvent()V

    .line 2774
    :cond_5
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    iget v8, v8, Lcom/sec/android/sviewcover/SViewCoverView;->mUnlockAreaLevel:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_7

    .line 2775
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # invokes: Lcom/sec/android/sviewcover/SViewCoverView;->updateSViewCoverUnlockArea(Z)V
    invoke-static {v8, v10}, Lcom/sec/android/sviewcover/SViewCoverView;->access$1900(Lcom/sec/android/sviewcover/SViewCoverView;Z)V

    .line 2781
    :cond_6
    :goto_1
    return-void

    .line 2777
    :cond_7
    iget-object v8, p0, Lcom/sec/android/sviewcover/SViewCoverView$10;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # invokes: Lcom/sec/android/sviewcover/SViewCoverView;->updateBatteryContainer()V
    invoke-static {v8}, Lcom/sec/android/sviewcover/SViewCoverView;->access$4300(Lcom/sec/android/sviewcover/SViewCoverView;)V

    goto :goto_1
.end method
