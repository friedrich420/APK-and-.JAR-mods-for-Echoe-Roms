.class Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatsObserver"
.end annotation


# instance fields
.field private final mCurrentUser:I

.field private final mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

.field private final mFinished:Landroid/os/Message;

.field private final mIsInternal:Z

.field private mRemaining:I


# direct methods
.method public constructor <init>(ZLcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;ILandroid/os/Message;I)V
    .locals 0
    .param p1, "isInternal"    # Z
    .param p2, "details"    # Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;
    .param p3, "currentUser"    # I
    .param p4, "finished"    # Landroid/os/Message;
    .param p5, "remaining"    # I

    .prologue
    .line 270
    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    .line 271
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mIsInternal:Z

    .line 272
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .line 273
    iput p3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mCurrentUser:I

    .line 274
    iput-object p4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mFinished:Landroid/os/Message;

    .line 275
    iput p5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mRemaining:I

    .line 276
    return-void
.end method

.method private addStatsLocked(Landroid/content/pm/PackageStats;)V
    .locals 14
    .param p1, "stats"    # Landroid/content/pm/PackageStats;

    .prologue
    .line 291
    iget-boolean v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mIsInternal:Z

    if-eqz v6, :cond_2

    .line 292
    iget-wide v2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    .line 293
    .local v2, "codeSize":J
    iget-wide v4, p1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 294
    .local v4, "dataSize":J
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 295
    .local v0, "cacheSize":J
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 298
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v8, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 299
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v8, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 300
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v6

    .line 301
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v8, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalAppObbSize:J

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v8, v10

    iput-wide v8, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalAppObbSize:J

    .line 302
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v8, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalAppDataSize:J

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v8, v10

    iput-wide v8, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalAppDataSize:J

    .line 306
    :cond_0
    iget v6, p1, Landroid/content/pm/PackageStats;->userHandle:I

    iget v7, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mCurrentUser:I

    if-ne v6, v7, :cond_1

    .line 307
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v8, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    add-long/2addr v8, v2

    iput-wide v8, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    .line 308
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v8, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    add-long/2addr v8, v4

    iput-wide v8, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    .line 313
    :cond_1
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-object v6, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v7, p1, Landroid/content/pm/PackageStats;->userHandle:I

    # invokes: Lcom/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V
    invoke-static {v6, v7, v4, v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$000(Landroid/util/SparseLongArray;IJ)V

    .line 316
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v8, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    add-long/2addr v8, v0

    iput-wide v8, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    .line 324
    .end local v0    # "cacheSize":J
    .end local v2    # "codeSize":J
    .end local v4    # "dataSize":J
    :goto_0
    return-void

    .line 320
    :cond_2
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v8, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v12, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v10, v12

    iget-wide v12, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v10, v12

    iget-wide v12, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    iput-wide v8, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    .line 322
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v8, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v8, v10

    iput-wide v8, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    goto :goto_0
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 2
    .param p1, "stats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z

    .prologue
    .line 280
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    monitor-enter v1

    .line 281
    if-eqz p2, :cond_0

    .line 282
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->addStatsLocked(Landroid/content/pm/PackageStats;)V

    .line 284
    :cond_0
    iget v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mRemaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mRemaining:I

    if-nez v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mFinished:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 287
    :cond_1
    monitor-exit v1

    .line 288
    return-void

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
