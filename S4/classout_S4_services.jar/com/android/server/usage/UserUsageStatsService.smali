.class Lcom/android/server/usage/UserUsageStatsService;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsageStatsService"

.field private static final sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner",
            "<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDateFormat:Ljava/text/SimpleDateFormat;

.field private static final sPpmCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private SAMP_ENABLE:Z

.field private final mCurrentStats:[Lcom/android/server/usage/IntervalStats;

.field private final mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

.field private final mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

.field private final mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

.field private final mLogPrefix:Ljava/lang/String;

.field private mStatsChanged:Z

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 52
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, sDateFormat:Ljava/text/SimpleDateFormat;

    .line 210
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$1;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$1;-><init>()V

    sput-object v0, sPpmCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    .line 228
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$2;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$2;-><init>()V

    sput-object v0, sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    .line 245
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$3;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$3;-><init>()V

    sput-object v0, sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    return-void
.end method

.method constructor <init>(ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "usageStatsDir"    # Ljava/io/File;
    .param p3, "listener"    # Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v0, p0, mStatsChanged:Z

    .line 64
    iput-boolean v0, p0, SAMP_ENABLE:Z

    .line 72
    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    iput-object v0, p0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 73
    new-instance v0, Lcom/android/server/usage/UsageStatsDatabase;

    invoke-direct {v0, p2}, Lcom/android/server/usage/UsageStatsDatabase;-><init>(Ljava/io/File;)V

    iput-object v0, p0, mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 74
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/usage/IntervalStats;

    iput-object v0, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .line 75
    iput-object p3, p0, mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    .line 76
    iput p1, p0, mUserId:I

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mLogPrefix:Ljava/lang/String;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, SAMP_ENABLE:Z

    .line 83
    return-void
.end method

.method private static eventToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "eventType"    # I

    .prologue
    .line 506
    packed-switch p0, :pswitch_data_18

    .line 520
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 508
    :pswitch_6
    const-string v0, "NONE"

    goto :goto_5

    .line 510
    :pswitch_9
    const-string v0, "MOVE_TO_BACKGROUND"

    goto :goto_5

    .line 512
    :pswitch_c
    const-string v0, "MOVE_TO_FOREGROUND"

    goto :goto_5

    .line 514
    :pswitch_f
    const-string v0, "END_OF_DAY"

    goto :goto_5

    .line 516
    :pswitch_12
    const-string v0, "CONTINUE_PREVIOUS_DAY"

    goto :goto_5

    .line 518
    :pswitch_15
    const-string v0, "CONFIGURATION_CHANGE"

    goto :goto_5

    .line 506
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
        :pswitch_9
        :pswitch_f
        :pswitch_12
        :pswitch_15
    .end packed-switch
.end method

.method private loadActiveStats(JZ)V
    .registers 15
    .param p1, "currentTimeMillis"    # J
    .param p3, "force"    # Z

    .prologue
    .line 459
    iget-object v1, p0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 460
    .local v1, "tempCal":Lcom/android/server/usage/UnixCalendar;
    const/4 v0, 0x0

    .local v0, "intervalType":I
    :goto_3
    iget-object v4, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v4, v4

    if-ge v0, v4, :cond_65

    .line 461
    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 462
    invoke-static {v1, v0}, Lcom/android/server/usage/UnixCalendar;->truncateTo(Lcom/android/server/usage/UnixCalendar;I)V

    .line 464
    if-nez p3, :cond_27

    iget-object v4, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v4, v4, v0

    if-eqz v4, :cond_27

    iget-object v4, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v4, v4, v0

    iget-wide v4, v4, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_27

    .line 460
    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 471
    :cond_27
    iget-object v4, p0, mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v4, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStatsBeginTime(I)J

    move-result-wide v2

    .line 472
    .local v2, "lastBeginTime":J
    invoke-virtual {v1}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_5f

    .line 478
    iget-object v4, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    iget-object v5, p0, mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v5, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v5

    aput-object v5, v4, v0

    .line 483
    :goto_3f
    iget-object v4, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v4, v4, v0

    if-nez v4, :cond_24

    .line 490
    iget-object v4, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    new-instance v5, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v5}, Lcom/android/server/usage/IntervalStats;-><init>()V

    aput-object v5, v4, v0

    .line 491
    iget-object v4, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v4, v4, v0

    invoke-virtual {v1}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 492
    iget-object v4, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v4, v4, v0

    iput-wide p1, v4, Lcom/android/server/usage/IntervalStats;->endTime:J

    goto :goto_24

    .line 480
    :cond_5f
    iget-object v4, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v5, 0x0

    aput-object v5, v4, v0

    goto :goto_3f

    .line 495
    .end local v2    # "lastBeginTime":J
    :cond_65
    const/4 v4, 0x0

    iput-boolean v4, p0, mStatsChanged:Z

    .line 496
    iget-object v4, p0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 497
    iget-object v4, p0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 498
    iget-object v4, p0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v4}, Lcom/android/server/usage/UnixCalendar;->truncateToDay()V

    .line 499
    const-string v4, "UsageStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, mLogPrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Rollover scheduled @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v7}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void
.end method

.method private notifyStatsChanged()V
    .registers 2

    .prologue
    .line 449
    iget-boolean v0, p0, mStatsChanged:Z

    if-nez v0, :cond_c

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, mStatsChanged:Z

    .line 451
    iget-object v0, p0, mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    invoke-interface {v0}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onStatsUpdated()V

    .line 453
    :cond_c
    return-void
.end method

.method private queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;
    .registers 19
    .param p1, "intervalType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IJJ",
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p6, "combiner":Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;, "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<TT;>;"
    const/4 v10, 0x0

    .line 269
    const/4 v2, 0x4

    if-ne p1, v2, :cond_f

    .line 270
    iget-object v2, p0, mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move-wide/from16 v0, p4

    invoke-virtual {v2, p2, p3, v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->findBestFitBucket(JJ)I

    move-result p1

    .line 271
    if-gez p1, :cond_f

    .line 274
    const/4 p1, 0x0

    .line 278
    :cond_f
    if-ltz p1, :cond_16

    iget-object v2, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v2, v2

    if-lt p1, v2, :cond_17

    .line 330
    :cond_16
    :goto_16
    return-object v10

    .line 285
    :cond_17
    iget-object v2, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v9, v2, p1

    .line 292
    .local v9, "currentStats":Lcom/android/server/usage/IntervalStats;
    iget-wide v2, v9, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_16

    .line 304
    iget-wide v2, v9, Lcom/android/server/usage/IntervalStats;->beginTime:J

    move-wide/from16 v0, p4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 307
    .local v6, "truncatedEndTime":J
    iget-object v2, p0, mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move v3, p1

    move-wide v4, p2

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/usage/UsageStatsDatabase;->queryUsageStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v10

    .line 316
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-wide v2, v9, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v2, p2, v2

    if-gez v2, :cond_16

    iget-wide v2, v9, Lcom/android/server/usage/IntervalStats;->beginTime:J

    cmp-long v2, p4, v2

    if-lez v2, :cond_16

    .line 321
    if-nez v10, :cond_46

    .line 322
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .restart local v10    # "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_46
    const/4 v2, 0x1

    move-object/from16 v0, p6

    invoke-interface {v0, v9, v2, v10}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V

    goto :goto_16
.end method

.method private rolloverStats(J)V
    .registers 32
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 403
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 404
    .local v20, "startTime":J
    const-string v8, "UsageStatsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, mLogPrefix:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v19, "Rolling over usage stats"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    move-object/from16 v0, p0

    iget-object v8, v0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget-object v0, v8, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v18, v0

    .line 410
    .local v18, "previousConfig":Landroid/content/res/Configuration;
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 411
    .local v12, "continuePreviousDay":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .local v10, "arr$":[Lcom/android/server/usage/IntervalStats;
    array-length v15, v10

    .local v15, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_3c
    if-ge v14, v15, :cond_9b

    aget-object v4, v10, v14

    .line 412
    .local v4, "stat":Lcom/android/server/usage/IntervalStats;
    iget-object v8, v4, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v16

    .line 413
    .local v16, "pkgCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_47
    move/from16 v0, v16

    if-ge v13, v0, :cond_86

    .line 414
    iget-object v8, v4, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v8, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/usage/UsageStats;

    .line 415
    .local v17, "pkgStats":Landroid/app/usage/UsageStats;
    move-object/from16 v0, v17

    iget v8, v0, Landroid/app/usage/UsageStats;->mLastEvent:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_61

    move-object/from16 v0, v17

    iget v8, v0, Landroid/app/usage/UsageStats;->mLastEvent:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_83

    .line 417
    :cond_61
    move-object/from16 v0, v17

    iget-object v8, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v12, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 418
    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v8}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v8

    const-wide/16 v24, 0x1

    sub-long v6, v8, v24

    const/4 v8, 0x3

    move-object/from16 v0, p0

    iget v9, v0, mUserId:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JII)V

    .line 420
    invoke-direct/range {p0 .. p0}, notifyStatsChanged()V

    .line 413
    :cond_83
    add-int/lit8 v13, v13, 0x1

    goto :goto_47

    .line 424
    .end local v17    # "pkgStats":Landroid/app/usage/UsageStats;
    :cond_86
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v9}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    sub-long v24, v24, v26

    move-wide/from16 v0, v24

    invoke-virtual {v4, v8, v0, v1}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 411
    add-int/lit8 v14, v14, 0x1

    goto :goto_3c

    .line 427
    .end local v4    # "stat":Lcom/android/server/usage/IntervalStats;
    .end local v13    # "i":I
    .end local v16    # "pkgCount":I
    :cond_9b
    invoke-virtual/range {p0 .. p0}, persistActiveStats()V

    .line 428
    move-object/from16 v0, p0

    iget-object v8, v0, mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move-wide/from16 v0, p1

    invoke-virtual {v8, v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->prune(J)V

    .line 429
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v8}, loadActiveStats(JZ)V

    .line 431
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v11

    .line 432
    .local v11, "continueCount":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_b4
    if-ge v13, v11, :cond_e5

    .line 433
    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 434
    .local v5, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget-wide v6, v8, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 435
    .local v6, "beginTime":J
    move-object/from16 v0, p0

    iget-object v10, v0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v15, v10

    const/4 v14, 0x0

    :goto_cb
    if-ge v14, v15, :cond_e2

    aget-object v4, v10, v14

    .line 436
    .restart local v4    # "stat":Lcom/android/server/usage/IntervalStats;
    const/4 v8, 0x4

    move-object/from16 v0, p0

    iget v9, v0, mUserId:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JII)V

    .line 437
    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v6, v7}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 438
    invoke-direct/range {p0 .. p0}, notifyStatsChanged()V

    .line 435
    add-int/lit8 v14, v14, 0x1

    goto :goto_cb

    .line 432
    .end local v4    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_e2
    add-int/lit8 v13, v13, 0x1

    goto :goto_b4

    .line 441
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "beginTime":J
    :cond_e5
    invoke-virtual/range {p0 .. p0}, persistActiveStats()V

    .line 443
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v22, v8, v20

    .line 444
    .local v22, "totalTime":J
    const-string v8, "UsageStatsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, mLogPrefix:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v19, "Rolling over usage stats complete. Took "

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v19, " milliseconds"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    return-void
.end method


# virtual methods
.method init(J)V
    .registers 16
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 86
    iget-object v1, p0, mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->init(J)V

    .line 88
    const/4 v10, 0x0

    .line 89
    .local v10, "nullCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7
    iget-object v1, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v1, v1

    if-ge v7, v1, :cond_21

    .line 90
    iget-object v1, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    iget-object v2, p0, mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v2, v7}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v2

    aput-object v2, v1, v7

    .line 91
    iget-object v1, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v1, v1, v7

    if-nez v1, :cond_1e

    .line 94
    add-int/lit8 v10, v10, 0x1

    .line 89
    :cond_1e
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 98
    :cond_21
    if-lez v10, :cond_79

    .line 99
    iget-object v1, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v1, v1

    if-eq v10, v1, :cond_42

    .line 102
    const-string v1, "UsageStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, mLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Some stats have no latest available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_42
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, loadActiveStats(JZ)V

    .line 124
    :goto_46
    iget-object v6, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .local v6, "arr$":[Lcom/android/server/usage/IntervalStats;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_4a
    if-ge v8, v9, :cond_e0

    aget-object v0, v6, v8

    .line 125
    .local v0, "stat":Lcom/android/server/usage/IntervalStats;
    iget-object v1, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 126
    .local v11, "pkgCount":I
    const/4 v7, 0x0

    :goto_55
    if-ge v7, v11, :cond_d6

    .line 127
    iget-object v1, v0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/usage/UsageStats;

    .line 128
    .local v12, "pkgStats":Landroid/app/usage/UsageStats;
    iget v1, v12, Landroid/app/usage/UsageStats;->mLastEvent:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_69

    iget v1, v12, Landroid/app/usage/UsageStats;->mLastEvent:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_76

    .line 130
    :cond_69
    iget-object v1, v12, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-wide v2, v0, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    const/4 v4, 0x3

    iget v5, p0, mUserId:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JII)V

    .line 132
    invoke-direct {p0}, notifyStatsChanged()V

    .line 126
    :cond_76
    add-int/lit8 v7, v7, 0x1

    goto :goto_55

    .line 114
    .end local v0    # "stat":Lcom/android/server/usage/IntervalStats;
    .end local v6    # "arr$":[Lcom/android/server/usage/IntervalStats;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "pkgCount":I
    .end local v12    # "pkgStats":Landroid/app/usage/UsageStats;
    :cond_79
    iget-object v1, p0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    iget-object v2, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-wide v2, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 116
    iget-object v1, p0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 117
    iget-object v1, p0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1}, Lcom/android/server/usage/UnixCalendar;->truncateToDay()V

    .line 118
    const-string v1, "UsageStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, mLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Rollover scheduled @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v4}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v3}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_46

    .line 136
    .restart local v0    # "stat":Lcom/android/server/usage/IntervalStats;
    .restart local v6    # "arr$":[Lcom/android/server/usage/IntervalStats;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    .restart local v11    # "pkgCount":I
    :cond_d6
    const/4 v1, 0x0

    iget-wide v2, v0, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 124
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4a

    .line 140
    .end local v0    # "stat":Lcom/android/server/usage/IntervalStats;
    .end local v11    # "pkgCount":I
    :cond_e0
    iget-boolean v1, p0, SAMP_ENABLE:Z

    if-eqz v1, :cond_103

    .line 141
    iget-object v6, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v9, v6

    const/4 v8, 0x0

    :goto_e8
    if-ge v8, v9, :cond_103

    aget-object v0, v6, v8

    .line 142
    .restart local v0    # "stat":Lcom/android/server/usage/IntervalStats;
    iget-object v1, v0, Lcom/android/server/usage/IntervalStats;->ppmInfoStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 143
    .restart local v11    # "pkgCount":I
    const/4 v7, 0x0

    :goto_f3
    if-ge v7, v11, :cond_100

    .line 144
    iget-object v1, v0, Lcom/android/server/usage/IntervalStats;->ppmInfoStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStats;

    .line 143
    add-int/lit8 v7, v7, 0x1

    goto :goto_f3

    .line 141
    :cond_100
    add-int/lit8 v8, v8, 0x1

    goto :goto_e8

    .line 149
    .end local v0    # "stat":Lcom/android/server/usage/IntervalStats;
    .end local v11    # "pkgCount":I
    :cond_103
    return-void
.end method

.method onTimeChanged(JJ)V
    .registers 10
    .param p1, "oldTime"    # J
    .param p3, "newTime"    # J

    .prologue
    .line 152
    invoke-virtual {p0}, persistActiveStats()V

    .line 153
    iget-object v0, p0, mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    sub-long v2, p3, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->onTimeChanged(J)V

    .line 154
    const/4 v0, 0x1

    invoke-direct {p0, p3, p4, v0}, loadActiveStats(JZ)V

    .line 155
    return-void
.end method

.method persistActiveStats()V
    .registers 6

    .prologue
    .line 389
    iget-boolean v2, p0, mStatsChanged:Z

    if-eqz v2, :cond_33

    .line 390
    const-string v2, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, mLogPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Flushing usage stats to disk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    :try_start_1f
    iget-object v2, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v2, v2

    if-ge v1, v2, :cond_30

    .line 393
    iget-object v2, p0, mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v3, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v3, v3, v1

    invoke-virtual {v2, v1, v3}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 395
    :cond_30
    const/4 v2, 0x0

    iput-boolean v2, p0, mStatsChanged:Z
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_33} :catch_34

    .line 400
    .end local v1    # "i":I
    :cond_33
    :goto_33
    return-void

    .line 396
    .restart local v1    # "i":I
    :catch_34
    move-exception v0

    .line 397
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, mLogPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Failed to persist active stats"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33
.end method

.method queryConfigurationStats(IJJ)Ljava/util/List;
    .registers 14
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    sget-object v6, sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method queryEvents(JJ)Landroid/app/usage/UsageEvents;
    .registers 22
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 348
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 349
    .local v6, "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v9, 0x0

    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$4;

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService$4;-><init>(Lcom/android/server/usage/UserUsageStatsService;JJLandroid/util/ArraySet;)V

    move-object/from16 v8, p0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-object v14, v0

    invoke-direct/range {v8 .. v14}, queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v7

    .line 379
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    if-eqz v7, :cond_24

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 380
    :cond_24
    const/4 v0, 0x0

    .line 385
    :goto_25
    return-object v0

    .line 383
    :cond_26
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/String;

    .line 384
    .local v15, "table":[Ljava/lang/String;
    invoke-static {v15}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 385
    new-instance v0, Landroid/app/usage/UsageEvents;

    invoke-direct {v0, v7, v15}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;)V

    goto :goto_25
.end method

.method queryPpmInfo(IJJ)Ljava/util/List;
    .registers 14
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    sget-object v6, sPpmCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method queryUsageStats(IJJ)Ljava/util/List;
    .registers 14
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    sget-object v6, sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;)V
    .registers 15
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x6

    .line 164
    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-object v1, p0, mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_13

    .line 166
    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-direct {p0, v2, v3}, rolloverStats(J)V

    .line 169
    :cond_13
    iget-object v1, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v2, 0x0

    aget-object v7, v1, v2

    .line 171
    .local v7, "currentDailyStats":Lcom/android/server/usage/IntervalStats;
    iget-object v10, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 172
    .local v10, "newFullConfig":Landroid/content/res/Configuration;
    iget v1, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-ne v1, v12, :cond_2a

    iget-object v1, v7, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_2a

    .line 175
    iget-object v1, v7, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    invoke-static {v1, v10}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    iput-object v1, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 180
    :cond_2a
    iget-object v1, v7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    if-nez v1, :cond_39

    .line 182
    iget v1, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v1, v11, :cond_39

    .line 183
    new-instance v1, Landroid/app/usage/TimeSparseArray;

    invoke-direct {v1}, Landroid/app/usage/TimeSparseArray;-><init>()V

    iput-object v1, v7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    .line 190
    :cond_39
    iget v1, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v1, v11, :cond_44

    .line 191
    iget-object v1, v7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v1, v2, v3, p1}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    .line 194
    :cond_44
    iget-object v6, p0, mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .local v6, "arr$":[Lcom/android/server/usage/IntervalStats;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_48
    if-ge v8, v9, :cond_74

    aget-object v0, v6, v8

    .line 195
    .local v0, "stats":Lcom/android/server/usage/IntervalStats;
    iget v1, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-ne v1, v12, :cond_58

    .line 196
    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v0, v10, v2, v3}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 194
    :goto_55
    add-int/lit8 v8, v8, 0x1

    goto :goto_48

    .line 198
    :cond_58
    iget-boolean v1, p0, SAMP_ENABLE:Z

    if-eqz v1, :cond_68

    iget v1, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-ne v1, v11, :cond_68

    .line 199
    iget-object v1, p1, Landroid/app/usage/UsageEvents$Event;->mPprData:Ljava/lang/Object;

    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usage/IntervalStats;->updatePpmInfo(Ljava/lang/Object;J)V

    goto :goto_55

    .line 202
    :cond_68
    iget-object v1, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iget v5, p0, mUserId:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JII)V

    goto :goto_55

    .line 206
    .end local v0    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_74
    invoke-direct {p0}, notifyStatsChanged()V

    .line 207
    return-void
.end method
