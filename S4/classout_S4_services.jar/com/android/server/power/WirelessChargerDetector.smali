.class final Lcom/android/server/power/WirelessChargerDetector;
.super Ljava/lang/Object;
.source "WirelessChargerDetector.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_GRAVITY:D = 10.806650161743164

.field private static final MIN_GRAVITY:D = 8.806650161743164

.field private static final MIN_SAMPLES:I = 0x3

.field private static final MOVEMENT_ANGLE_COS_THRESHOLD:D

.field private static final SAMPLING_INTERVAL_MILLIS:I = 0x32

.field private static final SETTLE_TIME_MILLIS:J = 0x320L

.field private static final TAG:Ljava/lang/String; = "WirelessChargerDetector"

.field private static final WIRELESS_CHARGER_TURN_ON_BATTERY_LEVEL_LIMIT:I = 0x5f


# instance fields
.field private mAtRest:Z

.field private mDetectionInProgress:Z

.field private mDetectionStartTime:J

.field private mFirstSampleX:F

.field private mFirstSampleY:F

.field private mFirstSampleZ:F

.field private mGravitySensor:Landroid/hardware/Sensor;

.field private final mHandler:Landroid/os/Handler;

.field private mLastSampleX:F

.field private mLastSampleY:F

.field private mLastSampleZ:F

.field private final mListener:Landroid/hardware/SensorEventListener;

.field private final mLock:Ljava/lang/Object;

.field private mMovingSamples:I

.field private mMustUpdateRestPosition:Z

.field private mPoweredWirelessly:Z

.field private mRestX:F

.field private mRestY:F

.field private mRestZ:F

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mSensorTimeout:Ljava/lang/Runnable;

.field private final mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private mTotalSamples:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 93
    const-wide v0, 0x3fb657184ae74487L    # 0.08726646259971647

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, MOVEMENT_ANGLE_COS_THRESHOLD:D

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Lcom/android/server/power/SuspendBlocker;Landroid/os/Handler;)V
    .registers 5
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "suspendBlocker"    # Lcom/android/server/power/SuspendBlocker;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 336
    new-instance v0, Lcom/android/server/power/WirelessChargerDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/WirelessChargerDetector$1;-><init>(Lcom/android/server/power/WirelessChargerDetector;)V

    iput-object v0, p0, mListener:Landroid/hardware/SensorEventListener;

    .line 349
    new-instance v0, Lcom/android/server/power/WirelessChargerDetector$2;

    invoke-direct {v0, p0}, Lcom/android/server/power/WirelessChargerDetector$2;-><init>(Lcom/android/server/power/WirelessChargerDetector;)V

    iput-object v0, p0, mSensorTimeout:Ljava/lang/Runnable;

    .line 145
    iput-object p1, p0, mSensorManager:Landroid/hardware/SensorManager;

    .line 146
    iput-object p2, p0, mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 147
    iput-object p3, p0, mHandler:Landroid/os/Handler;

    .line 149
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, mGravitySensor:Landroid/hardware/Sensor;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/WirelessChargerDetector;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/WirelessChargerDetector;

    .prologue
    .line 72
    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/WirelessChargerDetector;FFF)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/power/WirelessChargerDetector;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, processSampleLocked(FFF)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/power/WirelessChargerDetector;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/power/WirelessChargerDetector;

    .prologue
    .line 72
    invoke-direct {p0}, finishDetectionLocked()V

    return-void
.end method

.method private clearAtRestLocked()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, mAtRest:Z

    .line 307
    iput v1, p0, mRestX:F

    .line 308
    iput v1, p0, mRestY:F

    .line 309
    iput v1, p0, mRestZ:F

    .line 310
    return-void
.end method

.method private finishDetectionLocked()V
    .registers 6

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 241
    iget-boolean v0, p0, mDetectionInProgress:Z

    if-eqz v0, :cond_6a

    .line 242
    iget-object v0, p0, mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 243
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mSensorTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 245
    iget-boolean v0, p0, mMustUpdateRestPosition:Z

    if-eqz v0, :cond_63

    .line 246
    invoke-direct {p0}, clearAtRestLocked()V

    .line 247
    iget v0, p0, mTotalSamples:I

    if-ge v0, v3, :cond_6b

    .line 248
    const-string v0, "WirelessChargerDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wireless charger detector is broken.  Only received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mTotalSamples:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " samples from the gravity sensor but we "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "need at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and we expect to see "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "about "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on average."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_61
    :goto_61
    iput-boolean v4, p0, mMustUpdateRestPosition:Z

    .line 269
    :cond_63
    iput-boolean v4, p0, mDetectionInProgress:Z

    .line 270
    iget-object v0, p0, mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 272
    :cond_6a
    return-void

    .line 253
    :cond_6b
    iget v0, p0, mMovingSamples:I

    if-nez v0, :cond_61

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, mAtRest:Z

    .line 255
    iget v0, p0, mLastSampleX:F

    iput v0, p0, mRestX:F

    .line 256
    iget v0, p0, mLastSampleY:F

    iput v0, p0, mRestY:F

    .line 257
    iget v0, p0, mLastSampleZ:F

    iput v0, p0, mRestZ:F

    goto :goto_61
.end method

.method private static hasMoved(FFFFFF)Z
    .registers 18
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "z1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "z2"    # F

    .prologue
    .line 314
    mul-float v7, p0, p3

    mul-float v8, p1, p4

    add-float/2addr v7, v8

    mul-float v8, p2, p5

    add-float/2addr v7, v8

    float-to-double v0, v7

    .line 315
    .local v0, "dotProduct":D
    mul-float v7, p0, p0

    mul-float v8, p1, p1

    add-float/2addr v7, v8

    mul-float v8, p2, p2

    add-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 316
    .local v2, "mag1":D
    mul-float v7, p3, p3

    mul-float v8, p4, p4

    add-float/2addr v7, v8

    mul-float v8, p5, p5

    add-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 317
    .local v4, "mag2":D
    const-wide v8, 0x40219d0140000000L    # 8.806650161743164

    cmpg-double v7, v2, v8

    if-ltz v7, :cond_47

    const-wide v8, 0x40259d0140000000L    # 10.806650161743164

    cmpl-double v7, v2, v8

    if-gtz v7, :cond_47

    const-wide v8, 0x40219d0140000000L    # 8.806650161743164

    cmpg-double v7, v4, v8

    if-ltz v7, :cond_47

    const-wide v8, 0x40259d0140000000L    # 10.806650161743164

    cmpl-double v7, v4, v8

    if-lez v7, :cond_49

    .line 322
    :cond_47
    const/4 v6, 0x1

    .line 333
    :goto_48
    return v6

    .line 324
    :cond_49
    mul-double v8, v2, v4

    sget-wide v10, MOVEMENT_ANGLE_COS_THRESHOLD:D

    mul-double/2addr v8, v10

    cmpg-double v7, v0, v8

    if-gez v7, :cond_54

    const/4 v6, 0x1

    .line 333
    .local v6, "moved":Z
    :goto_53
    goto :goto_48

    .line 324
    .end local v6    # "moved":Z
    :cond_54
    const/4 v6, 0x0

    goto :goto_53
.end method

.method private processSampleLocked(FFF)V
    .registers 10
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 275
    iget-boolean v0, p0, mDetectionInProgress:Z

    if-eqz v0, :cond_31

    .line 276
    iput p1, p0, mLastSampleX:F

    .line 277
    iput p2, p0, mLastSampleY:F

    .line 278
    iput p3, p0, mLastSampleZ:F

    .line 280
    iget v0, p0, mTotalSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mTotalSamples:I

    .line 281
    iget v0, p0, mTotalSamples:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    .line 283
    iput p1, p0, mFirstSampleX:F

    .line 284
    iput p2, p0, mFirstSampleY:F

    .line 285
    iput p3, p0, mFirstSampleZ:F

    .line 294
    :cond_1b
    :goto_1b
    iget-boolean v0, p0, mAtRest:Z

    if-eqz v0, :cond_31

    iget v0, p0, mRestX:F

    iget v1, p0, mRestY:F

    iget v2, p0, mRestZ:F

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, hasMoved(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 300
    invoke-direct {p0}, clearAtRestLocked()V

    .line 303
    :cond_31
    return-void

    .line 288
    :cond_32
    iget v0, p0, mFirstSampleX:F

    iget v1, p0, mFirstSampleY:F

    iget v2, p0, mFirstSampleZ:F

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, hasMoved(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 289
    iget v0, p0, mMovingSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mMovingSamples:I

    goto :goto_1b
.end method

.method private startDetectionLocked()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 224
    iget-boolean v1, p0, mDetectionInProgress:Z

    if-nez v1, :cond_3c

    iget-object v1, p0, mGravitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_3c

    .line 225
    iget-object v1, p0, mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, mListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, mGravitySensor:Landroid/hardware/Sensor;

    const v4, 0xc350

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 227
    iget-object v1, p0, mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 228
    iput-boolean v6, p0, mDetectionInProgress:Z

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, mDetectionStartTime:J

    .line 230
    iput v5, p0, mTotalSamples:I

    .line 231
    iput v5, p0, mMovingSamples:I

    .line 233
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    iget-object v2, p0, mSensorTimeout:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 234
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 235
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 238
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3c
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 153
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 155
    const-string v0, "Wireless Charger Detector State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mGravitySensor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, mGravitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPoweredWirelessly="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, mPoweredWirelessly:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAtRest="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, mAtRest:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRestX="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, mRestX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mRestY="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, mRestY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mRestZ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, mRestZ:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDetectionInProgress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, mDetectionInProgress:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDetectionStartTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, mDetectionStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_165

    const-string v0, "0 (never)"

    :goto_b0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMustUpdateRestPosition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, mMustUpdateRestPosition:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTotalSamples="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, mTotalSamples:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mMovingSamples="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, mMovingSamples:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mFirstSampleX="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, mFirstSampleX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mFirstSampleY="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, mFirstSampleY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mFirstSampleZ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, mFirstSampleZ:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastSampleX="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, mLastSampleX:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mLastSampleY="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, mLastSampleY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mLastSampleZ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, mLastSampleZ:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    monitor-exit v1

    .line 171
    return-void

    .line 161
    :cond_165
    iget-wide v4, p0, mDetectionStartTime:J

    invoke-static {v4, v5}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b0

    .line 170
    :catchall_16d
    move-exception v0

    monitor-exit v1
    :try_end_16f
    .catchall {:try_start_3 .. :try_end_16f} :catchall_16d

    throw v0
.end method

.method public update(ZII)Z
    .registers 10
    .param p1, "isPowered"    # Z
    .param p2, "plugType"    # I
    .param p3, "batteryLevel"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 183
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 184
    :try_start_6
    iget-boolean v0, p0, mPoweredWirelessly:Z

    .line 186
    .local v0, "wasPoweredWirelessly":Z
    if-eqz p1, :cond_25

    if-ne p2, v5, :cond_25

    .line 189
    const/4 v4, 0x1

    iput-boolean v4, p0, mPoweredWirelessly:Z

    .line 190
    const/4 v4, 0x1

    iput-boolean v4, p0, mMustUpdateRestPosition:Z

    .line 191
    invoke-direct {p0}, startDetectionLocked()V

    .line 217
    :cond_15
    :goto_15
    iget-boolean v4, p0, mPoweredWirelessly:Z

    if-eqz v4, :cond_3e

    if-nez v0, :cond_3e

    const/16 v4, 0x5f

    if-ge p3, v4, :cond_3e

    iget-boolean v4, p0, mAtRest:Z

    if-nez v4, :cond_3e

    :goto_23
    monitor-exit v3

    return v1

    .line 195
    :cond_25
    const/4 v4, 0x0

    iput-boolean v4, p0, mPoweredWirelessly:Z

    .line 196
    iget-boolean v4, p0, mAtRest:Z

    if-eqz v4, :cond_15

    .line 197
    if-eqz p2, :cond_3a

    if-eq p2, v5, :cond_3a

    .line 200
    const/4 v4, 0x0

    iput-boolean v4, p0, mMustUpdateRestPosition:Z

    .line 201
    invoke-direct {p0}, clearAtRestLocked()V

    goto :goto_15

    .line 220
    .end local v0    # "wasPoweredWirelessly":Z
    :catchall_37
    move-exception v1

    monitor-exit v3
    :try_end_39
    .catchall {:try_start_6 .. :try_end_39} :catchall_37

    throw v1

    .line 207
    .restart local v0    # "wasPoweredWirelessly":Z
    :cond_3a
    :try_start_3a
    invoke-direct {p0}, startDetectionLocked()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_37

    goto :goto_15

    :cond_3e
    move v1, v2

    .line 217
    goto :goto_23
.end method
