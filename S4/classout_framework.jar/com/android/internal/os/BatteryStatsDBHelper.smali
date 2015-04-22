.class public Lcom/android/internal/os/BatteryStatsDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BatteryStatsDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    }
.end annotation


# static fields
.field public static final ALL:I = 0x2

.field public static final ALL_ONLY_APP:I = 0x8

.field public static final ALL_ONLY_APP_CONSUMER_LIST:I = 0x80

.field public static final ALL_ONLY_APP_TOTAL:I = 0x20

.field private static final BATTERY_DELTA:Ljava/lang/String; = "Battery_Delta"

.field public static final BATTERY_PERCENTAGE:I = 0x40

.field private static final COLUMN_BATTERY_DELTA:I = 0x2

.field private static final COLUMN_BATTERY_PERC:I = 0x3

.field private static final COLUMN_CONSUME_NAMES:I = 0x1

.field private static final COLUMN_CONSUME_TIME:I = 0x0

.field private static final COLUMN_DAYCROSS:I = 0x1

.field private static final COLUMN_LAUNCH_TIME:I = 0x1

.field private static final COLUMN_LCD:I = 0x0

.field private static final COLUMN_NETWORK_USAGE:I = 0x5

.field private static final COLUMN_OFFPOWER:I = 0x3

.field private static final COLUMN_PACKAGE_NAME:I = 0x0

.field private static final COLUMN_POWER:I = 0x2

.field private static final COLUMN_SCREEN_USAGE:I = 0x6

.field private static final COLUMN_TIME:I = 0x1

.field private static final COLUMN_TIMESTAMP:I = 0x0

.field private static final COLUMN_TOTALPOWER:I = 0x4

.field private static final COLUMN_USAGE_TIME:I = 0x7

.field private static final COMMA:Ljava/lang/String; = ","

.field private static final DATABASE_NAME:Ljava/lang/String; = "powerManager"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final EXCESS_BATTERY_DRAIN_1HOUR:Ljava/lang/String; = "com.samsung.battery.drain.1hour"

.field public static final EXCESS_BATTERY_DRAIN_24HOURS:Ljava/lang/String; = "com.samsung.battery.drain.24hours"

.field private static final KEY_BATTERY_DELTA:Ljava/lang/String; = "batterydelta"

.field private static final KEY_BATTERY_PERC:Ljava/lang/String; = "batterypercent"

.field private static final KEY_BATT_TIME:Ljava/lang/String; = "battTime"

.field private static final KEY_DAYCROSSED:Ljava/lang/String; = "daycrossed"

.field private static final KEY_LAUNCH_TIME:Ljava/lang/String; = "launchtime"

.field private static final KEY_LCD:Ljava/lang/String; = "lcd_condition"

.field private static final KEY_NETWORK_USAGE:Ljava/lang/String; = "network_usage"

.field private static final KEY_OFFPOWER:Ljava/lang/String; = "offpower"

.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final KEY_POWER:Ljava/lang/String; = "power"

.field private static final KEY_SCREEN_USAGE:Ljava/lang/String; = "screen_usage"

.field private static final KEY_TIME:Ljava/lang/String; = "time"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timeStamp"

.field private static final KEY_TOTALPOWER:Ljava/lang/String; = "totalpower"

.field private static final KEY_USAGE_TIME:Ljava/lang/String; = "usage_time"

.field private static final LAUNCHED_PACKAGES:Ljava/lang/String; = "Launched_packages"

.field public static final LCD_OFF:I = 0x4

.field public static final LCD_OFF_ONLY_APP:I = 0x10

.field private static final META_DATA:Ljava/lang/String; = "android_metadata"

.field private static final MINUTES_OF_DAY:I = 0x5a0

.field private static final NAME_END:Ljava/lang/String; = "]"

.field private static final NAME_START:Ljava/lang/String; = "["

.field private static final NETWORK_USAGE:I = 0x20

.field public static final PACKAGE_NAMES:Ljava/lang/String; = "battery.draining.packages"

.field private static final POWER_CONSUMING_PACKAGES:Ljava/lang/String; = "power_consuming_packages"

.field private static final SCREEN_OFF:I = 0x8

.field private static final SCREEN_ON:I = 0x4

.field private static final SIGNATURE_END:Ljava/lang/String; = ")"

.field private static final SIGNATURE_START:Ljava/lang/String; = "("

.field private static final SYSTEM_APP:I = 0x10

.field private static final TAG:Ljava/lang/String; = "BatteryStatsDBHelper"

.field private static final TOTAL_POWER:Ljava/lang/String; = "all"

.field private static launchedPackageSet:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mBatteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper; = null

.field private static mContext:Landroid/content/Context; = null

.field private static final mNotificationId:I = 0x7b

.field private static notifiedPowerDrainingApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sBatteryCapacity:D


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mFakeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, notifiedPowerDrainingApps:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    const-string/jumbo v0, "powerManager"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 195
    new-instance v0, Lcom/android/internal/os/BatteryStatsDBHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsDBHelper$1;-><init>(Lcom/android/internal/os/BatteryStatsDBHelper;)V

    iput-object v0, p0, mFakeReceiver:Landroid/content/BroadcastReceiver;

    .line 175
    sput-object p1, mContext:Landroid/content/Context;

    .line 176
    invoke-direct {p0}, registerReceiver()V

    .line 177
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .prologue
    .line 30
    sget-object v0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addPowerConsumingApps(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTimeStr"    # Ljava/lang/String;
    .param p3, "names"    # Ljava/lang/String;

    .prologue
    .line 629
    const-string v1, "BatteryStatsDBHelper"

    const-string v2, "Add Power Consuming Apps called "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 631
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string/jumbo v1, "power_consuming_packages"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 634
    return-void
.end method

.method private calculateTimeDiff(ILjava/lang/String;ILjava/lang/String;)I
    .registers 12
    .param p1, "newTime"    # I
    .param p2, "newTimeStr"    # Ljava/lang/String;
    .param p3, "oldTime"    # I
    .param p4, "oldTimeStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 676
    sub-int v1, p1, p3

    .line 677
    .local v1, "diff":I
    if-ltz v1, :cond_6

    .line 687
    .end local v1    # "diff":I
    :goto_5
    return v1

    .line 680
    .restart local v1    # "diff":I
    :cond_6
    const-string v4, ":"

    invoke-virtual {p4, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 681
    .local v3, "times":[Ljava/lang/String;
    aget-object v4, v3, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 682
    .local v0, "dayNum":I
    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 683
    aget-object v4, v3, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 684
    mul-int/lit8 v4, v0, 0x18

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3c

    const/4 v5, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int p1, v4, v5

    .line 685
    sub-int v2, p1, p3

    .line 686
    .local v2, "timeDiff":I
    const-string v4, "BatteryStatsDBHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " calculate Time Diff returned: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 687
    goto :goto_5
.end method

.method private checkForPowerThreshold(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 61
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTimeStr"    # Ljava/lang/String;

    .prologue
    .line 348
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkForPowerThreshold called : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v6, "SELECT name FROM sqlite_master WHERE type=\'table\'"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 350
    .local v17, "c":Landroid/database/Cursor;
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_34

    .line 351
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 352
    const-string v6, "BatteryStatsDBHelper"

    const-string v7, "checkForPowerThreshold:: no tables found, closing cursor"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_33
    :goto_33
    return-void

    .line 355
    :cond_34
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, timeStringToInt(Ljava/lang/String;)I

    move-result v22

    .line 356
    .local v22, "curTime":I
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v51, "sipperListForLastHour":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/UidSipper;>;"
    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v50, "sipperListFor24Hours":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/UidSipper;>;"
    const-wide/16 v56, 0x0

    .local v56, "totalPowerInLastHour":D
    const-wide/16 v48, 0x0

    .line 359
    .local v48, "screenUsageInLastHour":D
    const-wide/16 v54, 0x0

    .local v54, "totalPowerInLast24Hours":D
    const-wide/16 v46, 0x0

    .line 360
    .local v46, "screenUsageIn24Hour":D
    :goto_4e
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_32d

    .line 361
    const-string/jumbo v6, "name"

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 362
    .local v36, "packageName":Ljava/lang/String;
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In checkForPowerThreshold, Package name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v6, "android_metadata"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9b

    const-string v6, "Launched_packages"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9b

    const-string v6, "Battery_Delta"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9f

    .line 367
    :cond_9b
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4e

    .line 371
    :cond_9f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v6}, maintainDayData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 375
    .local v23, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToLast()Z

    move-result v6

    if-nez v6, :cond_11e

    .line 377
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_116

    .line 378
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DROP TABLE IF EXISTS ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 380
    :cond_116
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    .line 381
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4e

    .line 386
    :cond_11e
    const-string v6, "all"

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d2

    .line 387
    const-string v6, "BatteryStatsDBHelper"

    const-string v7, "Calculating screen usage"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v6, 0x6

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v30

    .line 389
    .local v30, "lastScreenPower":D
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 392
    :goto_139
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v6

    if-nez v6, :cond_177

    .line 393
    const/4 v6, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v53

    .line 394
    .local v53, "time":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, timeStringToInt(Ljava/lang/String;)I

    move-result v52

    .line 395
    .local v52, "thisTime":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, p2

    move/from16 v3, v52

    move-object/from16 v4, v53

    invoke-direct {v0, v1, v2, v3, v4}, calculateTimeDiff(ILjava/lang/String;ILjava/lang/String;)I

    move-result v6

    const/16 v7, 0x3c

    if-ge v6, v7, :cond_177

    .line 396
    const/4 v6, 0x6

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v20

    .line 397
    .local v20, "curScreenPower":D
    sub-double v24, v30, v20

    .line 398
    .local v24, "diff":D
    const-wide/16 v6, 0x0

    cmpl-double v6, v24, v6

    if-ltz v6, :cond_171

    .line 399
    add-double v48, v48, v24

    .line 401
    :cond_171
    move-wide/from16 v30, v20

    .line 405
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_139

    .line 409
    .end local v20    # "curScreenPower":D
    .end local v24    # "diff":D
    .end local v52    # "thisTime":I
    .end local v53    # "time":Ljava/lang/String;
    :cond_177
    move-wide/from16 v46, v48

    .line 410
    :goto_179
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v6

    if-nez v6, :cond_196

    .line 411
    const/4 v6, 0x6

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v20

    .line 412
    .restart local v20    # "curScreenPower":D
    sub-double v24, v30, v20

    .line 413
    .restart local v24    # "diff":D
    const-wide/16 v6, 0x0

    cmpl-double v6, v24, v6

    if-ltz v6, :cond_190

    .line 414
    add-double v46, v46, v24

    .line 416
    :cond_190
    move-wide/from16 v30, v20

    .line 417
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_179

    .line 419
    .end local v20    # "curScreenPower":D
    .end local v24    # "diff":D
    :cond_196
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Last hour screen usage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v48

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Last day screen usage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v46

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 422
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4e

    .line 426
    .end local v30    # "lastScreenPower":D
    :cond_1d2
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, maintainNotifiedAppList(ILjava/lang/String;)V

    .line 428
    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    and-int/lit8 v6, v6, 0x10

    const/16 v7, 0x10

    if-ne v6, v7, :cond_23a

    const/16 v28, 0x1

    .line 431
    .local v28, "isSystemUid":Z
    :goto_1ea
    new-instance v29, Lcom/android/internal/os/UidSipper;

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 432
    .local v29, "lcdOffSipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v42, 0x0

    .line 433
    .local v42, "powerInLastHour":D
    const-wide/16 v34, 0x0

    .line 434
    .local v34, "lcdOffPowerInLastHour":D
    :goto_1f7
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v6

    if-nez v6, :cond_240

    .line 435
    const/4 v6, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v53

    .line 436
    .restart local v53    # "time":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, timeStringToInt(Ljava/lang/String;)I

    move-result v52

    .line 437
    .restart local v52    # "thisTime":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, p2

    move/from16 v3, v52

    move-object/from16 v4, v53

    invoke-direct {v0, v1, v2, v3, v4}, calculateTimeDiff(ILjava/lang/String;ILjava/lang/String;)I

    move-result v6

    const/16 v7, 0x3c

    if-ge v6, v7, :cond_240

    .line 438
    const/4 v6, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .line 439
    .local v18, "curPower":D
    add-double v42, v42, v18

    .line 440
    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    and-int/lit8 v6, v6, 0x8

    const/16 v7, 0x8

    if-ne v6, v7, :cond_23d

    .end local v18    # "curPower":D
    :goto_234
    add-double v34, v34, v18

    .line 446
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_1f7

    .line 428
    .end local v28    # "isSystemUid":Z
    .end local v29    # "lcdOffSipper":Lcom/android/internal/os/UidSipper;
    .end local v34    # "lcdOffPowerInLastHour":D
    .end local v42    # "powerInLastHour":D
    .end local v52    # "thisTime":I
    .end local v53    # "time":Ljava/lang/String;
    :cond_23a
    const/16 v28, 0x0

    goto :goto_1ea

    .line 440
    .restart local v18    # "curPower":D
    .restart local v28    # "isSystemUid":Z
    .restart local v29    # "lcdOffSipper":Lcom/android/internal/os/UidSipper;
    .restart local v34    # "lcdOffPowerInLastHour":D
    .restart local v42    # "powerInLastHour":D
    .restart local v52    # "thisTime":I
    .restart local v53    # "time":Ljava/lang/String;
    :cond_23d
    const-wide/16 v18, 0x0

    goto :goto_234

    .line 448
    .end local v18    # "curPower":D
    .end local v52    # "thisTime":I
    .end local v53    # "time":Ljava/lang/String;
    :cond_240
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkForPowerThreshold:: lcdOffPowerInLastHour : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v34

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    move-object/from16 v0, v29

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    .line 451
    add-double v56, v56, v42

    .line 452
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkForPowerThreshold:: Total Power in last hour : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v56

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    if-nez v28, :cond_2ac

    .line 455
    move-object/from16 v0, v51

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Added in Sipper List for last Hour :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_2ac
    move-wide/from16 v40, v42

    .line 461
    .local v40, "powerInLast24Hours":D
    move-wide/from16 v32, v34

    .line 462
    .local v32, "lcdOffPowerIn24Hours":D
    :goto_2b0
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v6

    if-nez v6, :cond_2d5

    .line 463
    const/4 v6, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .line 464
    .restart local v18    # "curPower":D
    add-double v40, v40, v18

    .line 465
    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    and-int/lit8 v6, v6, 0x8

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2d2

    .end local v18    # "curPower":D
    :goto_2cc
    add-double v32, v32, v18

    .line 467
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_2b0

    .line 465
    .restart local v18    # "curPower":D
    :cond_2d2
    const-wide/16 v18, 0x0

    goto :goto_2cc

    .line 469
    .end local v18    # "curPower":D
    :cond_2d5
    move-object/from16 v0, v29

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    .line 470
    add-double v54, v54, v40

    .line 471
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Total Power in last 24 hours : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v54

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    if-nez v28, :cond_325

    sget-object v6, notifiedPowerDrainingApps:Ljava/util/HashMap;

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_325

    .line 473
    move-object/from16 v0, v50

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Added in Sipper List for 24 Hours :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_325
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 478
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4e

    .line 480
    .end local v23    # "cursor":Landroid/database/Cursor;
    .end local v28    # "isSystemUid":Z
    .end local v29    # "lcdOffSipper":Lcom/android/internal/os/UidSipper;
    .end local v32    # "lcdOffPowerIn24Hours":D
    .end local v34    # "lcdOffPowerInLastHour":D
    .end local v36    # "packageName":Ljava/lang/String;
    .end local v40    # "powerInLast24Hours":D
    .end local v42    # "powerInLastHour":D
    :cond_32d
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 483
    const-string v7, "Battery_Delta"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 484
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToLast()Z

    move-result v6

    if-nez v6, :cond_350

    .line 485
    const-string v6, "BatteryStatsDBHelper"

    const-string v7, "Battery Delta Database is empty, everything is in vain :("

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_33

    .line 491
    :cond_350
    const/16 v16, 0x0

    .line 492
    .local v16, "batteryDeltaInLastHour":I
    :goto_352
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v6

    if-nez v6, :cond_386

    .line 493
    const/4 v6, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v53

    .line 494
    .restart local v53    # "time":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, timeStringToInt(Ljava/lang/String;)I

    move-result v52

    .line 495
    .restart local v52    # "thisTime":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, p2

    move/from16 v3, v52

    move-object/from16 v4, v53

    invoke-direct {v0, v1, v2, v3, v4}, calculateTimeDiff(ILjava/lang/String;ILjava/lang/String;)I

    move-result v6

    const/16 v7, 0x3c

    if-ge v6, v7, :cond_386

    .line 496
    const/4 v6, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    add-int v16, v16, v6

    .line 500
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_352

    .line 504
    .end local v52    # "thisTime":I
    .end local v53    # "time":Ljava/lang/String;
    :cond_386
    move/from16 v15, v16

    .line 505
    .local v15, "batteryDeltaInLast24Hours":I
    :goto_388
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v6

    if-nez v6, :cond_39a

    .line 506
    const/4 v6, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    add-int/2addr v15, v6

    .line 507
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_388

    .line 509
    :cond_39a
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 512
    if-nez v16, :cond_3a1

    .line 513
    const/16 v16, 0x1

    .line 515
    :cond_3a1
    if-nez v15, :cond_3a4

    .line 516
    const/4 v15, 0x1

    .line 520
    :cond_3a4
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    .line 521
    .local v44, "sb":Ljava/lang/StringBuilder;
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v37, "powerConsumingAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "i$":Ljava/util/Iterator;
    :cond_3b2
    :goto_3b2
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_472

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/internal/os/UidSipper;

    .line 523
    .local v45, "sipper":Lcom/android/internal/os/UidSipper;
    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/os/UidSipper;->getTotalPower()D

    move-result-wide v6

    move/from16 v0, v16

    int-to-double v8, v0

    mul-double/2addr v6, v8

    add-double v8, v56, v48

    div-double v38, v6, v8

    .line 525
    .local v38, "percentage":D
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    iget-object v8, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " calculating percentage: totalPower"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/os/UidSipper;->getTotalPower()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " batteryDeltaInLastHour: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " totalPowerInLastHour: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v56

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " screenUsageInLastHour: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v48

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " percentage: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v38

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v38, v6

    if-lez v6, :cond_3b2

    .line 530
    move-object/from16 v0, v45

    iget-object v6, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    const-string v6, ";"

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    sget-object v6, notifiedPowerDrainingApps:Ljava/util/HashMap;

    move-object/from16 v0, v45

    iget-object v7, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3b2

    .line 535
    move-object/from16 v0, v45

    iget-object v6, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    sget-object v6, notifiedPowerDrainingApps:Ljava/util/HashMap;

    move-object/from16 v0, v45

    iget-object v7, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    iget-object v8, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has consumed more than 1% battery in last 1 hour"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b2

    .line 540
    .end local v38    # "percentage":D
    .end local v45    # "sipper":Lcom/android/internal/os/UidSipper;
    :cond_472
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4a4

    .line 541
    const-string v6, "BatteryStatsDBHelper"

    const-string v7, " Sending EXCESS_DRAIN broadcast"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    new-instance v26, Landroid/content/Intent;

    const-string v6, "com.samsung.battery.drain.1hour"

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 543
    .local v26, "i":Landroid/content/Intent;
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v14, v6, [Ljava/lang/String;

    .line 544
    .local v14, "appArray":[Ljava/lang/String;
    const-string v7, "battery.draining.packages"

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    sget-object v6, mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 549
    .end local v14    # "appArray":[Ljava/lang/String;
    .end local v26    # "i":Landroid/content/Intent;
    :cond_4a4
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    .line 550
    invoke-virtual/range {v50 .. v50}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_4ab
    :goto_4ab
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_54b

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/internal/os/UidSipper;

    .line 551
    .restart local v45    # "sipper":Lcom/android/internal/os/UidSipper;
    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/os/UidSipper;->getTotalPower()D

    move-result-wide v6

    int-to-double v8, v15

    mul-double/2addr v6, v8

    add-double v8, v54, v46

    div-double v38, v6, v8

    .line 553
    .restart local v38    # "percentage":D
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    iget-object v8, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " calculating percentage: totalPower"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v45 .. v45}, Lcom/android/internal/os/UidSipper;->getTotalPower()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " batteryDeltaInLast24Hours: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " totalPowerInLast24Hours: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v54

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " screenUsageIn24Hour: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v46

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " percentage: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v38

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    cmpl-double v6, v38, v6

    if-lez v6, :cond_4ab

    .line 558
    move-object/from16 v0, v45

    iget-object v6, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    sget-object v6, notifiedPowerDrainingApps:Ljava/util/HashMap;

    move-object/from16 v0, v45

    iget-object v7, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    iget-object v8, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has consumed more than 8% battery in last 24 hours"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4ab

    .line 563
    .end local v38    # "percentage":D
    .end local v45    # "sipper":Lcom/android/internal/os/UidSipper;
    :cond_54b
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_33

    .line 564
    const-string v6, "BatteryStatsDBHelper"

    const-string v7, " Sending EXCESS_DRAIN broadcast for 24 hours"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    new-instance v26, Landroid/content/Intent;

    const-string v6, "com.samsung.battery.drain.24hours"

    move-object/from16 v0, v26

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 566
    .restart local v26    # "i":Landroid/content/Intent;
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v14, v6, [Ljava/lang/String;

    .line 567
    .restart local v14    # "appArray":[Ljava/lang/String;
    const-string v7, "battery.draining.packages"

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    sget-object v6, mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_33
.end method

.method public static deleteDatabase()Z
    .registers 3

    .prologue
    .line 1234
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/powerManager"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v0

    .line 1235
    .local v0, "ret":Z
    if-eqz v0, :cond_15

    .line 1236
    const-string v1, "BatteryStatsDBHelper"

    const-string v2, "Database has been deleted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :goto_14
    return v0

    .line 1238
    :cond_15
    const-string v1, "BatteryStatsDBHelper"

    const-string v2, "Database was not deleted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private formatTime(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0xa

    .line 1217
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1218
    .local v3, "times":[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1219
    .local v0, "hour":I
    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1220
    .local v1, "min":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1221
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-ge v0, v5, :cond_22

    .line 1222
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    :cond_22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1225
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    if-ge v1, v5, :cond_31

    .line 1227
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    :cond_31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1230
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static generateLaunchedPackageSet(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 10
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v2, 0x0

    .line 1198
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, launchedPackageSet:Ljava/util/Set;

    .line 1199
    const-string v1, "Launched_packages"

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1200
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1201
    :goto_1a
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1202
    sget-object v0, launchedPackageSet:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1203
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1a

    .line 1206
    :cond_2e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1207
    return-void
.end method

.method private declared-synchronized getBatteryPercentageList()[B
    .registers 16

    .prologue
    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 1070
    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 1071
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v11, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct {v11}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .line 1072
    .local v11, "result":Lcom/android/internal/os/UidSipperImpl;
    new-instance v1, Lcom/android/internal/os/UidSipper;

    const-string v6, "Battery"

    invoke-direct {v1, v6}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 1073
    .local v1, "sipper":Lcom/android/internal/os/UidSipper;
    const-string v12, "SELECT  * FROM Battery_Delta"

    .line 1075
    .local v12, "selectQuery":Ljava/lang/String;
    invoke-virtual {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 1076
    const/4 v6, 0x0

    invoke-virtual {v9, v12, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1080
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_50

    .line 1081
    :goto_24
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_50

    .line 1082
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4e

    move v3, v13

    .line 1083
    .local v3, "lcdOn":Z
    :goto_33
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, formatTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1084
    .local v2, "time":Ljava/lang/String;
    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-double v4, v6

    .line 1085
    .local v4, "batteryPerc":D
    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(Ljava/lang/String;ZDD)V

    .line 1086
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_4b

    goto :goto_24

    .line 1070
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v2    # "time":Ljava/lang/String;
    .end local v3    # "lcdOn":Z
    .end local v4    # "batteryPerc":D
    .end local v9    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "result":Lcom/android/internal/os/UidSipperImpl;
    .end local v12    # "selectQuery":Ljava/lang/String;
    :catchall_4b
    move-exception v6

    monitor-exit p0

    throw v6

    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "sipper":Lcom/android/internal/os/UidSipper;
    .restart local v9    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11    # "result":Lcom/android/internal/os/UidSipperImpl;
    .restart local v12    # "selectQuery":Ljava/lang/String;
    :cond_4e
    move v3, v14

    .line 1082
    goto :goto_33

    .line 1089
    :cond_50
    :try_start_50
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1090
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1092
    invoke-virtual {v11, v1}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    .line 1094
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 1095
    .local v10, "out":Landroid/os/Parcel;
    invoke-virtual {v11, v10}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    .line 1096
    invoke-virtual {v10}, Landroid/os/Parcel;->marshall()[B

    move-result-object v8

    .line 1097
    .local v8, "data":[B
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V
    :try_end_67
    .catchall {:try_start_50 .. :try_end_67} :catchall_4b

    .line 1098
    monitor-exit p0

    return-object v8
.end method

.method private declared-synchronized getConsumerListOnlyApp()[B
    .registers 26

    .prologue
    .line 1103
    monitor-enter p0

    :try_start_1
    const-string v8, "BatteryStatsDBHelper"

    const-string v9, "getConsumerListOnlyApp"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    invoke-virtual/range {p0 .. p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    .line 1105
    .local v14, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v19, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .line 1107
    .local v19, "result":Lcom/android/internal/os/UidSipperImpl;
    const-string v8, "SELECT name FROM sqlite_master WHERE type=\'table\'"

    const/4 v9, 0x0

    invoke-virtual {v14, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1108
    .local v2, "c":Landroid/database/Cursor;
    const-wide/16 v10, 0x0

    .line 1109
    .local v10, "allUidTotalPower":D
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_153

    .line 1110
    :goto_20
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_146

    .line 1111
    const-string/jumbo v8, "name"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1114
    .local v21, "val":Ljava/lang/String;
    const-string v8, "android_metadata"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_64

    const-string v8, "Launched_packages"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_64

    const-string v8, "Battery_Delta"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_64

    const-string v8, "all"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_64

    const-string/jumbo v8, "power_consuming_packages"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6b

    .line 1117
    :cond_64
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_67
    .catchall {:try_start_1 .. :try_end_67} :catchall_68

    goto :goto_20

    .line 1103
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v10    # "allUidTotalPower":D
    .end local v14    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v19    # "result":Lcom/android/internal/os/UidSipperImpl;
    .end local v21    # "val":Ljava/lang/String;
    :catchall_68
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1121
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v10    # "allUidTotalPower":D
    .restart local v14    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v19    # "result":Lcom/android/internal/os/UidSipperImpl;
    .restart local v21    # "val":Ljava/lang/String;
    :cond_6b
    :try_start_6b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT  * FROM ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1122
    .local v20, "selectQuery":Ljava/lang/String;
    const/4 v8, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1123
    .local v12, "cursor":Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1125
    const/4 v8, 0x0

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1126
    .local v16, "lcdNtype":I
    and-int/lit8 v8, v16, 0x10

    const/16 v9, 0x10

    if-ne v8, v9, :cond_aa

    .line 1127
    const-string v8, "BatteryStatsDBHelper"

    const-string v9, "System app"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1129
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_20

    .line 1133
    :cond_aa
    new-instance v3, Lcom/android/internal/os/UidSipper;

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 1136
    .local v3, "sipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v22, 0x0

    .local v22, "totalPower":D
    const-wide/16 v6, 0x0

    .line 1137
    .local v6, "power":D
    const/4 v15, 0x0

    .line 1138
    .local v15, "isUsingNetwork":Z
    :goto_b6
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_ee

    .line 1139
    const/4 v8, 0x0

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1140
    const/4 v8, 0x1

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, formatTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1141
    .local v4, "time":Ljava/lang/String;
    and-int/lit8 v8, v16, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_ea

    const/4 v5, 0x1

    .line 1142
    .local v5, "lcdOn":Z
    :goto_d2
    const/4 v8, 0x2

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    .line 1143
    const-wide/16 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(Ljava/lang/String;ZDD)V

    .line 1144
    add-double v22, v22, v6

    .line 1145
    and-int/lit8 v8, v16, 0x20

    const/16 v9, 0x20

    if-ne v8, v9, :cond_ec

    const/4 v8, 0x1

    :goto_e5
    or-int/2addr v15, v8

    .line 1146
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_b6

    .line 1141
    .end local v5    # "lcdOn":Z
    :cond_ea
    const/4 v5, 0x0

    goto :goto_d2

    .line 1145
    .restart local v5    # "lcdOn":Z
    :cond_ec
    const/4 v8, 0x0

    goto :goto_e5

    .line 1148
    .end local v4    # "time":Ljava/lang/String;
    .end local v5    # "lcdOn":Z
    :cond_ee
    const-string v8, "BatteryStatsDBHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v24, " power:"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iget-object v8, v3, Lcom/android/internal/os/UidSipper;->batterySipStats:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_138

    .line 1151
    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    .line 1152
    add-double v10, v10, v22

    .line 1153
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, isAppLaunchedWithinLastDay(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_140

    .line 1154
    invoke-virtual {v3}, Lcom/android/internal/os/UidSipper;->makeUserLaunch()V

    .line 1158
    :cond_12c
    :goto_12c
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    .line 1159
    const-string v8, "BatteryStatsDBHelper"

    const-string v9, "added"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_138
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1163
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_20

    .line 1155
    :cond_140
    if-eqz v15, :cond_12c

    .line 1156
    invoke-virtual {v3}, Lcom/android/internal/os/UidSipper;->makeNetworkUser()V

    goto :goto_12c

    .line 1166
    .end local v3    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v6    # "power":D
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v15    # "isUsingNetwork":Z
    .end local v16    # "lcdNtype":I
    .end local v20    # "selectQuery":Ljava/lang/String;
    .end local v21    # "val":Ljava/lang/String;
    .end local v22    # "totalPower":D
    :cond_146
    const-wide/16 v8, 0x0

    cmpg-double v8, v10, v8

    if-gtz v8, :cond_14e

    .line 1167
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 1168
    :cond_14e
    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Lcom/android/internal/os/UidSipperImpl;->setFinalPower(D)V

    .line 1170
    :cond_153
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1173
    const-string v20, "SELECT  * FROM power_consuming_packages"

    .line 1174
    .restart local v20    # "selectQuery":Ljava/lang/String;
    const/4 v8, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1176
    .restart local v12    # "cursor":Landroid/database/Cursor;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/UidSipperImpl;->initializeConsumerList()V

    .line 1179
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_189

    .line 1180
    :goto_168
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_189

    .line 1181
    const/4 v8, 0x0

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, formatTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1182
    .restart local v4    # "time":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1183
    .local v17, "names":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/os/UidSipperImpl;->addConsumerPackages(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_168

    .line 1187
    .end local v4    # "time":Ljava/lang/String;
    .end local v17    # "names":Ljava/lang/String;
    :cond_189
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1189
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v18

    .line 1191
    .local v18, "out":Landroid/os/Parcel;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    .line 1192
    invoke-virtual/range {v18 .. v18}, Landroid/os/Parcel;->marshall()[B

    move-result-object v13

    .line 1193
    .local v13, "data":[B
    invoke-virtual/range {v18 .. v18}, Landroid/os/Parcel;->recycle()V
    :try_end_1a1
    .catchall {:try_start_6b .. :try_end_1a1} :catchall_68

    .line 1194
    monitor-exit p0

    return-object v13
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/os/BatteryStatsDBHelper;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    sget-object v1, mBatteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    if-nez v1, :cond_b

    .line 181
    new-instance v1, Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-direct {v1, p0}, <init>(Landroid/content/Context;)V

    sput-object v1, mBatteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    .line 183
    :cond_b
    sget-object v1, mBatteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v1}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 184
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, generateLaunchedPackageSet(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 185
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 186
    sget-object v1, mBatteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    return-object v1
.end method

.method private getLastEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .registers 15
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 692
    .local v11, "selectQuery":Ljava/lang/String;
    invoke-virtual {p1, v11, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 693
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 694
    .local v1, "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 695
    new-instance v1, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;

    .end local v1    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;-><init>(Lcom/android/internal/os/BatteryStatsDBHelper;Ljava/lang/String;DDJLcom/android/internal/os/BatteryStatsDBHelper$1;)V

    .line 699
    .restart local v1    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    :cond_3f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 700
    return-object v1
.end method

.method private declared-synchronized getScreenOffUsageList(Z)[B
    .registers 34
    .param p1, "needOffList"    # Z

    .prologue
    .line 874
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v22

    .line 875
    .local v22, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v27, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct/range {v27 .. v27}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .line 877
    .local v27, "result":Lcom/android/internal/os/UidSipperImpl;
    const-string v10, "SELECT name FROM sqlite_master WHERE type=\'table\'"

    const/4 v11, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 878
    .local v4, "c":Landroid/database/Cursor;
    const-wide/16 v18, 0x0

    .line 879
    .local v18, "allUidTotalPower":D
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_187

    .line 880
    :goto_1b
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_178

    .line 881
    const-string/jumbo v10, "name"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 884
    .local v29, "val":Ljava/lang/String;
    const-string v10, "android_metadata"

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5f

    const-string v10, "Launched_packages"

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5f

    const-string v10, "Battery_Delta"

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5f

    const-string v10, "all"

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5f

    const-string/jumbo v10, "power_consuming_packages"

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_66

    .line 887
    :cond_5f
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_62
    .catchall {:try_start_1 .. :try_end_62} :catchall_63

    goto :goto_1b

    .line 874
    .end local v4    # "c":Landroid/database/Cursor;
    .end local v18    # "allUidTotalPower":D
    .end local v22    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v27    # "result":Lcom/android/internal/os/UidSipperImpl;
    .end local v29    # "val":Ljava/lang/String;
    :catchall_63
    move-exception v10

    monitor-exit p0

    throw v10

    .line 891
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local v18    # "allUidTotalPower":D
    .restart local v22    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v27    # "result":Lcom/android/internal/os/UidSipperImpl;
    .restart local v29    # "val":Ljava/lang/String;
    :cond_66
    :try_start_66
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT  * FROM ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 892
    .local v28, "selectQuery":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 893
    .local v20, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 894
    new-instance v5, Lcom/android/internal/os/UidSipper;

    move-object/from16 v0, v29

    invoke-direct {v5, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 897
    .local v5, "sipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v30, 0x0

    .local v30, "totalPower":D
    const-wide/16 v8, 0x0

    .line 898
    .local v8, "power":D
    const/16 v25, 0x0

    .line 899
    .local v25, "lcdNtype":I
    const/16 v24, 0x0

    .line 900
    .local v24, "isUsingNetwork":Z
    const/4 v10, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    and-int/lit8 v10, v10, 0x10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_e8

    const/16 v23, 0x1

    .line 901
    .local v23, "isSystemApp":Z
    :goto_ab
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_120

    .line 902
    const/4 v10, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 903
    if-nez p1, :cond_ef

    .line 904
    const/4 v10, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, formatTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 905
    .local v6, "time":Ljava/lang/String;
    and-int/lit8 v10, v25, 0x4

    const/4 v11, 0x4

    if-ne v10, v11, :cond_eb

    const/4 v7, 0x1

    .line 906
    .local v7, "lcdOn":Z
    :goto_cd
    const/4 v10, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    .line 907
    const-wide/16 v10, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(Ljava/lang/String;ZDD)V

    .line 908
    add-double v30, v30, v8

    .line 909
    and-int/lit8 v10, v25, 0x20

    const/16 v11, 0x20

    if-ne v10, v11, :cond_ed

    const/4 v10, 0x1

    :goto_e2
    or-int v24, v24, v10

    .line 917
    .end local v6    # "time":Ljava/lang/String;
    .end local v7    # "lcdOn":Z
    :cond_e4
    :goto_e4
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_ab

    .line 900
    .end local v23    # "isSystemApp":Z
    :cond_e8
    const/16 v23, 0x0

    goto :goto_ab

    .line 905
    .restart local v6    # "time":Ljava/lang/String;
    .restart local v23    # "isSystemApp":Z
    :cond_eb
    const/4 v7, 0x0

    goto :goto_cd

    .line 909
    .restart local v7    # "lcdOn":Z
    :cond_ed
    const/4 v10, 0x0

    goto :goto_e2

    .line 910
    .end local v6    # "time":Ljava/lang/String;
    .end local v7    # "lcdOn":Z
    :cond_ef
    and-int/lit8 v10, v25, 0x8

    const/16 v11, 0x8

    if-ne v10, v11, :cond_e4

    .line 911
    const/4 v10, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, formatTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 912
    .restart local v6    # "time":Ljava/lang/String;
    const/4 v10, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    .line 913
    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    move-object v11, v5

    move-object v12, v6

    move-wide v14, v8

    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(Ljava/lang/String;ZDD)V

    .line 914
    add-double v30, v30, v8

    .line 915
    and-int/lit8 v10, v25, 0x20

    const/16 v11, 0x20

    if-ne v10, v11, :cond_11e

    const/4 v10, 0x1

    :goto_11b
    or-int v24, v24, v10

    goto :goto_e4

    :cond_11e
    const/4 v10, 0x0

    goto :goto_11b

    .line 919
    .end local v6    # "time":Ljava/lang/String;
    :cond_120
    const-string v10, "BatteryStatsDBHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " power:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v30

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v10, v5, Lcom/android/internal/os/UidSipper;->batterySipStats:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_168

    .line 922
    move-wide/from16 v0, v30

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    .line 923
    add-double v18, v18, v30

    .line 924
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, isAppLaunchedWithinLastDay(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_170

    .line 925
    invoke-virtual {v5}, Lcom/android/internal/os/UidSipper;->makeUserLaunch()V

    .line 929
    :cond_15c
    :goto_15c
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    .line 930
    const-string v10, "BatteryStatsDBHelper"

    const-string v11, "added"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_168
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 934
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1b

    .line 926
    :cond_170
    if-eqz v24, :cond_15c

    if-nez v23, :cond_15c

    .line 927
    invoke-virtual {v5}, Lcom/android/internal/os/UidSipper;->makeNetworkUser()V

    goto :goto_15c

    .line 936
    .end local v5    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v8    # "power":D
    .end local v20    # "cursor":Landroid/database/Cursor;
    .end local v23    # "isSystemApp":Z
    .end local v24    # "isUsingNetwork":Z
    .end local v25    # "lcdNtype":I
    .end local v28    # "selectQuery":Ljava/lang/String;
    .end local v29    # "val":Ljava/lang/String;
    .end local v30    # "totalPower":D
    :cond_178
    const-wide/16 v10, 0x0

    cmpg-double v10, v18, v10

    if-gtz v10, :cond_180

    .line 937
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 938
    :cond_180
    move-object/from16 v0, v27

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/UidSipperImpl;->setFinalPower(D)V

    .line 940
    :cond_187
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 941
    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 942
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v26

    .line 943
    .local v26, "out":Landroid/os/Parcel;
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    .line 944
    invoke-virtual/range {v26 .. v26}, Landroid/os/Parcel;->marshall()[B

    move-result-object v21

    .line 945
    .local v21, "data":[B
    invoke-virtual/range {v26 .. v26}, Landroid/os/Parcel;->recycle()V
    :try_end_19f
    .catchall {:try_start_66 .. :try_end_19f} :catchall_63

    .line 946
    monitor-exit p0

    return-object v21
.end method

.method private declared-synchronized getScreenOffUsageListOnlyApp(Z)[B
    .registers 33
    .param p1, "needOffList"    # Z

    .prologue
    .line 950
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v22

    .line 951
    .local v22, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v26, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct/range {v26 .. v26}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .line 953
    .local v26, "result":Lcom/android/internal/os/UidSipperImpl;
    const-string v10, "SELECT name FROM sqlite_master WHERE type=\'table\'"

    const/4 v11, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 954
    .local v4, "c":Landroid/database/Cursor;
    const-wide/16 v18, 0x0

    .line 955
    .local v18, "allUidTotalPower":D
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_18d

    .line 956
    :goto_1b
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_17e

    .line 957
    const-string/jumbo v10, "name"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 960
    .local v30, "val":Ljava/lang/String;
    const-string v10, "android_metadata"

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5f

    const-string v10, "Launched_packages"

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5f

    const-string v10, "Battery_Delta"

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5f

    const-string v10, "all"

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5f

    const-string/jumbo v10, "power_consuming_packages"

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_66

    .line 963
    :cond_5f
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_62
    .catchall {:try_start_1 .. :try_end_62} :catchall_63

    goto :goto_1b

    .line 950
    .end local v4    # "c":Landroid/database/Cursor;
    .end local v18    # "allUidTotalPower":D
    .end local v22    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v26    # "result":Lcom/android/internal/os/UidSipperImpl;
    .end local v30    # "val":Ljava/lang/String;
    :catchall_63
    move-exception v10

    monitor-exit p0

    throw v10

    .line 967
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local v18    # "allUidTotalPower":D
    .restart local v22    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v26    # "result":Lcom/android/internal/os/UidSipperImpl;
    .restart local v30    # "val":Ljava/lang/String;
    :cond_66
    :try_start_66
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT  * FROM ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 968
    .local v27, "selectQuery":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 969
    .local v20, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 971
    const/4 v10, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 972
    .local v24, "lcdNtype":I
    and-int/lit8 v10, v24, 0x10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_a9

    .line 973
    const-string v10, "BatteryStatsDBHelper"

    const-string v11, "System app"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 975
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1b

    .line 979
    :cond_a9
    new-instance v5, Lcom/android/internal/os/UidSipper;

    move-object/from16 v0, v30

    invoke-direct {v5, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 982
    .local v5, "sipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v28, 0x0

    .local v28, "totalPower":D
    const-wide/16 v8, 0x0

    .line 983
    .local v8, "power":D
    const/16 v23, 0x0

    .line 984
    .local v23, "isUsingNetwork":Z
    :goto_b6
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_128

    .line 985
    const/4 v10, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 986
    if-nez p1, :cond_f7

    .line 987
    const/4 v10, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, formatTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 988
    .local v6, "time":Ljava/lang/String;
    and-int/lit8 v10, v24, 0x4

    const/4 v11, 0x4

    if-ne v10, v11, :cond_f3

    const/4 v7, 0x1

    .line 989
    .local v7, "lcdOn":Z
    :goto_d8
    const/4 v10, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    .line 990
    const-wide/16 v10, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(Ljava/lang/String;ZDD)V

    .line 991
    add-double v28, v28, v8

    .line 992
    and-int/lit8 v10, v24, 0x20

    const/16 v11, 0x20

    if-ne v10, v11, :cond_f5

    const/4 v10, 0x1

    :goto_ed
    or-int v23, v23, v10

    .line 1000
    .end local v6    # "time":Ljava/lang/String;
    .end local v7    # "lcdOn":Z
    :cond_ef
    :goto_ef
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_b6

    .line 988
    .restart local v6    # "time":Ljava/lang/String;
    :cond_f3
    const/4 v7, 0x0

    goto :goto_d8

    .line 992
    .restart local v7    # "lcdOn":Z
    :cond_f5
    const/4 v10, 0x0

    goto :goto_ed

    .line 993
    .end local v6    # "time":Ljava/lang/String;
    .end local v7    # "lcdOn":Z
    :cond_f7
    const/16 v10, 0x8

    move/from16 v0, v24

    if-ne v0, v10, :cond_ef

    .line 994
    const/4 v10, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, formatTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 995
    .restart local v6    # "time":Ljava/lang/String;
    const/4 v10, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    .line 996
    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    move-object v11, v5

    move-object v12, v6

    move-wide v14, v8

    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(Ljava/lang/String;ZDD)V

    .line 997
    add-double v28, v28, v8

    .line 998
    and-int/lit8 v10, v24, 0x20

    const/16 v11, 0x20

    if-ne v10, v11, :cond_126

    const/4 v10, 0x1

    :goto_123
    or-int v23, v23, v10

    goto :goto_ef

    :cond_126
    const/4 v10, 0x0

    goto :goto_123

    .line 1002
    .end local v6    # "time":Ljava/lang/String;
    :cond_128
    const-string v10, "BatteryStatsDBHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " power:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v28

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iget-object v10, v5, Lcom/android/internal/os/UidSipper;->batterySipStats:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_170

    .line 1005
    move-wide/from16 v0, v28

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    .line 1006
    add-double v18, v18, v28

    .line 1007
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, isAppLaunchedWithinLastDay(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_178

    .line 1008
    invoke-virtual {v5}, Lcom/android/internal/os/UidSipper;->makeUserLaunch()V

    .line 1012
    :cond_164
    :goto_164
    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    .line 1013
    const-string v10, "BatteryStatsDBHelper"

    const-string v11, "added"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_170
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1017
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1b

    .line 1009
    :cond_178
    if-eqz v23, :cond_164

    .line 1010
    invoke-virtual {v5}, Lcom/android/internal/os/UidSipper;->makeNetworkUser()V

    goto :goto_164

    .line 1020
    .end local v5    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v8    # "power":D
    .end local v20    # "cursor":Landroid/database/Cursor;
    .end local v23    # "isUsingNetwork":Z
    .end local v24    # "lcdNtype":I
    .end local v27    # "selectQuery":Ljava/lang/String;
    .end local v28    # "totalPower":D
    .end local v30    # "val":Ljava/lang/String;
    :cond_17e
    const-wide/16 v10, 0x0

    cmpg-double v10, v18, v10

    if-gtz v10, :cond_186

    .line 1021
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 1022
    :cond_186
    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/UidSipperImpl;->setFinalPower(D)V

    .line 1025
    :cond_18d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1026
    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1027
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v25

    .line 1028
    .local v25, "out":Landroid/os/Parcel;
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    .line 1029
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->marshall()[B

    move-result-object v21

    .line 1030
    .local v21, "data":[B
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->recycle()V
    :try_end_1a5
    .catchall {:try_start_66 .. :try_end_1a5} :catchall_63

    .line 1031
    monitor-exit p0

    return-object v21
.end method

.method private declared-synchronized getTotalUsageList()[B
    .registers 20

    .prologue
    .line 1035
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 1036
    .local v11, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v14, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct {v14}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .line 1037
    .local v14, "result":Lcom/android/internal/os/UidSipperImpl;
    const-string v15, "SELECT  * FROM [all]"

    .line 1038
    .local v15, "selectQuery":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v11, v15, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1039
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1040
    new-instance v3, Lcom/android/internal/os/UidSipper;

    const-string v8, "all"

    invoke-direct {v3, v8}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 1042
    .local v3, "sipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v16, 0x0

    .local v16, "totalPower":D
    const-wide/16 v6, 0x0

    .line 1045
    .local v6, "power":D
    :goto_1f
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_4e

    .line 1046
    const/4 v8, 0x1

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, formatTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1047
    .local v4, "time":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1048
    .local v12, "lcdNtype":I
    const/4 v8, 0x4

    if-ne v12, v8, :cond_4c

    const/4 v5, 0x1

    .line 1049
    .local v5, "lcdOn":Z
    :goto_39
    const/4 v8, 0x2

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    .line 1050
    const-wide/16 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(Ljava/lang/String;ZDD)V

    .line 1051
    add-double v16, v16, v6

    .line 1052
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_49

    goto :goto_1f

    .line 1035
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v4    # "time":Ljava/lang/String;
    .end local v5    # "lcdOn":Z
    .end local v6    # "power":D
    .end local v11    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "lcdNtype":I
    .end local v14    # "result":Lcom/android/internal/os/UidSipperImpl;
    .end local v15    # "selectQuery":Ljava/lang/String;
    .end local v16    # "totalPower":D
    :catchall_49
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1048
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "sipper":Lcom/android/internal/os/UidSipper;
    .restart local v4    # "time":Ljava/lang/String;
    .restart local v6    # "power":D
    .restart local v11    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "lcdNtype":I
    .restart local v14    # "result":Lcom/android/internal/os/UidSipperImpl;
    .restart local v15    # "selectQuery":Ljava/lang/String;
    .restart local v16    # "totalPower":D
    :cond_4c
    const/4 v5, 0x0

    goto :goto_39

    .line 1054
    .end local v4    # "time":Ljava/lang/String;
    .end local v12    # "lcdNtype":I
    :cond_4e
    :try_start_4e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1055
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1057
    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    .line 1058
    invoke-virtual {v14, v3}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    .line 1059
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lcom/android/internal/os/UidSipperImpl;->setFinalPower(D)V

    .line 1060
    const-string v8, "BatteryStatsDBHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Final set to all = "

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    .line 1063
    .local v13, "out":Landroid/os/Parcel;
    invoke-virtual {v14, v13}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    .line 1064
    invoke-virtual {v13}, Landroid/os/Parcel;->marshall()[B

    move-result-object v10

    .line 1065
    .local v10, "data":[B
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V
    :try_end_8b
    .catchall {:try_start_4e .. :try_end_8b} :catchall_49

    .line 1066
    monitor-exit p0

    return-object v10
.end method

.method private isAppLaunchedWithinLastDay(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1210
    sget-object v0, launchedPackageSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1211
    const/4 v0, 0x1

    .line 1213
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private maintainDayData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTimeStr"    # Ljava/lang/String;
    .param p3, "TABLE_PROCESS"    # Ljava/lang/String;

    .prologue
    .line 573
    const-string v1, "BatteryStatsDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking to remove old data from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " before adding this new one at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 578
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 579
    .local v13, "rowId":Ljava/lang/String;
    const/4 v11, 0x1

    .line 581
    .local v11, "cursorFinished":Z
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, timeStringToInt(Ljava/lang/String;)I

    move-result v9

    .line 583
    .local v9, "curTime":I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_de

    .line 584
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 585
    invoke-direct {p0, v13}, timeStringToInt(Ljava/lang/String;)I

    move-result v12

    .line 586
    .local v12, "firstTime":I
    const-string v1, "BatteryStatsDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "First entry has timestamp as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const/4 v11, 0x0

    .line 595
    :goto_63
    if-nez v11, :cond_e4

    move-object/from16 v0, p2

    invoke-direct {p0, v9, v0, v12, v13}, calculateTimeDiff(ILjava/lang/String;ILjava/lang/String;)I

    move-result v1

    const/16 v2, 0x5a0

    if-lt v1, v2, :cond_e4

    .line 596
    const-string v1, "BatteryStatsDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting entry for time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "in table name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v13, v2, v3

    move-object/from16 v0, p3

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 601
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 602
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 603
    invoke-direct {p0, v13}, timeStringToInt(Ljava/lang/String;)I

    move-result v12

    .line 604
    const-string v1, "BatteryStatsDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next entry\'s timestamp is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 589
    .end local v12    # "firstTime":I
    :cond_de
    move-object/from16 v13, p2

    .line 590
    move v12, v9

    .restart local v12    # "firstTime":I
    goto :goto_63

    .line 606
    :cond_e2
    const/4 v11, 0x1

    goto :goto_63

    .line 610
    :cond_e4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 611
    return-void
.end method

.method private maintainNotifiedAppList(ILjava/lang/String;)V
    .registers 11
    .param p1, "curTime"    # I
    .param p2, "curTimeStr"    # Ljava/lang/String;

    .prologue
    .line 614
    const-string v5, "BatteryStatsDBHelper"

    const-string v6, " maintainNotifiedAppList called "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    sget-object v5, notifiedPowerDrainingApps:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 616
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    .line 617
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 618
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 619
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 620
    .local v4, "time":Ljava/lang/String;
    invoke-direct {p0, v4}, timeStringToInt(Ljava/lang/String;)I

    move-result v3

    .line 621
    .local v3, "thisTime":I
    invoke-direct {p0, p1, p2, v3, v4}, calculateTimeDiff(ILjava/lang/String;ILjava/lang/String;)I

    move-result v5

    const/16 v6, 0x3c

    if-le v5, v6, :cond_11

    .line 622
    const-string v5, "BatteryStatsDBHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing package name from notified list: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    .line 626
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "thisTime":I
    .end local v4    # "time":Ljava/lang/String;
    :cond_51
    return-void
.end method

.method private registerReceiver()V
    .registers 4

    .prologue
    .line 191
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "send.battery.drain.broadcast"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, mContext:Landroid/content/Context;

    iget-object v2, p0, mFakeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    return-void
.end method

.method private timeStringToInt(Ljava/lang/String;)I
    .registers 7
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 665
    :try_start_0
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 666
    .local v2, "times":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x18

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x3c

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_1f} :catch_22

    move-result v4

    add-int/2addr v3, v4

    .line 671
    .end local v2    # "times":[Ljava/lang/String;
    :goto_21
    return v3

    .line 668
    :catch_22
    move-exception v1

    .line 670
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 671
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    mul-int/lit8 v3, v3, 0x18

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x3c

    goto :goto_21
.end method


# virtual methods
.method declared-synchronized addAppLaunch(Ljava/lang/String;)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 637
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iput-object v7, p0, db:Landroid/database/sqlite/SQLiteDatabase;

    .line 639
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 640
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 641
    .local v2, "day":I
    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 642
    .local v3, "hour":I
    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 643
    .local v4, "min":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 644
    .local v5, "time":Ljava/lang/String;
    mul-int/lit8 v7, v2, 0x18

    add-int/2addr v7, v3

    mul-int/lit8 v7, v7, 0x3c

    add-int v1, v7, v4

    .line 647
    .local v1, "curTime":I
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 648
    .local v6, "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "launchtime"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v7, p0, db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "Launched_packages"

    const-string/jumbo v9, "packageName = ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_70

    .line 652
    const-string/jumbo v7, "packageName"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v7, p0, db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "Launched_packages"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 657
    :cond_70
    sget-object v7, launchedPackageSet:Ljava/util/Set;

    invoke-interface {v7, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 659
    iget-object v7, p0, db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "Launched_packages"

    invoke-direct {p0, v7, v5, v8}, maintainDayData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v7, p0, db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_81
    .catchall {:try_start_1 .. :try_end_81} :catchall_83

    .line 661
    monitor-exit p0

    return-void

    .line 637
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "curTime":I
    .end local v2    # "day":I
    .end local v3    # "hour":I
    .end local v4    # "min":I
    .end local v5    # "time":Ljava/lang/String;
    .end local v6    # "values":Landroid/content/ContentValues;
    :catchall_83
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method declared-synchronized addBatteryDelta(ZLjava/lang/String;IILandroid/database/sqlite/SQLiteDatabase;)V
    .registers 11
    .param p1, "writeForScreenChange"    # Z
    .param p2, "time"    # Ljava/lang/String;
    .param p3, "batteryDelta"    # I
    .param p4, "currentBatteryPercent"    # I
    .param p5, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 257
    monitor-enter p0

    if-eqz p1, :cond_40

    :try_start_3
    sget-boolean v3, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z

    if-nez v3, :cond_3e

    const/4 v1, 0x1

    .line 259
    .local v1, "screenCondition":Z
    :goto_8
    if-eqz v1, :cond_43

    const/4 v0, 0x4

    .line 261
    .local v0, "lcdCondition":I
    :goto_b
    const-string v3, "Battery_Delta"

    invoke-direct {p0, p5, p2, v3}, maintainDayData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 264
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "lcd_condition"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    const-string v3, "battTime"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v3, "batterydelta"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    const-string v3, "batterypercent"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 268
    const-string v3, "Battery_Delta"

    const/4 v4, 0x0

    invoke-virtual {p5, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_46

    .line 269
    monitor-exit p0

    return-void

    .line 257
    .end local v0    # "lcdCondition":I
    .end local v1    # "screenCondition":Z
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_3e
    const/4 v1, 0x0

    goto :goto_8

    :cond_40
    :try_start_40
    sget-boolean v1, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_46

    goto :goto_8

    .line 259
    .restart local v1    # "screenCondition":Z
    :cond_43
    const/16 v0, 0x8

    goto :goto_b

    .line 257
    .end local v1    # "screenCondition":Z
    :catchall_46
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized addStatsToDB(ZLjava/lang/String;Ljava/util/ArrayList;II)V
    .registers 40
    .param p1, "writeForScreenChange"    # Z
    .param p2, "time"    # Ljava/lang/String;
    .param p4, "batteryDelta"    # I
    .param p5, "currentBatteryPercent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsDumper$PowerObject;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p3, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsDumper$PowerObject;>;"
    monitor-enter p0

    if-eqz p1, :cond_171

    :try_start_3
    sget-boolean v2, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z

    if-nez v2, :cond_16d

    const/16 v26, 0x1

    .line 275
    .local v26, "screenCondition":Z
    :goto_9
    invoke-virtual/range {p0 .. p0}, getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1a0

    move-result-object v7

    .line 277
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_d
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 278
    if-eqz v26, :cond_175

    const/4 v15, 0x4

    .line 282
    .local v15, "lcdCondition":I
    :goto_13
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1cb

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;

    .line 283
    .local v11, "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v2, v11, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v2}, createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 285
    iget-wide v0, v11, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->powerUid:D

    move-wide/from16 v30, v0

    .line 286
    .local v30, "totalPower":D
    iget-wide v0, v11, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->networkUsage:J

    move-wide/from16 v18, v0

    .line 287
    .local v18, "networkUsage":J
    iget-wide v0, v11, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->screenUsage:D

    move-wide/from16 v28, v0

    .line 288
    .local v28, "screenUsage":D
    iget-wide v0, v11, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->usageTime:J

    move-wide/from16 v32, v0

    .line 289
    .local v32, "uidUsageTime":J
    move v12, v15

    .line 291
    .local v12, "finalLcdCondition":I
    iget-object v2, v11, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, getLastEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;

    move-result-object v14

    .line 292
    .local v14, "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    if-eqz v14, :cond_1a3

    .line 293
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->totalPower:D
    invoke-static {v14}, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->access$100(Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;)D

    move-result-wide v16

    .line 294
    .local v16, "lastPower":D
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->offPower:D
    invoke-static {v14}, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->access$200(Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;)D

    move-result-wide v22

    .line 295
    .local v22, "offPower":D
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Written to db : lastpower = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sub-double v8, v30, v16

    .line 297
    .local v8, "diff":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v8, v2

    if-ltz v2, :cond_17d

    .line 298
    if-nez v26, :cond_8d

    .line 299
    add-double v22, v22, v8

    .line 301
    :cond_8d
    move-wide/from16 v24, v8

    .line 302
    .local v24, "power":D
    const-string v3, "BatteryStatsDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Written to db : power[diff] = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v26, :cond_179

    const-string v2, " on"

    :goto_a6
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_b1
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->networkUsage:J
    invoke-static {v14}, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->access$300(Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;)J

    move-result-wide v2

    sub-long v20, v18, v2

    .line 309
    .local v20, "networkUseDiff":J
    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-eqz v2, :cond_bf

    .line 310
    or-int/lit8 v12, v12, 0x20

    .line 321
    .end local v8    # "diff":D
    .end local v16    # "lastPower":D
    .end local v20    # "networkUseDiff":J
    :cond_bf
    :goto_bf
    iget-boolean v2, v11, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->isSystem:Z

    if-eqz v2, :cond_c5

    .line 322
    or-int/lit8 v12, v12, 0x10

    .line 325
    :cond_c5
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 326
    .local v27, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "lcd_condition"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    const-string/jumbo v2, "time"

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string/jumbo v2, "power"

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 329
    const-string/jumbo v2, "offpower"

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 330
    const-string/jumbo v2, "totalpower"

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 331
    const-string/jumbo v2, "network_usage"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 332
    const-string/jumbo v2, "screen_usage"

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 333
    const-string/jumbo v2, "usage_time"

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v11, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v7, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_149
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_149} :catch_14b
    .catchall {:try_start_d .. :try_end_149} :catchall_19b

    goto/16 :goto_17

    .line 340
    .end local v11    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .end local v12    # "finalLcdCondition":I
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .end local v15    # "lcdCondition":I
    .end local v18    # "networkUsage":J
    .end local v22    # "offPower":D
    .end local v24    # "power":D
    .end local v27    # "values":Landroid/content/ContentValues;
    .end local v28    # "screenUsage":D
    .end local v30    # "totalPower":D
    .end local v32    # "uidUsageTime":J
    :catch_14b
    move-exception v10

    .line 341
    .local v10, "e":Ljava/lang/IllegalStateException;
    :try_start_14c
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStatsToDB IllegalStateException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_168
    .catchall {:try_start_14c .. :try_end_168} :catchall_19b

    .line 343
    :try_start_168
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_16b
    .catchall {:try_start_168 .. :try_end_16b} :catchall_1a0

    .line 345
    .end local v10    # "e":Ljava/lang/IllegalStateException;
    :goto_16b
    monitor-exit p0

    return-void

    .line 273
    .end local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v26    # "screenCondition":Z
    :cond_16d
    const/16 v26, 0x0

    goto/16 :goto_9

    :cond_171
    :try_start_171
    sget-boolean v26, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z
    :try_end_173
    .catchall {:try_start_171 .. :try_end_173} :catchall_1a0

    goto/16 :goto_9

    .line 278
    .restart local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v26    # "screenCondition":Z
    :cond_175
    const/16 v15, 0x8

    goto/16 :goto_13

    .line 302
    .restart local v8    # "diff":D
    .restart local v11    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .restart local v12    # "finalLcdCondition":I
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v14    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .restart local v15    # "lcdCondition":I
    .restart local v16    # "lastPower":D
    .restart local v18    # "networkUsage":J
    .restart local v22    # "offPower":D
    .restart local v24    # "power":D
    .restart local v28    # "screenUsage":D
    .restart local v30    # "totalPower":D
    .restart local v32    # "uidUsageTime":J
    :cond_179
    :try_start_179
    const-string v2, " off"

    goto/16 :goto_a6

    .line 305
    .end local v24    # "power":D
    :cond_17d
    const-wide/16 v24, 0x0

    .line 306
    .restart local v24    # "power":D
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Written to db : power[strange] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v30

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_199
    .catch Ljava/lang/IllegalStateException; {:try_start_179 .. :try_end_199} :catch_14b
    .catchall {:try_start_179 .. :try_end_199} :catchall_19b

    goto/16 :goto_b1

    .line 343
    .end local v8    # "diff":D
    .end local v11    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .end local v12    # "finalLcdCondition":I
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .end local v15    # "lcdCondition":I
    .end local v16    # "lastPower":D
    .end local v18    # "networkUsage":J
    .end local v22    # "offPower":D
    .end local v24    # "power":D
    .end local v28    # "screenUsage":D
    .end local v30    # "totalPower":D
    .end local v32    # "uidUsageTime":J
    :catchall_19b
    move-exception v2

    :try_start_19c
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v2
    :try_end_1a0
    .catchall {:try_start_19c .. :try_end_1a0} :catchall_1a0

    .line 273
    .end local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v26    # "screenCondition":Z
    :catchall_1a0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 313
    .restart local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .restart local v12    # "finalLcdCondition":I
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v14    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .restart local v15    # "lcdCondition":I
    .restart local v18    # "networkUsage":J
    .restart local v26    # "screenCondition":Z
    .restart local v28    # "screenUsage":D
    .restart local v30    # "totalPower":D
    .restart local v32    # "uidUsageTime":J
    :cond_1a3
    const-wide/16 v24, 0x0

    .line 314
    .restart local v24    # "power":D
    const-wide/16 v22, 0x0

    .line 315
    .restart local v22    # "offPower":D
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-eqz v2, :cond_1af

    .line 316
    or-int/lit8 v12, v12, 0x20

    .line 318
    :cond_1af
    :try_start_1af
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Written to db : power[noLastSipper] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v30

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bf

    .line 336
    .end local v11    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .end local v12    # "finalLcdCondition":I
    .end local v14    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .end local v18    # "networkUsage":J
    .end local v22    # "offPower":D
    .end local v24    # "power":D
    .end local v28    # "screenUsage":D
    .end local v30    # "totalPower":D
    .end local v32    # "uidUsageTime":J
    :cond_1cb
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 337
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    .line 338
    invoke-virtual/range {v2 .. v7}, addBatteryDelta(ZLjava/lang/String;IILandroid/database/sqlite/SQLiteDatabase;)V

    .line 339
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v7, v1}, checkForPowerThreshold(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_1e5
    .catch Ljava/lang/IllegalStateException; {:try_start_1af .. :try_end_1e5} :catch_14b
    .catchall {:try_start_1af .. :try_end_1e5} :catchall_19b

    .line 343
    :try_start_1e5
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1e8
    .catchall {:try_start_1e5 .. :try_end_1e8} :catchall_1a0

    goto :goto_16b
.end method

.method createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "TABLE_PROCESS"    # Ljava/lang/String;

    .prologue
    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "lcd_condition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DOUBLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "offpower"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DOUBLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "totalpower"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DOUBLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "network_usage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LONG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "screen_usage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DOUBLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "usage_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LONG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "CREATE_POWER_TABLE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method declared-synchronized getAverageLevelDropPerHour(Ljava/lang/String;)D
    .registers 26
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 769
    monitor-enter p0

    :try_start_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "SELECT * FROM ["

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, "]"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 771
    .local v14, "selectQuery":Ljava/lang/String;
    const-string v15, "BatteryStatsDBHelper"

    const-string v18, "getAverageLevelDropPerHour:: start"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const-string v15, "BatteryStatsDBHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getAverageLevelDropPerHour:: for package:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-virtual/range {p0 .. p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, db:Landroid/database/sqlite/SQLiteDatabase;

    .line 775
    move-object/from16 v0, p0

    iget-object v15, v0, db:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v15, v14, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 776
    .local v8, "cursor":Landroid/database/Cursor;
    const-wide/16 v6, 0x0

    .line 777
    .local v6, "appUsageTime":J
    const-wide/16 v12, 0x0

    .line 778
    .local v12, "power":D
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    move-result v15

    if-eqz v15, :cond_160

    .line 779
    const/4 v15, 0x7

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 780
    .local v4, "appTotalTime":J
    move-wide v6, v4

    .line 783
    const-string v15, "BatteryStatsDBHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getAverageLevelDropPerHour:: start loop appTotalTime:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const/4 v15, 0x2

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    .line 785
    :goto_8c
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v15

    if-eqz v15, :cond_160

    .line 786
    const/4 v15, 0x7

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 787
    .local v16, "tempTime":J
    const-string v15, "BatteryStatsDBHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getAverageLevelDropPerHour::  loop tempTime:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const-string v15, "BatteryStatsDBHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getAverageLevelDropPerHour::  loop before appTotalTime:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const-string v15, "BatteryStatsDBHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getAverageLevelDropPerHour::  loop before appUsageTime:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    cmp-long v15, v16, v4

    if-lez v15, :cond_f3

    .line 794
    add-long v6, v6, v16

    .line 796
    :cond_f3
    move-wide/from16 v4, v16

    .line 797
    const-string v15, "BatteryStatsDBHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getAverageLevelDropPerHour::  loop after appUsageTime:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const-string v15, "BatteryStatsDBHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getAverageLevelDropPerHour::  loop after appTotalTime:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const/4 v15, 0x2

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    add-double v12, v12, v18

    .line 802
    const-string v15, "BatteryStatsDBHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getAverageLevelDropPerHour::  loop after power:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_150} :catch_152
    .catchall {:try_start_1 .. :try_end_150} :catchall_213

    goto/16 :goto_8c

    .line 817
    .end local v4    # "appTotalTime":J
    .end local v6    # "appUsageTime":J
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v12    # "power":D
    .end local v14    # "selectQuery":Ljava/lang/String;
    .end local v16    # "tempTime":J
    :catch_152
    move-exception v9

    .line 818
    .local v9, "e":Ljava/lang/Exception;
    :try_start_153
    const-string v15, "BatteryStatsDBHelper"

    const-string v18, "getAverageLevelDropPerHour::  Exception"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15c
    .catchall {:try_start_153 .. :try_end_15c} :catchall_213

    .line 819
    const-wide/16 v10, 0x0

    .end local v9    # "e":Ljava/lang/Exception;
    :goto_15e
    monitor-exit p0

    return-wide v10

    .line 805
    .restart local v6    # "appUsageTime":J
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "power":D
    .restart local v14    # "selectQuery":Ljava/lang/String;
    :cond_160
    :try_start_160
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 806
    move-object/from16 v0, p0

    iget-object v15, v0, db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 807
    const-string v15, "BatteryStatsDBHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AverageLevelDropCalculation : Package = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Power = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Usage Time = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ms"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const-wide/16 v18, 0x0

    cmp-long v15, v6, v18

    if-nez v15, :cond_1ae

    .line 810
    const-wide/16 v6, 0x1

    .line 812
    :cond_1ae
    const-string v15, "BatteryStatsDBHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " getAverageLevelDropPerHour sBatteryCapacity : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-wide v20, sBatteryCapacity:D

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "appUsageTime : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v18, v18, v12

    const-wide v20, 0x40ac200000000000L    # 3600.0

    mul-double v18, v18, v20

    const-wide v20, 0x408f400000000000L    # 1000.0

    mul-double v18, v18, v20

    long-to-double v0, v6

    move-wide/from16 v20, v0

    sget-wide v22, sBatteryCapacity:D

    mul-double v20, v20, v22

    div-double v10, v18, v20

    .line 815
    .local v10, "i":D
    const-string v15, "BatteryStatsDBHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getAverageLevelDropPerHour::  returning i:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_211
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_211} :catch_152
    .catchall {:try_start_160 .. :try_end_211} :catchall_213

    goto/16 :goto_15e

    .line 769
    .end local v6    # "appUsageTime":J
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "i":D
    .end local v12    # "power":D
    .end local v14    # "selectQuery":Ljava/lang/String;
    :catchall_213
    move-exception v15

    monitor-exit p0

    throw v15
.end method

.method declared-synchronized getAverageTimeOfPackagePerLevel(Ljava/lang/String;)J
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 727
    monitor-enter p0

    :try_start_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SELECT  * FROM ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 728
    .local v7, "selectQuery":Ljava/lang/String;
    const-string v14, "BatteryStatsDBHelper"

    const-string v15, "getAverageTimeOfPackagePerLevel:: start"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const-string v14, "BatteryStatsDBHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getAverageTimeOfPackagePerLevel:: for package:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-virtual/range {p0 .. p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, db:Landroid/database/sqlite/SQLiteDatabase;

    .line 731
    move-object/from16 v0, p0

    iget-object v14, v0, db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v15, 0x0

    invoke-virtual {v14, v7, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 732
    .local v6, "cursor":Landroid/database/Cursor;
    const-wide/16 v4, 0x0

    .line 733
    .local v4, "appUsageTime":J
    const-wide/16 v10, 0x0

    .line 734
    .local v10, "power":D
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    move-result v14

    if-eqz v14, :cond_124

    .line 735
    const/4 v14, 0x7

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 736
    .local v2, "appTotalTime":J
    const-string v14, "BatteryStatsDBHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getAverageTimeOfPackagePerLevel:: start loop appTotalTime:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/4 v14, 0x2

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    .line 738
    :goto_7a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v14

    if-eqz v14, :cond_124

    .line 739
    const/4 v14, 0x7

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 740
    .local v12, "tempTime":J
    const-string v14, "BatteryStatsDBHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getAverageTimeOfPackagePerLevel::  loop tempTime:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const-string v14, "BatteryStatsDBHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getAverageTimeOfPackagePerLevel::  loop before appTotalTime:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const-string v14, "BatteryStatsDBHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getAverageTimeOfPackagePerLevel::  loop before appUsageTime:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    sub-long v14, v2, v12

    add-long/2addr v4, v14

    .line 746
    move-wide v2, v12

    .line 747
    const-string v14, "BatteryStatsDBHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getAverageTimeOfPackagePerLevel::  loop after appUsageTime:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const-string v14, "BatteryStatsDBHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getAverageTimeOfPackagePerLevel::  loop after appTotalTime:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const/4 v14, 0x2

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    add-double/2addr v10, v14

    .line 752
    const-string v14, "BatteryStatsDBHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getAverageTimeOfPackagePerLevel::  loop after power:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11f
    .catchall {:try_start_1 .. :try_end_11f} :catchall_121

    goto/16 :goto_7a

    .line 727
    .end local v2    # "appTotalTime":J
    .end local v4    # "appUsageTime":J
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "selectQuery":Ljava/lang/String;
    .end local v10    # "power":D
    .end local v12    # "tempTime":J
    :catchall_121
    move-exception v14

    monitor-exit p0

    throw v14

    .line 755
    .restart local v4    # "appUsageTime":J
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "selectQuery":Ljava/lang/String;
    .restart local v10    # "power":D
    :cond_124
    :try_start_124
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 756
    move-object/from16 v0, p0

    iget-object v14, v0, db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 757
    const-wide/16 v14, 0x0

    cmpl-double v14, v10, v14

    if-nez v14, :cond_136

    .line 758
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 760
    :cond_136
    const-string v14, "BatteryStatsDBHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getAverageTimeOfPackagePerLevel:: appUsageTime:  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " sBatteryCapacity :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-wide v16, sBatteryCapacity:D

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " power: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    long-to-double v14, v4

    sget-wide v16, sBatteryCapacity:D

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v10

    div-double v14, v14, v16

    double-to-long v8, v14

    .line 763
    .local v8, "i":J
    const-string v14, "BatteryStatsDBHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getAverageTimeOfPackagePerLevel::  returning i:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_188
    .catchall {:try_start_124 .. :try_end_188} :catchall_121

    .line 764
    monitor-exit p0

    return-wide v8
.end method

.method public declared-synchronized getBatteryTotalDelta(I)I
    .registers 8
    .param p1, "screenCondition"    # I

    .prologue
    const/4 v5, 0x2

    .line 824
    monitor-enter p0

    :try_start_2
    const-string v1, "SELECT  * FROM Battery_Delta"

    .line 826
    .local v1, "selectQuery":Ljava/lang/String;
    invoke-virtual {p0}, getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, db:Landroid/database/sqlite/SQLiteDatabase;

    .line 827
    iget-object v3, p0, db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 828
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 830
    .local v2, "totalDelta":I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 832
    :cond_18
    if-ne p1, v5, :cond_30

    .line 833
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 837
    :cond_20
    :goto_20
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_18

    .line 839
    :cond_26
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 840
    iget-object v3, p0, db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_40

    .line 841
    monitor-exit p0

    return v2

    .line 834
    :cond_30
    const/4 v3, 0x0

    :try_start_31
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_20

    .line 835
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_40

    move-result v3

    add-int/2addr v2, v3

    goto :goto_20

    .line 824
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "selectQuery":Ljava/lang/String;
    .end local v2    # "totalDelta":I
    :catchall_40
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getUsageList(I)[B
    .registers 6
    .param p1, "screenCondition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 845
    sparse-switch p1, :sswitch_data_62

    .line 868
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong screen condition. Please check BatteryStatsDBHandler.java"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 847
    :sswitch_d
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd all data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    invoke-direct {p0, v2}, getScreenOffUsageList(Z)[B

    move-result-object v0

    .line 866
    :goto_18
    return-object v0

    .line 850
    :sswitch_19
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd off data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-direct {p0, v3}, getScreenOffUsageList(Z)[B

    move-result-object v0

    goto :goto_18

    .line 853
    :sswitch_25
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd all data(only app)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-direct {p0, v2}, getScreenOffUsageListOnlyApp(Z)[B

    move-result-object v0

    goto :goto_18

    .line 856
    :sswitch_31
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd off data(only app)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-direct {p0, v3}, getScreenOffUsageListOnlyApp(Z)[B

    move-result-object v0

    goto :goto_18

    .line 859
    :sswitch_3d
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting summation of lcd all data(only app)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-direct {p0}, getTotalUsageList()[B

    move-result-object v0

    goto :goto_18

    .line 862
    :sswitch_49
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting battery percentage data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-direct {p0}, getBatteryPercentageList()[B

    move-result-object v0

    goto :goto_18

    .line 865
    :sswitch_55
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd all data(only app) with power consumer list"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-direct {p0}, getConsumerListOnlyApp()[B

    move-result-object v0

    goto :goto_18

    .line 845
    nop

    :sswitch_data_62
    .sparse-switch
        0x2 -> :sswitch_d
        0x4 -> :sswitch_19
        0x8 -> :sswitch_25
        0x10 -> :sswitch_31
        0x20 -> :sswitch_3d
        0x40 -> :sswitch_49
        0x80 -> :sswitch_55
    .end sparse-switch
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 215
    const-string v0, "CREATE TABLE Battery_Delta(lcd_condition INTEGER,battTime TEXT,batterydelta INTEGER,batterypercent INTEGER)"

    .line 219
    .local v0, "CREATE_BATTERY_DELTA_TABLE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 223
    const-string v1, "CREATE TABLE Launched_packages(packageName TEXT,launchtime TEXT)"

    .line 225
    .local v1, "createLaunchedAppTable":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 229
    const-string v2, "CREATE TABLE power_consuming_packages(time TEXT,packageName TEXT)"

    .line 232
    .local v2, "createPowerConsumingPackageTable":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 252
    invoke-virtual {p0, p1}, onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 253
    return-void
.end method
