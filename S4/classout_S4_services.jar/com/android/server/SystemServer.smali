.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final DIR_ENCRYPTION:Z

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final MSAP_WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.server.wifi.MsapWifiService"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final is3LMAllowed:Z

.field private static final isRLLAllowed:Z


# instance fields
.field private final isElasticEnabled:Z

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAlarmManagerService:Lcom/android/server/AlarmManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mInstaller:Lcom/android/server/pm/Installer;

.field private mLightsService:Lcom/android/server/lights/LightsService;

.field private mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 302
    const-string/jumbo v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, DIR_ENCRYPTION:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, isElasticEnabled:Z

    .line 318
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, mFactoryTestMode:I

    .line 319
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 232
    iget-object v0, p0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 232
    iget-object v0, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 232
    invoke-direct {p0, p1, p2}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private createSystemContext()V
    .registers 4

    .prologue
    .line 455
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 456
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, mSystemContext:Landroid/content/Context;

    .line 457
    iget-object v1, p0, mSystemContext:Landroid/content/Context;

    const v2, 0x103013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 458
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 313
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, <init>()V

    invoke-direct {v0}, run()V

    .line 314
    return-void
.end method

.method private static native nativeInit()V
.end method

.method private performPendingShutdown()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 438
    const-string/jumbo v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2d

    .line 441
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_1c

    move v1, v3

    .line 444
    .local v1, "reboot":Z
    :cond_1c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2e

    .line 445
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, "reason":Ljava/lang/String;
    :goto_2a
    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 452
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_2d
    return-void

    .line 447
    .restart local v1    # "reboot":Z
    :cond_2e
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_2a
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 433
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    return-void
.end method

.method private run()V
    .registers 10

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v8, 0x1

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_19

    .line 327
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 332
    :cond_19
    const-string v0, "SystemServer"

    const-string v1, "!@Boot: Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 336
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 345
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string/jumbo v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 348
    .local v6, "cryptState":Ljava/lang/String;
    const-string/jumbo v0, "trigger_restart_min_framework"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 358
    :cond_4c
    :goto_4c
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 359
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 360
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 361
    iget-object v0, p0, mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 370
    :cond_67
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 374
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 378
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 382
    invoke-static {v8}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 385
    invoke-static {v8}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 392
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 393
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 396
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 397
    invoke-static {}, nativeInit()V

    .line 401
    invoke-direct {p0}, performPendingShutdown()V

    .line 404
    invoke-direct {p0}, createSystemContext()V

    .line 407
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 408
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 412
    :try_start_a6
    invoke-direct {p0}, startBootstrapServices()V

    .line 413
    invoke-direct {p0}, startCoreServices()V

    .line 414
    invoke-direct {p0}, startOtherServices()V
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_af} :catch_e7

    .line 422
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 423
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_bc
    const-string v0, "SystemServer"

    const-string v1, "!@Boot: Loop forever"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 429
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_ce
    const-string/jumbo v0, "trigger_restart_min_framework"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 353
    invoke-static {}, Lcom/android/server/pm/PackagePrefetcher;->getInstance()Lcom/android/server/pm/PackagePrefetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackagePrefetcher;->prefetchPermissions()V

    .line 354
    invoke-static {}, Lcom/android/server/pm/PackagePrefetcher;->getInstance()Lcom/android/server/pm/PackagePrefetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackagePrefetcher;->prefetchPackages()V

    goto/16 :goto_4c

    .line 415
    :catch_e7
    move-exception v7

    .line 416
    .local v7, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    throw v7
.end method

.method private startBootstrapServices()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 471
    iget-object v1, p0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pm/Installer;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    iput-object v1, p0, mInstaller:Lcom/android/server/pm/Installer;

    .line 474
    iget-object v1, p0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iput-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 476
    iget-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 482
    iget-object v1, p0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService;

    iput-object v1, p0, mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 486
    iget-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 490
    iget-object v1, p0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayManagerService;

    iput-object v1, p0, mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 493
    iget-object v1, p0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 496
    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 498
    const-string v1, "SystemServer"

    const-string v3, "Detected encryption in progress - only parsing core apps"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iput-boolean v2, p0, mOnlyCore:Z

    .line 513
    :cond_61
    :goto_61
    const-string v1, "SystemServer"

    const-string v3, "!@Boot: Start PackageManagerService"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v3, p0, mSystemContext:Landroid/content/Context;

    iget-object v4, p0, mInstaller:Lcom/android/server/pm/Installer;

    iget v1, p0, mFactoryTestMode:I

    if-eqz v1, :cond_bf

    move v1, v2

    :goto_71
    iget-boolean v2, p0, mOnlyCore:Z

    invoke-static {v3, v4, v1, v2}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v1

    iput-object v1, p0, mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 516
    const-string v1, "SystemServer"

    const-string v2, "!@Boot: End PackageManagerService"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v1, p0, mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    iput-boolean v1, p0, mFirstBoot:Z

    .line 518
    iget-object v1, p0, mSystemContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, mPackageManager:Landroid/content/pm/PackageManager;

    .line 520
    const-string v1, "SystemServer"

    const-string v2, "User Service"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string/jumbo v1, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 524
    iget-object v1, p0, mSystemContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 527
    iget-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 528
    return-void

    .line 500
    :cond_ac
    const-string/jumbo v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 501
    const-string v1, "SystemServer"

    const-string v3, "Device encrypted - only parsing core apps"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iput-boolean v2, p0, mOnlyCore:Z

    goto :goto_61

    .line 514
    :cond_bf
    const/4 v1, 0x0

    goto :goto_71
.end method

.method private startCoreServices()V
    .registers 3

    .prologue
    .line 535
    iget-object v0, p0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/lights/LightsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsService;

    iput-object v0, p0, mLightsService:Lcom/android/server/lights/LightsService;

    .line 538
    iget-object v0, p0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 541
    iget-object v0, p0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 542
    iget-object v1, p0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 546
    iget-object v0, p0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 547
    return-void
.end method

.method private static final startDpmService(Landroid/content/Context;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2255
    const/4 v4, 0x0

    .line 2256
    .local v4, "dpmObj":Ljava/lang/Object;
    :try_start_1
    const-string/jumbo v6, "persist.dpm.feature"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2257
    .local v3, "dpmFeature":I
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DPM configuration set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    if-lez v3, :cond_62

    const/16 v6, 0x10

    if-ge v3, v6, :cond_62

    .line 2260
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/com.qti.dpmframework.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2263
    .local v1, "dpmClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.qti.dpm.DpmService"

    invoke-virtual {v1, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2264
    .local v0, "dpmClass":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 2266
    .local v2, "dpmConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4d} :catch_6d

    move-result-object v4

    .line 2268
    if-eqz v4, :cond_62

    :try_start_50
    instance-of v6, v4, Landroid/os/IBinder;

    if-eqz v6, :cond_62

    .line 2269
    const-string v6, "dpmservice"

    check-cast v4, Landroid/os/IBinder;

    .end local v4    # "dpmObj":Ljava/lang/Object;
    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2270
    const-string v6, "SystemServer"

    const-string v7, "Created DPM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_62} :catch_63
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_62} :catch_6d

    .line 2279
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    :cond_62
    :goto_62
    return-void

    .line 2272
    .restart local v0    # "dpmClass":Ljava/lang/Class;
    .restart local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .restart local v3    # "dpmFeature":I
    :catch_63
    move-exception v5

    .line 2273
    .local v5, "e":Ljava/lang/Exception;
    :try_start_64
    const-string v6, "SystemServer"

    const-string/jumbo v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_6c} :catch_6d

    goto :goto_62

    .line 2276
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_6d
    move-exception v5

    .line 2277
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string/jumbo v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_62
.end method

.method static final startEmergencyModeService(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    :try_start_0
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    .local v1, "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->readyEmergencyMode()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .end local v1    # "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    :goto_7
    return-void

    :catch_8
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting emergency service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private startOtherServices()V
    .registers 181

    .prologue
    .line 554
    move-object/from16 v0, p0

    iget-object v4, v0, mSystemContext:Landroid/content/Context;

    .line 555
    .local v4, "context":Landroid/content/Context;
    const/16 v40, 0x0

    .line 556
    .local v40, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v72, 0x0

    .line 557
    .local v72, "contentService":Lcom/android/server/content/ContentService;
    const/16 v168, 0x0

    .line 558
    .local v168, "vibrator":Lcom/android/server/VibratorService;
    const/16 v42, 0x0

    .line 559
    .local v42, "alarm":Landroid/app/IAlarmManager;
    const/16 v132, 0x0

    .line 560
    .local v132, "mountService":Lcom/android/server/MountService;
    const/16 v147, 0x0

    .line 561
    .local v147, "sdpService":Lcom/android/server/SdpManagerService;
    const/4 v8, 0x0

    .line 562
    .local v8, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v7, 0x0

    .line 563
    .local v7, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v134, 0x0

    .line 564
    .local v134, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v64, 0x0

    .line 565
    .local v64, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v135, 0x0

    .line 566
    .local v135, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v151, 0x0

    .line 567
    .local v151, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v179, 0x0

    .line 568
    .local v179, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v50, 0x0

    .line 569
    .local v50, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v166, 0x0

    .line 570
    .local v166, "usb":Lcom/android/server/usb/UsbService;
    const/16 v149, 0x0

    .line 571
    .local v149, "serial":Lcom/android/server/SerialService;
    const/16 v138, 0x0

    .line 572
    .local v138, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v61, 0x0

    .line 573
    .local v61, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v107, 0x0

    .line 574
    .local v107, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v155, 0x0

    .line 575
    .local v155, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v70, 0x0

    .line 577
    .local v70, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v79, 0x0

    .line 579
    .local v79, "dEncService":Lcom/android/server/DirEncryptService;
    const/16 v118, 0x0

    .line 580
    .local v118, "mHMS":Lcom/android/server/HarmonyEASService;
    const/16 v47, 0x0

    .line 581
    .local v47, "audioService":Landroid/media/AudioService;
    const/16 v81, 0x0

    .line 582
    .local v81, "deviceManager":Lcom/android/server/DeviceManager3LMService;
    const/16 v101, 0x0

    .line 583
    .local v101, "extControlDevice":Lcom/sec/rll/ExtControlDeviceService;
    const/16 v129, 0x0

    .line 585
    .local v129, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v143, 0x0

    .line 587
    .local v143, "quickconnect":Lcom/android/server/QuickConnectService;
    const/16 v160, 0x0

    .line 588
    .local v160, "timaService":Lcom/android/server/TimaService;
    const/16 v158, 0x0

    .line 590
    .local v158, "timaObserver":Lcom/android/server/TimaObserver;
    const/16 v120, 0x0

    .line 591
    .local v120, "mPersonaService":Lcom/android/server/pm/PersonaManagerService;
    const/16 v122, 0x0

    .line 596
    .local v122, "mRCPManagerService":Lcom/android/server/RCPManagerService;
    const/16 v178, 0x0

    .line 606
    .local v178, "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    const-string v5, "config.disable_storage"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v92

    .line 607
    .local v92, "disableStorage":Z
    const-string v5, "config.disable_media"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v89

    .line 608
    .local v89, "disableMedia":Z
    const-string v5, "config.disable_bluetooth"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v87

    .line 609
    .local v87, "disableBluetooth":Z
    const-string v5, "config.disable_telephony"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v94

    .line 610
    .local v94, "disableTelephony":Z
    const-string v5, "config.disable_location"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v88

    .line 611
    .local v88, "disableLocation":Z
    const-string v5, "config.disable_systemui"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v93

    .line 612
    .local v93, "disableSystemUI":Z
    const-string v5, "config.disable_noncore"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v91

    .line 613
    .local v91, "disableNonCoreServices":Z
    const-string v5, "config.disable_network"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v90

    .line 614
    .local v90, "disableNetwork":Z
    const-string/jumbo v5, "ro.kernel.qemu"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v111

    .line 615
    .local v111, "isEmulator":Z
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120083

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v82

    .line 617
    .local v82, "digitalPenCapable":Z
    const-string v5, "config.disable_atlas"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v86

    .line 620
    .local v86, "disableAtlas":Z
    :try_start_9b
    const-string v5, "SystemServer"

    const-string v6, "Reading configuration..."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 623
    const-string v5, "SystemServer"

    const-string v6, "Scheduling Policy"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const-string/jumbo v5, "scheduling_policy"

    new-instance v6, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v6}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 626
    const-string v5, "SystemServer"

    const-string v6, "Telephony Registry"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    new-instance v156, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v156

    invoke-direct {v0, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_c5
    .catch Ljava/lang/RuntimeException; {:try_start_9b .. :try_end_c5} :catch_136e

    .line 628
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v156, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_c5
    const-string/jumbo v5, "telephony.registry"

    move-object/from16 v0, v156

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 630
    const-string v5, "SystemServer"

    const-string v6, "Entropy Mixer"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const-string v5, "entropy"

    new-instance v6, Lcom/android/server/EntropyMixer;

    invoke-direct {v6, v4}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_de
    .catch Ljava/lang/RuntimeException; {:try_start_c5 .. :try_end_de} :catch_dcb

    .line 636
    :try_start_de
    const-string v5, "SystemServer"

    const-string v6, "SEAMS"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const-string v5, "SEAMService"

    new-instance v6, Lcom/android/server/SEAMService;

    invoke-direct {v6, v4}, Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ef
    .catch Ljava/lang/Throwable; {:try_start_de .. :try_end_ef} :catch_dbf
    .catch Ljava/lang/RuntimeException; {:try_start_de .. :try_end_ef} :catch_dcb

    .line 646
    :goto_ef
    :try_start_ef
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v167

    .line 647
    .local v167, "versionInfo":Landroid/os/Bundle;
    const-string v5, "2.0"

    const-string/jumbo v6, "version"

    move-object/from16 v0, v167

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_101
    .catch Ljava/lang/RuntimeException; {:try_start_ef .. :try_end_101} :catch_dcb

    move-result v5

    if-eqz v5, :cond_117

    .line 649
    :try_start_104
    const-string v5, "SystemServer"

    const-string v6, "Persona Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getInstance()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v120

    .line 651
    const-string/jumbo v5, "persona"

    move-object/from16 v0, v120

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_117
    .catch Ljava/lang/Throwable; {:try_start_104 .. :try_end_117} :catch_de0
    .catch Ljava/lang/RuntimeException; {:try_start_104 .. :try_end_117} :catch_dcb

    .line 658
    :cond_117
    :goto_117
    :try_start_117
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, mContentResolver:Landroid/content/ContentResolver;
    :try_end_11f
    .catch Ljava/lang/RuntimeException; {:try_start_117 .. :try_end_11f} :catch_dcb

    .line 663
    :try_start_11f
    const-string v5, "SystemServer"

    const-string v6, "Account Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    new-instance v41, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v41

    invoke-direct {v0, v4}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_12d
    .catch Ljava/lang/Throwable; {:try_start_11f .. :try_end_12d} :catch_dec
    .catch Ljava/lang/RuntimeException; {:try_start_11f .. :try_end_12d} :catch_dcb

    .line 665
    .end local v40    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v41, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_12d
    const-string v5, "account"

    move-object/from16 v0, v41

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_134
    .catch Ljava/lang/Throwable; {:try_start_12d .. :try_end_134} :catch_13b5
    .catch Ljava/lang/RuntimeException; {:try_start_12d .. :try_end_134} :catch_1371

    move-object/from16 v40, v41

    .line 671
    .end local v41    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v40    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_136
    :try_start_136
    const-string/jumbo v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v121

    .line 672
    .local v121, "mProductName":Ljava/lang/String;
    const-string v5, "ktt"

    move-object/from16 v0, v121

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15e

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z
    :try_end_14a
    .catch Ljava/lang/RuntimeException; {:try_start_136 .. :try_end_14a} :catch_dcb

    move-result v5

    if-nez v5, :cond_15e

    .line 675
    :try_start_14d
    const-string v5, "SystemServer"

    const-string v6, "KT UCA Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const-string v5, "ktuca"

    new-instance v6, Landroid/ktuca/KtUcaService;

    invoke-direct {v6, v4}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15e
    .catch Ljava/lang/Throwable; {:try_start_14d .. :try_end_15e} :catch_df8
    .catch Ljava/lang/RuntimeException; {:try_start_14d .. :try_end_15e} :catch_dcb

    .line 683
    :cond_15e
    :goto_15e
    :try_start_15e
    const-string v5, "SystemServer"

    const-string v6, "Content Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    move-object/from16 v0, p0

    iget v5, v0, mFactoryTestMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_e04

    const/4 v5, 0x1

    :goto_16d
    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v72

    .line 689
    new-instance v80, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v80

    invoke-direct {v0, v4}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_178
    .catch Ljava/lang/RuntimeException; {:try_start_15e .. :try_end_178} :catch_dcb

    .line 691
    .end local v79    # "dEncService":Lcom/android/server/DirEncryptService;
    .local v80, "dEncService":Lcom/android/server/DirEncryptService;
    :try_start_178
    sget-boolean v5, DIR_ENCRYPTION:Z

    if-eqz v5, :cond_183

    .line 692
    const-string v5, "DirEncryptService"

    move-object/from16 v0, v80

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_183
    .catch Ljava/lang/Throwable; {:try_start_178 .. :try_end_183} :catch_e07
    .catch Ljava/lang/RuntimeException; {:try_start_178 .. :try_end_183} :catch_1378

    :cond_183
    move-object/from16 v79, v80

    .line 701
    .end local v80    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v79    # "dEncService":Lcom/android/server/DirEncryptService;
    :goto_185
    :try_start_185
    const-string v5, "SystemServer"

    const-string v6, "Reactive Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18c
    .catch Ljava/lang/RuntimeException; {:try_start_185 .. :try_end_18c} :catch_dcb

    .line 703
    :try_start_18c
    const-string v5, "ReactiveService"

    new-instance v6, Lcom/android/server/ReactiveService;

    invoke-direct {v6, v4}, Lcom/android/server/ReactiveService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_196
    .catch Ljava/lang/Throwable; {:try_start_18c .. :try_end_196} :catch_e15
    .catch Ljava/lang/RuntimeException; {:try_start_18c .. :try_end_196} :catch_dcb

    .line 710
    :goto_196
    :try_start_196
    const-string v5, "SystemServer"

    const-string v6, "System Content Providers"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    move-object/from16 v0, p0

    iget-object v5, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V
    :try_end_1a4
    .catch Ljava/lang/RuntimeException; {:try_start_196 .. :try_end_1a4} :catch_dcb

    .line 713
    :try_start_1a4
    const-string/jumbo v5, "sedenial"

    new-instance v6, Lcom/android/server/SEDenialService;

    invoke-direct {v6, v4}, Lcom/android/server/SEDenialService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 714
    const-string v5, "SystemServer"

    const-string v6, "SEDenial service added"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b6
    .catch Ljava/lang/Throwable; {:try_start_1a4 .. :try_end_1b6} :catch_e1f
    .catch Ljava/lang/RuntimeException; {:try_start_1a4 .. :try_end_1b6} :catch_dcb

    .line 719
    :goto_1b6
    :try_start_1b6
    const-string v5, "SystemServer"

    const-string v6, "Vibrator Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    new-instance v169, Lcom/android/server/VibratorService;

    move-object/from16 v0, v169

    invoke-direct {v0, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_1c4
    .catch Ljava/lang/RuntimeException; {:try_start_1b6 .. :try_end_1c4} :catch_dcb

    .line 721
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .local v169, "vibrator":Lcom/android/server/VibratorService;
    :try_start_1c4
    const-string/jumbo v5, "vibrator"

    move-object/from16 v0, v169

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 724
    sget-boolean v5, Lcom/samsung/android/toolbox/TwToolBoxService;->TOOLBOX_SUPPORT:Z

    if-eqz v5, :cond_1e6

    .line 725
    const-string v5, "SystemServer"

    const-string v6, "Tw ToolBox Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    new-instance v163, Lcom/samsung/android/toolbox/TwToolBoxService;

    move-object/from16 v0, v163

    invoke-direct {v0, v4}, Lcom/samsung/android/toolbox/TwToolBoxService;-><init>(Landroid/content/Context;)V

    .line 727
    .local v163, "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    const-string/jumbo v5, "tw_toolbox"

    move-object/from16 v0, v163

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 732
    .end local v163    # "toolbox":Lcom/samsung/android/toolbox/TwToolBoxService;
    :cond_1e6
    const-string v5, "1"

    const-string/jumbo v6, "ro.config.tima"

    const-string v9, "0"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1f4
    .catch Ljava/lang/RuntimeException; {:try_start_1c4 .. :try_end_1f4} :catch_e36

    move-result v157

    .line 733
    .local v157, "timaEnabled":Z
    if-eqz v157, :cond_24f

    .line 735
    :try_start_1f7
    const-string v5, "SystemServer"

    const-string v6, "TIMA Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/4 v5, -0x2

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 739
    new-instance v161, Lcom/android/server/TimaService;

    move-object/from16 v0, v161

    invoke-direct {v0, v4}, Lcom/android/server/TimaService;-><init>(Landroid/content/Context;)V
    :try_end_209
    .catch Ljava/lang/Throwable; {:try_start_1f7 .. :try_end_209} :catch_e29
    .catch Ljava/lang/RuntimeException; {:try_start_1f7 .. :try_end_209} :catch_e36

    .line 740
    .end local v160    # "timaService":Lcom/android/server/TimaService;
    .local v161, "timaService":Lcom/android/server/TimaService;
    :try_start_209
    const-string/jumbo v5, "tima"

    move-object/from16 v0, v161

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_211
    .catch Ljava/lang/Throwable; {:try_start_209 .. :try_end_211} :catch_13b0
    .catch Ljava/lang/RuntimeException; {:try_start_209 .. :try_end_211} :catch_137f

    move-object/from16 v160, v161

    .line 745
    .end local v161    # "timaService":Lcom/android/server/TimaService;
    .restart local v160    # "timaService":Lcom/android/server/TimaService;
    :goto_213
    const/16 v5, -0x13

    :try_start_215
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_218
    .catch Ljava/lang/RuntimeException; {:try_start_215 .. :try_end_218} :catch_e36

    .line 749
    :try_start_218
    const-string v5, "SystemServer"

    const-string v6, "TIMA Observer"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    new-instance v159, Lcom/android/server/TimaObserver;

    move-object/from16 v0, v159

    invoke-direct {v0, v4}, Lcom/android/server/TimaObserver;-><init>(Landroid/content/Context;)V
    :try_end_226
    .catch Ljava/lang/Throwable; {:try_start_218 .. :try_end_226} :catch_e3c
    .catch Ljava/lang/RuntimeException; {:try_start_218 .. :try_end_226} :catch_e36

    .end local v158    # "timaObserver":Lcom/android/server/TimaObserver;
    .local v159, "timaObserver":Lcom/android/server/TimaObserver;
    move-object/from16 v158, v159

    .line 758
    .end local v159    # "timaObserver":Lcom/android/server/TimaObserver;
    .restart local v158    # "timaObserver":Lcom/android/server/TimaObserver;
    :goto_228
    :try_start_228
    const-string v5, "3.0"

    const-string/jumbo v6, "ro.config.timaversion"

    const-string v9, "0"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v162

    .line 759
    .local v162, "timaversion":Z
    if-eqz v162, :cond_24f

    .line 760
    const-string v5, "com.sec.tima.TimaKeyStoreProvider"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v113

    .line 762
    .local v113, "keyStoreClass":Ljava/lang/Class;
    invoke-virtual/range {v113 .. v113}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/Provider;

    invoke-static {v5}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 763
    const-string v5, "SystemServer"

    const-string v6, "Added TimaKesytore provider"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24f
    .catch Ljava/lang/Exception; {:try_start_228 .. :try_end_24f} :catch_e49
    .catch Ljava/lang/RuntimeException; {:try_start_228 .. :try_end_24f} :catch_e36

    .line 773
    .end local v113    # "keyStoreClass":Ljava/lang/Class;
    .end local v162    # "timaversion":Z
    :cond_24f
    :goto_24f
    const/16 v98, 0x1

    .line 774
    .local v98, "enabledMDM":Z
    const/4 v5, 0x1

    move/from16 v0, v98

    if-ne v5, v0, :cond_26e

    .line 775
    const/16 v97, 0x1

    .line 776
    .local v97, "enabledCEP":Z
    const/4 v5, 0x1

    move/from16 v0, v97

    if-ne v5, v0, :cond_e62

    .line 778
    :try_start_25d
    const-string v5, "SystemServer"

    const-string v6, "CEP Proxy KS Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const-string v5, "cepproxyks"

    new-instance v6, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;

    invoke-direct {v6, v4}, Lcom/android/server/enterprise/scep/ScepKeystoreProxyService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26e
    .catch Ljava/lang/Throwable; {:try_start_25d .. :try_end_26e} :catch_e56
    .catch Ljava/lang/RuntimeException; {:try_start_25d .. :try_end_26e} :catch_e36

    .line 789
    .end local v97    # "enabledCEP":Z
    :cond_26e
    :goto_26e
    :try_start_26e
    const-string v5, "SystemServer"

    const-string v6, "SSRM Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_275
    .catch Ljava/lang/RuntimeException; {:try_start_26e .. :try_end_275} :catch_e36

    .line 791
    :try_start_275
    new-instance v53, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/ssrm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 792
    .local v53, "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    const-string v5, "com.android.server.ssrm.CustomFrequencyManagerService"

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v52

    .line 793
    .local v52, "cfmsClass":Ljava/lang/Class;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    const/4 v6, 0x1

    const-class v9, Landroid/app/IActivityManager;

    aput-object v9, v5, v6

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v54

    .line 794
    .local v54, "cfmsConstructor":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    aput-object v9, v5, v6

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v152

    check-cast v152, Landroid/os/IBinder;

    .line 795
    .local v152, "ssrmService":Landroid/os/IBinder;
    const-string v5, "CustomFrequencyManagerService"

    move-object/from16 v0, v152

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b9
    .catch Ljava/lang/Exception; {:try_start_275 .. :try_end_2b9} :catch_e6b
    .catch Ljava/lang/RuntimeException; {:try_start_275 .. :try_end_2b9} :catch_e36

    .line 807
    .end local v52    # "cfmsClass":Ljava/lang/Class;
    .end local v53    # "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    .end local v54    # "cfmsConstructor":Ljava/lang/reflect/Constructor;
    .end local v152    # "ssrmService":Landroid/os/IBinder;
    :goto_2b9
    :try_start_2b9
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v55

    .line 808
    .local v55, "cl":Ljava/lang/ClassLoader;
    const-string v5, "com.samsung.android.smartface.SmartFaceManager"

    const/4 v6, 0x1

    move-object/from16 v0, v55

    invoke-static {v5, v6, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v58

    .line 809
    .local v58, "class_SmartFaceManager":Ljava/lang/Class;
    const-string v5, "SMARTFACE_SERVICE"

    move-object/from16 v0, v58

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v103

    .line 811
    .local v103, "field_SMARTFACE_SERVICE":Ljava/lang/reflect/Field;
    const-string v5, "com.samsung.android.smartface.SmartFaceService"

    const/4 v6, 0x1

    move-object/from16 v0, v55

    invoke-static {v5, v6, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v59

    .line 812
    .local v59, "class_SmartFaceService":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v59

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v69

    .line 814
    .local v69, "constructor_SmartFaceService":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x0

    move-object/from16 v0, v103

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v6, v9

    move-object/from16 v0, v69

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 815
    const-string v5, "SystemServer"

    const-string v6, "SmartFaceService loaded!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_306
    .catch Ljava/lang/Exception; {:try_start_2b9 .. :try_end_306} :catch_e79
    .catch Ljava/lang/RuntimeException; {:try_start_2b9 .. :try_end_306} :catch_e36

    .line 822
    .end local v55    # "cl":Ljava/lang/ClassLoader;
    .end local v58    # "class_SmartFaceManager":Ljava/lang/Class;
    .end local v59    # "class_SmartFaceService":Ljava/lang/Class;
    .end local v69    # "constructor_SmartFaceService":Ljava/lang/reflect/Constructor;
    .end local v103    # "field_SMARTFACE_SERVICE":Ljava/lang/reflect/Field;
    :goto_306
    :try_start_306
    const-string v5, "SystemServer"

    const-string v6, "Consumer IR Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    new-instance v71, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v71

    invoke-direct {v0, v4}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_314
    .catch Ljava/lang/RuntimeException; {:try_start_306 .. :try_end_314} :catch_e36

    .line 824
    .end local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v71, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_314
    const-string v5, "consumer_ir"

    move-object/from16 v0, v71

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, p0

    iput-object v5, v0, mAlarmManagerService:Lcom/android/server/AlarmManagerService;

    .line 827
    const-string v5, "alarm"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v42

    .line 830
    const-string v5, "SystemServer"

    const-string v6, "Init Watchdog"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v174

    .line 832
    .local v174, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v5, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v174

    invoke-virtual {v0, v4, v5}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 834
    const-string v5, "SystemServer"

    const-string v6, "Input Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    new-instance v108, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v108

    invoke-direct {v0, v4}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_357
    .catch Ljava/lang/RuntimeException; {:try_start_314 .. :try_end_357} :catch_1388

    .line 837
    .end local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v108, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_357
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.sensorhub"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_374

    .line 838
    const-string v5, "SystemServer"

    const-string v6, "Context Aware Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const-string v5, "context_aware"

    new-instance v6, Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-direct {v6, v4}, Lcom/samsung/android/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 842
    :cond_374
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.sensorhub"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_38c

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.scontext_lite"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39e

    .line 844
    :cond_38c
    const-string v5, "SystemServer"

    const-string v6, "SContext Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const-string/jumbo v5, "scontext"

    new-instance v6, Landroid/hardware/scontext/SContextService;

    invoke-direct {v6, v4}, Landroid/hardware/scontext/SContextService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 849
    :cond_39e
    move-object/from16 v0, p0

    iget-object v5, v0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "com.sec.feature.barcode_emulator"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_3a7
    .catch Ljava/lang/RuntimeException; {:try_start_357 .. :try_end_3a7} :catch_e91

    move-result v5

    if-eqz v5, :cond_3bf

    .line 851
    :try_start_3aa
    const-string v5, "SystemServer"

    const-string v6, "BarBeamService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    new-instance v49, Landroid/app/BarBeamService;

    move-object/from16 v0, v49

    invoke-direct {v0, v4}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    .line 854
    .local v49, "barbeam":Landroid/app/BarBeamService;
    const-string v5, "barbeam"

    move-object/from16 v0, v49

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3bf
    .catch Ljava/lang/Throwable; {:try_start_3aa .. :try_end_3bf} :catch_e85
    .catch Ljava/lang/RuntimeException; {:try_start_3aa .. :try_end_3bf} :catch_e91

    .line 864
    .end local v49    # "barbeam":Landroid/app/BarBeamService;
    :cond_3bf
    :goto_3bf
    :try_start_3bf
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/am/MultiWindowFacadeService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MultiWindowFacadeService;

    move-object/from16 v0, p0

    iput-object v5, v0, mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

    .line 870
    const-string v5, "SystemServer"

    const-string v6, "Window Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    move-object/from16 v0, p0

    iget v5, v0, mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_e9c

    const/4 v5, 0x1

    move v6, v5

    :goto_3df
    move-object/from16 v0, p0

    iget-boolean v5, v0, mFirstBoot:Z

    if-nez v5, :cond_ea0

    const/4 v5, 0x1

    :goto_3e6
    move-object/from16 v0, p0

    iget-boolean v9, v0, mOnlyCore:Z

    move-object/from16 v0, v108

    invoke-static {v4, v0, v6, v5, v9}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v179

    .line 874
    const-string/jumbo v5, "window"

    move-object/from16 v0, v179

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 875
    const-string v5, "input"

    move-object/from16 v0, v108

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 877
    move-object/from16 v0, p0

    iget-object v5, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v179

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 881
    move-object/from16 v0, p0

    iget-object v5, v0, mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

    move-object/from16 v0, p0

    iget-object v6, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/am/MultiWindowFacadeService;->setAcitivityManager(Lcom/android/server/am/ActivityManagerService;)V

    .line 882
    move-object/from16 v0, p0

    iget-object v5, v0, mMultiWindowFacadeService:Lcom/android/server/am/MultiWindowFacadeService;

    move-object/from16 v0, v179

    invoke-virtual {v5, v0}, Lcom/android/server/am/MultiWindowFacadeService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 886
    invoke-virtual/range {v179 .. v179}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v5

    move-object/from16 v0, v108

    invoke-virtual {v0, v5}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 887
    invoke-virtual/range {v108 .. v108}, Lcom/android/server/input/InputManagerService;->start()V

    .line 896
    move-object/from16 v0, p0

    iget-object v5, v0, mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 901
    if-eqz v111, :cond_ea3

    .line 902
    const-string v5, "SystemServer"

    const-string v6, "No Bluetooh Service (emulator)"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :goto_438
    const-string v5, "SystemServer"

    const-string v6, "RCP Manager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43f
    .catch Ljava/lang/RuntimeException; {:try_start_3bf .. :try_end_43f} :catch_e91

    .line 925
    :try_start_43f
    new-instance v123, Lcom/android/server/RCPManagerService;

    move-object/from16 v0, v123

    invoke-direct {v0, v4}, Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_446
    .catch Ljava/lang/Throwable; {:try_start_43f .. :try_end_446} :catch_efd
    .catch Ljava/lang/RuntimeException; {:try_start_43f .. :try_end_446} :catch_e91

    .line 926
    .end local v122    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .local v123, "mRCPManagerService":Lcom/android/server/RCPManagerService;
    :try_start_446
    const-string/jumbo v5, "rcp"

    move-object/from16 v0, v123

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44e
    .catch Ljava/lang/Throwable; {:try_start_446 .. :try_end_44e} :catch_13ab
    .catch Ljava/lang/RuntimeException; {:try_start_446 .. :try_end_44e} :catch_139e

    move-object/from16 v122, v123

    .line 933
    .end local v123    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v122    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    :goto_450
    :try_start_450
    new-instance v5, Landroid/security/AndroidKeyStoreProvider;

    invoke-direct {v5}, Landroid/security/AndroidKeyStoreProvider;-><init>()V

    invoke-static {v5}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_458
    .catch Ljava/lang/RuntimeException; {:try_start_450 .. :try_end_458} :catch_e91

    move-object/from16 v70, v71

    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v107, v108

    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v168, v169

    .line 940
    .end local v98    # "enabledMDM":Z
    .end local v121    # "mProductName":Ljava/lang/String;
    .end local v157    # "timaEnabled":Z
    .end local v167    # "versionInfo":Landroid/os/Bundle;
    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .end local v174    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    :goto_460
    const/16 v153, 0x0

    .line 941
    .local v153, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v140, 0x0

    .line 942
    .local v140, "notification":Landroid/app/INotificationManager;
    const/16 v105, 0x0

    .line 943
    .local v105, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v172, 0x0

    .line 944
    .local v172, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v114, 0x0

    .line 945
    .local v114, "location":Lcom/android/server/LocationManagerService;
    const/16 v145, 0x0

    .line 946
    .local v145, "sLocation":Landroid/os/IBinder;
    const/16 v73, 0x0

    .line 947
    .local v73, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v164, 0x0

    .line 948
    .local v164, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v116, 0x0

    .line 950
    .local v116, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v170, 0x0

    .line 952
    .local v170, "vrManager":Lcom/android/server/VRManagerService;
    const/16 v45, 0x0

    .line 953
    .local v45, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v126, 0x0

    .line 956
    .local v126, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v99, 0x0

    .line 960
    .local v99, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v60, 0x0

    .line 964
    .local v60, "cocktailBar":Lcom/android/server/cocktailbar/CocktailBarManagerService;
    move-object/from16 v0, p0

    iget v5, v0, mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4ad

    .line 968
    :try_start_483
    const-string v5, "SystemServer"

    const-string v6, "Input Method Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    new-instance v106, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v106

    move-object/from16 v1, v179

    invoke-direct {v0, v4, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_493
    .catch Ljava/lang/Throwable; {:try_start_483 .. :try_end_493} :catch_f09

    .line 970
    .end local v105    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v106, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_493
    const-string v5, "input_method"

    move-object/from16 v0, v106

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49a
    .catch Ljava/lang/Throwable; {:try_start_493 .. :try_end_49a} :catch_1369

    move-object/from16 v105, v106

    .line 976
    .end local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v105    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_49c
    :try_start_49c
    const-string v5, "SystemServer"

    const-string v6, "Accessibility Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const-string v5, "accessibility"

    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v6, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4ad
    .catch Ljava/lang/Throwable; {:try_start_49c .. :try_end_4ad} :catch_f16

    .line 986
    :cond_4ad
    :goto_4ad
    :try_start_4ad
    invoke-virtual/range {v179 .. v179}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_4b0
    .catch Ljava/lang/Throwable; {:try_start_4ad .. :try_end_4b0} :catch_f23

    .line 992
    :goto_4b0
    :try_start_4b0
    move-object/from16 v0, p0

    iget-object v5, v0, mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_4b7
    .catch Ljava/lang/Throwable; {:try_start_4b0 .. :try_end_4b7} :catch_f2f

    .line 998
    :goto_4b7
    :try_start_4b7
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x1040498

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v9, 0x0

    invoke-interface {v5, v6, v9}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_4ca
    .catch Landroid/os/RemoteException; {:try_start_4b7 .. :try_end_4ca} :catch_1366

    .line 1007
    :goto_4ca
    :try_start_4ca
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v141

    .line 1008
    .local v141, "pM":Landroid/content/pm/PackageManager;
    if-eqz v141, :cond_51e

    .line 1009
    const-string v5, "SystemServer"

    const-string v6, "PackageManager is not null!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const-string v5, "com.sec.feature.motionrecognition_service"

    move-object/from16 v0, v141

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_51e

    .line 1011
    new-instance v131, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/motionrecognitionservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object/from16 v0, v131

    invoke-direct {v0, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1012
    .local v131, "motionClassLoader":Ldalvik/system/PathClassLoader;
    const-string v5, "com.samsung.android.motion.MotionRecognitionService"

    move-object/from16 v0, v131

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v56

    .line 1013
    .local v56, "class_MotionRecognitionService":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v67

    .line 1014
    .local v67, "constructor_MotionRecognitionService":Ljava/lang/reflect/Constructor;
    const-string v6, "motion_recognition"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v5, v9

    move-object/from16 v0, v67

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1015
    const-string v5, "SystemServer"

    const-string v6, "MotionRecognitionService Service!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51e
    .catch Ljava/lang/Exception; {:try_start_4ca .. :try_end_51e} :catch_f3c

    .line 1024
    .end local v56    # "class_MotionRecognitionService":Ljava/lang/Class;
    .end local v67    # "constructor_MotionRecognitionService":Ljava/lang/reflect/Constructor;
    .end local v131    # "motionClassLoader":Ldalvik/system/PathClassLoader;
    .end local v141    # "pM":Landroid/content/pm/PackageManager;
    :cond_51e
    :goto_51e
    const/16 v75, 0x0

    .line 1026
    .local v75, "coverService":Lcom/android/server/cover/CoverManagerService;
    move-object/from16 v0, p0

    iget v5, v0, mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_54b

    .line 1027
    const-string/jumbo v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v77

    .line 1028
    .local v77, "cryptState":Ljava/lang/String;
    const-string/jumbo v5, "trigger_restart_min_framework"

    move-object/from16 v0, v77

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_544

    const-string/jumbo v5, "trigger_restart_min_framework"

    move-object/from16 v0, v77

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f48

    .line 1029
    :cond_544
    const-string v5, "SystemServer"

    const-string v6, "Detected encryption in progress - unable CoverManagerService"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    .end local v77    # "cryptState":Ljava/lang/String;
    :cond_54b
    :goto_54b
    const-string v5, "0"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_56b

    .line 1062
    :try_start_553
    const-string v5, "SystemServer"

    const-string v6, "Add FM_RADIO_SERVICE"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const-string v5, "FMPlayer"

    new-instance v6, Lcom/android/server/FMRadioService;

    invoke-direct {v6, v4}, Lcom/android/server/FMRadioService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1064
    const-string v5, "SystemServer"

    const-string v6, "FMRadio service added.."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56b
    .catch Ljava/lang/Throwable; {:try_start_553 .. :try_end_56b} :catch_f8b

    .line 1070
    :cond_56b
    :goto_56b
    move-object/from16 v0, p0

    iget v5, v0, mFactoryTestMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_13be

    .line 1071
    if-nez v92, :cond_59a

    const-string v5, "0"

    const-string/jumbo v6, "system_init.startmountservice"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_59a

    .line 1078
    :try_start_583
    const-string v5, "SystemServer"

    const-string v6, "Mount Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    new-instance v133, Lcom/android/server/MountService;

    move-object/from16 v0, v133

    invoke-direct {v0, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_591
    .catch Ljava/lang/Throwable; {:try_start_583 .. :try_end_591} :catch_f97

    .line 1080
    .end local v132    # "mountService":Lcom/android/server/MountService;
    .local v133, "mountService":Lcom/android/server/MountService;
    :try_start_591
    const-string v5, "mount"

    move-object/from16 v0, v133

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_598
    .catch Ljava/lang/Throwable; {:try_start_591 .. :try_end_598} :catch_135c

    move-object/from16 v132, v133

    .line 1088
    .end local v133    # "mountService":Lcom/android/server/MountService;
    .restart local v132    # "mountService":Lcom/android/server/MountService;
    :cond_59a
    :goto_59a
    :try_start_59a
    const-string v5, "SystemServer"

    const-string v6, "DirEncryptSerrvice"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    if-eqz v79, :cond_5ad

    .line 1090
    const-string v5, "SystemServer"

    const-string v6, "DirEncryptService.SystemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    invoke-virtual/range {v79 .. v79}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_5ad
    .catch Ljava/lang/Throwable; {:try_start_59a .. :try_end_5ad} :catch_fa4

    .line 1110
    :cond_5ad
    :goto_5ad
    if-nez v91, :cond_5e7

    .line 1112
    :try_start_5af
    const-string v5, "SystemServer"

    const-string v6, "LockSettingsService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    new-instance v117, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v117

    invoke-direct {v0, v4}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_5bd
    .catch Ljava/lang/Throwable; {:try_start_5af .. :try_end_5bd} :catch_fb1

    .line 1114
    .end local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v117, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_5bd
    const-string v5, "lock_settings"

    move-object/from16 v0, v117

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5c4
    .catch Ljava/lang/Throwable; {:try_start_5bd .. :try_end_5c4} :catch_1357

    move-object/from16 v116, v117

    .line 1119
    .end local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_5c6
    const-string/jumbo v5, "ro.frp.pst"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5de

    .line 1120
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1125
    :cond_5de
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1130
    :cond_5e7
    :try_start_5e7
    const-string v5, "SystemServer"

    const-string v6, "HarmonyEAS service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    new-instance v119, Lcom/android/server/HarmonyEASService;

    move-object/from16 v0, v119

    invoke-direct {v0, v4}, Lcom/android/server/HarmonyEASService;-><init>(Landroid/content/Context;)V
    :try_end_5f5
    .catch Ljava/lang/Throwable; {:try_start_5e7 .. :try_end_5f5} :catch_fbe

    .line 1132
    .end local v118    # "mHMS":Lcom/android/server/HarmonyEASService;
    .local v119, "mHMS":Lcom/android/server/HarmonyEASService;
    :try_start_5f5
    const-string v5, "harmony_eas_service"

    move-object/from16 v0, v119

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1133
    const-string v5, "SystemServer"

    const-string v6, "Harmony EAS service created..."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_603
    .catch Ljava/lang/Throwable; {:try_start_5f5 .. :try_end_603} :catch_1352

    move-object/from16 v118, v119

    .line 1141
    .end local v119    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v118    # "mHMS":Lcom/android/server/HarmonyEASService;
    :goto_605
    :try_start_605
    const-string v5, "SystemServer"

    const-string v6, "SdpManagerService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    new-instance v148, Lcom/android/server/SdpManagerService;

    move-object/from16 v0, v148

    invoke-direct {v0, v4}, Lcom/android/server/SdpManagerService;-><init>(Landroid/content/Context;)V
    :try_end_613
    .catch Ljava/lang/Throwable; {:try_start_605 .. :try_end_613} :catch_fca

    .line 1143
    .end local v147    # "sdpService":Lcom/android/server/SdpManagerService;
    .local v148, "sdpService":Lcom/android/server/SdpManagerService;
    :try_start_613
    const-string/jumbo v5, "sdp"

    move-object/from16 v0, v148

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_61b
    .catch Ljava/lang/Throwable; {:try_start_613 .. :try_end_61b} :catch_134d

    move-object/from16 v147, v148

    .line 1150
    .end local v148    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v147    # "sdpService":Lcom/android/server/SdpManagerService;
    :goto_61d
    if-nez v91, :cond_642

    .line 1152
    :try_start_61f
    const-string v5, "SystemServer"

    const-string v6, "Enterprise Policy"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    new-instance v100, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const/4 v6, 0x0

    move-object/from16 v0, v100

    invoke-direct {v0, v4, v5, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/admin/IDevicePolicyManager;)V
    :try_end_632
    .catch Ljava/lang/Throwable; {:try_start_61f .. :try_end_632} :catch_fd7

    .line 1154
    .end local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v100, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_632
    const-string v5, "enterprise_policy"

    move-object/from16 v0, v100

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1155
    const-string v5, "SystemServer"

    const-string v6, "Enterprise Policymanager service created..."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_640
    .catch Ljava/lang/Throwable; {:try_start_632 .. :try_end_640} :catch_1348

    move-object/from16 v99, v100

    .line 1162
    .end local v100    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :cond_642
    :goto_642
    if-nez v93, :cond_65e

    .line 1164
    :try_start_644
    const-string v5, "SystemServer"

    const-string v6, "Status Bar"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    new-instance v154, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v154

    move-object/from16 v1, v179

    invoke-direct {v0, v4, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_654
    .catch Ljava/lang/Throwable; {:try_start_644 .. :try_end_654} :catch_fe3

    .line 1166
    .end local v153    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v154, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_654
    const-string/jumbo v5, "statusbar"

    move-object/from16 v0, v154

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_65c
    .catch Ljava/lang/Throwable; {:try_start_654 .. :try_end_65c} :catch_1343

    move-object/from16 v153, v154

    .line 1172
    .end local v154    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v153    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_65e
    :goto_65e
    if-nez v91, :cond_671

    .line 1174
    :try_start_660
    const-string v5, "SystemServer"

    const-string v6, "Clipboard Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    const-string v5, "clipboard"

    new-instance v6, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v6, v4}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_671
    .catch Ljava/lang/Throwable; {:try_start_660 .. :try_end_671} :catch_ff0

    .line 1183
    :cond_671
    :goto_671
    if-nez v91, :cond_684

    .line 1185
    :try_start_673
    const-string v5, "SystemServer"

    const-string v6, "ClipboardEx Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    const-string v5, "clipboardEx"

    new-instance v6, Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {v6, v4}, Lcom/android/server/clipboardex/ClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_684
    .catch Ljava/lang/Throwable; {:try_start_673 .. :try_end_684} :catch_ffd

    .line 1194
    :cond_684
    :goto_684
    if-nez v90, :cond_696

    .line 1196
    :try_start_686
    const-string v5, "SystemServer"

    const-string v6, "NetworkManagement Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v8

    .line 1198
    const-string v5, "network_management"

    invoke-static {v5, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_696
    .catch Ljava/lang/Throwable; {:try_start_686 .. :try_end_696} :catch_100a

    .line 1206
    :cond_696
    :goto_696
    const-string v5, "SystemServer"

    const-string v6, "SEC_PRODUCT_FEATURE_KNOX_SUPPORT_ABSOLUTE_ANTITHEFT=FALSE - true"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :try_start_69d
    const-string v5, "SystemServer"

    const-string v6, "Absolute Persistence Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    const-string v5, "ABTPersistenceService"

    new-instance v6, Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {v6, v4}, Lcom/absolute/android/persistservice/ABTPersistenceService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6ae
    .catch Ljava/lang/Throwable; {:try_start_69d .. :try_end_6ae} :catch_1017

    .line 1217
    :goto_6ae
    if-nez v91, :cond_6c8

    .line 1219
    :try_start_6b0
    const-string v5, "SystemServer"

    const-string v6, "Text Service Manager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    new-instance v165, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v165

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6be
    .catch Ljava/lang/Throwable; {:try_start_6b0 .. :try_end_6be} :catch_1023

    .line 1221
    .end local v164    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v165, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_6be
    const-string/jumbo v5, "textservices"

    move-object/from16 v0, v165

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6c6
    .catch Ljava/lang/Throwable; {:try_start_6be .. :try_end_6c6} :catch_133e

    move-object/from16 v164, v165

    .line 1227
    .end local v165    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v164    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_6c8
    :goto_6c8
    if-nez v90, :cond_13ba

    .line 1229
    :try_start_6ca
    const-string v5, "SystemServer"

    const-string v6, "Network Score Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    new-instance v136, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v136

    invoke-direct {v0, v4}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_6d8
    .catch Ljava/lang/Throwable; {:try_start_6ca .. :try_end_6d8} :catch_1030

    .line 1231
    .end local v135    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v136, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_6d8
    const-string v5, "network_score"

    move-object/from16 v0, v136

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6df
    .catch Ljava/lang/Throwable; {:try_start_6d8 .. :try_end_6df} :catch_1339

    move-object/from16 v135, v136

    .line 1237
    .end local v136    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v135    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_6e1
    :try_start_6e1
    const-string v5, "SystemServer"

    const-string v6, "NetworkStats Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    new-instance v137, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v137

    move-object/from16 v1, v42

    invoke-direct {v0, v4, v8, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_6f1
    .catch Ljava/lang/Throwable; {:try_start_6e1 .. :try_end_6f1} :catch_103d

    .line 1239
    .end local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v137, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_6f1
    const-string v5, "netstats"

    move-object/from16 v0, v137

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6f8
    .catch Ljava/lang/Throwable; {:try_start_6f1 .. :try_end_6f8} :catch_1334

    move-object/from16 v7, v137

    .line 1245
    .end local v137    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_6fa
    :try_start_6fa
    const-string v5, "SystemServer"

    const-string v6, "NetworkPolicy Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v6, "power"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    check-cast v6, Landroid/os/IPowerManager;

    invoke-direct/range {v3 .. v8}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_713
    .catch Ljava/lang/Throwable; {:try_start_6fa .. :try_end_713} :catch_104a

    .line 1250
    .end local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v3, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_713
    const-string v5, "netpolicy"

    invoke-static {v5, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_718
    .catch Ljava/lang/Throwable; {:try_start_713 .. :try_end_718} :catch_1331

    .line 1255
    :goto_718
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1256
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.WifiService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1257
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.samsung.android.server.wifi.MsapWifiService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1258
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1261
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.RttService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1264
    move-object/from16 v0, p0

    iget-object v5, v0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.ethernet"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1059

    .line 1271
    :goto_751
    :try_start_751
    const-string v5, "SystemServer"

    const-string v6, "Connectivity Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    new-instance v65, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v65

    invoke-direct {v0, v4, v8, v7, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_75f
    .catch Ljava/lang/Throwable; {:try_start_751 .. :try_end_75f} :catch_1064

    .line 1274
    .end local v64    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v65, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_75f
    const-string v5, "connectivity"

    move-object/from16 v0, v65

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1275
    move-object/from16 v0, v65

    invoke-virtual {v7, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1276
    move-object/from16 v0, v65

    invoke-virtual {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_770
    .catch Ljava/lang/Throwable; {:try_start_75f .. :try_end_770} :catch_132c

    move-object/from16 v64, v65

    .line 1283
    .end local v65    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v64    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_772
    :try_start_772
    const-string v5, "SystemServer"

    const-string v6, "SmartBonding Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v55

    .line 1285
    .restart local v55    # "cl":Ljava/lang/ClassLoader;
    const-string v5, "com.samsung.android.smartbonding.SmartBondingService"

    const/4 v6, 0x1

    move-object/from16 v0, v55

    invoke-static {v5, v6, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v57

    .line 1286
    .local v57, "class_SmartBondingService":Ljava/lang/Class;
    const-string v5, "SMARTBONDING_SERVICE"

    move-object/from16 v0, v57

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v102

    .line 1288
    .local v102, "field_SMARTBONDING_SERVICE":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v57

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v68

    .line 1290
    .local v68, "constructor_SmartBondingService":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x0

    move-object/from16 v0, v102

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v6, v9

    move-object/from16 v0, v68

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1291
    const-string v5, "SystemServer"

    const-string v6, "SmartBonding loaded"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7bd
    .catch Ljava/lang/Throwable; {:try_start_772 .. :try_end_7bd} :catch_1071

    .line 1366
    .end local v55    # "cl":Ljava/lang/ClassLoader;
    .end local v57    # "class_SmartBondingService":Ljava/lang/Class;
    .end local v68    # "constructor_SmartBondingService":Ljava/lang/reflect/Constructor;
    .end local v102    # "field_SMARTBONDING_SERVICE":Ljava/lang/reflect/Field;
    :goto_7bd
    :try_start_7bd
    const-string v5, "SystemServer"

    const-string v6, "Network Service Discovery Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    invoke-static {v4}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v151

    .line 1368
    const-string/jumbo v5, "servicediscovery"

    move-object/from16 v0, v151

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7d0
    .catch Ljava/lang/Throwable; {:try_start_7bd .. :try_end_7d0} :catch_107e

    .line 1374
    :goto_7d0
    :try_start_7d0
    const-string v5, "SystemServer"

    const-string v6, "DPM Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    invoke-static {v4}, startDpmService(Landroid/content/Context;)V
    :try_end_7da
    .catch Ljava/lang/Throwable; {:try_start_7d0 .. :try_end_7da} :catch_108b

    .line 1381
    :goto_7da
    if-nez v91, :cond_7ee

    .line 1383
    :try_start_7dc
    const-string v5, "SystemServer"

    const-string v6, "UpdateLock Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    const-string/jumbo v5, "updatelock"

    new-instance v6, Lcom/android/server/UpdateLockService;

    invoke-direct {v6, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7ee
    .catch Ljava/lang/Throwable; {:try_start_7dc .. :try_end_7ee} :catch_1098

    .line 1396
    :cond_7ee
    :goto_7ee
    if-eqz v132, :cond_80b

    move-object/from16 v0, p0

    iget-boolean v5, v0, mOnlyCore:Z

    if-nez v5, :cond_80b

    .line 1398
    const-string/jumbo v5, "vold.decrypt"

    const-string v6, "null"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "trigger_restart_min_framework"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_80b

    .line 1399
    invoke-virtual/range {v132 .. v132}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 1403
    :cond_80b
    if-eqz v40, :cond_810

    .line 1404
    :try_start_80d
    invoke-virtual/range {v40 .. v40}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_810
    .catch Ljava/lang/Throwable; {:try_start_80d .. :try_end_810} :catch_10a5

    .line 1410
    :cond_810
    :goto_810
    if-eqz v72, :cond_815

    .line 1411
    :try_start_812
    invoke-virtual/range {v72 .. v72}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_815
    .catch Ljava/lang/Throwable; {:try_start_812 .. :try_end_815} :catch_10b1

    .line 1416
    :cond_815
    :goto_815
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1417
    const-string v5, "notification"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v140

    .line 1419
    move-object/from16 v0, v140

    invoke-virtual {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 1422
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1424
    if-nez v88, :cond_866

    .line 1426
    :try_start_838
    const-string v5, "SystemServer"

    const-string v6, "Location Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    new-instance v115, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v115

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_846
    .catch Ljava/lang/Throwable; {:try_start_838 .. :try_end_846} :catch_10bd

    .line 1428
    .end local v114    # "location":Lcom/android/server/LocationManagerService;
    .local v115, "location":Lcom/android/server/LocationManagerService;
    :try_start_846
    const-string v5, "location"

    move-object/from16 v0, v115

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_84d
    .catch Ljava/lang/Throwable; {:try_start_846 .. :try_end_84d} :catch_1327

    move-object/from16 v114, v115

    .line 1434
    .end local v115    # "location":Lcom/android/server/LocationManagerService;
    .restart local v114    # "location":Lcom/android/server/LocationManagerService;
    :goto_84f
    :try_start_84f
    const-string v5, "SystemServer"

    const-string v6, "Country Detector"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    new-instance v74, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v74

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_85d
    .catch Ljava/lang/Throwable; {:try_start_84f .. :try_end_85d} :catch_10ca

    .line 1436
    .end local v73    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v74, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_85d
    const-string v5, "country_detector"

    move-object/from16 v0, v74

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_864
    .catch Ljava/lang/Throwable; {:try_start_85d .. :try_end_864} :catch_1322

    move-object/from16 v73, v74

    .line 1472
    .end local v74    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v73    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_866
    :goto_866
    :try_start_866
    const-string v5, "SystemServer"

    const-string v6, "SLocation Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    const-string v5, "com.samsung.location.SLocationLoader"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v146

    .line 1474
    .local v146, "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getSLocationService"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v9

    move-object/from16 v0, v146

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v104

    .line 1475
    .local v104, "getSLocationService":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v6, v9

    move-object/from16 v0, v104

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object/from16 v145, v0

    .line 1476
    const-string/jumbo v5, "sec_location"

    move-object/from16 v0, v145

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_89d
    .catch Ljava/lang/Throwable; {:try_start_866 .. :try_end_89d} :catch_10d7

    .line 1481
    .end local v104    # "getSLocationService":Ljava/lang/reflect/Method;
    .end local v146    # "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_89d
    if-nez v91, :cond_8b1

    .line 1483
    :try_start_89f
    const-string v5, "SystemServer"

    const-string v6, "Search Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    const-string/jumbo v5, "search"

    new-instance v6, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v6, v4}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8b1
    .catch Ljava/lang/Throwable; {:try_start_89f .. :try_end_8b1} :catch_10f6

    .line 1492
    :cond_8b1
    :goto_8b1
    :try_start_8b1
    const-string v5, "SystemServer"

    const-string v6, "DropBox Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    const-string v5, "dropbox"

    new-instance v6, Lcom/android/server/DropBoxManagerService;

    new-instance v9, Ljava/io/File;

    const-string v10, "/data/system/dropbox"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v4, v9}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8c9
    .catch Ljava/lang/Throwable; {:try_start_8b1 .. :try_end_8c9} :catch_1103

    .line 1499
    :goto_8c9
    if-nez v91, :cond_8f0

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x112003a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_8f0

    .line 1502
    :try_start_8d8
    const-string v5, "SystemServer"

    const-string v6, "Wallpaper Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    new-instance v173, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v173

    invoke-direct {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_8e6
    .catch Ljava/lang/Throwable; {:try_start_8d8 .. :try_end_8e6} :catch_1110

    .line 1504
    .end local v172    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v173, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_8e6
    const-string/jumbo v5, "wallpaper"

    move-object/from16 v0, v173

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8ee
    .catch Ljava/lang/Throwable; {:try_start_8e6 .. :try_end_8ee} :catch_131d

    move-object/from16 v172, v173

    .line 1510
    .end local v173    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v172    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_8f0
    :goto_8f0
    if-nez v89, :cond_918

    const-string v5, "0"

    const-string/jumbo v6, "system_init.startaudioservice"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_918

    .line 1512
    :try_start_901
    const-string v5, "SystemServer"

    const-string v6, "Audio Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    new-instance v48, Landroid/media/AudioService;

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_90f
    .catch Ljava/lang/Throwable; {:try_start_901 .. :try_end_90f} :catch_111d

    .line 1514
    .end local v47    # "audioService":Landroid/media/AudioService;
    .local v48, "audioService":Landroid/media/AudioService;
    :try_start_90f
    const-string v5, "audio"

    move-object/from16 v0, v48

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_916
    .catch Ljava/lang/Throwable; {:try_start_90f .. :try_end_916} :catch_1318

    move-object/from16 v47, v48

    .line 1520
    .end local v48    # "audioService":Landroid/media/AudioService;
    .restart local v47    # "audioService":Landroid/media/AudioService;
    :cond_918
    :goto_918
    if-nez v91, :cond_923

    .line 1521
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/DockObserver;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1524
    :cond_923
    if-nez v89, :cond_938

    .line 1526
    :try_start_925
    const-string v5, "SystemServer"

    const-string v6, "Wired Accessory Manager"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    new-instance v5, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v107

    invoke-direct {v5, v4, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v107

    invoke-virtual {v0, v5}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_938
    .catch Ljava/lang/Throwable; {:try_start_925 .. :try_end_938} :catch_112a

    .line 1535
    :cond_938
    :goto_938
    if-nez v91, :cond_973

    .line 1536
    move-object/from16 v0, p0

    iget-object v5, v0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.usb.host"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_952

    move-object/from16 v0, p0

    iget-object v5, v0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.usb.accessory"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_95b

    .line 1540
    :cond_952
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1544
    :cond_95b
    :try_start_95b
    const-string v5, "SystemServer"

    const-string v6, "Serial Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    new-instance v150, Lcom/android/server/SerialService;

    move-object/from16 v0, v150

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_969
    .catch Ljava/lang/Throwable; {:try_start_95b .. :try_end_969} :catch_1137

    .line 1547
    .end local v149    # "serial":Lcom/android/server/SerialService;
    .local v150, "serial":Lcom/android/server/SerialService;
    :try_start_969
    const-string/jumbo v5, "serial"

    move-object/from16 v0, v150

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_971
    .catch Ljava/lang/Throwable; {:try_start_969 .. :try_end_971} :catch_1313

    move-object/from16 v149, v150

    .line 1555
    .end local v150    # "serial":Lcom/android/server/SerialService;
    .restart local v149    # "serial":Lcom/android/server/SerialService;
    :cond_973
    :goto_973
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_EnableSUA"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_990

    .line 1558
    :try_start_97f
    const-string v5, "SystemServer"

    const-string v6, "KiesUsb Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    const-string v5, "kiesusb"

    new-instance v6, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {v6, v4}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_990
    .catch Ljava/lang/Throwable; {:try_start_97f .. :try_end_990} :catch_1143

    .line 1566
    :cond_990
    :goto_990
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1568
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1570
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1572
    if-nez v91, :cond_9ec

    .line 1573
    move-object/from16 v0, p0

    iget-object v5, v0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.backup"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9c2

    .line 1574
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1577
    :cond_9c2
    move-object/from16 v0, p0

    iget-object v5, v0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.app_widgets"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9d7

    .line 1578
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1581
    :cond_9d7
    move-object/from16 v0, p0

    iget-object v5, v0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.voice_recognizers"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9ec

    .line 1582
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1586
    :cond_9ec
    const-string/jumbo v5, "ro.SecEDS.enable"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1587
    .local v38, "SecEDSEnable":Ljava/lang/String;
    const-string v5, "SystemServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SecEDS Service ro.tvout.enable = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    const-string v5, "false"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a2f

    .line 1591
    :try_start_a17
    const-string v5, "SystemServer"

    const-string v6, "Starting SecEDSEnable Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    const/16 v96, 0x0

    .line 1593
    .local v96, "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "com.android.server.SecExternalDisplayService"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v96

    .line 1594
    if-nez v96, :cond_114f

    .line 1595
    const-string v5, "SystemServer"

    const-string v6, "eds Service not exist"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2f
    .catch Ljava/lang/Throwable; {:try_start_a17 .. :try_end_a2f} :catch_117d

    .line 1611
    .end local v96    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a2f
    :goto_a2f
    :try_start_a2f
    const-string v5, "SystemServer"

    const-string v6, "DiskStats Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    const-string v5, "diskstats"

    new-instance v6, Lcom/android/server/DiskStatsService;

    invoke-direct {v6, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a40
    .catch Ljava/lang/Throwable; {:try_start_a2f .. :try_end_a40} :catch_1189

    .line 1629
    :goto_a40
    :try_start_a40
    const-string v5, "SystemServer"

    const-string v6, "mDNIe Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    const/16 v124, 0x0

    .line 1631
    .local v124, "mdnieClass":Ljava/lang/Class;
    const-string v5, "com.samsung.android.mdnie.MdnieManagerService"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v124

    .line 1632
    if-nez v124, :cond_1196

    .line 1633
    const-string v5, "SystemServer"

    const-string v6, "Mdnie Service does not exist"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a58
    .catch Ljava/lang/Throwable; {:try_start_a40 .. :try_end_a58} :catch_11bb

    .line 1646
    .end local v124    # "mdnieClass":Ljava/lang/Class;
    :goto_a58
    :try_start_a58
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v141

    .line 1647
    .restart local v141    # "pM":Landroid/content/pm/PackageManager;
    if-eqz v141, :cond_11c7

    .line 1649
    const/16 v110, 0x1

    .line 1663
    .local v110, "isAddService":Z
    if-eqz v110, :cond_a76

    .line 1664
    const-string v5, "SystemServer"

    const-string v6, "Starting SpenGestureManagerService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    const-string/jumbo v5, "spengestureservice"

    new-instance v6, Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v0, v179

    invoke-direct {v6, v4, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a76
    .catch Ljava/lang/Throwable; {:try_start_a58 .. :try_end_a76} :catch_11d0

    .line 1689
    .end local v110    # "isAddService":Z
    .end local v141    # "pM":Landroid/content/pm/PackageManager;
    :cond_a76
    :goto_a76
    :try_start_a76
    const-string v5, "SystemServer"

    const-string v6, "QuickConnect Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    new-instance v144, Lcom/android/server/QuickConnectService;

    move-object/from16 v0, v144

    invoke-direct {v0, v4}, Lcom/android/server/QuickConnectService;-><init>(Landroid/content/Context;)V
    :try_end_a84
    .catch Ljava/lang/Throwable; {:try_start_a76 .. :try_end_a84} :catch_11dd

    .line 1691
    .end local v143    # "quickconnect":Lcom/android/server/QuickConnectService;
    .local v144, "quickconnect":Lcom/android/server/QuickConnectService;
    :try_start_a84
    const-string/jumbo v5, "quickconnect"

    move-object/from16 v0, v144

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a8c
    .catch Ljava/lang/Throwable; {:try_start_a84 .. :try_end_a8c} :catch_130e

    move-object/from16 v143, v144

    .line 1701
    .end local v144    # "quickconnect":Lcom/android/server/QuickConnectService;
    .restart local v143    # "quickconnect":Lcom/android/server/QuickConnectService;
    :goto_a8e
    :try_start_a8e
    const-string v5, "SystemServer"

    const-string v6, "SamplingProfiler Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    const-string/jumbo v5, "samplingprofiler"

    new-instance v6, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v6, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_aa0
    .catch Ljava/lang/Throwable; {:try_start_a8e .. :try_end_aa0} :catch_11ea

    .line 1708
    :goto_aa0
    if-nez v90, :cond_ab2

    .line 1710
    :try_start_aa2
    const-string v5, "SystemServer"

    const-string v6, "NetworkTimeUpdateService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    new-instance v139, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v139

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_ab0
    .catch Ljava/lang/Throwable; {:try_start_aa2 .. :try_end_ab0} :catch_11f7

    .end local v138    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v139, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v138, v139

    .line 1725
    .end local v139    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v138    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_ab2
    :goto_ab2
    if-nez v89, :cond_acb

    .line 1727
    :try_start_ab4
    const-string v5, "SystemServer"

    const-string v6, "CommonTimeManagementService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    new-instance v62, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v62

    invoke-direct {v0, v4}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_ac2
    .catch Ljava/lang/Throwable; {:try_start_ab4 .. :try_end_ac2} :catch_1204

    .line 1729
    .end local v61    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v62, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_ac2
    const-string v5, "commontime_management"

    move-object/from16 v0, v62

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ac9
    .catch Ljava/lang/Throwable; {:try_start_ac2 .. :try_end_ac9} :catch_1309

    move-object/from16 v61, v62

    .line 1735
    .end local v62    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v61    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_acb
    :goto_acb
    if-nez v90, :cond_ad9

    .line 1737
    :try_start_acd
    const-string v5, "SystemServer"

    const-string v6, "CertBlacklister"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    new-instance v5, Lcom/android/server/CertBlacklister;

    invoke-direct {v5, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_ad9
    .catch Ljava/lang/Throwable; {:try_start_acd .. :try_end_ad9} :catch_1211

    .line 1744
    :cond_ad9
    :goto_ad9
    if-nez v91, :cond_ae4

    .line 1746
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1749
    :cond_ae4
    if-nez v91, :cond_aff

    if-nez v86, :cond_aff

    .line 1751
    :try_start_ae8
    const-string v5, "SystemServer"

    const-string v6, "Assets Atlas Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    new-instance v46, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v46

    invoke-direct {v0, v4}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_af6
    .catch Ljava/lang/Throwable; {:try_start_ae8 .. :try_end_af6} :catch_121e

    .line 1753
    .end local v45    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v46, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_af6
    const-string v5, "assetatlas"

    move-object/from16 v0, v46

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_afd
    .catch Ljava/lang/Throwable; {:try_start_af6 .. :try_end_afd} :catch_1304

    move-object/from16 v45, v46

    .line 1759
    .end local v46    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v45    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_aff
    :goto_aff
    move-object/from16 v0, p0

    iget-object v5, v0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.print"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b14

    .line 1760
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.print.PrintManagerService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1763
    :cond_b14
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1765
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1767
    move-object/from16 v0, p0

    iget-object v5, v0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.hdmi.cec"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b3b

    .line 1768
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1771
    :cond_b3b
    move-object/from16 v0, p0

    iget-object v5, v0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.live_tv"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b50

    .line 1772
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1775
    :cond_b50
    if-nez v91, :cond_b85

    .line 1777
    :try_start_b52
    const-string v5, "SystemServer"

    const-string v6, "Media Router Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    new-instance v127, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v127

    invoke-direct {v0, v4}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_b60
    .catch Ljava/lang/Throwable; {:try_start_b52 .. :try_end_b60} :catch_122b

    .line 1779
    .end local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v127, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_b60
    const-string v5, "media_router"

    move-object/from16 v0, v127

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b67
    .catch Ljava/lang/Throwable; {:try_start_b60 .. :try_end_b67} :catch_12ff

    move-object/from16 v126, v127

    .line 1784
    .end local v127    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_b69
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1786
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1789
    :try_start_b7b
    const-string v5, "SystemServer"

    const-string v6, "BackgroundDexOptService"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    invoke-static {v4}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_b85
    .catch Ljava/lang/Throwable; {:try_start_b7b .. :try_end_b85} :catch_1238

    .line 1797
    :cond_b85
    :goto_b85
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1826
    const-string/jumbo v5, "ro.bluetooth.wipower"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v112

    .line 1828
    .local v112, "isWipowerEnabled":Z
    if-eqz v112, :cond_1252

    .line 1830
    :try_start_b98
    const-string/jumbo v39, "wbc_service"

    .line 1831
    .local v39, "WBC_SERVICE_NAME":Ljava/lang/String;
    const-string v5, "SystemServer"

    const-string v6, "WipowerBatteryControl Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    new-instance v176, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/com.quicinc.wbc.jar:/system/framework/com.quicinc.wbcservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object/from16 v0, v176

    invoke-direct {v0, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1836
    .local v176, "wbcClassLoader":Ldalvik/system/PathClassLoader;
    const-string v5, "com.quicinc.wbcservice.WbcService"

    move-object/from16 v0, v176

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v175

    .line 1837
    .local v175, "wbcClass":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v175

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v78

    .line 1838
    .local v78, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v0, v78

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v177

    .line 1839
    .local v177, "wbcObject":Ljava/lang/Object;
    const-string v5, "SystemServer"

    const-string v6, "Successfully loaded WbcService class"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    const-string/jumbo v5, "wbc_service"

    check-cast v177, Landroid/os/IBinder;

    .end local v177    # "wbcObject":Ljava/lang/Object;
    move-object/from16 v0, v177

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_be2
    .catch Ljava/lang/Throwable; {:try_start_b98 .. :try_end_be2} :catch_1245

    .line 1848
    .end local v39    # "WBC_SERVICE_NAME":Ljava/lang/String;
    .end local v78    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v175    # "wbcClass":Ljava/lang/Class;
    .end local v176    # "wbcClassLoader":Ldalvik/system/PathClassLoader;
    :goto_be2
    if-eqz v82, :cond_c2a

    .line 1850
    :try_start_be4
    const-string v5, "SystemServer"

    const-string v6, "Digital Pen Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    new-instance v84, Ldalvik/system/PathClassLoader;

    const-string v5, "/system/framework/DigitalPenService.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object/from16 v0, v84

    invoke-direct {v0, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1854
    .local v84, "digitalPenClassLoader":Ldalvik/system/PathClassLoader;
    const-string v5, "com.qti.snapdragon.digitalpen.DigitalPenService"

    move-object/from16 v0, v84

    invoke-virtual {v0, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v83

    .line 1856
    .local v83, "digitalPenClass":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v83

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v78

    .line 1857
    .restart local v78    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v0, v78

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v85

    .line 1858
    .local v85, "digitalPenRemoteObject":Ljava/lang/Object;
    const-string v5, "SystemServer"

    const-string v6, "Successfully loaded DigitalPenService class"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    const-string v5, "DigitalPen"

    check-cast v85, Landroid/os/IBinder;

    .end local v85    # "digitalPenRemoteObject":Ljava/lang/Object;
    move-object/from16 v0, v85

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c2a
    .catch Ljava/lang/Throwable; {:try_start_be4 .. :try_end_c2a} :catch_125b

    .line 1868
    .end local v78    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v83    # "digitalPenClass":Ljava/lang/Class;
    .end local v84    # "digitalPenClassLoader":Ldalvik/system/PathClassLoader;
    :cond_c2a
    :goto_c2a
    :try_start_c2a
    const-string v5, "SystemServer"

    const-string v6, "MiniModeAppManager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    sget-object v5, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v109

    .line 1871
    .local v109, "instructionSet":Ljava/lang/String;
    new-instance v55, Ldalvik/system/DexClassLoader;

    const-string v5, "/system/framework/minimode.jar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/dalvik-cache/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v109

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    move-object/from16 v0, v55

    invoke-direct {v0, v5, v6, v9, v10}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1873
    .restart local v55    # "cl":Ljava/lang/ClassLoader;
    const-string v5, "com.sec.minimode.manager.MiniModeAppManagerService"

    move-object/from16 v0, v55

    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v36

    .line 1874
    .local v36, "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v37

    .line 1875
    .local v37, "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    const-string v6, "mini_mode_app_manager"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v5, v9

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c8c
    .catch Ljava/lang/Throwable; {:try_start_c2a .. :try_end_c8c} :catch_1268

    .line 1884
    .end local v36    # "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    .end local v37    # "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    .end local v55    # "cl":Ljava/lang/ClassLoader;
    .end local v109    # "instructionSet":Ljava/lang/String;
    :goto_c8c
    :try_start_c8c
    const-string v5, "SystemServer"

    const-string v6, "VoIPInterfaceManager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    const-string/jumbo v5, "voip"

    new-instance v6, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v6, v4}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c9e
    .catch Ljava/lang/Throwable; {:try_start_c8c .. :try_end_c9e} :catch_1274

    .line 1892
    .end local v38    # "SecEDSEnable":Ljava/lang/String;
    .end local v112    # "isWipowerEnabled":Z
    :goto_c9e
    if-nez v91, :cond_ca9

    .line 1893
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1897
    :cond_ca9
    invoke-static {}, Lcom/samsung/appdisabler/AppDisablerService;->configurationFileExists()Z

    move-result v5

    if-eqz v5, :cond_cbd

    .line 1899
    :try_start_caf
    new-instance v43, Lcom/samsung/appdisabler/AppDisablerService;

    move-object/from16 v0, v43

    invoke-direct {v0, v4}, Lcom/samsung/appdisabler/AppDisablerService;-><init>(Landroid/content/Context;)V

    .line 1900
    .local v43, "appDisablerService":Lcom/samsung/appdisabler/AppDisablerService;
    const-string v5, "SamsungAppDisabler"

    move-object/from16 v0, v43

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_cbd
    .catch Ljava/lang/Throwable; {:try_start_caf .. :try_end_cbd} :catch_127e

    .line 1908
    .end local v43    # "appDisablerService":Lcom/samsung/appdisabler/AppDisablerService;
    :cond_cbd
    :goto_cbd
    invoke-virtual/range {v179 .. v179}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v35

    .line 1909
    .local v35, "safeMode":Z
    if-eqz v35, :cond_128a

    .line 1910
    move-object/from16 v0, p0

    iget-object v5, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1912
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1919
    :goto_cd1
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v129

    .end local v129    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v129, Lcom/android/server/MmsServiceBroker;

    .line 1939
    .restart local v129    # "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_cdd
    invoke-virtual/range {v168 .. v168}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_ce0
    .catch Ljava/lang/Throwable; {:try_start_cdd .. :try_end_ce0} :catch_1293

    .line 1944
    :goto_ce0
    if-eqz v116, :cond_ce5

    .line 1946
    :try_start_ce2
    invoke-virtual/range {v116 .. v116}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_ce5
    .catch Ljava/lang/Throwable; {:try_start_ce2 .. :try_end_ce5} :catch_129f

    .line 1953
    :cond_ce5
    :goto_ce5
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x1e0

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1955
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x1f4

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1958
    if-eqz v99, :cond_d03

    .line 1959
    invoke-virtual/range {v99 .. v99}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 1960
    const-string v5, "SystemServer"

    const-string v6, "enterprisePolicy systemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    :cond_d03
    :try_start_d03
    invoke-virtual/range {v179 .. v179}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_d06
    .catch Ljava/lang/Throwable; {:try_start_d03 .. :try_end_d06} :catch_12ab

    .line 1970
    :goto_d06
    if-eqz v35, :cond_d0f

    .line 1971
    move-object/from16 v0, p0

    iget-object v5, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1977
    :cond_d0f
    invoke-virtual/range {v179 .. v179}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v63

    .line 1978
    .local v63, "config":Landroid/content/res/Configuration;
    new-instance v128, Landroid/util/DisplayMetrics;

    invoke-direct/range {v128 .. v128}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1979
    .local v128, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v171

    check-cast v171, Landroid/view/WindowManager;

    .line 1980
    .local v171, "w":Landroid/view/WindowManager;
    invoke-interface/range {v171 .. v171}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    move-object/from16 v0, v128

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1981
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, v63

    move-object/from16 v1, v128

    invoke-virtual {v5, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1985
    :try_start_d35
    move-object/from16 v0, p0

    iget-object v5, v0, mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_d44
    .catch Ljava/lang/Throwable; {:try_start_d35 .. :try_end_d44} :catch_12b7

    .line 1992
    :goto_d44
    :try_start_d44
    const-string v5, "SystemServer"

    const-string v6, "LightsService systemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    move-object/from16 v0, p0

    iget-object v5, v0, mLightsService:Lcom/android/server/lights/LightsService;

    invoke-virtual {v5}, Lcom/android/server/lights/LightsService;->systemReady()V
    :try_end_d52
    .catch Ljava/lang/Throwable; {:try_start_d44 .. :try_end_d52} :catch_12c3

    .line 1999
    :goto_d52
    :try_start_d52
    move-object/from16 v0, p0

    iget-object v5, v0, mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_d59
    .catch Ljava/lang/Throwable; {:try_start_d52 .. :try_end_d59} :catch_12cf

    .line 2006
    :goto_d59
    :try_start_d59
    move-object/from16 v0, p0

    iget-object v5, v0, mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v6, v0, mOnlyCore:Z

    move/from16 v0, v35

    invoke-virtual {v5, v0, v6}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_d66
    .catch Ljava/lang/Throwable; {:try_start_d59 .. :try_end_d66} :catch_12db

    .line 2012
    :goto_d66
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v167

    .line 2013
    .restart local v167    # "versionInfo":Landroid/os/Bundle;
    const-string v5, "2.0"

    const-string/jumbo v6, "version"

    move-object/from16 v0, v167

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d7e

    .line 2015
    :try_start_d7b
    invoke-virtual/range {v120 .. v120}, Lcom/android/server/pm/PersonaManagerService;->systemReady()V
    :try_end_d7e
    .catch Ljava/lang/Throwable; {:try_start_d7b .. :try_end_d7e} :catch_12e7

    .line 2022
    :cond_d7e
    :goto_d7e
    :try_start_d7e
    invoke-virtual/range {v147 .. v147}, Lcom/android/server/SdpManagerService;->systemReady()V
    :try_end_d81
    .catch Ljava/lang/Throwable; {:try_start_d7e .. :try_end_d81} :catch_12f3

    .line 2028
    :goto_d81
    move-object/from16 v12, v132

    .line 2029
    .local v12, "mountServiceF":Lcom/android/server/MountService;
    move-object v14, v8

    .line 2030
    .local v14, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v15, v7

    .line 2031
    .local v15, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v16, v3

    .line 2032
    .local v16, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v17, v64

    .line 2033
    .local v17, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v13, v135

    .line 2034
    .local v13, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v19, v172

    .line 2035
    .local v19, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v20, v105

    .line 2036
    .local v20, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v22, v114

    .line 2037
    .local v22, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v23, v145

    .line 2038
    .local v23, "sLocationF":Landroid/os/IBinder;
    move-object/from16 v24, v73

    .line 2039
    .local v24, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v25, v138

    .line 2040
    .local v25, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v26, v61

    .line 2041
    .local v26, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v27, v164

    .line 2042
    .local v27, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v21, v153

    .line 2044
    .local v21, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v28, v170

    .line 2046
    .local v28, "vrManagerF":Ljava/lang/Object;
    move-object/from16 v29, v45

    .line 2047
    .local v29, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v30, v107

    .line 2048
    .local v30, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v31, v155

    .line 2049
    .local v31, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v32, v126

    .line 2050
    .local v32, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v18, v47

    .line 2051
    .local v18, "audioServiceF":Landroid/media/AudioService;
    move-object/from16 v130, v129

    .line 2053
    .local v130, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v33, v75

    .line 2057
    .local v33, "coverServiceF":Lcom/android/server/cover/CoverManagerService;
    move-object/from16 v34, v60

    .line 2065
    .local v34, "cocktailBarF":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v5, v0, mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v9, Lcom/android/server/SystemServer$2;

    move-object/from16 v10, p0

    move-object v11, v4

    invoke-direct/range {v9 .. v35}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Landroid/media/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/VRManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/cover/CoverManagerService;Lcom/android/server/cocktailbar/CocktailBarManagerService;Z)V

    invoke-virtual {v5, v9}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 2243
    return-void

    .line 638
    .end local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12    # "mountServiceF":Lcom/android/server/MountService;
    .end local v13    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v14    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v15    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v16    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v17    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v18    # "audioServiceF":Landroid/media/AudioService;
    .end local v19    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v20    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v21    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v22    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v23    # "sLocationF":Landroid/os/IBinder;
    .end local v24    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v25    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v26    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v27    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v28    # "vrManagerF":Ljava/lang/Object;
    .end local v29    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v30    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v31    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v32    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v33    # "coverServiceF":Lcom/android/server/cover/CoverManagerService;
    .end local v34    # "cocktailBarF":Ljava/lang/Object;
    .end local v35    # "safeMode":Z
    .end local v45    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v60    # "cocktailBar":Lcom/android/server/cocktailbar/CocktailBarManagerService;
    .end local v63    # "config":Landroid/content/res/Configuration;
    .end local v73    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v75    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .end local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v105    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v114    # "location":Lcom/android/server/LocationManagerService;
    .end local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v128    # "metrics":Landroid/util/DisplayMetrics;
    .end local v130    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v140    # "notification":Landroid/app/INotificationManager;
    .end local v145    # "sLocation":Landroid/os/IBinder;
    .end local v153    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v164    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v167    # "versionInfo":Landroid/os/Bundle;
    .end local v170    # "vrManager":Lcom/android/server/VRManagerService;
    .end local v171    # "w":Landroid/view/WindowManager;
    .end local v172    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_dbf
    move-exception v95

    .line 639
    .local v95, "e":Ljava/lang/Throwable;
    :try_start_dc0
    const-string v5, "SystemServer"

    const-string v6, "Failure starting SE Android Manager Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_dc9
    .catch Ljava/lang/RuntimeException; {:try_start_dc0 .. :try_end_dc9} :catch_dcb

    goto/16 :goto_ef

    .line 935
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_dcb
    move-exception v95

    move-object/from16 v155, v156

    .line 936
    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v95, "e":Ljava/lang/RuntimeException;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_dce
    const-string v5, "System"

    const-string v6, "******************************************"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    const-string v5, "System"

    const-string v6, "************ Failure starting core service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_460

    .line 652
    .end local v95    # "e":Ljava/lang/RuntimeException;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v167    # "versionInfo":Landroid/os/Bundle;
    :catch_de0
    move-exception v95

    .line 653
    .local v95, "e":Ljava/lang/Throwable;
    :try_start_de1
    const-string v5, "SystemServer"

    const-string v6, "Failure starting Persona Manager Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_117

    .line 666
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_dec
    move-exception v95

    .line 667
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_ded
    const-string v5, "SystemServer"

    const-string v6, "Failure starting Account Manager"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_136

    .line 677
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v121    # "mProductName":Ljava/lang/String;
    :catch_df8
    move-exception v95

    .line 678
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting KT UCA Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e02
    .catch Ljava/lang/RuntimeException; {:try_start_de1 .. :try_end_e02} :catch_dcb

    goto/16 :goto_15e

    .line 684
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_e04
    const/4 v5, 0x0

    goto/16 :goto_16d

    .line 694
    .end local v79    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v80    # "dEncService":Lcom/android/server/DirEncryptService;
    :catch_e07
    move-exception v95

    .line 695
    .restart local v95    # "e":Ljava/lang/Throwable;
    :try_start_e08
    const-string v5, "SystemServer"

    const-string v6, "Failure starting DirEncryptService"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e11
    .catch Ljava/lang/RuntimeException; {:try_start_e08 .. :try_end_e11} :catch_1378

    .line 696
    const/16 v79, 0x0

    .end local v80    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v79    # "dEncService":Lcom/android/server/DirEncryptService;
    goto/16 :goto_185

    .line 704
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_e15
    move-exception v95

    .line 706
    .restart local v95    # "e":Ljava/lang/Throwable;
    :try_start_e16
    const-string v5, "SystemServer"

    const-string v6, "Failed to add Reactive Service."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_196

    .line 715
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_e1f
    move-exception v95

    .line 716
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Registration of denial service failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e27
    .catch Ljava/lang/RuntimeException; {:try_start_e16 .. :try_end_e27} :catch_dcb

    goto/16 :goto_1b6

    .line 741
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v157    # "timaEnabled":Z
    .restart local v169    # "vibrator":Lcom/android/server/VibratorService;
    :catch_e29
    move-exception v95

    .line 742
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_e2a
    :try_start_e2a
    const-string/jumbo v5, "starting TimaService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_213

    .line 935
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v157    # "timaEnabled":Z
    :catch_e36
    move-exception v95

    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v168, v169

    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_dce

    .line 752
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "timaEnabled":Z
    .restart local v169    # "vibrator":Lcom/android/server/VibratorService;
    :catch_e3c
    move-exception v95

    .line 753
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting TimaObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_228

    .line 765
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_e49
    move-exception v95

    .line 766
    .local v95, "e":Ljava/lang/Exception;
    const-string v5, "SystemServer"

    const-string v6, "Unable to add TimaKesytore provider"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_24f

    .line 780
    .end local v95    # "e":Ljava/lang/Exception;
    .restart local v97    # "enabledCEP":Z
    .restart local v98    # "enabledMDM":Z
    :catch_e56
    move-exception v95

    .line 781
    .local v95, "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting CEP Proxy Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26e

    .line 784
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_e62
    const-string v5, "SystemServer"

    const-string v6, "MDM is enabled, but CEP is not enabled"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26e

    .line 796
    .end local v97    # "enabledCEP":Z
    :catch_e6b
    move-exception v95

    .line 797
    .local v95, "e":Ljava/lang/Exception;
    const-string v5, "SystemServer"

    const-string/jumbo v6, "ssrm.jar not found"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2b9

    .line 816
    .end local v95    # "e":Ljava/lang/Exception;
    :catch_e79
    move-exception v95

    .line 817
    .restart local v95    # "e":Ljava/lang/Exception;
    const-string v5, "Fail to start SmartFaceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e83
    .catch Ljava/lang/RuntimeException; {:try_start_e2a .. :try_end_e83} :catch_e36

    goto/16 :goto_306

    .line 855
    .end local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v95    # "e":Ljava/lang/Exception;
    .end local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v174    # "watchdog":Lcom/android/server/Watchdog;
    :catch_e85
    move-exception v95

    .line 856
    .local v95, "e":Ljava/lang/Throwable;
    :try_start_e86
    const-string v5, "SystemServer"

    const-string v6, "Failure starting BarBeam Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3bf

    .line 935
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_e91
    move-exception v95

    move-object/from16 v70, v71

    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v107, v108

    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v168, v169

    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_dce

    .line 871
    .end local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v169    # "vibrator":Lcom/android/server/VibratorService;
    :cond_e9c
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_3df

    :cond_ea0
    const/4 v5, 0x0

    goto/16 :goto_3e6

    .line 903
    :cond_ea3
    move-object/from16 v0, p0

    iget v5, v0, mFactoryTestMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_eb3

    .line 904
    const-string v5, "SystemServer"

    const-string v6, "No Bluetooth Service (factory test)"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_438

    .line 905
    :cond_eb3
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.bluetooth"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_ec8

    .line 907
    const-string v5, "SystemServer"

    const-string v6, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_438

    .line 908
    :cond_ec8
    if-eqz v87, :cond_ed3

    .line 909
    const-string v5, "SystemServer"

    const-string v6, "Bluetooth Service disabled by config"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_438

    .line 911
    :cond_ed3
    const-string v5, "SystemServer"

    const-string v6, "Bluetooth Manager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    new-instance v51, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v51

    invoke-direct {v0, v4}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_ee1
    .catch Ljava/lang/RuntimeException; {:try_start_e86 .. :try_end_ee1} :catch_e91

    .line 913
    .end local v50    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v51, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_ee1
    const-string v5, "bluetooth_manager"

    move-object/from16 v0, v51

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 916
    const-string v5, "SystemServer"

    const-string v6, "Bluetooth Secure Mode Manager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const-string v5, "bluetooth_secure_mode_manager"

    new-instance v6, Landroid/app/BluetoothSecureManagerService;

    invoke-direct {v6, v4}, Landroid/app/BluetoothSecureManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ef9
    .catch Ljava/lang/RuntimeException; {:try_start_ee1 .. :try_end_ef9} :catch_1391

    move-object/from16 v50, v51

    .end local v51    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v50    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_438

    .line 927
    :catch_efd
    move-exception v95

    .line 928
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_efe
    :try_start_efe
    const-string v5, "SystemServer"

    const-string v6, "Failure starting RCP Manager Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f07
    .catch Ljava/lang/RuntimeException; {:try_start_efe .. :try_end_f07} :catch_e91

    goto/16 :goto_450

    .line 971
    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v98    # "enabledMDM":Z
    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v121    # "mProductName":Ljava/lang/String;
    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v157    # "timaEnabled":Z
    .end local v167    # "versionInfo":Landroid/os/Bundle;
    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .end local v174    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v45    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v60    # "cocktailBar":Lcom/android/server/cocktailbar/CocktailBarManagerService;
    .restart local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v73    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v105    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v114    # "location":Lcom/android/server/LocationManagerService;
    .restart local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v140    # "notification":Landroid/app/INotificationManager;
    .restart local v145    # "sLocation":Landroid/os/IBinder;
    .restart local v153    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v164    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v170    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v172    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_f09
    move-exception v95

    .line 972
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_f0a
    const-string/jumbo v5, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49c

    .line 979
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_f16
    move-exception v95

    .line 980
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4ad

    .line 987
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_f23
    move-exception v95

    .line 988
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b0

    .line 993
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_f2f
    move-exception v95

    .line 994
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b7

    .line 1018
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_f3c
    move-exception v95

    .line 1019
    .local v95, "e":Ljava/lang/Exception;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting MotionRecognitionService"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_51e

    .line 1031
    .end local v95    # "e":Ljava/lang/Exception;
    .restart local v75    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v77    # "cryptState":Ljava/lang/String;
    :cond_f48
    if-nez v91, :cond_54b

    .line 1032
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v142

    .line 1033
    .local v142, "packageMgr":Landroid/content/pm/PackageManager;
    const-string v5, "com.sec.feature.cover.flip"

    move-object/from16 v0, v142

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f62

    const-string v5, "com.sec.feature.cover.sview"

    move-object/from16 v0, v142

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54b

    .line 1036
    :cond_f62
    :try_start_f62
    const-string v5, "SystemServer"

    const-string v6, "CoverManager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    new-instance v76, Lcom/android/server/cover/CoverManagerService;

    move-object/from16 v0, v76

    move-object/from16 v1, v179

    move-object/from16 v2, v107

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/cover/CoverManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    :try_end_f74
    .catch Ljava/lang/Throwable; {:try_start_f62 .. :try_end_f74} :catch_f7f

    .line 1038
    .end local v75    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .local v76, "coverService":Lcom/android/server/cover/CoverManagerService;
    :try_start_f74
    const-string v5, "cover"

    move-object/from16 v0, v76

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f7b
    .catch Ljava/lang/Throwable; {:try_start_f74 .. :try_end_f7b} :catch_1361

    move-object/from16 v75, v76

    .line 1041
    .end local v76    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v75    # "coverService":Lcom/android/server/cover/CoverManagerService;
    goto/16 :goto_54b

    .line 1039
    :catch_f7f
    move-exception v95

    .line 1040
    .local v95, "e":Ljava/lang/Throwable;
    :goto_f80
    const-string v5, "SystemServer"

    const-string v6, "Failure starting CoverManager Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_54b

    .line 1065
    .end local v77    # "cryptState":Ljava/lang/String;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v142    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_f8b
    move-exception v95

    .line 1066
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "Failure starting FM Radio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_56b

    .line 1081
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_f97
    move-exception v95

    .line 1082
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_f98
    const-string/jumbo v5, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_59a

    .line 1093
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_fa4
    move-exception v95

    .line 1094
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5ad

    .line 1115
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_fb1
    move-exception v95

    .line 1116
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_fb2
    const-string/jumbo v5, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5c6

    .line 1134
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_fbe
    move-exception v95

    .line 1135
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_fbf
    const-string v5, "SystemServer"

    const-string v6, "Failure starting Harmony EAS service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_605

    .line 1144
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_fca
    move-exception v95

    .line 1145
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_fcb
    const-string/jumbo v5, "unable to start SdpManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_61d

    .line 1156
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_fd7
    move-exception v95

    .line 1157
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_fd8
    const-string v5, "SystemServer"

    const-string v6, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_642

    .line 1167
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_fe3
    move-exception v95

    .line 1168
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_fe4
    const-string/jumbo v5, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_65e

    .line 1177
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_ff0
    move-exception v95

    .line 1178
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_671

    .line 1188
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_ffd
    move-exception v95

    .line 1189
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_684

    .line 1199
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_100a
    move-exception v95

    .line 1200
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_696

    .line 1212
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1017
    move-exception v95

    .line 1213
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting Absolute Persistence Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6ae

    .line 1222
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1023
    move-exception v95

    .line 1223
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_1024
    const-string/jumbo v5, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6c8

    .line 1232
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1030
    move-exception v95

    .line 1233
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_1031
    const-string/jumbo v5, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6e1

    .line 1240
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_103d
    move-exception v95

    .line 1241
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_103e
    const-string/jumbo v5, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6fa

    .line 1251
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_104a
    move-exception v95

    move-object/from16 v3, v134

    .line 1252
    .end local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_104d
    const-string/jumbo v5, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_718

    .line 1266
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_1059
    move-object/from16 v0, p0

    iget-object v5, v0, mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    goto/16 :goto_751

    .line 1277
    :catch_1064
    move-exception v95

    .line 1278
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_1065
    const-string/jumbo v5, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_772

    .line 1292
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1071
    move-exception v95

    .line 1293
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting SmartBondingService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7bd

    .line 1370
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_107e
    move-exception v95

    .line 1371
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7d0

    .line 1376
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_108b
    move-exception v95

    .line 1377
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting DpmService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7da

    .line 1386
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1098
    move-exception v95

    .line 1387
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7ee

    .line 1405
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_10a5
    move-exception v95

    .line 1406
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_810

    .line 1412
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_10b1
    move-exception v95

    .line 1413
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_815

    .line 1429
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_10bd
    move-exception v95

    .line 1430
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_10be
    const-string/jumbo v5, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_84f

    .line 1437
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_10ca
    move-exception v95

    .line 1438
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_10cb
    const-string/jumbo v5, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_866

    .line 1477
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_10d7
    move-exception v95

    .line 1478
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loading SLocation has been failed, error or not support"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v95 .. v95}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_89d

    .line 1486
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_10f6
    move-exception v95

    .line 1487
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8b1

    .line 1495
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1103
    move-exception v95

    .line 1496
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8c9

    .line 1505
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1110
    move-exception v95

    .line 1506
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_1111
    const-string/jumbo v5, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8f0

    .line 1515
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_111d
    move-exception v95

    .line 1516
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_111e
    const-string/jumbo v5, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_918

    .line 1530
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_112a
    move-exception v95

    .line 1531
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_938

    .line 1548
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1137
    move-exception v95

    .line 1549
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_1138
    const-string v5, "SystemServer"

    const-string v6, "Failure starting SerialService"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_973

    .line 1560
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1143
    move-exception v95

    .line 1561
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "Failue staring KiesUsbObserver Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_990

    .line 1599
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v38    # "SecEDSEnable":Ljava/lang/String;
    .restart local v96    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_114f
    :try_start_114f
    const-string v5, "SystemServer"

    const-string v6, "edsclass Service exist"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/Class;

    move-object/from16 v44, v0

    .line 1601
    .local v44, "arg":[Ljava/lang/Class;
    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v44, v5

    .line 1602
    move-object/from16 v0, v96

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v66

    .line 1603
    .local v66, "constructor":Ljava/lang/reflect/Constructor;
    const-string v6, "SecExternalDisplayService"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v5, v9

    move-object/from16 v0, v66

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_117b
    .catch Ljava/lang/Throwable; {:try_start_114f .. :try_end_117b} :catch_117d

    goto/16 :goto_a2f

    .line 1605
    .end local v44    # "arg":[Ljava/lang/Class;
    .end local v66    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v96    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_117d
    move-exception v95

    .line 1606
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting eds Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a2f

    .line 1613
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1189
    move-exception v95

    .line 1614
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a40

    .line 1635
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v124    # "mdnieClass":Ljava/lang/Class;
    :cond_1196
    const/4 v5, 0x1

    :try_start_1197
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v5, v6

    move-object/from16 v0, v124

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v66

    .line 1636
    .restart local v66    # "constructor":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v0, v66

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v125

    check-cast v125, Landroid/os/IBinder;

    .line 1637
    .local v125, "mdnieService":Landroid/os/IBinder;
    const-string v5, "mDNIe"

    move-object/from16 v0, v125

    invoke-static {v5, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11b9
    .catch Ljava/lang/Throwable; {:try_start_1197 .. :try_end_11b9} :catch_11bb

    goto/16 :goto_a58

    .line 1639
    .end local v66    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v124    # "mdnieClass":Ljava/lang/Class;
    .end local v125    # "mdnieService":Landroid/os/IBinder;
    :catch_11bb
    move-exception v95

    .line 1640
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "Failed To Start Mdnie Service "

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a58

    .line 1668
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v141    # "pM":Landroid/content/pm/PackageManager;
    :cond_11c7
    :try_start_11c7
    const-string v5, "SystemServer"

    const-string v6, "Failed to start SpenGestureManagerService : PackageManager is null!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11ce
    .catch Ljava/lang/Throwable; {:try_start_11c7 .. :try_end_11ce} :catch_11d0

    goto/16 :goto_a76

    .line 1670
    .end local v141    # "pM":Landroid/content/pm/PackageManager;
    :catch_11d0
    move-exception v95

    .line 1671
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting SpenGestureManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a76

    .line 1692
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_11dd
    move-exception v95

    .line 1693
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_11de
    const-string/jumbo v5, "starting QuickConnect Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a8e

    .line 1704
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_11ea
    move-exception v95

    .line 1705
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_aa0

    .line 1712
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_11f7
    move-exception v95

    .line 1713
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ab2

    .line 1730
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1204
    move-exception v95

    .line 1731
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_1205
    const-string/jumbo v5, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_acb

    .line 1739
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1211
    move-exception v95

    .line 1740
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ad9

    .line 1754
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_121e
    move-exception v95

    .line 1755
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_121f
    const-string/jumbo v5, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_aff

    .line 1780
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_122b
    move-exception v95

    .line 1781
    .restart local v95    # "e":Ljava/lang/Throwable;
    :goto_122c
    const-string/jumbo v5, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b69

    .line 1791
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1238
    move-exception v95

    .line 1792
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b85

    .line 1841
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v112    # "isWipowerEnabled":Z
    :catch_1245
    move-exception v95

    .line 1842
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting WipowerBatteryControl Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_be2

    .line 1845
    .end local v95    # "e":Ljava/lang/Throwable;
    :cond_1252
    const-string v5, "SystemServer"

    const-string v6, "Wipower not supported"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_be2

    .line 1860
    :catch_125b
    move-exception v95

    .line 1861
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting DigitalPenService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c2a

    .line 1877
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1268
    move-exception v95

    .line 1878
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting MiniModeAppManager Service"

    move-object/from16 v0, v95

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c8c

    .line 1886
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_1274
    move-exception v95

    .line 1887
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c9e

    .line 1901
    .end local v38    # "SecEDSEnable":Ljava/lang/String;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v112    # "isWipowerEnabled":Z
    :catch_127e
    move-exception v95

    .line 1902
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "Failure starting SamsungAppDisablerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_cbd

    .line 1915
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v35    # "safeMode":Z
    :cond_128a
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_cd1

    .line 1940
    :catch_1293
    move-exception v95

    .line 1941
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ce0

    .line 1947
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_129f
    move-exception v95

    .line 1948
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ce5

    .line 1966
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_12ab
    move-exception v95

    .line 1967
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d06

    .line 1986
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v63    # "config":Landroid/content/res/Configuration;
    .restart local v128    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v171    # "w":Landroid/view/WindowManager;
    :catch_12b7
    move-exception v95

    .line 1987
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d44

    .line 1994
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_12c3
    move-exception v95

    .line 1995
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Lights Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d52

    .line 2000
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_12cf
    move-exception v95

    .line 2001
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d59

    .line 2007
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_12db
    move-exception v95

    .line 2008
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d66

    .line 2016
    .end local v95    # "e":Ljava/lang/Throwable;
    .restart local v167    # "versionInfo":Landroid/os/Bundle;
    :catch_12e7
    move-exception v95

    .line 2017
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Persona Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d7e

    .line 2023
    .end local v95    # "e":Ljava/lang/Throwable;
    :catch_12f3
    move-exception v95

    .line 2024
    .restart local v95    # "e":Ljava/lang/Throwable;
    const-string v5, "making Sdp manager service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v95

    invoke-direct {v0, v5, v1}, reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d81

    .line 1780
    .end local v35    # "safeMode":Z
    .end local v63    # "config":Landroid/content/res/Configuration;
    .end local v95    # "e":Ljava/lang/Throwable;
    .end local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v128    # "metrics":Landroid/util/DisplayMetrics;
    .end local v167    # "versionInfo":Landroid/os/Bundle;
    .end local v171    # "w":Landroid/view/WindowManager;
    .restart local v38    # "SecEDSEnable":Ljava/lang/String;
    .restart local v127    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_12ff
    move-exception v95

    move-object/from16 v126, v127

    .end local v127    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_122c

    .line 1754
    .end local v45    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v46    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_1304
    move-exception v95

    move-object/from16 v45, v46

    .end local v46    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v45    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_121f

    .line 1730
    .end local v61    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v62    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_1309
    move-exception v95

    move-object/from16 v61, v62

    .end local v62    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v61    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_1205

    .line 1692
    .end local v143    # "quickconnect":Lcom/android/server/QuickConnectService;
    .restart local v144    # "quickconnect":Lcom/android/server/QuickConnectService;
    :catch_130e
    move-exception v95

    move-object/from16 v143, v144

    .end local v144    # "quickconnect":Lcom/android/server/QuickConnectService;
    .restart local v143    # "quickconnect":Lcom/android/server/QuickConnectService;
    goto/16 :goto_11de

    .line 1548
    .end local v38    # "SecEDSEnable":Ljava/lang/String;
    .end local v149    # "serial":Lcom/android/server/SerialService;
    .restart local v150    # "serial":Lcom/android/server/SerialService;
    :catch_1313
    move-exception v95

    move-object/from16 v149, v150

    .end local v150    # "serial":Lcom/android/server/SerialService;
    .restart local v149    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_1138

    .line 1515
    .end local v47    # "audioService":Landroid/media/AudioService;
    .restart local v48    # "audioService":Landroid/media/AudioService;
    :catch_1318
    move-exception v95

    move-object/from16 v47, v48

    .end local v48    # "audioService":Landroid/media/AudioService;
    .restart local v47    # "audioService":Landroid/media/AudioService;
    goto/16 :goto_111e

    .line 1505
    .end local v172    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v173    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_131d
    move-exception v95

    move-object/from16 v172, v173

    .end local v173    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v172    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_1111

    .line 1437
    .end local v73    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v74    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_1322
    move-exception v95

    move-object/from16 v73, v74

    .end local v74    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v73    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_10cb

    .line 1429
    .end local v114    # "location":Lcom/android/server/LocationManagerService;
    .restart local v115    # "location":Lcom/android/server/LocationManagerService;
    :catch_1327
    move-exception v95

    move-object/from16 v114, v115

    .end local v115    # "location":Lcom/android/server/LocationManagerService;
    .restart local v114    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_10be

    .line 1277
    .end local v64    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v65    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_132c
    move-exception v95

    move-object/from16 v64, v65

    .end local v65    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v64    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_1065

    .line 1251
    :catch_1331
    move-exception v95

    goto/16 :goto_104d

    .line 1240
    .end local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v137    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_1334
    move-exception v95

    move-object/from16 v7, v137

    .end local v137    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v7    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_103e

    .line 1232
    .end local v135    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v136    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_1339
    move-exception v95

    move-object/from16 v135, v136

    .end local v136    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v135    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_1031

    .line 1222
    .end local v164    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v165    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_133e
    move-exception v95

    move-object/from16 v164, v165

    .end local v165    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v164    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_1024

    .line 1167
    .end local v153    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v154    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_1343
    move-exception v95

    move-object/from16 v153, v154

    .end local v154    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v153    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_fe4

    .line 1156
    .end local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v100    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :catch_1348
    move-exception v95

    move-object/from16 v99, v100

    .end local v100    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    goto/16 :goto_fd8

    .line 1144
    .end local v147    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v148    # "sdpService":Lcom/android/server/SdpManagerService;
    :catch_134d
    move-exception v95

    move-object/from16 v147, v148

    .end local v148    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v147    # "sdpService":Lcom/android/server/SdpManagerService;
    goto/16 :goto_fcb

    .line 1134
    .end local v118    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v119    # "mHMS":Lcom/android/server/HarmonyEASService;
    :catch_1352
    move-exception v95

    move-object/from16 v118, v119

    .end local v119    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v118    # "mHMS":Lcom/android/server/HarmonyEASService;
    goto/16 :goto_fbf

    .line 1115
    .end local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_1357
    move-exception v95

    move-object/from16 v116, v117

    .end local v117    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_fb2

    .line 1081
    .end local v132    # "mountService":Lcom/android/server/MountService;
    .restart local v133    # "mountService":Lcom/android/server/MountService;
    :catch_135c
    move-exception v95

    move-object/from16 v132, v133

    .end local v133    # "mountService":Lcom/android/server/MountService;
    .restart local v132    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_f98

    .line 1039
    .end local v75    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v76    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v77    # "cryptState":Ljava/lang/String;
    .restart local v142    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_1361
    move-exception v95

    move-object/from16 v75, v76

    .end local v76    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v75    # "coverService":Lcom/android/server/cover/CoverManagerService;
    goto/16 :goto_f80

    .line 1002
    .end local v75    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .end local v77    # "cryptState":Ljava/lang/String;
    .end local v142    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_1366
    move-exception v5

    goto/16 :goto_4ca

    .line 971
    .end local v105    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_1369
    move-exception v95

    move-object/from16 v105, v106

    .end local v106    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v105    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_f0a

    .line 935
    .end local v45    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v60    # "cocktailBar":Lcom/android/server/cocktailbar/CocktailBarManagerService;
    .end local v73    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v105    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v114    # "location":Lcom/android/server/LocationManagerService;
    .end local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v140    # "notification":Landroid/app/INotificationManager;
    .end local v145    # "sLocation":Landroid/os/IBinder;
    .end local v153    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v164    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v170    # "vrManager":Lcom/android/server/VRManagerService;
    .end local v172    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_136e
    move-exception v95

    goto/16 :goto_dce

    .end local v40    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v41    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v167    # "versionInfo":Landroid/os/Bundle;
    :catch_1371
    move-exception v95

    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v40, v41

    .end local v41    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v40    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_dce

    .end local v79    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v80    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v121    # "mProductName":Ljava/lang/String;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_1378
    move-exception v95

    move-object/from16 v79, v80

    .end local v80    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v79    # "dEncService":Lcom/android/server/DirEncryptService;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_dce

    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v160    # "timaService":Lcom/android/server/TimaService;
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v157    # "timaEnabled":Z
    .restart local v161    # "timaService":Lcom/android/server/TimaService;
    .restart local v169    # "vibrator":Lcom/android/server/VibratorService;
    :catch_137f
    move-exception v95

    move-object/from16 v160, v161

    .end local v161    # "timaService":Lcom/android/server/TimaService;
    .restart local v160    # "timaService":Lcom/android/server/TimaService;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v168, v169

    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_dce

    .end local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v98    # "enabledMDM":Z
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v169    # "vibrator":Lcom/android/server/VibratorService;
    :catch_1388
    move-exception v95

    move-object/from16 v70, v71

    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v168, v169

    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_dce

    .end local v50    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v51    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v169    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v174    # "watchdog":Lcom/android/server/Watchdog;
    :catch_1391
    move-exception v95

    move-object/from16 v70, v71

    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v107, v108

    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v50, v51

    .end local v51    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v50    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v168, v169

    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_dce

    .end local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v122    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v123    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v169    # "vibrator":Lcom/android/server/VibratorService;
    :catch_139e
    move-exception v95

    move-object/from16 v122, v123

    .end local v123    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v122    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    move-object/from16 v70, v71

    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v155, v156

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v107, v108

    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v168, v169

    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_dce

    .line 927
    .end local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v122    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .end local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v168    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v123    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v169    # "vibrator":Lcom/android/server/VibratorService;
    :catch_13ab
    move-exception v95

    move-object/from16 v122, v123

    .end local v123    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    .restart local v122    # "mRCPManagerService":Lcom/android/server/RCPManagerService;
    goto/16 :goto_efe

    .line 741
    .end local v71    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v98    # "enabledMDM":Z
    .end local v108    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v160    # "timaService":Lcom/android/server/TimaService;
    .end local v174    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v70    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v107    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v161    # "timaService":Lcom/android/server/TimaService;
    :catch_13b0
    move-exception v95

    move-object/from16 v160, v161

    .end local v161    # "timaService":Lcom/android/server/TimaService;
    .restart local v160    # "timaService":Lcom/android/server/TimaService;
    goto/16 :goto_e2a

    .line 666
    .end local v40    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v121    # "mProductName":Ljava/lang/String;
    .end local v157    # "timaEnabled":Z
    .end local v169    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v41    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v168    # "vibrator":Lcom/android/server/VibratorService;
    :catch_13b5
    move-exception v95

    move-object/from16 v40, v41

    .end local v41    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v40    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_ded

    .end local v156    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v167    # "versionInfo":Landroid/os/Bundle;
    .restart local v45    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v60    # "cocktailBar":Lcom/android/server/cocktailbar/CocktailBarManagerService;
    .restart local v73    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v75    # "coverService":Lcom/android/server/cover/CoverManagerService;
    .restart local v99    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v105    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v114    # "location":Lcom/android/server/LocationManagerService;
    .restart local v116    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v126    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v140    # "notification":Landroid/app/INotificationManager;
    .restart local v145    # "sLocation":Landroid/os/IBinder;
    .restart local v153    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v155    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v164    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v170    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v172    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_13ba
    move-object/from16 v3, v134

    .end local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_7da

    .end local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_13be
    move-object/from16 v3, v134

    .end local v134    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v3    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_c9e
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2246
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2247
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2250
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2251
    return-void
.end method
