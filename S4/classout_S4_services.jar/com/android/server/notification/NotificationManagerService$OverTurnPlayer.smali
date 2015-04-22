.class Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverTurnPlayer"
.end annotation


# instance fields
.field private mIsRegister:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionOn:Z

.field private mOverTurnOn:Z

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 3

    .prologue
    .line 3791
    iput-object p1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3792
    invoke-direct {p0}, registerObs()V

    .line 3793
    invoke-direct {p0}, update()V

    .line 3795
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$1;-><init>(Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, mMotionListener:Landroid/hardware/motion/MRListener;

    .line 3817
    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    .prologue
    .line 3785
    invoke-direct {p0}, update()V

    return-void
.end method

.method private registerObs()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 3844
    iget-object v1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3845
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "master_motion"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$2;

    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$5200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$2;-><init>(Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3851
    const-string v1, "motion_overturn"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$3;

    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$5200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$3;-><init>(Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3857
    return-void
.end method

.method private update()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3860
    iget-object v1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3861
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "master_motion"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_26

    move v1, v2

    :goto_15
    iput-boolean v1, p0, mMotionOn:Z

    .line 3862
    iget-boolean v1, p0, mMotionOn:Z

    if-eqz v1, :cond_25

    .line 3863
    const-string v1, "motion_overturn"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_28

    :goto_23
    iput-boolean v2, p0, mOverTurnOn:Z

    .line 3866
    :cond_25
    return-void

    :cond_26
    move v1, v3

    .line 3861
    goto :goto_15

    :cond_28
    move v2, v3

    .line 3863
    goto :goto_23
.end method


# virtual methods
.method public isEnable()Z
    .registers 2

    .prologue
    .line 3820
    iget-boolean v0, p0, mMotionOn:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, mOverTurnOn:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isRegister()Z
    .registers 2

    .prologue
    .line 3824
    iget-boolean v0, p0, mIsRegister:Z

    return v0
.end method

.method public register()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 3828
    iget-object v1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "motion_recognition"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    .line 3830
    .local v0, "mrm":Landroid/hardware/motion/MotionRecognitionManager;
    iget-object v1, p0, mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 3831
    iput-boolean v3, p0, mIsRegister:Z

    .line 3832
    const-string v1, "NotificationService"

    const-string v2, "Reg. OverTurn"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3833
    return-void
.end method

.method public unregister()V
    .registers 4

    .prologue
    .line 3836
    iget-object v1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "motion_recognition"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    .line 3838
    .local v0, "mrm":Landroid/hardware/motion/MotionRecognitionManager;
    iget-object v1, p0, mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 3839
    const/4 v1, 0x0

    iput-boolean v1, p0, mIsRegister:Z

    .line 3840
    const-string v1, "NotificationService"

    const-string v2, "UnReg. OverTurn"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3841
    return-void
.end method
