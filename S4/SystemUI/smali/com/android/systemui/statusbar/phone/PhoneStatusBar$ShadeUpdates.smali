.class final Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShadeUpdates"
.end annotation


# instance fields
.field private final mNewVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1

    .prologue
    .line 5923
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5924
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->mVisibleNotifications:Landroid/util/ArraySet;

    .line 5925
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->mNewVisibleNotifications:Landroid/util/ArraySet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;

    .prologue
    .line 5923
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    return-void
.end method


# virtual methods
.method public check()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 5928
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->mNewVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->clear()V

    .line 5929
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 5930
    .local v0, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 5931
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 5932
    .local v1, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v6, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    move v4, v3

    .line 5934
    .local v4, "visible":Z
    :goto_1
    if-eqz v4, :cond_0

    .line 5935
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->mNewVisibleNotifications:Landroid/util/ArraySet;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5930
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4    # "visible":Z
    :cond_1
    move v4, v5

    .line 5932
    goto :goto_1

    .line 5938
    .end local v1    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->mVisibleNotifications:Landroid/util/ArraySet;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->mNewVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 5939
    .local v3, "updates":Z
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->mVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->clear()V

    .line 5940
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->mVisibleNotifications:Landroid/util/ArraySet;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->mNewVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 5943
    if-eqz v3, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 5944
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->fireNewNotifications()V

    .line 5946
    :cond_3
    return-void

    .end local v3    # "updates":Z
    :cond_4
    move v3, v5

    .line 5938
    goto :goto_2
.end method
