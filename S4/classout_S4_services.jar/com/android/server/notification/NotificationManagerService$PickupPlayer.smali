.class Lcom/android/server/notification/NotificationManagerService$PickupPlayer;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickupPlayer"
.end annotation


# instance fields
.field private ivt:[B

.field private mMotionEnabled:Z

.field private mMotionRegistered:Z

.field private mPickUpMissedEventExist:Z

.field private mPickupListener:Landroid/hardware/motion/MRListener;

.field private mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 3675
    iput-object p1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3676
    iput-boolean v0, p0, mMotionEnabled:Z

    .line 3677
    iput-boolean v0, p0, mMotionRegistered:Z

    .line 3678
    iput-boolean v0, p0, mPickUpMissedEventExist:Z

    .line 3679
    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    iput-object v0, p0, ivt:[B

    .line 3688
    const/4 v0, 0x0

    iput-object v0, p0, mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 3689
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;-><init>(Lcom/android/server/notification/NotificationManagerService$PickupPlayer;)V

    iput-object v0, p0, mPickupListener:Landroid/hardware/motion/MRListener;

    return-void

    .line 3679
    :array_20
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x0t
        0x1at
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x64t
        -0x1t
        0x20t
        0x4t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x4ft
        0x0t
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "x1"    # Lcom/android/server/notification/NotificationManagerService$1;

    .prologue
    .line 3675
    invoke-direct {p0, p1}, <init>(Lcom/android/server/notification/NotificationManagerService;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/notification/NotificationManagerService$PickupPlayer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    .prologue
    .line 3675
    invoke-direct {p0}, register()V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/notification/NotificationManagerService$PickupPlayer;)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    .prologue
    .line 3675
    iget-object v0, p0, ivt:[B

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/notification/NotificationManagerService$PickupPlayer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    .prologue
    .line 3675
    invoke-direct {p0}, unregister()V

    return-void
.end method

.method private register()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 3731
    iget-object v4, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 3732
    const/4 v4, 0x0

    :try_start_7
    iput-boolean v4, p0, mPickUpMissedEventExist:Z

    .line 3734
    iget-object v4, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3735
    .local v0, "N":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 3736
    .local v1, "currentUser":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    if-ge v2, v0, :cond_7c

    .line 3737
    iget-object v4, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 3738
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    const-string v4, "com.android.server.telecom"

    iget-object v6, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-eq v4, v7, :cond_5e

    :cond_38
    const-string v4, "com.android.mms"

    iget-object v6, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    const/16 v6, 0x7b

    if-eq v4, v6, :cond_5e

    :cond_50
    const-string v4, "com.notidemo"

    iget-object v6, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 3744
    :cond_5e
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    if-eqz v4, :cond_9b

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->missedCount:I

    if-lez v4, :cond_9b

    .line 3747
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    if-ne v1, v4, :cond_9b

    .line 3748
    const-string v4, "NotificationService"

    const-string v6, "Pickup - Found Missed Event"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    const/4 v4, 0x1

    iput-boolean v4, p0, mPickUpMissedEventExist:Z

    .line 3755
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_7c
    monitor-exit v5
    :try_end_7d
    .catchall {:try_start_7 .. :try_end_7d} :catchall_9f

    .line 3757
    iget-boolean v4, p0, mMotionEnabled:Z

    if-eqz v4, :cond_9a

    iget-boolean v4, p0, mPickUpMissedEventExist:Z

    if-eqz v4, :cond_9a

    .line 3758
    iget-object v4, p0, mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v4, :cond_9a

    .line 3759
    iget-object v4, p0, mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v5, p0, mPickupListener:Landroid/hardware/motion/MRListener;

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 3761
    iput-boolean v7, p0, mMotionRegistered:Z

    .line 3762
    const-string v4, "NotificationService"

    const-string v5, "Pickup - registerListener"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3765
    :cond_9a
    return-void

    .line 3736
    .restart local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_9b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_16

    .line 3755
    .end local v0    # "N":I
    .end local v1    # "currentUser":I
    .end local v2    # "i":I
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_9f
    move-exception v4

    :try_start_a0
    monitor-exit v5
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw v4
.end method

.method private unregister()V
    .registers 3

    .prologue
    .line 3768
    iget-boolean v0, p0, mMotionEnabled:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, mMotionRegistered:Z

    if-eqz v0, :cond_1d

    .line 3769
    iget-object v0, p0, mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_1d

    .line 3770
    iget-object v0, p0, mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, mPickupListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 3771
    const/4 v0, 0x0

    iput-boolean v0, p0, mMotionRegistered:Z

    .line 3772
    const-string v0, "NotificationService"

    const-string v1, "Pickup - unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3775
    :cond_1d
    return-void
.end method


# virtual methods
.method public setPickupMotionEnabled(Z)V
    .registers 5
    .param p1, "enableMotion"    # Z

    .prologue
    .line 3713
    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPickupMotionEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3715
    if-eqz p1, :cond_33

    .line 3716
    iget-object v0, p0, mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_32

    .line 3717
    iget-object v0, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 3719
    const/4 v0, 0x1

    iput-boolean v0, p0, mMotionEnabled:Z

    .line 3728
    :cond_32
    :goto_32
    return-void

    .line 3722
    :cond_33
    iget-boolean v0, p0, mMotionRegistered:Z

    if-eqz v0, :cond_3a

    .line 3723
    invoke-direct {p0}, unregister()V

    .line 3725
    :cond_3a
    const/4 v0, 0x0

    iput-object v0, p0, mPickupManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 3726
    const/4 v0, 0x0

    iput-boolean v0, p0, mMotionEnabled:Z

    goto :goto_32
.end method
