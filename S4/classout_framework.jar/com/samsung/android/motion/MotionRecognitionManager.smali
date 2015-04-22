.class public Lcom/samsung/android/motion/MotionRecognitionManager;
.super Ljava/lang/Object;
.source "MotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    }
.end annotation


# static fields
.field public static final ACTION_MOTION_RECOGNITION_EVENT:Ljava/lang/String; = "com.samsung.android.motion.MOTION_RECOGNITION_EVENT"

.field private static final DEBUG_LEVEL_HIGH:I = 0x4948

.field private static final DEBUG_LEVEL_LOW:I = 0x4f4c

.field private static final DEBUG_LEVEL_MID:I = 0x494d

.field public static final EVENT_ALL:I = 0x1fffff

.field public static final EVENT_CALL_POSE:I = 0x40000

.field public static final EVENT_DIRECT_CALLING:I = 0x400

.field public static final EVENT_DOUBLE_TAP:I = 0x8

.field public static final EVENT_FLAT:I = 0x2000

.field public static final EVENT_LCD_UP_STEADY:I = 0x10000

.field public static final EVENT_LOCK_EXECUTE_L:I = 0x80

.field public static final EVENT_LOCK_EXECUTE_R:I = 0x100

.field public static final EVENT_NUM:I = 0x15

.field public static final EVENT_OVER_TURN:I = 0x1

.field public static final EVENT_OVER_TURN_LOW_POWER:I = 0x20000

.field public static final EVENT_PANNING_GALLERY:I = 0x20

.field public static final EVENT_PANNING_HOME:I = 0x40

.field public static final EVENT_REACTIVE_ALERT:I = 0x4

.field public static final EVENT_SHAKE:I = 0x2

.field public static final EVENT_SMART_ALERT_SETTING:I = 0x8000

.field public static final EVENT_SMART_RELAY:I = 0x100000

.field public static final EVENT_SMART_SCROLL:I = 0x80000

.field public static final EVENT_TILT:I = 0x10

.field public static final EVENT_TILT_LEVEL_ZERO:I = 0x1000

.field public static final EVENT_TILT_LEVEL_ZERO_LAND:I = 0x4000

.field public static final EVENT_TILT_TO_UNLOCK:I = 0x800

.field public static final EVENT_VOLUME_DOWN:I = 0x200

.field public static final MOTION_SENSOR_NUM:I = 0x4

.field public static final MOTION_USE_ACC:I = 0x1

.field public static final MOTION_USE_ALL:I = 0xf

.field public static final MOTION_USE_ALWAYS:I = 0x40000000

.field public static final MOTION_USE_GYRO:I = 0x2

.field public static final MOTION_USE_LIGHT:I = 0x8

.field public static final MOTION_USE_PROX:I = 0x4

.field protected static final TAG:Ljava/lang/String; = "MotionRecognitionManager"

.field private static final localLOGV:Z = false

.field private static final mMotionVersion:I = 0x1


# instance fields
.field private mMainLooper:Landroid/os/Looper;

.field private mMovementCnt:I

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSSPEnabled:Z

.field private motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

.field private final mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

.field private final sListenerDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final sListenerwithSSP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 5
    .param p1, "mainLooper"    # Landroid/os/Looper;

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, sListenerDelegates:Ljava/util/ArrayList;

    .line 229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, sListenerwithSSP:Ljava/util/ArrayList;

    .line 658
    new-instance v1, Lcom/samsung/android/motion/MotionRecognitionManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/motion/MotionRecognitionManager$1;-><init>(Lcom/samsung/android/motion/MotionRecognitionManager;)V

    iput-object v1, p0, mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

    .line 242
    const-string/jumbo v1, "motion_recognition"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/motion/IMotionRecognitionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/motion/IMotionRecognitionService;

    move-result-object v1

    iput-object v1, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    .line 244
    iput-object p1, p0, mMainLooper:Landroid/os/Looper;

    .line 245
    new-instance v1, Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, mMainLooper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/hardware/scontext/SContextManager;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 246
    const/4 v1, 0x0

    iput v1, p0, mMovementCnt:I

    .line 248
    :try_start_33
    iget-object v1, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    if-eqz v1, :cond_3f

    .line 249
    iget-object v1, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-interface {v1}, Lcom/samsung/android/motion/IMotionRecognitionService;->getSSPstatus()Z

    move-result v1

    iput-boolean v1, p0, mSSPEnabled:Z
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3f} :catch_40

    .line 253
    :cond_3f
    :goto_3f
    return-void

    .line 250
    :catch_40
    move-exception v0

    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MotionRecognitionManager"

    const-string v2, "RemoteException in getSSPstatus: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f
.end method

.method private static EncodeLog(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 633
    const-string/jumbo v3, "ro.debug_level"

    const-string v4, "Unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 634
    .local v2, "state":Ljava/lang/String;
    const/4 v0, -0x1

    .line 636
    .local v0, "debugLevel":I
    const-string v3, "Unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 637
    const-string p0, " "

    .line 651
    .end local p0    # "path":Ljava/lang/String;
    :cond_14
    :goto_14
    return-object p0

    .line 641
    .restart local p0    # "path":Ljava/lang/String;
    :cond_15
    const/4 v3, 0x2

    :try_start_16
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_1f} :catch_27

    move-result v0

    .line 646
    const/16 v3, 0x4f4c

    if-ne v0, v3, :cond_2b

    .line 647
    const-string p0, " "

    goto :goto_14

    .line 642
    :catch_27
    move-exception v1

    .line 643
    .local v1, "ne":Ljava/lang/NumberFormatException;
    const-string p0, " "

    goto :goto_14

    .line 648
    .end local v1    # "ne":Ljava/lang/NumberFormatException;
    :cond_2b
    const/16 v3, 0x494d

    if-eq v0, v3, :cond_14

    const/16 v3, 0x4948

    if-eq v0, v3, :cond_14

    .line 651
    const-string p0, " "

    goto :goto_14
.end method

.method static synthetic access$000(Lcom/samsung/android/motion/MotionRecognitionManager;)Lcom/samsung/android/motion/IMotionRecognitionService;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/motion/MotionRecognitionManager;

    .prologue
    .line 94
    iget-object v0, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/motion/MotionRecognitionManager;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/motion/MotionRecognitionManager;

    .prologue
    .line 94
    iget-object v0, p0, sListenerDelegates:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/motion/MotionRecognitionManager;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/motion/MotionRecognitionManager;

    .prologue
    .line 94
    iget-object v0, p0, mMainLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public static getMotionVersion()I
    .registers 1

    .prologue
    .line 625
    const/4 v0, 0x1

    return v0
.end method

.method public static isValidMotionSensor(I)Z
    .registers 3
    .param p0, "motion_sensor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 610
    if-eq p0, v0, :cond_d

    const/4 v1, 0x2

    if-eq p0, v1, :cond_d

    const/4 v1, 0x4

    if-eq p0, v1, :cond_d

    const/16 v1, 0x8

    if-ne p0, v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public registerListener(Lcom/samsung/android/motion/MRListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 264
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, registerListener(Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V

    .line 265
    return-void
.end method

.method public registerListener(Lcom/samsung/android/motion/MRListener;I)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "motion_sensors"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, registerListener(Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V

    .line 287
    return-void
.end method

.method public registerListener(Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "motion_sensors"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "motion_events":I
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_9

    .line 299
    const v1, 0x3a002

    or-int/2addr v0, v1

    .line 301
    :cond_9
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_f

    .line 302
    or-int/lit16 v0, v0, 0x51f9

    .line 305
    :cond_f
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_15

    .line 306
    or-int/lit16 v0, v0, 0xc00

    .line 308
    :cond_15
    invoke-virtual {p0, p1, v0, p3}, registerListenerEvent(Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V

    .line 309
    return-void
.end method

.method public registerListener(Lcom/samsung/android/motion/MRListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, registerListener(Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V

    .line 276
    return-void
.end method

.method public registerListenerEvent(Lcom/samsung/android/motion/MRListener;I)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "motion_events"    # I

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, registerListenerEvent(Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V

    .line 322
    return-void
.end method

.method public registerListenerEvent(Lcom/samsung/android/motion/MRListener;IILandroid/os/Handler;)V
    .registers 19
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "motion_sensors"    # I
    .param p3, "motion_events"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 341
    if-eqz p1, :cond_9a

    .line 342
    iget-object v11, p0, sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v11

    .line 343
    const/4 v6, 0x0

    .line 344
    .local v6, "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    :try_start_6
    iget-object v10, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 345
    .local v8, "size":I
    const/4 v2, 0x0

    .line 346
    .local v2, "bregisterd":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v8, :cond_97

    .line 347
    iget-object v10, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 348
    .local v5, "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v5}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/motion/MRListener;

    move-result-object v10

    if-ne v10, p1, :cond_67

    .line 349
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "name :"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 350
    .local v9, "strlistener":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v10

    and-int v10, v10, p3

    if-eqz v10, :cond_6a

    .line 351
    const-string v10, "MotionRecognitionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  .registerListenerEvent : fail. already registered / listener count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v2, 0x1

    .line 346
    .end local v9    # "strlistener":Ljava/lang/String;
    :cond_67
    :goto_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 354
    .restart local v9    # "strlistener":Ljava/lang/String;
    :cond_6a
    move-object v6, v5

    .line 355
    const-string v10, "MotionRecognitionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  .registerListenerEvent : already registered but need to update motion events / listener count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 404
    .end local v2    # "bregisterd":Z
    .end local v4    # "i":I
    .end local v5    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v8    # "size":I
    .end local v9    # "strlistener":Ljava/lang/String;
    :catchall_94
    move-exception v10

    :goto_95
    monitor-exit v11
    :try_end_96
    .catchall {:try_start_6 .. :try_end_96} :catchall_94

    throw v10

    .line 359
    .restart local v2    # "bregisterd":Z
    .restart local v4    # "i":I
    .restart local v8    # "size":I
    :cond_97
    if-eqz v2, :cond_9b

    :try_start_99
    monitor-exit v11

    .line 406
    .end local v2    # "bregisterd":Z
    .end local v4    # "i":I
    .end local v6    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v8    # "size":I
    :cond_9a
    :goto_9a
    return-void

    .line 360
    .restart local v2    # "bregisterd":Z
    .restart local v4    # "i":I
    .restart local v6    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v8    # "size":I
    :cond_9b
    if-eqz v6, :cond_a7

    .line 361
    invoke-virtual {v6}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v10

    or-int p3, p3, v10

    .line 362
    const/4 v6, 0x0

    .line 363
    invoke-virtual {p0, p1}, unregisterListener(Lcom/samsung/android/motion/MRListener;)V
    :try_end_a7
    .catchall {:try_start_99 .. :try_end_a7} :catchall_94

    :cond_a7
    move-object v7, v6

    .line 366
    .end local v6    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .local v7, "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    if-nez v7, :cond_18d

    .line 367
    :try_start_aa
    new-instance v6, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v6, p0, p1, v0, v1}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;-><init>(Lcom/samsung/android/motion/MotionRecognitionManager;Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V
    :try_end_b3
    .catchall {:try_start_aa .. :try_end_b3} :catchall_189

    .line 370
    .end local v7    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v6    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    :goto_b3
    :try_start_b3
    iget-object v10, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b8
    .catchall {:try_start_b3 .. :try_end_b8} :catchall_94

    .line 372
    and-int/lit8 v10, p3, 0x4

    if-eqz v10, :cond_17e

    .line 373
    :try_start_bc
    iget-boolean v10, p0, mSSPEnabled:Z

    const/4 v12, 0x1

    if-ne v10, v12, :cond_148

    .line 374
    iget-object v10, p0, mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

    if-eqz v10, :cond_137

    iget v10, p0, mMovementCnt:I

    if-nez v10, :cond_137

    .line 375
    const-string v10, "MotionRecognitionManager"

    const-string v12, " [MOVEMENT_SERVICE] registerListener "

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v10, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v12, p0, mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

    const/4 v13, 0x5

    invoke-virtual {v10, v12, v13}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 380
    :goto_d8
    iget v10, p0, mMovementCnt:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, mMovementCnt:I
    :try_end_de
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_de} :catch_13f
    .catchall {:try_start_bc .. :try_end_de} :catchall_94

    .line 401
    :goto_de
    :try_start_de
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "name :"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 402
    .restart local v9    # "strlistener":Ljava/lang/String;
    const-string v10, "MotionRecognitionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  .registerListenerEvent : success. listener count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", motion_events="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    monitor-exit v11
    :try_end_135
    .catchall {:try_start_de .. :try_end_135} :catchall_94

    goto/16 :goto_9a

    .line 378
    .end local v9    # "strlistener":Ljava/lang/String;
    :cond_137
    :try_start_137
    const-string v10, "MotionRecognitionManager"

    const-string v12, " [MOVEMENT_SERVICE] registerListener : fail. already registered "

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13e
    .catch Landroid/os/RemoteException; {:try_start_137 .. :try_end_13e} :catch_13f
    .catchall {:try_start_137 .. :try_end_13e} :catchall_94

    goto :goto_d8

    .line 395
    :catch_13f
    move-exception v3

    .line 396
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_140
    const-string v10, "MotionRecognitionManager"

    const-string v12, "RemoteException in registerListenerEvent : "

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_147
    .catchall {:try_start_140 .. :try_end_147} :catchall_94

    goto :goto_de

    .line 384
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_148
    :try_start_148
    iget-object v10, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-interface {v10}, Lcom/samsung/android/motion/IMotionRecognitionService;->getSSPstatus()Z

    move-result v10

    iput-boolean v10, p0, mSSPEnabled:Z
    :try_end_150
    .catch Landroid/os/RemoteException; {:try_start_148 .. :try_end_150} :catch_175
    .catchall {:try_start_148 .. :try_end_150} :catchall_94

    .line 388
    :goto_150
    :try_start_150
    const-string v10, "MotionRecognitionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SSP disabled : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, mSSPEnabled:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v10, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v10, v6, v0, v1}, Lcom/samsung/android/motion/IMotionRecognitionService;->registerCallback(Landroid/os/IBinder;II)V

    goto/16 :goto_de

    .line 385
    :catch_175
    move-exception v3

    .line 386
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "MotionRecognitionManager"

    const-string v12, "RemoteException in getSSPstatus: "

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_150

    .line 393
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_17e
    iget-object v10, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v10, v6, v0, v1}, Lcom/samsung/android/motion/IMotionRecognitionService;->registerCallback(Landroid/os/IBinder;II)V
    :try_end_187
    .catch Landroid/os/RemoteException; {:try_start_150 .. :try_end_187} :catch_13f
    .catchall {:try_start_150 .. :try_end_187} :catchall_94

    goto/16 :goto_de

    .line 404
    .end local v6    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v7    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    :catchall_189
    move-exception v10

    move-object v6, v7

    .end local v7    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v6    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    goto/16 :goto_95

    .end local v6    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v7    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_18d
    move-object v6, v7

    .end local v7    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v6    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    goto/16 :goto_b3
.end method

.method public registerListenerEvent(Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "motion_events"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 420
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, registerListenerEvent(Lcom/samsung/android/motion/MRListener;IILandroid/os/Handler;)V

    .line 422
    return-void
.end method

.method public resetMotionEngine()I
    .registers 4

    .prologue
    .line 601
    :try_start_0
    iget-object v1, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-interface {v1}, Lcom/samsung/android/motion/IMotionRecognitionService;->resetMotionEngine()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 605
    :goto_6
    return v1

    .line 602
    :catch_7
    move-exception v0

    .line 603
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MotionRecognitionManager"

    const-string v2, "RemoteException in resetMotionEngine: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setMotionAngle(Lcom/samsung/android/motion/MRListener;I)V
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "status"    # I

    .prologue
    .line 533
    return-void
.end method

.method public setMotionTiltLevel(IIIIII)V
    .registers 15
    .param p1, "stopUp"    # I
    .param p2, "level1Up"    # I
    .param p3, "level2Up"    # I
    .param p4, "stopDown"    # I
    .param p5, "level1Down"    # I
    .param p6, "level2Down"    # I

    .prologue
    .line 586
    :try_start_0
    iget-object v0, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/motion/IMotionRecognitionService;->setMotionTiltLevel(IIIIII)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_13

    .line 590
    :goto_b
    const-string v0, "MotionRecognitionManager"

    const-string v1, "  .setMotionTiltLevel : 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return-void

    .line 587
    :catch_13
    move-exception v7

    .line 588
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "MotionRecognitionManager"

    const-string v1, "RemoteException in setMotionTiltLevel: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method public setSmartMotionAngle(Lcom/samsung/android/motion/MRListener;I)V
    .registers 10
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "status"    # I

    .prologue
    .line 564
    iget-object v5, p0, sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v5

    .line 565
    :try_start_3
    iget-object v4, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 566
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v3, :cond_30

    .line 567
    iget-object v4, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 568
    .local v2, "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/motion/MRListener;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_2a

    move-result-object v4

    if-ne v4, p1, :cond_2d

    .line 570
    :try_start_1a
    iget-object v4, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-interface {v4, v2, p2}, Lcom/samsung/android/motion/IMotionRecognitionService;->setMotionAngle(Landroid/os/IBinder;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_21
    .catchall {:try_start_1a .. :try_end_1f} :catchall_2a

    .line 574
    :goto_1f
    :try_start_1f
    monitor-exit v5

    .line 579
    .end local v2    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    :goto_20
    return-void

    .line 571
    .restart local v2    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    :catch_21
    move-exception v0

    .line 572
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "MotionRecognitionManager"

    const-string v6, "RemoteException in setSmartMotionAngle: "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 578
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3    # "size":I
    :catchall_2a
    move-exception v4

    monitor-exit v5
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_2a

    throw v4

    .line 566
    .restart local v1    # "i":I
    .restart local v2    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v3    # "size":I
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 577
    .end local v2    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_30
    :try_start_30
    const-string v4, "MotionRecognitionManager"

    const-string v6, "  .setSmartMotionAngle : listener has to be registered first"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    monitor-exit v5
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_2a

    goto :goto_20
.end method

.method public unregisterListener(Lcom/samsung/android/motion/MRListener;)V
    .registers 12
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;

    .prologue
    .line 470
    iget-object v7, p0, sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v7

    .line 471
    :try_start_3
    iget-object v6, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 473
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v4, :cond_45

    .line 474
    iget-object v6, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 475
    .local v2, "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/motion/MRListener;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 476
    .local v3, "listener_name":Ljava/lang/String;
    const-string v6, "MotionRecognitionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@ member "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 479
    .end local v2    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3    # "listener_name":Ljava/lang/String;
    :cond_45
    const/4 v1, 0x0

    :goto_46
    if-ge v1, v4, :cond_9f

    .line 480
    iget-object v6, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 481
    .restart local v2    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/motion/MRListener;

    move-result-object v6

    if-ne v6, p1, :cond_12f

    .line 482
    iget-object v6, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_11c

    .line 484
    :try_start_5b
    invoke-virtual {v2}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v6

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_128

    .line 485
    iget-boolean v6, p0, mSSPEnabled:Z

    const/4 v8, 0x1

    if-ne v6, v8, :cond_eb

    .line 486
    iget v6, p0, mMovementCnt:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, mMovementCnt:I

    .line 487
    iget v6, p0, mMovementCnt:I

    if-gtz v6, :cond_84

    .line 488
    const-string v6, "MotionRecognitionManager"

    const-string v8, " [MOVEMENT_SERVICE] unregisterListener "

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v6, 0x0

    iput v6, p0, mMovementCnt:I

    .line 490
    iget-object v6, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v8, p0, mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

    const/4 v9, 0x5

    invoke-virtual {v6, v8, v9}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 492
    :cond_84
    const-string v6, "MotionRecognitionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unregisterListener - mMovementCnt : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, mMovementCnt:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_9f} :catch_113
    .catchall {:try_start_5b .. :try_end_9f} :catchall_11c

    .line 514
    .end local v2    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_9f
    :goto_9f
    :try_start_9f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "name :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 515
    .local v5, "strlistener":Ljava/lang/String;
    const-string v6, "MotionRecognitionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  .unregisterListener : / listener count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    monitor-exit v7
    :try_end_ea
    .catchall {:try_start_9f .. :try_end_ea} :catchall_11c

    .line 518
    return-void

    .line 495
    .end local v5    # "strlistener":Ljava/lang/String;
    .restart local v2    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_eb
    :try_start_eb
    iget-object v6, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-interface {v6}, Lcom/samsung/android/motion/IMotionRecognitionService;->getSSPstatus()Z

    move-result v6

    iput-boolean v6, p0, mSSPEnabled:Z
    :try_end_f3
    .catch Landroid/os/RemoteException; {:try_start_eb .. :try_end_f3} :catch_11f
    .catchall {:try_start_eb .. :try_end_f3} :catchall_11c

    .line 499
    :goto_f3
    :try_start_f3
    const-string v6, "MotionRecognitionManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SSP disabled : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, mSSPEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v6, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-interface {v6, v2}, Lcom/samsung/android/motion/IMotionRecognitionService;->unregisterCallback(Landroid/os/IBinder;)V
    :try_end_112
    .catch Landroid/os/RemoteException; {:try_start_f3 .. :try_end_112} :catch_113
    .catchall {:try_start_f3 .. :try_end_112} :catchall_11c

    goto :goto_9f

    .line 506
    :catch_113
    move-exception v0

    .line 507
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_114
    const-string v6, "MotionRecognitionManager"

    const-string v8, "RemoteException in unregisterListener: "

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9f

    .line 517
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v4    # "size":I
    :catchall_11c
    move-exception v6

    monitor-exit v7
    :try_end_11e
    .catchall {:try_start_114 .. :try_end_11e} :catchall_11c

    throw v6

    .line 496
    .restart local v1    # "i":I
    .restart local v2    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v4    # "size":I
    :catch_11f
    move-exception v0

    .line 497
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_120
    const-string v6, "MotionRecognitionManager"

    const-string v8, "RemoteException in getSSPstatus: "

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f3

    .line 504
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_128
    iget-object v6, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-interface {v6, v2}, Lcom/samsung/android/motion/IMotionRecognitionService;->unregisterCallback(Landroid/os/IBinder;)V
    :try_end_12d
    .catch Landroid/os/RemoteException; {:try_start_120 .. :try_end_12d} :catch_113
    .catchall {:try_start_120 .. :try_end_12d} :catchall_11c

    goto/16 :goto_9f

    .line 479
    :cond_12f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_46
.end method

.method public unregisterListener(Lcom/samsung/android/motion/MRListener;I)V
    .registers 12
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "motion_events"    # I

    .prologue
    .line 438
    iget-object v6, p0, sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v6

    .line 439
    :try_start_3
    iget-object v5, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 440
    .local v3, "size":I
    const/4 v2, 0x0

    .line 441
    .local v2, "motionevents":I
    const/4 v1, 0x0

    .line 442
    .local v1, "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v3, :cond_69

    .line 443
    iget-object v5, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    check-cast v1, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 444
    .restart local v1    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/motion/MRListener;

    move-result-object v5

    if-ne v5, p1, :cond_73

    .line 445
    invoke-virtual {v1}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v5

    xor-int/lit8 v7, p2, -0x1

    and-int v2, v5, v7

    .line 446
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "name :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 447
    .local v4, "strlistener":Ljava/lang/String;
    const-string v5, "MotionRecognitionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update listener "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",  motionevents = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .end local v4    # "strlistener":Ljava/lang/String;
    :cond_69
    invoke-virtual {p0, p1}, unregisterListener(Lcom/samsung/android/motion/MRListener;)V

    .line 453
    if-eqz v2, :cond_71

    .line 454
    invoke-virtual {p0, p1, v2}, registerListenerEvent(Lcom/samsung/android/motion/MRListener;I)V

    .line 456
    :cond_71
    monitor-exit v6

    .line 457
    return-void

    .line 442
    :cond_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 456
    .end local v0    # "i":I
    .end local v1    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v2    # "motionevents":I
    .end local v3    # "size":I
    :catchall_76
    move-exception v5

    monitor-exit v6
    :try_end_78
    .catchall {:try_start_3 .. :try_end_78} :catchall_76

    throw v5
.end method

.method public useMotionAlways(Lcom/samsung/android/motion/MRListener;Z)V
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "bUseAlways"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 524
    return-void
.end method
