.class final Lcom/android/server/UiModeManagerService;
.super Lcom/android/server/SystemService;
.source "UiModeManagerService.java"


# static fields
.field private static final ENABLE_LAUNCH_CAR_DOCK_APP:Z = true

.field private static final ENABLE_LAUNCH_DESK_DOCK_APP:Z = true

.field private static final LOG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mCarModeEnableFlags:I

.field private mCarModeEnabled:Z

.field private mCarModeKeepsScreenOn:Z

.field private mCharging:Z

.field private mComputedNightMode:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field mCurUiMode:I

.field private mDefaultUiModeType:I

.field private mDeskModeKeepsScreenOn:Z

.field private final mDockModeReceiver:Landroid/content/BroadcastReceiver;

.field private mDockState:I

.field private final mHandler:Landroid/os/Handler;

.field private mHoldingConfiguration:Z

.field private mLastBroadcastState:I

.field final mLock:Ljava/lang/Object;

.field mNightMode:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private final mService:Landroid/os/IBinder;

.field private mSetUiMode:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field mSystemReady:Z

.field private mTelevision:Z

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field private mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWatch:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 63
    iput v1, p0, mDockState:I

    .line 65
    iput v1, p0, mLastBroadcastState:I

    .line 66
    const/4 v0, 0x1

    iput v0, p0, mNightMode:I

    .line 68
    iput-boolean v1, p0, mCarModeEnabled:Z

    .line 69
    iput-boolean v1, p0, mCharging:Z

    .line 78
    iput v1, p0, mCurUiMode:I

    .line 79
    iput v1, p0, mSetUiMode:I

    .line 80
    iput-boolean v1, p0, mHoldingConfiguration:Z

    .line 82
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, mConfiguration:Landroid/content/res/Configuration;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 109
    new-instance v0, Lcom/android/server/UiModeManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$1;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    new-instance v0, Lcom/android/server/UiModeManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$2;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, mDockModeReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    new-instance v0, Lcom/android/server/UiModeManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$3;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 149
    new-instance v0, Lcom/android/server/UiModeManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$4;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 191
    new-instance v0, Lcom/android/server/UiModeManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/UiModeManagerService$5;-><init>(Lcom/android/server/UiModeManagerService;)V

    iput-object v0, p0, mService:Landroid/os/IBinder;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/UiModeManagerService;Ljava/lang/String;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, updateAfterBroadcastLocked(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/UiModeManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, updateDockState(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/UiModeManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, mCharging:Z

    return p1
.end method

.method private adjustStatusBarCarModeLocked()V
    .registers 12

    .prologue
    const/4 v4, 0x0

    const v10, 0x104055a

    const/4 v1, 0x0

    .line 582
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    .line 583
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v3, :cond_18

    .line 584
    const-string/jumbo v3, "statusbar"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, mStatusBarManager:Landroid/app/StatusBarManager;

    .line 593
    :cond_18
    iget-object v3, p0, mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v3, :cond_27

    .line 594
    iget-object v5, p0, mStatusBarManager:Landroid/app/StatusBarManager;

    iget-boolean v3, p0, mCarModeEnabled:Z

    if-eqz v3, :cond_82

    const/high16 v3, 0x80000

    :goto_24
    invoke-virtual {v5, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 599
    :cond_27
    iget-object v3, p0, mNotificationManager:Landroid/app/NotificationManager;

    if-nez v3, :cond_35

    .line 600
    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, mNotificationManager:Landroid/app/NotificationManager;

    .line 604
    :cond_35
    iget-object v3, p0, mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v3, :cond_81

    .line 605
    iget-boolean v3, p0, mCarModeEnabled:Z

    if-eqz v3, :cond_84

    .line 606
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/internal/app/DisableCarModeActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 608
    .local v2, "carModeOffIntent":Landroid/content/Intent;
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    .line 609
    .local v6, "n":Landroid/app/Notification;
    const v3, 0x1080866

    iput v3, v6, Landroid/app/Notification;->icon:I

    .line 610
    const/4 v3, 0x4

    iput v3, v6, Landroid/app/Notification;->defaults:I

    .line 611
    const/4 v3, 0x2

    iput v3, v6, Landroid/app/Notification;->flags:I

    .line 612
    const-wide/16 v8, 0x0

    iput-wide v8, v6, Landroid/app/Notification;->when:J

    .line 613
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1060058

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, v6, Landroid/app/Notification;->color:I

    .line 615
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v3, 0x104055b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v6, v0, v7, v8, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 621
    iget-object v1, p0, mNotificationManager:Landroid/app/NotificationManager;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v10, v6, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 628
    .end local v2    # "carModeOffIntent":Landroid/content/Intent;
    .end local v6    # "n":Landroid/app/Notification;
    :cond_81
    :goto_81
    return-void

    :cond_82
    move v3, v1

    .line 594
    goto :goto_24

    .line 624
    :cond_84
    iget-object v1, p0, mNotificationManager:Landroid/app/NotificationManager;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v10, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_81
.end method

.method private static buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .param p0, "category"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    return-object v0
.end method

.method private static isDeskDockState(I)Z
    .registers 2
    .param p0, "state"    # I

    .prologue
    .line 336
    packed-switch p0, :pswitch_data_8

    .line 342
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 340
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 336
    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V
    .registers 19
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 530
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, mHoldingConfiguration:Z

    .line 531
    invoke-direct/range {p0 .. p0}, updateConfigurationLocked()V

    .line 534
    const/4 v13, 0x0

    .line 541
    .local v13, "dockAppStarted":Z
    const/4 v15, 0x0

    .line 542
    .local v15, "isDockHomeEnabled":Z
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "desk_home_screen_display"

    const/4 v3, 0x0

    const/4 v5, -0x2

    invoke-static {v1, v2, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_56

    const/4 v15, 0x1

    .line 544
    :goto_1d
    if-eqz p1, :cond_47

    if-eqz v15, :cond_47

    .line 554
    invoke-static/range {p1 .. p1}, buildHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 555
    .local v4, "homeIntent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/service/dreams/Sandman;->shouldStartDockApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 557
    :try_start_2f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, mConfiguration:Landroid/content/res/Configuration;

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_43} :catch_82

    move-result v16

    .line 560
    .local v16, "result":I
    if-ltz v16, :cond_58

    .line 561
    const/4 v13, 0x1

    .line 573
    .end local v4    # "homeIntent":Landroid/content/Intent;
    .end local v16    # "result":I
    :cond_47
    :goto_47
    invoke-direct/range {p0 .. p0}, sendConfigurationLocked()V

    .line 576
    if-eqz p1, :cond_55

    if-nez v13, :cond_55

    .line 577
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/service/dreams/Sandman;->startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V

    .line 579
    :cond_55
    return-void

    .line 542
    :cond_56
    const/4 v15, 0x0

    goto :goto_1d

    .line 562
    .restart local v4    # "homeIntent":Landroid/content/Intent;
    .restart local v16    # "result":I
    :cond_58
    const/4 v1, -0x1

    move/from16 v0, v16

    if-eq v0, v1, :cond_47

    .line 563
    :try_start_5d
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not start dock app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", startActivityWithConfig result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_81} :catch_82

    goto :goto_47

    .line 566
    .end local v16    # "result":I
    :catch_82
    move-exception v14

    .line 567
    .local v14, "ex":Landroid/os/RemoteException;
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not start dock app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_47
.end method

.method private sendConfigurationLocked()V
    .registers 4

    .prologue
    .line 385
    iget v1, p0, mSetUiMode:I

    iget-object v2, p0, mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    if-eq v1, v2, :cond_17

    .line 386
    iget-object v1, p0, mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    iput v1, p0, mSetUiMode:I

    .line 389
    :try_start_e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, mConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    .line 394
    :cond_17
    :goto_17
    return-void

    .line 390
    :catch_18
    move-exception v0

    .line 391
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "Failure communicating with activity manager"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method

.method private updateAfterBroadcastLocked(Ljava/lang/String;II)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "enableFlags"    # I
    .param p3, "disableFlags"    # I

    .prologue
    .line 495
    const/4 v0, 0x0

    .line 496
    .local v0, "category":Ljava/lang/String;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 499
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_f

    .line 501
    const-string v0, "android.intent.category.CAR_DOCK"

    .line 525
    :cond_f
    :goto_f
    invoke-direct {p0, v0}, sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    .line 526
    return-void

    .line 503
    :cond_13
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 507
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_f

    .line 509
    const-string v0, "android.intent.category.DESK_DOCK"

    goto :goto_f

    .line 513
    :cond_22
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_f

    .line 514
    const-string v0, "android.intent.category.HOME"

    goto :goto_f
.end method

.method private updateComputedNightModeLocked()V
    .registers 3

    .prologue
    .line 640
    iget-object v1, p0, mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    .line 641
    .local v0, "state":Lcom/android/server/twilight/TwilightState;
    if-eqz v0, :cond_e

    .line 642
    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v1

    iput-boolean v1, p0, mComputedNightMode:Z

    .line 644
    :cond_e
    return-void
.end method

.method private updateConfigurationLocked()V
    .registers 3

    .prologue
    .line 347
    iget v0, p0, mDefaultUiModeType:I

    .line 348
    .local v0, "uiMode":I
    iget-boolean v1, p0, mTelevision:Z

    if-eqz v1, :cond_24

    .line 349
    const/4 v0, 0x4

    .line 357
    :cond_7
    :goto_7
    iget-boolean v1, p0, mCarModeEnabled:Z

    if-eqz v1, :cond_43

    .line 358
    iget v1, p0, mNightMode:I

    if-nez v1, :cond_3d

    .line 359
    invoke-direct {p0}, updateComputedNightModeLocked()V

    .line 360
    iget-boolean v1, p0, mComputedNightMode:Z

    if-eqz v1, :cond_3a

    const/16 v1, 0x20

    :goto_18
    or-int/2addr v0, v1

    .line 378
    :goto_19
    iput v0, p0, mCurUiMode:I

    .line 379
    iget-boolean v1, p0, mHoldingConfiguration:Z

    if-nez v1, :cond_23

    .line 380
    iget-object v1, p0, mConfiguration:Landroid/content/res/Configuration;

    iput v0, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 382
    :cond_23
    return-void

    .line 350
    :cond_24
    iget-boolean v1, p0, mWatch:Z

    if-eqz v1, :cond_2a

    .line 351
    const/4 v0, 0x6

    goto :goto_7

    .line 352
    :cond_2a
    iget-boolean v1, p0, mCarModeEnabled:Z

    if-eqz v1, :cond_30

    .line 353
    const/4 v0, 0x3

    goto :goto_7

    .line 354
    :cond_30
    iget v1, p0, mDockState:I

    invoke-static {v1}, isDeskDockState(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 355
    const/4 v0, 0x2

    goto :goto_7

    .line 360
    :cond_3a
    const/16 v1, 0x10

    goto :goto_18

    .line 363
    :cond_3d
    iget v1, p0, mNightMode:I

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    goto :goto_19

    .line 367
    :cond_43
    and-int/lit8 v1, v0, -0x31

    or-int/lit8 v0, v1, 0x10

    goto :goto_19
.end method

.method private updateDockState(I)V
    .registers 7
    .param p1, "newState"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 324
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 325
    :try_start_5
    iget v3, p0, mDockState:I

    if-eq p1, v3, :cond_1d

    .line 326
    iput p1, p0, mDockState:I

    .line 327
    iget v3, p0, mDockState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1f

    :goto_10
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, setCarModeLocked(ZI)V

    .line 328
    iget-boolean v0, p0, mSystemReady:Z

    if-eqz v0, :cond_1d

    .line 329
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, updateLocked(II)V

    .line 332
    :cond_1d
    monitor-exit v2

    .line 333
    return-void

    :cond_1f
    move v0, v1

    .line 327
    goto :goto_10

    .line 332
    :catchall_21
    move-exception v0

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_21

    throw v0
.end method


# virtual methods
.method dumpImpl(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 283
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 284
    :try_start_3
    const-string v0, "Current UI Mode Service state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    const-string v0, "  mDockState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mDockState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 286
    const-string v0, " mLastBroadcastState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mLastBroadcastState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 287
    const-string v0, "  mNightMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mNightMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 288
    const-string v0, " mCarModeEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mCarModeEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 289
    const-string v0, " mComputedNightMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mComputedNightMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 290
    const-string v0, " mCarModeEnableFlags="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mCarModeEnableFlags:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 291
    const-string v0, "  mCurUiMode=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mCurUiMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    const-string v0, " mSetUiMode=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mSetUiMode:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    const-string v0, "  mHoldingConfiguration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mHoldingConfiguration:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 294
    const-string v0, " mSystemReady="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mSystemReady:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 295
    const-string v0, "  mTwilightService.getCurrentState()="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 297
    monitor-exit v1

    .line 298
    return-void

    .line 297
    :catchall_84
    move-exception v0

    monitor-exit v1
    :try_end_86
    .catchall {:try_start_3 .. :try_end_86} :catchall_84

    throw v0
.end method

.method isDoingNightModeLocked()Z
    .registers 2

    .prologue
    .line 313
    iget-boolean v0, p0, mCarModeEnabled:Z

    if-nez v0, :cond_8

    iget v0, p0, mDockState:I

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onBootPhase(I)V
    .registers 7
    .param p1, "phase"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 302
    const/16 v2, 0x1f4

    if-ne p1, v2, :cond_1c

    .line 303
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 304
    const/4 v3, 0x1

    :try_start_a
    iput-boolean v3, p0, mSystemReady:Z

    .line 305
    iget v3, p0, mDockState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1d

    :goto_11
    iput-boolean v0, p0, mCarModeEnabled:Z

    .line 306
    invoke-direct {p0}, updateComputedNightModeLocked()V

    .line 307
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, updateLocked(II)V

    .line 308
    monitor-exit v2

    .line 310
    :cond_1c
    return-void

    :cond_1d
    move v0, v1

    .line 305
    goto :goto_11

    .line 308
    :catchall_1f
    move-exception v0

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public onStart()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 158
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    .line 159
    .local v0, "context":Landroid/content/Context;
    const-class v2, Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p0, v2}, getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/twilight/TwilightManager;

    iput-object v2, p0, mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 160
    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 162
    .local v1, "powerManager":Landroid/os/PowerManager;
    const/16 v2, 0x1a

    sget-object v5, TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 164
    iget-object v2, p0, mDockModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.DOCK_EVENT"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    iget-object v2, p0, mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    iget-object v2, p0, mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 171
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10e003b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, mDefaultUiModeType:I

    .line 173
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10e0039

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v2, v3, :cond_b2

    move v2, v3

    :goto_5b
    iput-boolean v2, p0, mCarModeKeepsScreenOn:Z

    .line 175
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10e0037

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ne v2, v3, :cond_b4

    move v2, v3

    :goto_6b
    iput-boolean v2, p0, mDeskModeKeepsScreenOn:Z

    .line 177
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "android.hardware.type.television"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_85

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "android.software.leanback"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b6

    :cond_85
    :goto_85
    iput-boolean v3, p0, mTelevision:Z

    .line 181
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, mWatch:Z

    .line 183
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "ui_night_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, mNightMode:I

    .line 186
    iget-object v2, p0, mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    iget-object v3, p0, mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    iget-object v4, p0, mHandler:Landroid/os/Handler;

    invoke-interface {v2, v3, v4}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 188
    const-string/jumbo v2, "uimode"

    iget-object v3, p0, mService:Landroid/os/IBinder;

    invoke-virtual {p0, v2, v3}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 189
    return-void

    :cond_b2
    move v2, v4

    .line 173
    goto :goto_5b

    :cond_b4
    move v2, v4

    .line 175
    goto :goto_6b

    :cond_b6
    move v3, v4

    .line 177
    goto :goto_85
.end method

.method setCarModeLocked(ZI)V
    .registers 4
    .param p1, "enabled"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 317
    iget-boolean v0, p0, mCarModeEnabled:Z

    if-eq v0, p1, :cond_6

    .line 318
    iput-boolean p1, p0, mCarModeEnabled:Z

    .line 320
    :cond_6
    iput p2, p0, mCarModeEnableFlags:I

    .line 321
    return-void
.end method

.method updateLocked(II)V
    .registers 16
    .param p1, "enableFlags"    # I
    .param p2, "disableFlags"    # I

    .prologue
    .line 397
    const/4 v9, 0x0

    .line 398
    .local v9, "action":Ljava/lang/String;
    const/4 v12, 0x0

    .line 399
    .local v12, "oldAction":Ljava/lang/String;
    iget v0, p0, mLastBroadcastState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_80

    .line 400
    invoke-direct {p0}, adjustStatusBarCarModeLocked()V

    .line 401
    sget-object v12, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    .line 406
    :cond_c
    :goto_c
    iget-boolean v0, p0, mCarModeEnabled:Z

    if-eqz v0, :cond_8b

    .line 407
    iget v0, p0, mLastBroadcastState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2d

    .line 408
    invoke-direct {p0}, adjustStatusBarCarModeLocked()V

    .line 410
    if-eqz v12, :cond_28

    .line 411
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 413
    :cond_28
    const/4 v0, 0x2

    iput v0, p0, mLastBroadcastState:I

    .line 414
    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    .line 429
    :cond_2d
    :goto_2d
    if-eqz v9, :cond_b9

    .line 442
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 443
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "enableFlags"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 444
    const-string v0, "disableFlags"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 445
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    iget-object v4, p0, mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, mHoldingConfiguration:Z

    .line 452
    invoke-direct {p0}, updateConfigurationLocked()V

    .line 480
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_54
    iget-boolean v0, p0, mCharging:Z

    if-eqz v0, :cond_de

    iget-boolean v0, p0, mCarModeEnabled:Z

    if-eqz v0, :cond_66

    iget-boolean v0, p0, mCarModeKeepsScreenOn:Z

    if-eqz v0, :cond_66

    iget v0, p0, mCarModeEnableFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6f

    :cond_66
    iget v0, p0, mCurUiMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_de

    iget-boolean v0, p0, mDeskModeKeepsScreenOn:Z

    if-eqz v0, :cond_de

    :cond_6f
    const/4 v11, 0x1

    .line 484
    .local v11, "keepScreenOn":Z
    :goto_70
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eq v11, v0, :cond_7f

    .line 485
    if-eqz v11, :cond_e0

    .line 486
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 491
    :cond_7f
    :goto_7f
    return-void

    .line 402
    .end local v11    # "keepScreenOn":Z
    :cond_80
    iget v0, p0, mLastBroadcastState:I

    invoke-static {v0}, isDeskDockState(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 403
    sget-object v12, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    goto :goto_c

    .line 416
    :cond_8b
    iget v0, p0, mDockState:I

    invoke-static {v0}, isDeskDockState(I)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 417
    iget v0, p0, mLastBroadcastState:I

    invoke-static {v0}, isDeskDockState(I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 418
    if-eqz v12, :cond_ab

    .line 419
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 421
    :cond_ab
    iget v0, p0, mDockState:I

    iput v0, p0, mLastBroadcastState:I

    .line 422
    sget-object v9, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    goto/16 :goto_2d

    .line 425
    :cond_b3
    const/4 v0, 0x0

    iput v0, p0, mLastBroadcastState:I

    .line 426
    move-object v9, v12

    goto/16 :goto_2d

    .line 454
    :cond_b9
    const/4 v10, 0x0

    .line 455
    .local v10, "category":Ljava/lang/String;
    iget-boolean v0, p0, mCarModeEnabled:Z

    if-eqz v0, :cond_c8

    .line 456
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_c4

    .line 458
    const-string v10, "android.intent.category.CAR_DOCK"

    .line 476
    :cond_c4
    :goto_c4
    invoke-direct {p0, v10}, sendConfigurationAndStartDreamOrDockAppLocked(Ljava/lang/String;)V

    goto :goto_54

    .line 460
    :cond_c8
    iget v0, p0, mDockState:I

    invoke-static {v0}, isDeskDockState(I)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 461
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_c4

    .line 463
    const-string v10, "android.intent.category.DESK_DOCK"

    goto :goto_c4

    .line 466
    :cond_d7
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_c4

    .line 467
    const-string v10, "android.intent.category.HOME"

    goto :goto_c4

    .line 480
    .end local v10    # "category":Ljava/lang/String;
    :cond_de
    const/4 v11, 0x0

    goto :goto_70

    .line 488
    .restart local v11    # "keepScreenOn":Z
    :cond_e0
    iget-object v0, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_7f
.end method

.method updateTwilight()V
    .registers 4

    .prologue
    .line 631
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 632
    :try_start_3
    invoke-virtual {p0}, isDoingNightModeLocked()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, mNightMode:I

    if-nez v0, :cond_15

    .line 633
    invoke-direct {p0}, updateComputedNightModeLocked()V

    .line 634
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, updateLocked(II)V

    .line 636
    :cond_15
    monitor-exit v1

    .line 637
    return-void

    .line 636
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method
