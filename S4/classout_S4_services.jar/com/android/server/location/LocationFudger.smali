.class public Lcom/android/server/location/LocationFudger;
.super Ljava/lang/Object;
.source "LocationFudger.java"


# static fields
.field private static final APPROXIMATE_METERS_PER_DEGREE_AT_EQUATOR:I = 0x1b198

.field private static final CHANGE_INTERVAL_MS:J = 0x36ee80L

.field private static final CHANGE_PER_INTERVAL:D = 0.03

.field private static final COARSE_ACCURACY_CONFIG_NAME:Ljava/lang/String; = "locationCoarseAccuracy"

.field private static final D:Z = false

.field private static final DEFAULT_ACCURACY_IN_METERS:F = 2000.0f

.field public static final FASTEST_INTERVAL_MS:J = 0x927c0L

.field private static final MAX_LATITUDE:D = 89.999990990991

.field private static final MINIMUM_ACCURACY_IN_METERS:F = 200.0f

.field private static final NEW_WEIGHT:D = 0.03

.field private static final PREVIOUS_WEIGHT:D

.field private static final TAG:Ljava/lang/String; = "LocationFudge"


# instance fields
.field private mAccuracyInMeters:F

.field private final mContext:Landroid/content/Context;

.field private mGridSizeInMeters:D

.field private final mLock:Ljava/lang/Object;

.field private mNextInterval:J

.field private mOffsetLatitudeMeters:D

.field private mOffsetLongitudeMeters:D

.field private final mRandom:Ljava/security/SecureRandom;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mStandardDeviationInMeters:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 85
    const-wide v0, 0x3feff8a0902de00dL    # 0.9991

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, PREVIOUS_WEIGHT:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, mLock:Ljava/lang/Object;

    .line 104
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, mRandom:Ljava/security/SecureRandom;

    .line 143
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 144
    new-instance v1, Lcom/android/server/location/LocationFudger$1;

    invoke-direct {v1, p0, p2}, Lcom/android/server/location/LocationFudger$1;-><init>(Lcom/android/server/location/LocationFudger;Landroid/os/Handler;)V

    iput-object v1, p0, mSettingsObserver:Landroid/database/ContentObserver;

    .line 150
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "locationCoarseAccuracy"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 153
    invoke-direct {p0}, loadCoarseAccuracy()F

    move-result v0

    .line 154
    .local v0, "accuracy":F
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 155
    :try_start_33
    invoke-direct {p0, v0}, setAccuracyInMetersLocked(F)V

    .line 156
    invoke-direct {p0}, nextOffsetLocked()D

    move-result-wide v4

    iput-wide v4, p0, mOffsetLatitudeMeters:D

    .line 157
    invoke-direct {p0}, nextOffsetLocked()D

    move-result-wide v4

    iput-wide v4, p0, mOffsetLongitudeMeters:D

    .line 158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    add-long/2addr v4, v6

    iput-wide v4, p0, mNextInterval:J

    .line 159
    monitor-exit v2

    .line 160
    return-void

    .line 159
    :catchall_4e
    move-exception v1

    monitor-exit v2
    :try_end_50
    .catchall {:try_start_33 .. :try_end_50} :catchall_4e

    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/location/LocationFudger;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationFudger;

    .prologue
    .line 37
    invoke-direct {p0}, loadCoarseAccuracy()F

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/location/LocationFudger;F)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/LocationFudger;
    .param p1, "x1"    # F

    .prologue
    .line 37
    invoke-direct {p0, p1}, setAccuracyInMeters(F)V

    return-void
.end method

.method private addCoarseLocationExtraLocked(Landroid/location/Location;)Landroid/location/Location;
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 179
    invoke-direct {p0, p1}, createCoarseLocked(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    .line 180
    .local v0, "coarse":Landroid/location/Location;
    const-string v1, "coarseLocation"

    invoke-virtual {p1, v1, v0}, Landroid/location/Location;->setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V

    .line 181
    return-object v0
.end method

.method private createCoarseLocked(Landroid/location/Location;)Landroid/location/Location;
    .registers 14
    .param p1, "fine"    # Landroid/location/Location;

    .prologue
    .line 200
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 204
    .local v0, "coarse":Landroid/location/Location;
    invoke-virtual {v0}, Landroid/location/Location;->removeBearing()V

    .line 205
    invoke-virtual {v0}, Landroid/location/Location;->removeSpeed()V

    .line 206
    invoke-virtual {v0}, Landroid/location/Location;->removeAltitude()V

    .line 207
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 209
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 210
    .local v2, "lat":D
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 213
    .local v6, "lon":D
    invoke-static {v2, v3}, wrapLatitude(D)D

    move-result-wide v2

    .line 214
    invoke-static {v6, v7}, wrapLongitude(D)D

    move-result-wide v6

    .line 224
    invoke-direct {p0}, updateRandomOffsetLocked()V

    .line 226
    iget-wide v10, p0, mOffsetLongitudeMeters:D

    invoke-static {v10, v11, v2, v3}, metersToDegreesLongitude(DD)D

    move-result-wide v10

    add-double/2addr v6, v10

    .line 227
    iget-wide v10, p0, mOffsetLatitudeMeters:D

    invoke-static {v10, v11}, metersToDegreesLatitude(D)D

    move-result-wide v10

    add-double/2addr v2, v10

    .line 232
    invoke-static {v2, v3}, wrapLatitude(D)D

    move-result-wide v2

    .line 233
    invoke-static {v6, v7}, wrapLongitude(D)D

    move-result-wide v6

    .line 245
    iget-wide v10, p0, mGridSizeInMeters:D

    invoke-static {v10, v11}, metersToDegreesLatitude(D)D

    move-result-wide v4

    .line 246
    .local v4, "latGranularity":D
    div-double v10, v2, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-double v10, v10

    mul-double v2, v10, v4

    .line 247
    iget-wide v10, p0, mGridSizeInMeters:D

    invoke-static {v10, v11, v2, v3}, metersToDegreesLongitude(DD)D

    move-result-wide v8

    .line 248
    .local v8, "lonGranularity":D
    div-double v10, v6, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-double v10, v10

    mul-double v6, v10, v8

    .line 251
    invoke-static {v2, v3}, wrapLatitude(D)D

    move-result-wide v2

    .line 252
    invoke-static {v6, v7}, wrapLongitude(D)D

    move-result-wide v6

    .line 255
    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 256
    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    .line 257
    iget v1, p0, mAccuracyInMeters:F

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-static {v1, v10}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 260
    return-object v0
.end method

.method private loadCoarseAccuracy()F
    .registers 6

    .prologue
    const/high16 v2, 0x44fa0000    # 2000.0f

    .line 368
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "locationCoarseAccuracy"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "newSetting":Ljava/lang/String;
    if-nez v1, :cond_11

    .line 379
    :goto_10
    return v2

    .line 377
    :cond_11
    :try_start_11
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_14} :catch_16

    move-result v2

    goto :goto_10

    .line 378
    :catch_16
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_10
.end method

.method private static metersToDegreesLatitude(D)D
    .registers 4
    .param p0, "distance"    # D

    .prologue
    .line 327
    const-wide v0, 0x40fb198000000000L    # 111000.0

    div-double v0, p0, v0

    return-wide v0
.end method

.method private static metersToDegreesLongitude(DD)D
    .registers 8
    .param p0, "distance"    # D
    .param p2, "lat"    # D

    .prologue
    .line 334
    const-wide v0, 0x40fb198000000000L    # 111000.0

    div-double v0, p0, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private nextOffsetLocked()D
    .registers 5

    .prologue
    .line 302
    iget-object v0, p0, mRandom:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextGaussian()D

    move-result-wide v0

    iget-wide v2, p0, mStandardDeviationInMeters:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private setAccuracyInMeters(F)V
    .registers 4
    .param p1, "accuracyInMeters"    # F

    .prologue
    .line 359
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 360
    :try_start_3
    invoke-direct {p0, p1}, setAccuracyInMetersLocked(F)V

    .line 361
    monitor-exit v1

    .line 362
    return-void

    .line 361
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private setAccuracyInMetersLocked(F)V
    .registers 6
    .param p1, "accuracyInMeters"    # F

    .prologue
    .line 347
    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, mAccuracyInMeters:F

    .line 351
    iget v0, p0, mAccuracyInMeters:F

    float-to-double v0, v0

    iput-wide v0, p0, mGridSizeInMeters:D

    .line 352
    iget-wide v0, p0, mGridSizeInMeters:D

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v2

    iput-wide v0, p0, mStandardDeviationInMeters:D

    .line 353
    return-void
.end method

.method private updateRandomOffsetLocked()V
    .registers 9

    .prologue
    const-wide v6, 0x3f9eb851eb851eb8L    # 0.03

    .line 281
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 282
    .local v0, "now":J
    iget-wide v2, p0, mNextInterval:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_10

    .line 299
    :goto_f
    return-void

    .line 290
    :cond_10
    const-wide/32 v2, 0x36ee80

    add-long/2addr v2, v0

    iput-wide v2, p0, mNextInterval:J

    .line 292
    iget-wide v2, p0, mOffsetLatitudeMeters:D

    sget-wide v4, PREVIOUS_WEIGHT:D

    mul-double/2addr v2, v4

    iput-wide v2, p0, mOffsetLatitudeMeters:D

    .line 293
    iget-wide v2, p0, mOffsetLatitudeMeters:D

    invoke-direct {p0}, nextOffsetLocked()D

    move-result-wide v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, mOffsetLatitudeMeters:D

    .line 294
    iget-wide v2, p0, mOffsetLongitudeMeters:D

    sget-wide v4, PREVIOUS_WEIGHT:D

    mul-double/2addr v2, v4

    iput-wide v2, p0, mOffsetLongitudeMeters:D

    .line 295
    iget-wide v2, p0, mOffsetLongitudeMeters:D

    invoke-direct {p0}, nextOffsetLocked()D

    move-result-wide v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, mOffsetLongitudeMeters:D

    goto :goto_f
.end method

.method private static wrapLatitude(D)D
    .registers 4
    .param p0, "lat"    # D

    .prologue
    .line 306
    const-wide v0, 0x40567fffda36a676L    # 89.999990990991

    cmpl-double v0, p0, v0

    if-lez v0, :cond_e

    .line 307
    const-wide p0, 0x40567fffda36a676L    # 89.999990990991

    .line 309
    :cond_e
    const-wide v0, -0x3fa9800025c9598aL    # -89.999990990991

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1c

    .line 310
    const-wide p0, -0x3fa9800025c9598aL    # -89.999990990991

    .line 312
    :cond_1c
    return-wide p0
.end method

.method private static wrapLongitude(D)D
    .registers 6
    .param p0, "lon"    # D

    .prologue
    const-wide v2, 0x4076800000000000L    # 360.0

    .line 316
    rem-double/2addr p0, v2

    .line 317
    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_10

    .line 318
    sub-double/2addr p0, v2

    .line 320
    :cond_10
    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1a

    .line 321
    add-double/2addr p0, v2

    .line 323
    :cond_1a
    return-wide p0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 338
    const-string v0, "offset: %.0f, %.0f (meters)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, mOffsetLongitudeMeters:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, mOffsetLatitudeMeters:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public getOrCreate(Landroid/location/Location;)Landroid/location/Location;
    .registers 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 166
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 167
    :try_start_3
    const-string v1, "coarseLocation"

    invoke-virtual {p1, v1}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 168
    .local v0, "coarse":Landroid/location/Location;
    if-nez v0, :cond_11

    .line 169
    invoke-direct {p0, p1}, addCoarseLocationExtraLocked(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    .end local v0    # "coarse":Landroid/location/Location;
    monitor-exit v2

    .line 174
    :goto_10
    return-object v0

    .line 171
    .restart local v0    # "coarse":Landroid/location/Location;
    :cond_11
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iget v3, p0, mAccuracyInMeters:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_24

    .line 172
    invoke-direct {p0, p1}, addCoarseLocationExtraLocked(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    .end local v0    # "coarse":Landroid/location/Location;
    monitor-exit v2

    goto :goto_10

    .line 175
    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1

    .line 174
    .restart local v0    # "coarse":Landroid/location/Location;
    :cond_24
    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_21

    goto :goto_10
.end method