.class public Lcom/android/server/content/SyncStorageEngine;
.super Landroid/os/Handler;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;,
        Lcom/android/server/content/SyncStorageEngine$DayStats;,
        Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;,
        Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;,
        Lcom/android/server/content/SyncStorageEngine$EndPoint;,
        Lcom/android/server/content/SyncStorageEngine$AccountInfo;,
        Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_VERSION:I = 0x2

.field private static final DEFAULT_FLEX_PERCENT_SYNC:D = 0.04

.field private static final DEFAULT_MIN_FLEX_ALLOWED_SECS:J = 0x5L

.field private static final DEFAULT_POLL_FREQUENCY_SECONDS:J = 0x15180L

.field public static final EVENTS:[Ljava/lang/String;

.field public static final EVENT_START:I = 0x0

.field public static final EVENT_STOP:I = 0x1

.field public static final MAX_HISTORY:I = 0x64

.field public static final MESG_CANCELED:Ljava/lang/String; = "canceled"

.field public static final MESG_SUCCESS:Ljava/lang/String; = "success"

.field static final MILLIS_IN_4WEEKS:J = 0x90321000L

.field private static final MSG_WRITE_STATISTICS:I = 0x2

.field private static final MSG_WRITE_STATUS:I = 0x1

.field public static final NOT_IN_BACKOFF_MODE:J = -0x1L

.field private static final PENDING_FINISH_TO_WRITE:I = 0x4

.field public static final PENDING_OPERATION_VERSION:I = 0x3

.field public static final SOURCES:[Ljava/lang/String;

.field public static final SOURCE_LOCAL:I = 0x1

.field public static final SOURCE_PERIODIC:I = 0x4

.field public static final SOURCE_POLL:I = 0x2

.field public static final SOURCE_SERVER:I = 0x0

.field public static final SOURCE_SERVICE:I = 0x5

.field public static final SOURCE_USER:I = 0x3

.field public static final STATISTICS_FILE_END:I = 0x0

.field public static final STATISTICS_FILE_ITEM:I = 0x65

.field public static final STATISTICS_FILE_ITEM_OLD:I = 0x64

.field public static final STATUS_FILE_END:I = 0x0

.field public static final STATUS_FILE_ITEM:I = 0x64

.field private static final SYNC_ENABLED_DEFAULT:Z = false

.field private static final TAG:Ljava/lang/String; = "SyncManager"

.field private static final TAG_FILE:Ljava/lang/String; = "SyncManagerFile"

.field private static final WRITE_STATISTICS_DELAY:J = 0x1b7740L

.field private static final WRITE_STATUS_DELAY:J = 0x927c0L

.field private static final XML_ATTR_AUTHORITYID:Ljava/lang/String; = "authority_id"

.field private static final XML_ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final XML_ATTR_EXPEDITED:Ljava/lang/String; = "expedited"

.field private static final XML_ATTR_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listen-for-tickles"

.field private static final XML_ATTR_NEXT_AUTHORITY_ID:Ljava/lang/String; = "nextAuthorityId"

.field private static final XML_ATTR_REASON:Ljava/lang/String; = "reason"

.field private static final XML_ATTR_SOURCE:Ljava/lang/String; = "source"

.field private static final XML_ATTR_SYNC_RANDOM_OFFSET:Ljava/lang/String; = "offsetInSeconds"

.field private static final XML_ATTR_USER:Ljava/lang/String; = "user"

.field private static final XML_ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final XML_TAG_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listenForTickles"

.field private static sAuthorityRenames:Ljava/util/HashMap;
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

.field private static volatile sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;


# instance fields
.field private final mAccountInfoFile:Landroid/util/AtomicFile;

.field private final mAccounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/AccountAndUser;",
            "Lcom/android/server/content/SyncStorageEngine$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthorities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCal:Ljava/util/Calendar;

.field private final mChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/ISyncStatusObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCurrentSyncs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

.field private mDefaultMasterSyncAutomatically:Z

.field private mMasterSyncAutomatically:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAuthorityId:I

.field private mNextHistoryId:I

.field private mNumPendingFinished:I

.field private final mPendingFile:Landroid/util/AtomicFile;

.field private final mPendingOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$PendingOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStatisticsFile:Landroid/util/AtomicFile;

.field private final mStatusFile:Landroid/util/AtomicFile;

.field private final mSyncHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRandomOffset:I

.field private mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

.field private final mSyncStatus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mYear:I

.field private mYearInDays:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "START"

    aput-object v1, v0, v2

    const-string v1, "STOP"

    aput-object v1, v0, v3

    sput-object v0, EVENTS:[Ljava/lang/String;

    .line 129
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SERVER"

    aput-object v1, v0, v2

    const-string v1, "LOCAL"

    aput-object v1, v0, v3

    const-string v1, "POLL"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "USER"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PERIODIC"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SERVICE"

    aput-object v2, v0, v1

    sput-object v0, SOURCES:[Ljava/lang/String;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, sAuthorityRenames:Ljava/util/HashMap;

    .line 157
    sget-object v0, sAuthorityRenames:Ljava/util/HashMap;

    const-string v1, "contacts"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, sAuthorityRenames:Ljava/util/HashMap;

    const-string v1, "calendar"

    const-string v2, "com.android.calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const/4 v0, 0x0

    sput-object v0, sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataDir"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 481
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 407
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, mAuthorities:Landroid/util/SparseArray;

    .line 410
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, mAccounts:Ljava/util/HashMap;

    .line 413
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mPendingOperations:Ljava/util/ArrayList;

    .line 416
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, mCurrentSyncs:Landroid/util/SparseArray;

    .line 419
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, mSyncStatus:Landroid/util/SparseArray;

    .line 422
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mSyncHistory:Ljava/util/ArrayList;

    .line 425
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, mChangeListeners:Landroid/os/RemoteCallbackList;

    .line 429
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, mServices:Landroid/util/ArrayMap;

    .line 432
    iput v3, p0, mNextAuthorityId:I

    .line 435
    const/16 v2, 0x1c

    new-array v2, v2, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    iput-object v2, p0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 473
    iput v3, p0, mNumPendingFinished:I

    .line 475
    iput v3, p0, mNextHistoryId:I

    .line 476
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, mMasterSyncAutomatically:Landroid/util/SparseArray;

    .line 482
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 483
    sput-object p0, sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 485
    const-string v2, "GMT+0"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, mCal:Ljava/util/Calendar;

    .line 487
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112005f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, mDefaultMasterSyncAutomatically:Z

    .line 490
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 491
    .local v1, "systemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "sync"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 492
    .local v0, "syncDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 494
    invoke-direct {p0, v0}, maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V

    .line 496
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string v4, "accounts.xml"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, mAccountInfoFile:Landroid/util/AtomicFile;

    .line 497
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "status.bin"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, mStatusFile:Landroid/util/AtomicFile;

    .line 498
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "pending.xml"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, mPendingFile:Landroid/util/AtomicFile;

    .line 499
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "stats.bin"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, mStatisticsFile:Landroid/util/AtomicFile;

    .line 501
    invoke-direct {p0}, readAccountInfoLocked()V

    .line 502
    invoke-direct {p0}, readStatusLocked()V

    .line 503
    invoke-direct {p0}, readPendingOperationsLocked()V

    .line 504
    invoke-direct {p0}, readStatisticsLocked()V

    .line 505
    invoke-direct {p0}, readAndDeleteLegacyAccountInfoLocked()V

    .line 506
    invoke-direct {p0}, writeAccountInfoLocked()V

    .line 507
    invoke-direct {p0}, writeStatusLocked()V

    .line 508
    invoke-direct {p0}, writePendingOperationsLocked()V

    .line 509
    invoke-direct {p0}, writeStatisticsLocked()V

    .line 510
    return-void
.end method

.method private appendPendingOperationLocked(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)V
    .registers 10
    .param p1, "op"    # Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    .prologue
    const/4 v7, 0x2

    .line 2620
    const-string v4, "SyncManagerFile"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 2621
    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Appending to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    :cond_27
    const/4 v2, 0x0

    .line 2625
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_28
    iget-object v4, p0, mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openAppend()Ljava/io/FileOutputStream;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_48

    move-result-object v2

    .line 2635
    :try_start_2e
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2636
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v4, "utf-8"

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2637
    invoke-direct {p0, p1, v3}, writePendingOperationLocked(Lcom/android/server/content/SyncStorageEngine$PendingOperation;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2638
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2639
    iget-object v4, p0, mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_44} :catch_5c
    .catchall {:try_start_2e .. :try_end_44} :catchall_6f

    .line 2645
    :try_start_44
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_74

    .line 2648
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :goto_47
    return-void

    .line 2626
    :catch_48
    move-exception v0

    .line 2627
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "SyncManagerFile"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 2628
    const-string v4, "SyncManager"

    const-string v5, "Failed append; writing full file"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    :cond_58
    invoke-direct {p0}, writePendingOperationsLocked()V

    goto :goto_47

    .line 2640
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5c
    move-exception v1

    .line 2641
    .local v1, "e1":Ljava/io/IOException;
    :try_start_5d
    const-string v4, "SyncManager"

    const-string v5, "Error writing appending operation"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2642
    iget-object v4, p0, mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_69
    .catchall {:try_start_5d .. :try_end_69} :catchall_6f

    .line 2645
    :try_start_69
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_47

    .line 2646
    :catch_6d
    move-exception v4

    goto :goto_47

    .line 2644
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_6f
    move-exception v4

    .line 2645
    :try_start_70
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_76

    .line 2646
    :goto_73
    throw v4

    .restart local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_74
    move-exception v4

    goto :goto_47

    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_76
    move-exception v5

    goto :goto_73
.end method

.method public static calculateDefaultFlexTime(J)J
    .registers 6
    .param p0, "syncTimeSeconds"    # J

    .prologue
    .line 576
    const-wide/16 v0, 0x5

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    .line 580
    const-wide/16 v0, 0x0

    .line 585
    :goto_8
    return-wide v0

    .line 581
    :cond_9
    const-wide/32 v0, 0x15180

    cmp-long v0, p0, v0

    if-gez v0, :cond_19

    .line 582
    long-to-double v0, p0

    const-wide v2, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v0, v2

    double-to-long v0, v0

    goto :goto_8

    .line 585
    :cond_19
    const-wide/16 v0, 0xd80

    goto :goto_8
.end method

.method private createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 8
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "ident"    # I
    .param p3, "doWrite"    # Z

    .prologue
    .line 1677
    if-gez p2, :cond_b

    .line 1678
    iget p2, p0, mNextAuthorityId:I

    .line 1679
    iget v1, p0, mNextAuthorityId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mNextAuthorityId:I

    .line 1680
    const/4 p3, 0x1

    .line 1682
    :cond_b
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1683
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "created a new AuthorityInfo for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    :cond_2c
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V

    .line 1686
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v1, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1687
    if-eqz p3, :cond_3b

    .line 1688
    invoke-direct {p0}, writeAccountInfoLocked()V

    .line 1690
    :cond_3b
    return-object v0
.end method

.method private createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;
    .registers 5
    .param p1, "authorityInfo"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1572
    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v1}, getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v0

    .line 1573
    .local v0, "syncStatusInfo":Landroid/content/SyncStatusInfo;
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v1, p1}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)V

    new-instance v2, Landroid/content/SyncStatusInfo;

    invoke-direct {v2, v0}, Landroid/content/SyncStatusInfo;-><init>(Landroid/content/SyncStatusInfo;)V

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method private extrasToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2651
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2652
    .local v1, "key":Ljava/lang/String;
    const-string v3, "extra"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2653
    const-string v3, "name"

    invoke-interface {p1, v5, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2654
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2655
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_3f

    .line 2656
    const-string/jumbo v3, "type"

    const-string v4, "long"

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2657
    const-string/jumbo v3, "value1"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2678
    .end local v2    # "value":Ljava/lang/Object;
    :cond_39
    :goto_39
    const-string v3, "extra"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_9

    .line 2658
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_3f
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_56

    .line 2659
    const-string/jumbo v3, "type"

    const-string v4, "integer"

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2660
    const-string/jumbo v3, "value1"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_39

    .line 2661
    :cond_56
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_6d

    .line 2662
    const-string/jumbo v3, "type"

    const-string v4, "boolean"

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2663
    const-string/jumbo v3, "value1"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_39

    .line 2664
    :cond_6d
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_84

    .line 2665
    const-string/jumbo v3, "type"

    const-string v4, "float"

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2666
    const-string/jumbo v3, "value1"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_39

    .line 2667
    :cond_84
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_9b

    .line 2668
    const-string/jumbo v3, "type"

    const-string v4, "double"

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2669
    const-string/jumbo v3, "value1"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_39

    .line 2670
    :cond_9b
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_b3

    .line 2671
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "string"

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2672
    const-string/jumbo v3, "value1"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_39

    .line 2673
    :cond_b3
    instance-of v3, v2, Landroid/accounts/Account;

    if-eqz v3, :cond_39

    .line 2674
    const-string/jumbo v3, "type"

    const-string v4, "account"

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2675
    const-string/jumbo v4, "value1"

    move-object v3, v2

    check-cast v3, Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {p1, v5, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2676
    const-string/jumbo v3, "value2"

    check-cast v2, Landroid/accounts/Account;

    .end local v2    # "value":Ljava/lang/Object;
    iget-object v4, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_39

    .line 2680
    .end local v1    # "key":Ljava/lang/String;
    :cond_d6
    return-void
.end method

.method private static flattenBundle(Landroid/os/Bundle;)[B
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2530
    const/4 v0, 0x0

    .line 2531
    .local v0, "flatData":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2533
    .local v1, "parcel":Landroid/os/Parcel;
    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2534
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_11

    move-result-object v0

    .line 2536
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2538
    return-object v0

    .line 2536
    :catchall_11
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method private getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 11
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    .line 1596
    iget-boolean v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v5, :cond_59

    .line 1597
    iget-object v5, p0, mServices:Landroid/util/ArrayMap;

    iget-object v6, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1598
    .local v0, "aInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    const/4 v3, 0x0

    .line 1599
    .local v3, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_1b

    .line 1600
    iget v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1602
    .restart local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_1b
    if-nez v3, :cond_58

    .line 1603
    if-eqz p2, :cond_57

    .line 1604
    const-string v5, "SyncManager"

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 1605
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " No authority info found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    move-object v3, v4

    .line 1635
    .end local v0    # "aInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    .end local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_58
    :goto_58
    return-object v3

    .line 1612
    :cond_59
    iget-boolean v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v5, :cond_ce

    .line 1613
    new-instance v2, Landroid/accounts/AccountAndUser;

    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v6, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v2, v5, v6}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 1614
    .local v2, "au":Landroid/accounts/AccountAndUser;
    iget-object v5, p0, mAccounts:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1615
    .local v1, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-nez v1, :cond_98

    .line 1616
    if-eqz p2, :cond_96

    .line 1617
    const-string v5, "SyncManager"

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_96

    .line 1618
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": unknown account "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_96
    move-object v3, v4

    .line 1621
    goto :goto_58

    .line 1623
    :cond_98
    iget-object v5, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1624
    .restart local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v3, :cond_58

    .line 1625
    if-eqz p2, :cond_cc

    .line 1626
    const-string v5, "SyncManager"

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_cc

    .line 1627
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": unknown provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cc
    move-object v3, v4

    .line 1630
    goto :goto_58

    .line 1634
    .end local v1    # "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .end local v2    # "au":Landroid/accounts/AccountAndUser;
    .end local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_ce
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Authority : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", invalid target"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 1635
    goto/16 :goto_58
.end method

.method private getCurrentDayLocked()I
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 1577
    iget-object v1, p0, mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1578
    iget-object v1, p0, mCal:Ljava/util/Calendar;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1579
    .local v0, "dayOfYear":I
    iget v1, p0, mYear:I

    iget-object v2, p0, mCal:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_3c

    .line 1580
    iget-object v1, p0, mCal:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, mYear:I

    .line 1581
    iget-object v1, p0, mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 1582
    iget-object v1, p0, mCal:Ljava/util/Calendar;

    iget v2, p0, mYear:I

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 1583
    iget-object v1, p0, mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, mYearInDays:I

    .line 1585
    :cond_3c
    iget v1, p0, mYearInDays:I

    add-int/2addr v1, v0

    return v1
.end method

.method private getCurrentSyncs(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1423
    iget-object v1, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1424
    :try_start_3
    invoke-direct {p0, p1}, getCurrentSyncsLocked(I)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1425
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method private getCurrentSyncsLocked(I)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1444
    iget-object v1, p0, mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1445
    .local v0, "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncInfo;>;"
    if-nez v0, :cond_14

    .line 1446
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1447
    .restart local v0    # "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncInfo;>;"
    iget-object v1, p0, mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1449
    :cond_14
    return-object v0
.end method

.method static getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I
    .registers 3
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2218
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method static getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J
    .registers 4
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2222
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 10
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "ident"    # I
    .param p3, "doWrite"    # Z

    .prologue
    .line 1647
    const/4 v3, 0x0

    .line 1648
    .local v3, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-boolean v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v4, :cond_31

    .line 1649
    iget-object v4, p0, mServices:Landroid/util/ArrayMap;

    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1650
    .local v0, "aInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    if-nez v0, :cond_1d

    .line 1651
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "aInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1652
    .restart local v0    # "aInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v4, p0, mServices:Landroid/util/ArrayMap;

    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    :cond_1d
    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1655
    .restart local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v3, :cond_30

    .line 1656
    invoke-direct {p0, p1, p2, p3}, createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v3

    .line 1657
    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1672
    .end local v0    # "aInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    :cond_30
    :goto_30
    return-object v3

    .line 1659
    :cond_31
    iget-boolean v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v4, :cond_30

    .line 1660
    new-instance v2, Landroid/accounts/AccountAndUser;

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v2, v4, v5}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 1661
    .local v2, "au":Landroid/accounts/AccountAndUser;
    iget-object v4, p0, mAccounts:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1662
    .local v1, "account":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-nez v1, :cond_52

    .line 1663
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .end local v1    # "account":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    invoke-direct {v1, v2}, Lcom/android/server/content/SyncStorageEngine$AccountInfo;-><init>(Landroid/accounts/AccountAndUser;)V

    .line 1664
    .restart local v1    # "account":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    iget-object v4, p0, mAccounts:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    :cond_52
    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1667
    .restart local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v3, :cond_30

    .line 1668
    invoke-direct {p0, p1, p2, p3}, createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v3

    .line 1669
    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30
.end method

.method private getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;
    .registers 4
    .param p1, "authorityId"    # I

    .prologue
    .line 1755
    iget-object v1, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStatusInfo;

    .line 1756
    .local v0, "status":Landroid/content/SyncStatusInfo;
    if-nez v0, :cond_14

    .line 1757
    new-instance v0, Landroid/content/SyncStatusInfo;

    .end local v0    # "status":Landroid/content/SyncStatusInfo;
    invoke-direct {v0, p1}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .line 1758
    .restart local v0    # "status":Landroid/content/SyncStatusInfo;
    iget-object v1, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1760
    :cond_14
    return-object v0
.end method

.method public static getSingleton()Lcom/android/server/content/SyncStorageEngine;
    .registers 2

    .prologue
    .line 527
    sget-object v0, sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-nez v0, :cond_c

    .line 528
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_c
    sget-object v0, sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 517
    sget-object v1, sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-eqz v1, :cond_5

    .line 524
    :goto_4
    return-void

    .line 522
    :cond_5
    invoke-static {}, Landroid/os/Environment;->getSecureDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 523
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Lcom/android/server/content/SyncStorageEngine;

    invoke-direct {v1, p0, v0}, <init>(Landroid/content/Context;Ljava/io/File;)V

    sput-object v1, sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    goto :goto_4
.end method

.method private maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V
    .registers 4
    .param p1, "syncDir"    # Ljava/io/File;

    .prologue
    .line 1910
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "pending.bin"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1911
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1916
    :goto_e
    return-void

    .line 1914
    :cond_f
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_e
.end method

.method private maybeMigrateSettingsForRenamedAuthorities()Z
    .registers 15

    .prologue
    const/4 v13, 0x0

    .line 1923
    const/4 v9, 0x0

    .line 1925
    .local v9, "writeNeeded":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1926
    .local v1, "authoritiesToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v10, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1927
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v0, :cond_55

    .line 1928
    iget-object v10, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1930
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-boolean v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v10, :cond_21

    .line 1927
    :cond_1e
    :goto_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 1934
    :cond_21
    sget-object v10, sAuthorityRenames:Ljava/util/HashMap;

    iget-object v11, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1935
    .local v7, "newAuthorityName":Ljava/lang/String;
    if-eqz v7, :cond_1e

    .line 1941
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1945
    iget-boolean v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v10, :cond_1e

    .line 1950
    new-instance v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v11, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v8, v10, v7, v11}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1954
    .local v8, "newInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const-string v10, "cleanup"

    invoke-direct {p0, v8, v10}, getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v10

    if-nez v10, :cond_1e

    .line 1958
    const/4 v10, -0x1

    invoke-direct {p0, v8, v10, v13}, getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 1960
    .local v6, "newAuthority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v10, 0x1

    iput-boolean v10, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 1961
    const/4 v9, 0x1

    goto :goto_1e

    .line 1964
    .end local v2    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "newAuthority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v7    # "newAuthorityName":Ljava/lang/String;
    .end local v8    # "newInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_55
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_59
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_76

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1965
    .local v3, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v10, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v11, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v12, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v12, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-direct {p0, v10, v11, v12, v13}, removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 1970
    const/4 v9, 0x1

    .line 1971
    goto :goto_59

    .line 1973
    .end local v3    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_76
    return v9
.end method

.method public static newTestInstance(Landroid/content/Context;)Lcom/android/server/content/SyncStorageEngine;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 513
    new-instance v0, Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, p0, v1}, <init>(Landroid/content/Context;Ljava/io/File;)V

    return-object v0
.end method

.method private parseAuthority(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 20
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "version"    # I

    .prologue
    .line 1992
    const/4 v3, 0x0

    .line 1993
    .local v3, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v8, -0x1

    .line 1995
    .local v8, "id":I
    const/4 v14, 0x0

    :try_start_3
    const-string v15, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_e} :catch_122
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_e} :catch_12c

    move-result v8

    .line 2001
    :goto_f
    if-ltz v8, :cond_121

    .line 2002
    const/4 v14, 0x0

    const-string v15, "authority"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2003
    .local v4, "authorityName":Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "enabled"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2004
    .local v7, "enabled":Ljava/lang/String;
    const/4 v14, 0x0

    const-string/jumbo v15, "syncable"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2005
    .local v11, "syncable":Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "account"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2006
    .local v1, "accountName":Ljava/lang/String;
    const/4 v14, 0x0

    const-string/jumbo v15, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2007
    .local v2, "accountType":Ljava/lang/String;
    const/4 v14, 0x0

    const-string/jumbo v15, "user"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2008
    .local v12, "user":Ljava/lang/String;
    const/4 v14, 0x0

    const-string/jumbo v15, "package"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2009
    .local v10, "packageName":Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "class"

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2010
    .local v5, "className":Ljava/lang/String;
    if-nez v12, :cond_137

    const/4 v13, 0x0

    .line 2011
    .local v13, "userId":I
    :goto_60
    if-nez v2, :cond_69

    if-nez v10, :cond_69

    .line 2012
    const-string v2, "com.google"

    .line 2013
    const-string/jumbo v11, "unknown"

    .line 2015
    :cond_69
    move-object/from16 v0, p0

    iget-object v14, v0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v14, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 2016
    .restart local v3    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const-string v14, "SyncManagerFile"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_da

    .line 2017
    const-string v14, "SyncManagerFile"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Adding authority: account="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " accountType="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " auth="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " package="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " class="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " user="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " enabled="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " syncable="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    :cond_da
    if-nez v3, :cond_108

    .line 2028
    const-string v14, "SyncManagerFile"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_ec

    .line 2029
    const-string v14, "SyncManagerFile"

    const-string v15, "Creating authority entry"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    :cond_ec
    if-eqz v1, :cond_13d

    if-eqz v4, :cond_13d

    .line 2033
    new-instance v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v14, Landroid/accounts/Account;

    invoke-direct {v14, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v14, v4, v13}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2041
    .local v9, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :goto_fa
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8, v14}, getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v3

    .line 2047
    if-lez p2, :cond_108

    .line 2048
    iget-object v14, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 2051
    .end local v9    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_108
    if-eqz v3, :cond_158

    .line 2052
    if-eqz v7, :cond_112

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_148

    :cond_112
    const/4 v14, 0x1

    :goto_113
    iput-boolean v14, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 2053
    const-string/jumbo v14, "unknown"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14a

    .line 2054
    const/4 v14, -0x1

    iput v14, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 2066
    .end local v1    # "accountName":Ljava/lang/String;
    .end local v2    # "accountType":Ljava/lang/String;
    .end local v4    # "authorityName":Ljava/lang/String;
    .end local v5    # "className":Ljava/lang/String;
    .end local v7    # "enabled":Ljava/lang/String;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "syncable":Ljava/lang/String;
    .end local v12    # "user":Ljava/lang/String;
    .end local v13    # "userId":I
    :cond_121
    :goto_121
    return-object v3

    .line 1996
    :catch_122
    move-exception v6

    .line 1997
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string v14, "SyncManager"

    const-string v15, "error parsing the id of the authority"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 1998
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :catch_12c
    move-exception v6

    .line 1999
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v14, "SyncManager"

    const-string/jumbo v15, "the id of the authority is null"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 2010
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "accountName":Ljava/lang/String;
    .restart local v2    # "accountType":Ljava/lang/String;
    .restart local v4    # "authorityName":Ljava/lang/String;
    .restart local v5    # "className":Ljava/lang/String;
    .restart local v7    # "enabled":Ljava/lang/String;
    .restart local v10    # "packageName":Ljava/lang/String;
    .restart local v11    # "syncable":Ljava/lang/String;
    .restart local v12    # "user":Ljava/lang/String;
    :cond_137
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_60

    .line 2037
    .restart local v13    # "userId":I
    :cond_13d
    new-instance v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v14, Landroid/content/ComponentName;

    invoke-direct {v14, v10, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v9, v14, v13}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/content/ComponentName;I)V

    .restart local v9    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    goto :goto_fa

    .line 2052
    .end local v9    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_148
    const/4 v14, 0x0

    goto :goto_113

    .line 2056
    :cond_14a
    if-eqz v11, :cond_152

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_156

    :cond_152
    const/4 v14, 0x1

    :goto_153
    iput v14, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_121

    :cond_156
    const/4 v14, 0x0

    goto :goto_153

    .line 2060
    :cond_158
    const-string v14, "SyncManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failure adding authority: account="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " auth="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " enabled="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " syncable="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_121
.end method

.method private parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 2115
    const-string v5, "name"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2116
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v5, "type"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2117
    .local v2, "type":Ljava/lang/String;
    const-string/jumbo v5, "value1"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2118
    .local v3, "value1":Ljava/lang/String;
    const-string/jumbo v5, "value2"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2121
    .local v4, "value2":Ljava/lang/String;
    :try_start_1c
    const-string v5, "long"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 2122
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p2, v1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2141
    :cond_2b
    :goto_2b
    return-void

    .line 2123
    :cond_2c
    const-string v5, "integer"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 2124
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_3b} :catch_3c
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_3b} :catch_55

    goto :goto_2b

    .line 2136
    :catch_3c
    move-exception v0

    .line 2137
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v5, "SyncManager"

    const-string v6, "error parsing bundle value"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    .line 2125
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_45
    :try_start_45
    const-string v5, "double"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 2126
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {p2, v1, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_54
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_54} :catch_3c
    .catch Ljava/lang/NullPointerException; {:try_start_45 .. :try_end_54} :catch_55

    goto :goto_2b

    .line 2138
    :catch_55
    move-exception v0

    .line 2139
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v5, "SyncManager"

    const-string v6, "error parsing bundle value"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    .line 2127
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_5e
    :try_start_5e
    const-string v5, "float"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 2128
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {p2, v1, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_2b

    .line 2129
    :cond_6e
    const-string v5, "boolean"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 2130
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p2, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2b

    .line 2131
    :cond_7e
    const-string/jumbo v5, "string"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 2132
    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    .line 2133
    :cond_8b
    const-string v5, "account"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 2134
    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_9b
    .catch Ljava/lang/NumberFormatException; {:try_start_5e .. :try_end_9b} :catch_3c
    .catch Ljava/lang/NullPointerException; {:try_start_5e .. :try_end_9b} :catch_55

    goto :goto_2b
.end method

.method private parseListenForTickles(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v7, 0x0

    .line 1977
    const-string/jumbo v5, "user"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1978
    .local v3, "user":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1980
    .local v4, "userId":I
    :try_start_9
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_c} :catch_26
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_c} :catch_2f

    move-result v4

    .line 1986
    :goto_d
    const-string v5, "enabled"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1987
    .local v1, "enabled":Ljava/lang/String;
    if-eqz v1, :cond_1b

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    :cond_1b
    const/4 v2, 0x1

    .line 1988
    .local v2, "listen":Z
    :goto_1c
    iget-object v5, p0, mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1989
    return-void

    .line 1981
    .end local v1    # "enabled":Ljava/lang/String;
    .end local v2    # "listen":Z
    :catch_26
    move-exception v0

    .line 1982
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v5, "SyncManager"

    const-string v6, "error parsing the user for listen-for-tickles"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 1983
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_2f
    move-exception v0

    .line 1984
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v5, "SyncManager"

    const-string/jumbo v6, "the user in listen-for-tickles is null"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 1987
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "enabled":Ljava/lang/String;
    :cond_39
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method private parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;
    .registers 16
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "authorityInfo"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .prologue
    const/4 v0, 0x0

    .line 2073
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2074
    .local v3, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "period"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2075
    .local v11, "periodValue":Ljava/lang/String;
    const-string v1, "flex"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2079
    .local v10, "flexValue":Ljava/lang/String;
    :try_start_13
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_16} :catch_34
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_16} :catch_3d

    move-result-wide v4

    .line 2088
    .local v4, "period":J
    :try_start_17
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1a} :catch_47
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_1a} :catch_6f

    move-result-wide v6

    .line 2100
    .local v6, "flextime":J
    :goto_1b
    iget-object v1, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-boolean v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v1, :cond_97

    .line 2101
    new-instance v0, Landroid/content/PeriodicSync;

    iget-object v1, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    .line 2110
    .local v0, "periodicSync":Landroid/content/PeriodicSync;
    iget-object v1, p2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2111
    .end local v0    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v4    # "period":J
    .end local v6    # "flextime":J
    :goto_33
    return-object v0

    .line 2080
    :catch_34
    move-exception v8

    .line 2081
    .local v8, "e":Ljava/lang/NumberFormatException;
    const-string v1, "SyncManager"

    const-string v2, "error parsing the period of a periodic sync"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 2083
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :catch_3d
    move-exception v8

    .line 2084
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string v1, "SyncManager"

    const-string/jumbo v2, "the period of a periodic sync is null"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33

    .line 2089
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .restart local v4    # "period":J
    :catch_47
    move-exception v8

    .line 2090
    .local v8, "e":Ljava/lang/NumberFormatException;
    invoke-static {v4, v5}, calculateDefaultFlexTime(J)J

    move-result-wide v6

    .line 2091
    .restart local v6    # "flextime":J
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error formatting value parsed for periodic sync flex: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, ", using default: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 2094
    .end local v6    # "flextime":J
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :catch_6f
    move-exception v9

    .line 2095
    .local v9, "expected":Ljava/lang/NullPointerException;
    invoke-static {v4, v5}, calculateDefaultFlexTime(J)J

    move-result-wide v6

    .line 2096
    .restart local v6    # "flextime":J
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No flex time specified for this sync, using a default. period: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, " flex: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 2107
    .end local v9    # "expected":Ljava/lang/NullPointerException;
    :cond_97
    const-string v1, "SyncManager"

    const-string v2, "Unknown target."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method private readAccountInfoLocked()V
    .registers 23

    .prologue
    .line 1806
    const/4 v8, -0x1

    .line 1807
    .local v8, "highestAuthorityId":I
    const/4 v7, 0x0

    .line 1809
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, mAccountInfoFile:Landroid/util/AtomicFile;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7

    .line 1810
    const-string v19, "SyncManagerFile"

    const/16 v20, 0x2

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_38

    .line 1811
    const-string v19, "SyncManagerFile"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Reading "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, mAccountInfoFile:Landroid/util/AtomicFile;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    :cond_38
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    .line 1814
    .local v13, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-interface {v13, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1815
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .line 1816
    .local v6, "eventType":I
    :goto_47
    const/16 v19, 0x2

    move/from16 v0, v19

    if-eq v6, v0, :cond_58

    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_58

    .line 1818
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_47

    .line 1820
    :cond_58
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_7d

    .line 1821
    const-string v19, "SyncManager"

    const-string v20, "No initial accounts"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_65} :catch_1a7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_65} :catch_1e6
    .catchall {:try_start_2 .. :try_end_65} :catchall_256

    .line 1892
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, mNextAuthorityId:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mNextAuthorityId:I

    .line 1893
    if-eqz v7, :cond_7c

    .line 1895
    :try_start_79
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_27c

    .line 1902
    .end local v6    # "eventType":I
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_7c
    :goto_7c
    return-void

    .line 1825
    .restart local v6    # "eventType":I
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_7d
    :try_start_7d
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 1826
    .local v16, "tagName":Ljava/lang/String;
    const-string v19, "accounts"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_169

    .line 1827
    const/16 v19, 0x0

    const-string v20, "listen-for-tickles"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1828
    .local v10, "listen":Ljava/lang/String;
    const/16 v19, 0x0

    const-string/jumbo v20, "version"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1831
    .local v18, "versionString":Ljava/lang/String;
    if-nez v18, :cond_185

    const/16 v17, 0x0

    .line 1835
    .local v17, "version":I
    :goto_aa
    const/16 v19, 0x0

    const-string v20, "nextAuthorityId"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7d .. :try_end_b5} :catch_1a7
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_b5} :catch_1e6
    .catchall {:try_start_7d .. :try_end_b5} :catchall_256

    move-result-object v11

    .line 1837
    .local v11, "nextIdString":Ljava/lang/String;
    if-nez v11, :cond_190

    const/4 v9, 0x0

    .line 1838
    .local v9, "id":I
    :goto_b9
    :try_start_b9
    move-object/from16 v0, p0

    iget v0, v0, mNextAuthorityId:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mNextAuthorityId:I
    :try_end_cb
    .catch Ljava/lang/NumberFormatException; {:try_start_b9 .. :try_end_cb} :catch_284
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b9 .. :try_end_cb} :catch_1a7
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_cb} :catch_1e6
    .catchall {:try_start_b9 .. :try_end_cb} :catchall_256

    .line 1842
    .end local v9    # "id":I
    :goto_cb
    const/16 v19, 0x0

    :try_start_cd
    const-string v20, "offsetInSeconds"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v13, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_cd .. :try_end_d6} :catch_1a7
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d6} :catch_1e6
    .catchall {:try_start_cd .. :try_end_d6} :catchall_256

    move-result-object v12

    .line 1844
    .local v12, "offsetString":Ljava/lang/String;
    if-nez v12, :cond_196

    const/16 v19, 0x0

    :goto_db
    :try_start_db
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mSyncRandomOffset:I
    :try_end_e1
    .catch Ljava/lang/NumberFormatException; {:try_start_db .. :try_end_e1} :catch_19c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_db .. :try_end_e1} :catch_1a7
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_e1} :catch_1e6
    .catchall {:try_start_db .. :try_end_e1} :catchall_256

    .line 1848
    :goto_e1
    :try_start_e1
    move-object/from16 v0, p0

    iget v0, v0, mSyncRandomOffset:I

    move/from16 v19, v0

    if-nez v19, :cond_103

    .line 1849
    new-instance v15, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-direct {v15, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 1850
    .local v15, "random":Ljava/util/Random;
    const v19, 0x15180

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mSyncRandomOffset:I

    .line 1852
    .end local v15    # "random":Ljava/util/Random;
    :cond_103
    move-object/from16 v0, p0

    iget-object v0, v0, mMasterSyncAutomatically:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    if-eqz v10, :cond_113

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1cf

    :cond_113
    const/16 v19, 0x1

    :goto_115
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1853
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 1854
    const/4 v4, 0x0

    .line 1855
    .local v4, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v14, 0x0

    .line 1857
    .local v14, "periodicSync":Landroid/content/PeriodicSync;
    :cond_128
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v6, v0, :cond_15f

    .line 1858
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 1859
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_20c

    .line 1860
    const-string v19, "authority"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1d3

    .line 1861
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v13, v1}, parseAuthority(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v4

    .line 1862
    if-eqz v4, :cond_15f

    .line 1863
    const/4 v14, 0x0

    .line 1864
    iget v0, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v0, v8, :cond_15f

    .line 1865
    iget v8, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 1881
    :cond_15f
    :goto_15f
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_162
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e1 .. :try_end_162} :catch_1a7
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_162} :catch_1e6
    .catchall {:try_start_e1 .. :try_end_162} :catchall_256

    move-result v6

    .line 1882
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_128

    .line 1892
    .end local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v10    # "listen":Ljava/lang/String;
    .end local v11    # "nextIdString":Ljava/lang/String;
    .end local v12    # "offsetString":Ljava/lang/String;
    .end local v14    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v17    # "version":I
    .end local v18    # "versionString":Ljava/lang/String;
    :cond_169
    add-int/lit8 v19, v8, 0x1

    move-object/from16 v0, p0

    iget v0, v0, mNextAuthorityId:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mNextAuthorityId:I

    .line 1893
    if-eqz v7, :cond_180

    .line 1895
    :try_start_17d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_180
    .catch Ljava/io/IOException; {:try_start_17d .. :try_end_180} :catch_27f

    .line 1901
    :cond_180
    :goto_180
    invoke-direct/range {p0 .. p0}, maybeMigrateSettingsForRenamedAuthorities()Z

    goto/16 :goto_7c

    .line 1831
    .restart local v10    # "listen":Ljava/lang/String;
    .restart local v18    # "versionString":Ljava/lang/String;
    :cond_185
    :try_start_185
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_188
    .catch Ljava/lang/NumberFormatException; {:try_start_185 .. :try_end_188} :catch_18b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_185 .. :try_end_188} :catch_1a7
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_188} :catch_1e6
    .catchall {:try_start_185 .. :try_end_188} :catchall_256

    move-result v17

    goto/16 :goto_aa

    .line 1832
    :catch_18b
    move-exception v5

    .line 1833
    .local v5, "e":Ljava/lang/NumberFormatException;
    const/16 v17, 0x0

    .restart local v17    # "version":I
    goto/16 :goto_aa

    .line 1837
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .restart local v11    # "nextIdString":Ljava/lang/String;
    :cond_190
    :try_start_190
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_193
    .catch Ljava/lang/NumberFormatException; {:try_start_190 .. :try_end_193} :catch_284
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_190 .. :try_end_193} :catch_1a7
    .catch Ljava/io/IOException; {:try_start_190 .. :try_end_193} :catch_1e6
    .catchall {:try_start_190 .. :try_end_193} :catchall_256

    move-result v9

    goto/16 :goto_b9

    .line 1844
    .restart local v12    # "offsetString":Ljava/lang/String;
    :cond_196
    :try_start_196
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_199
    .catch Ljava/lang/NumberFormatException; {:try_start_196 .. :try_end_199} :catch_19c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_196 .. :try_end_199} :catch_1a7
    .catch Ljava/io/IOException; {:try_start_196 .. :try_end_199} :catch_1e6
    .catchall {:try_start_196 .. :try_end_199} :catchall_256

    move-result v19

    goto/16 :goto_db

    .line 1845
    :catch_19c
    move-exception v5

    .line 1846
    .restart local v5    # "e":Ljava/lang/NumberFormatException;
    const/16 v19, 0x0

    :try_start_19f
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mSyncRandomOffset:I
    :try_end_1a5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19f .. :try_end_1a5} :catch_1a7
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1a5} :catch_1e6
    .catchall {:try_start_19f .. :try_end_1a5} :catchall_256

    goto/16 :goto_e1

    .line 1884
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "eventType":I
    .end local v10    # "listen":Ljava/lang/String;
    .end local v11    # "nextIdString":Ljava/lang/String;
    .end local v12    # "offsetString":Ljava/lang/String;
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "tagName":Ljava/lang/String;
    .end local v17    # "version":I
    .end local v18    # "versionString":Ljava/lang/String;
    :catch_1a7
    move-exception v5

    .line 1885
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1a8
    const-string v19, "SyncManager"

    const-string v20, "Error reading accounts"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b3
    .catchall {:try_start_1a8 .. :try_end_1b3} :catchall_256

    .line 1892
    add-int/lit8 v19, v8, 0x1

    move-object/from16 v0, p0

    iget v0, v0, mNextAuthorityId:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mNextAuthorityId:I

    .line 1893
    if-eqz v7, :cond_7c

    .line 1895
    :try_start_1c7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1ca
    .catch Ljava/io/IOException; {:try_start_1c7 .. :try_end_1ca} :catch_1cc

    goto/16 :goto_7c

    .line 1896
    :catch_1cc
    move-exception v19

    goto/16 :goto_7c

    .line 1852
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6    # "eventType":I
    .restart local v10    # "listen":Ljava/lang/String;
    .restart local v11    # "nextIdString":Ljava/lang/String;
    .restart local v12    # "offsetString":Ljava/lang/String;
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "tagName":Ljava/lang/String;
    .restart local v17    # "version":I
    .restart local v18    # "versionString":Ljava/lang/String;
    :cond_1cf
    const/16 v19, 0x0

    goto/16 :goto_115

    .line 1868
    .restart local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v14    # "periodicSync":Landroid/content/PeriodicSync;
    :cond_1d3
    :try_start_1d3
    const-string v19, "listenForTickles"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15f

    .line 1869
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, parseListenForTickles(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1e4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d3 .. :try_end_1e4} :catch_1a7
    .catch Ljava/io/IOException; {:try_start_1d3 .. :try_end_1e4} :catch_1e6
    .catchall {:try_start_1d3 .. :try_end_1e4} :catchall_256

    goto/16 :goto_15f

    .line 1887
    .end local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "eventType":I
    .end local v10    # "listen":Ljava/lang/String;
    .end local v11    # "nextIdString":Ljava/lang/String;
    .end local v12    # "offsetString":Ljava/lang/String;
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v16    # "tagName":Ljava/lang/String;
    .end local v17    # "version":I
    .end local v18    # "versionString":Ljava/lang/String;
    :catch_1e6
    move-exception v5

    .line 1888
    .local v5, "e":Ljava/io/IOException;
    if-nez v7, :cond_26f

    :try_start_1e9
    const-string v19, "SyncManager"

    const-string v20, "No initial accounts"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f0
    .catchall {:try_start_1e9 .. :try_end_1f0} :catchall_256

    .line 1892
    :goto_1f0
    add-int/lit8 v19, v8, 0x1

    move-object/from16 v0, p0

    iget v0, v0, mNextAuthorityId:I

    move/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mNextAuthorityId:I

    .line 1893
    if-eqz v7, :cond_7c

    .line 1895
    :try_start_204
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_207
    .catch Ljava/io/IOException; {:try_start_204 .. :try_end_207} :catch_209

    goto/16 :goto_7c

    .line 1896
    :catch_209
    move-exception v19

    goto/16 :goto_7c

    .line 1871
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v6    # "eventType":I
    .restart local v10    # "listen":Ljava/lang/String;
    .restart local v11    # "nextIdString":Ljava/lang/String;
    .restart local v12    # "offsetString":Ljava/lang/String;
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14    # "periodicSync":Landroid/content/PeriodicSync;
    .restart local v16    # "tagName":Ljava/lang/String;
    .restart local v17    # "version":I
    .restart local v18    # "versionString":Ljava/lang/String;
    :cond_20c
    :try_start_20c
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_22f

    .line 1872
    const-string/jumbo v19, "periodicSync"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15f

    if-eqz v4, :cond_15f

    .line 1873
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;

    move-result-object v14

    goto/16 :goto_15f

    .line 1875
    :cond_22f
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_15f

    if-eqz v14, :cond_15f

    .line 1876
    const-string v19, "extra"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15f

    .line 1877
    iget-object v0, v14, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v13, v1}, parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_254
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20c .. :try_end_254} :catch_1a7
    .catch Ljava/io/IOException; {:try_start_20c .. :try_end_254} :catch_1e6
    .catchall {:try_start_20c .. :try_end_254} :catchall_256

    goto/16 :goto_15f

    .line 1892
    .end local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "eventType":I
    .end local v10    # "listen":Ljava/lang/String;
    .end local v11    # "nextIdString":Ljava/lang/String;
    .end local v12    # "offsetString":Ljava/lang/String;
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v14    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v16    # "tagName":Ljava/lang/String;
    .end local v17    # "version":I
    .end local v18    # "versionString":Ljava/lang/String;
    :catchall_256
    move-exception v19

    add-int/lit8 v20, v8, 0x1

    move-object/from16 v0, p0

    iget v0, v0, mNextAuthorityId:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mNextAuthorityId:I

    .line 1893
    if-eqz v7, :cond_26e

    .line 1895
    :try_start_26b
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_26e
    .catch Ljava/io/IOException; {:try_start_26b .. :try_end_26e} :catch_282

    .line 1897
    :cond_26e
    :goto_26e
    throw v19

    .line 1889
    .restart local v5    # "e":Ljava/io/IOException;
    :cond_26f
    :try_start_26f
    const-string v19, "SyncManager"

    const-string v20, "Error reading accounts"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27a
    .catchall {:try_start_26f .. :try_end_27a} :catchall_256

    goto/16 :goto_1f0

    .line 1896
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v6    # "eventType":I
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_27c
    move-exception v19

    goto/16 :goto_7c

    .restart local v16    # "tagName":Ljava/lang/String;
    :catch_27f
    move-exception v19

    goto/16 :goto_180

    .end local v6    # "eventType":I
    .end local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "tagName":Ljava/lang/String;
    :catch_282
    move-exception v20

    goto :goto_26e

    .line 1839
    .restart local v6    # "eventType":I
    .restart local v10    # "listen":Ljava/lang/String;
    .restart local v11    # "nextIdString":Ljava/lang/String;
    .restart local v13    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "tagName":Ljava/lang/String;
    .restart local v17    # "version":I
    .restart local v18    # "versionString":Ljava/lang/String;
    :catch_284
    move-exception v19

    goto/16 :goto_cb
.end method

.method private readAndDeleteLegacyAccountInfoLocked()V
    .registers 26

    .prologue
    .line 2232
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "syncmanager.db"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 2233
    .local v15, "file":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_12

    .line 2355
    :cond_11
    :goto_11
    return-void

    .line 2236
    :cond_12
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    .line 2237
    .local v21, "path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2239
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_19
    move-object/from16 v0, v21

    invoke-static {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_1e} :catch_2ba

    move-result-object v3

    .line 2244
    :goto_1f
    if-eqz v3, :cond_11

    .line 2245
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1fd

    const/16 v17, 0x1

    .line 2248
    .local v17, "hasType":Z
    :goto_2b
    const-string v4, "SyncManagerFile"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 2249
    const-string v4, "SyncManagerFile"

    const-string v5, "Reading legacy sync accounts db"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    :cond_3b
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2252
    .local v2, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v4, "stats, status"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2253
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 2254
    .local v19, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "_id"

    const-string/jumbo v5, "status._id as _id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2255
    const-string v4, "account"

    const-string/jumbo v5, "stats.account as account"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2256
    if-eqz v17, :cond_6b

    .line 2257
    const-string v4, "account_type"

    const-string/jumbo v5, "stats.account_type as account_type"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2259
    :cond_6b
    const-string v4, "authority"

    const-string/jumbo v5, "stats.authority as authority"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2260
    const-string/jumbo v4, "totalElapsedTime"

    const-string/jumbo v5, "totalElapsedTime"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2261
    const-string v4, "numSyncs"

    const-string v5, "numSyncs"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2262
    const-string v4, "numSourceLocal"

    const-string v5, "numSourceLocal"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2263
    const-string v4, "numSourcePoll"

    const-string v5, "numSourcePoll"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2264
    const-string v4, "numSourceServer"

    const-string v5, "numSourceServer"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2265
    const-string v4, "numSourceUser"

    const-string v5, "numSourceUser"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2266
    const-string v4, "lastSuccessSource"

    const-string v5, "lastSuccessSource"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2267
    const-string v4, "lastSuccessTime"

    const-string v5, "lastSuccessTime"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2268
    const-string v4, "lastFailureSource"

    const-string v5, "lastFailureSource"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2269
    const-string v4, "lastFailureTime"

    const-string v5, "lastFailureTime"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2270
    const-string v4, "lastFailureMesg"

    const-string v5, "lastFailureMesg"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2271
    const-string/jumbo v4, "pending"

    const-string/jumbo v5, "pending"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2272
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2273
    const-string/jumbo v4, "stats._id = status.stats_id"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2274
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2275
    .local v14, "c":Landroid/database/Cursor;
    :cond_fa
    :goto_fa
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_206

    .line 2276
    const-string v4, "account"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2277
    .local v10, "accountName":Ljava/lang/String;
    if-eqz v17, :cond_201

    const-string v4, "account_type"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2279
    .local v11, "accountType":Ljava/lang/String;
    :goto_116
    if-nez v11, :cond_11a

    .line 2280
    const-string v11, "com.google"

    .line 2282
    :cond_11a
    const-string v4, "authority"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2283
    .local v13, "authorityName":Ljava/lang/String;
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, v10, v11}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-direct {v4, v5, v13, v6}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v12

    .line 2290
    .local v12, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v12, :cond_fa

    .line 2291
    move-object/from16 v0, p0

    iget-object v4, v0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v18

    .line 2292
    .local v18, "i":I
    const/16 v16, 0x0

    .line 2293
    .local v16, "found":Z
    const/16 v23, 0x0

    .line 2294
    .local v23, "st":Landroid/content/SyncStatusInfo;
    :cond_145
    if-lez v18, :cond_15f

    .line 2295
    add-int/lit8 v18, v18, -0x1

    .line 2296
    move-object/from16 v0, p0

    iget-object v4, v0, mSyncStatus:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "st":Landroid/content/SyncStatusInfo;
    check-cast v23, Landroid/content/SyncStatusInfo;

    .line 2297
    .restart local v23    # "st":Landroid/content/SyncStatusInfo;
    move-object/from16 v0, v23

    iget v4, v0, Landroid/content/SyncStatusInfo;->authorityId:I

    iget v5, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    if-ne v4, v5, :cond_145

    .line 2298
    const/16 v16, 0x1

    .line 2302
    :cond_15f
    if-nez v16, :cond_175

    .line 2303
    new-instance v23, Landroid/content/SyncStatusInfo;

    .end local v23    # "st":Landroid/content/SyncStatusInfo;
    iget v4, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .line 2304
    .restart local v23    # "st":Landroid/content/SyncStatusInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, mSyncStatus:Landroid/util/SparseArray;

    iget v5, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object/from16 v0, v23

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2306
    :cond_175
    const-string/jumbo v4, "totalElapsedTime"

    invoke-static {v14, v4}, getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v23

    iput-wide v4, v0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    .line 2307
    const-string v4, "numSyncs"

    invoke-static {v14, v4}, getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    iput v4, v0, Landroid/content/SyncStatusInfo;->numSyncs:I

    .line 2308
    const-string v4, "numSourceLocal"

    invoke-static {v14, v4}, getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    iput v4, v0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    .line 2309
    const-string v4, "numSourcePoll"

    invoke-static {v14, v4}, getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    iput v4, v0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    .line 2310
    const-string v4, "numSourceServer"

    invoke-static {v14, v4}, getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    iput v4, v0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    .line 2311
    const-string v4, "numSourceUser"

    invoke-static {v14, v4}, getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    iput v4, v0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    .line 2312
    const/4 v4, 0x0

    move-object/from16 v0, v23

    iput v4, v0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    .line 2313
    const-string v4, "lastSuccessSource"

    invoke-static {v14, v4}, getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    iput v4, v0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 2314
    const-string v4, "lastSuccessTime"

    invoke-static {v14, v4}, getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v23

    iput-wide v4, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 2315
    const-string v4, "lastFailureSource"

    invoke-static {v14, v4}, getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    iput v4, v0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 2316
    const-string v4, "lastFailureTime"

    invoke-static {v14, v4}, getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v23

    iput-wide v4, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 2317
    const-string v4, "lastFailureMesg"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    iput-object v4, v0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 2318
    const-string/jumbo v4, "pending"

    invoke-static {v14, v4}, getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_204

    const/4 v4, 0x1

    :goto_1f7
    move-object/from16 v0, v23

    iput-boolean v4, v0, Landroid/content/SyncStatusInfo;->pending:Z

    goto/16 :goto_fa

    .line 2245
    .end local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v10    # "accountName":Ljava/lang/String;
    .end local v11    # "accountType":Ljava/lang/String;
    .end local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v13    # "authorityName":Ljava/lang/String;
    .end local v14    # "c":Landroid/database/Cursor;
    .end local v16    # "found":Z
    .end local v17    # "hasType":Z
    .end local v18    # "i":I
    .end local v19    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "st":Landroid/content/SyncStatusInfo;
    :cond_1fd
    const/16 v17, 0x0

    goto/16 :goto_2b

    .line 2277
    .restart local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v10    # "accountName":Ljava/lang/String;
    .restart local v14    # "c":Landroid/database/Cursor;
    .restart local v17    # "hasType":Z
    .restart local v19    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_201
    const/4 v11, 0x0

    goto/16 :goto_116

    .line 2318
    .restart local v11    # "accountType":Ljava/lang/String;
    .restart local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v13    # "authorityName":Ljava/lang/String;
    .restart local v16    # "found":Z
    .restart local v18    # "i":I
    .restart local v23    # "st":Landroid/content/SyncStatusInfo;
    :cond_204
    const/4 v4, 0x0

    goto :goto_1f7

    .line 2322
    .end local v10    # "accountName":Ljava/lang/String;
    .end local v11    # "accountType":Ljava/lang/String;
    .end local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v13    # "authorityName":Ljava/lang/String;
    .end local v16    # "found":Z
    .end local v18    # "i":I
    .end local v23    # "st":Landroid/content/SyncStatusInfo;
    :cond_206
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2325
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    .end local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2326
    .restart local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v4, "settings"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2327
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2328
    :cond_21e
    :goto_21e
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2a8

    .line 2329
    const-string v4, "name"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 2330
    .local v20, "name":Ljava/lang/String;
    const-string/jumbo v4, "value"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 2331
    .local v24, "value":Ljava/lang/String;
    if-eqz v20, :cond_21e

    .line 2332
    const-string v4, "listen_for_tickles"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_257

    .line 2333
    if-eqz v24, :cond_24d

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_255

    :cond_24d
    const/4 v4, 0x1

    :goto_24e
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, setMasterSyncAutomatically(ZI)V

    goto :goto_21e

    :cond_255
    const/4 v4, 0x0

    goto :goto_24e

    .line 2334
    :cond_257
    const-string/jumbo v4, "sync_provider_"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21e

    .line 2335
    const-string/jumbo v4, "sync_provider_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 2337
    .local v22, "provider":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v18

    .line 2338
    .restart local v18    # "i":I
    :cond_27b
    :goto_27b
    if-lez v18, :cond_21e

    .line 2339
    add-int/lit8 v18, v18, -0x1

    .line 2340
    move-object/from16 v0, p0

    iget-object v4, v0, mAuthorities:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 2341
    .restart local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v4, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27b

    .line 2342
    if-eqz v24, :cond_29f

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a6

    :cond_29f
    const/4 v4, 0x1

    :goto_2a0
    iput-boolean v4, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 2343
    const/4 v4, 0x1

    iput v4, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_27b

    .line 2342
    :cond_2a6
    const/4 v4, 0x0

    goto :goto_2a0

    .line 2349
    .end local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v18    # "i":I
    .end local v20    # "name":Ljava/lang/String;
    .end local v22    # "provider":Ljava/lang/String;
    .end local v24    # "value":Ljava/lang/String;
    :cond_2a8
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2351
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2353
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_11

    .line 2241
    .end local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v14    # "c":Landroid/database/Cursor;
    .end local v17    # "hasType":Z
    .end local v19    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_2ba
    move-exception v4

    goto/16 :goto_1f
.end method

.method private readPendingOperationsLocked()V
    .registers 18

    .prologue
    .line 2433
    const/4 v10, 0x0

    .line 2434
    .local v10, "fis":Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v5, v0, mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_20

    .line 2435
    const-string v5, "SyncManagerFile"

    const/4 v15, 0x2

    invoke-static {v5, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 2436
    const-string v5, "SyncManagerFile"

    const-string v15, "No pending operation file."

    invoke-static {v5, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    :cond_1f
    :goto_1f
    return-void

    .line 2441
    :cond_20
    :try_start_20
    move-object/from16 v0, p0

    iget-object v5, v0, mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v10

    .line 2442
    const-string v5, "SyncManagerFile"

    const/4 v15, 0x2

    invoke-static {v5, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 2443
    const-string v5, "SyncManagerFile"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Reading "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, mPendingFile:Landroid/util/AtomicFile;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    :cond_53
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    .line 2447
    .local v11, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v11, v10, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2449
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 2450
    .local v9, "eventType":I
    :goto_5f
    const/4 v5, 0x2

    if-eq v9, v5, :cond_6a

    const/4 v5, 0x1

    if-eq v9, v5, :cond_6a

    .line 2452
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_68} :catch_1ec
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_68} :catch_219
    .catchall {:try_start_20 .. :try_end_68} :catchall_234

    move-result v9

    goto :goto_5f

    .line 2454
    :cond_6a
    const/4 v5, 0x1

    if-ne v9, v5, :cond_75

    .line 2521
    if-eqz v10, :cond_1f

    .line 2523
    :try_start_6f
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_1f

    .line 2524
    :catch_73
    move-exception v5

    goto :goto_1f

    .line 2457
    :cond_75
    const/4 v12, 0x0

    .line 2458
    .local v12, "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    const/4 v5, 0x2

    if-ne v9, v5, :cond_216

    .line 2460
    :try_start_79
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 2461
    .local v13, "tagName":Ljava/lang/String;
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    const/4 v15, 0x1

    if-ne v5, v15, :cond_1fe

    const-string v5, "op"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1fe

    .line 2463
    const/4 v5, 0x0

    const-string/jumbo v15, "version"

    invoke-interface {v11, v5, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2465
    .local v14, "versionString":Ljava/lang/String;
    if-eqz v14, :cond_9d

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v15, 0x3

    if-eq v5, v15, :cond_d7

    .line 2467
    :cond_9d
    const-string v5, "SyncManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown pending operation version "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    new-instance v5, Ljava/io/IOException;

    const-string v15, "Unknown version."

    invoke-direct {v5, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_bd
    .catch Ljava/lang/NumberFormatException; {:try_start_79 .. :try_end_bd} :catch_bd
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_bd} :catch_1ec
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_79 .. :try_end_bd} :catch_219
    .catchall {:try_start_79 .. :try_end_bd} :catchall_234

    .line 2508
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v14    # "versionString":Ljava/lang/String;
    :catch_bd
    move-exception v8

    move-object v1, v12

    .line 2509
    .end local v12    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .local v1, "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .local v8, "e":Ljava/lang/NumberFormatException;
    :goto_bf
    :try_start_bf
    const-string v5, "SyncManager"

    const-string v15, "Invalid data in xml file."

    invoke-static {v5, v15, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2512
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_c6
    :goto_c6
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c9} :catch_1ec
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bf .. :try_end_c9} :catch_219
    .catchall {:try_start_bf .. :try_end_c9} :catchall_234

    move-result v9

    .line 2513
    const/4 v5, 0x1

    if-ne v9, v5, :cond_75

    .line 2521
    if-eqz v10, :cond_1f

    .line 2523
    :try_start_cf
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d4

    goto/16 :goto_1f

    .line 2524
    :catch_d4
    move-exception v5

    goto/16 :goto_1f

    .line 2470
    .end local v1    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .restart local v12    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .restart local v13    # "tagName":Ljava/lang/String;
    .restart local v14    # "versionString":Ljava/lang/String;
    :cond_d7
    const/4 v5, 0x0

    :try_start_d8
    const-string v15, "authority_id"

    invoke-interface {v11, v5, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2472
    .local v7, "authorityId":I
    const/4 v5, 0x0

    const-string v15, "expedited"

    invoke-interface {v11, v5, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 2474
    .local v6, "expedited":Z
    const/4 v5, 0x0

    const-string/jumbo v15, "source"

    invoke-interface {v11, v5, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2476
    .local v4, "syncSource":I
    const/4 v5, 0x0

    const-string/jumbo v15, "reason"

    invoke-interface {v11, v5, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2478
    .local v3, "reason":I
    move-object/from16 v0, p0

    iget-object v5, v0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 2479
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const-string v5, "SyncManagerFile"

    const/4 v15, 0x2

    invoke-static {v5, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_158

    .line 2480
    const-string v5, "SyncManagerFile"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    :cond_158
    if-eqz v2, :cond_1c2

    .line 2484
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-direct/range {v1 .. v6}, Lcom/android/server/content/SyncStorageEngine$PendingOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;IILandroid/os/Bundle;Z)V
    :try_end_164
    .catch Ljava/lang/NumberFormatException; {:try_start_d8 .. :try_end_164} :catch_bd
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_164} :catch_1ec
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d8 .. :try_end_164} :catch_219
    .catchall {:try_start_d8 .. :try_end_164} :catchall_234

    .line 2486
    .end local v12    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .restart local v1    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    const/4 v5, 0x0

    :try_start_165
    iput-object v5, v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->flatExtras:[B

    .line 2487
    move-object/from16 v0, p0

    iget-object v5, v0, mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2488
    const-string v5, "SyncManagerFile"

    const/4 v15, 0x2

    invoke-static {v5, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 2489
    const-string v5, "SyncManagerFile"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Adding pending op: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " src="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " reason="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->reason:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " expedited="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-boolean v0, v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->expedited:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c6

    .line 2508
    :catch_1bf
    move-exception v8

    goto/16 :goto_bf

    .line 2497
    .end local v1    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .restart local v12    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    :cond_1c2
    const/4 v1, 0x0

    .line 2498
    .end local v12    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .restart local v1    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    const-string v5, "SyncManagerFile"

    const/4 v15, 0x2

    invoke-static {v5, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 2499
    const-string v5, "SyncManagerFile"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "No authority found for "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", skipping"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ea
    .catch Ljava/lang/NumberFormatException; {:try_start_165 .. :try_end_1ea} :catch_1bf
    .catch Ljava/io/IOException; {:try_start_165 .. :try_end_1ea} :catch_1ec
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_165 .. :try_end_1ea} :catch_219
    .catchall {:try_start_165 .. :try_end_1ea} :catchall_234

    goto/16 :goto_c6

    .line 2514
    .end local v1    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .end local v2    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v3    # "reason":I
    .end local v4    # "syncSource":I
    .end local v6    # "expedited":Z
    .end local v7    # "authorityId":I
    .end local v9    # "eventType":I
    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v14    # "versionString":Ljava/lang/String;
    :catch_1ec
    move-exception v8

    .line 2515
    .local v8, "e":Ljava/io/IOException;
    :try_start_1ed
    const-string v5, "SyncManagerFile"

    const-string v15, "Error reading pending data."

    invoke-static {v5, v15, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f4
    .catchall {:try_start_1ed .. :try_end_1f4} :catchall_234

    .line 2521
    if-eqz v10, :cond_1f

    .line 2523
    :try_start_1f6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1f9
    .catch Ljava/io/IOException; {:try_start_1f6 .. :try_end_1f9} :catch_1fb

    goto/16 :goto_1f

    .line 2524
    :catch_1fb
    move-exception v5

    goto/16 :goto_1f

    .line 2503
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v9    # "eventType":I
    .restart local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_1fe
    :try_start_1fe
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    const/4 v15, 0x2

    if-ne v5, v15, :cond_216

    if-eqz v12, :cond_216

    const-string v5, "extra"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_216

    .line 2506
    iget-object v5, v12, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v5}, parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_216
    .catch Ljava/lang/NumberFormatException; {:try_start_1fe .. :try_end_216} :catch_bd
    .catch Ljava/io/IOException; {:try_start_1fe .. :try_end_216} :catch_1ec
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1fe .. :try_end_216} :catch_219
    .catchall {:try_start_1fe .. :try_end_216} :catchall_234

    .end local v13    # "tagName":Ljava/lang/String;
    :cond_216
    move-object v1, v12

    .end local v12    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .restart local v1    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    goto/16 :goto_c6

    .line 2516
    .end local v1    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .end local v9    # "eventType":I
    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_219
    move-exception v8

    .line 2517
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_21a
    const-string v5, "SyncManagerFile"

    const/4 v15, 0x2

    invoke-static {v5, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_22a

    .line 2518
    const-string v5, "SyncManagerFile"

    const-string v15, "Error parsing pending ops xml."

    invoke-static {v5, v15, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22a
    .catchall {:try_start_21a .. :try_end_22a} :catchall_234

    .line 2521
    :cond_22a
    if-eqz v10, :cond_1f

    .line 2523
    :try_start_22c
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_22f
    .catch Ljava/io/IOException; {:try_start_22c .. :try_end_22f} :catch_231

    goto/16 :goto_1f

    .line 2524
    :catch_231
    move-exception v5

    goto/16 :goto_1f

    .line 2521
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_234
    move-exception v5

    if-eqz v10, :cond_23a

    .line 2523
    :try_start_237
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_23a
    .catch Ljava/io/IOException; {:try_start_237 .. :try_end_23a} :catch_23b

    .line 2524
    :cond_23a
    :goto_23a
    throw v5

    :catch_23b
    move-exception v15

    goto :goto_23a
.end method

.method private readStatisticsLocked()V
    .registers 12

    .prologue
    const/16 v10, 0x64

    .line 2729
    :try_start_2
    iget-object v7, p0, mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    .line 2730
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2731
    .local v4, "in":Landroid/os/Parcel;
    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v4, v0, v7, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2732
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2734
    const/4 v5, 0x0

    .line 2735
    .local v5, "index":I
    :cond_16
    :goto_16
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "token":I
    if-eqz v6, :cond_6d

    .line 2736
    const/16 v7, 0x65

    if-eq v6, v7, :cond_22

    if-ne v6, v10, :cond_55

    .line 2738
    :cond_22
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2739
    .local v1, "day":I
    if-ne v6, v10, :cond_2c

    .line 2740
    add-int/lit16 v7, v1, -0x7d9

    add-int/lit16 v1, v7, 0x37a5

    .line 2742
    :cond_2c
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v2, v1}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 2743
    .local v2, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2744
    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2745
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2746
    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 2747
    iget-object v7, p0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v7, v7

    if-ge v5, v7, :cond_16

    .line 2748
    iget-object v7, p0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aput-object v2, v7, v5

    .line 2749
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 2753
    .end local v1    # "day":I
    .end local v2    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_55
    const-string v7, "SyncManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown stats token: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6d} :catch_6e

    .line 2760
    .end local v0    # "data":[B
    .end local v4    # "in":Landroid/os/Parcel;
    .end local v5    # "index":I
    .end local v6    # "token":I
    :cond_6d
    :goto_6d
    return-void

    .line 2757
    :catch_6e
    move-exception v3

    .line 2758
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "SyncManager"

    const-string v8, "No initial statistics"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d
.end method

.method private readStatusLocked()V
    .registers 9

    .prologue
    const/4 v6, 0x2

    .line 2364
    const-string v5, "SyncManagerFile"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 2365
    const-string v5, "SyncManagerFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    :cond_27
    :try_start_27
    iget-object v5, p0, mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    .line 2369
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2370
    .local v2, "in":Landroid/os/Parcel;
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v2, v0, v5, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2371
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2373
    :cond_3a
    :goto_3a
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "token":I
    if-eqz v4, :cond_89

    .line 2374
    const/16 v5, 0x64

    if-ne v4, v5, :cond_8a

    .line 2375
    new-instance v3, Landroid/content/SyncStatusInfo;

    invoke-direct {v3, v2}, Landroid/content/SyncStatusInfo;-><init>(Landroid/os/Parcel;)V

    .line 2376
    .local v3, "status":Landroid/content/SyncStatusInfo;
    iget-object v5, p0, mAuthorities:Landroid/util/SparseArray;

    iget v6, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_3a

    .line 2377
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/content/SyncStatusInfo;->pending:Z

    .line 2378
    const-string v5, "SyncManagerFile"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 2379
    const-string v5, "SyncManagerFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding status for id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    :cond_79
    iget-object v5, p0, mSyncStatus:Landroid/util/SparseArray;

    iget v6, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_80} :catch_81

    goto :goto_3a

    .line 2389
    .end local v0    # "data":[B
    .end local v2    # "in":Landroid/os/Parcel;
    .end local v3    # "status":Landroid/content/SyncStatusInfo;
    .end local v4    # "token":I
    :catch_81
    move-exception v1

    .line 2390
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "SyncManager"

    const-string v6, "No initial status"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    .end local v1    # "e":Ljava/io/IOException;
    :cond_89
    :goto_89
    return-void

    .line 2385
    .restart local v0    # "data":[B
    .restart local v2    # "in":Landroid/os/Parcel;
    .restart local v4    # "token":I
    :cond_8a
    :try_start_8a
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown status token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_a2} :catch_81

    goto :goto_89
.end method

.method private removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .registers 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "authorityName"    # Ljava/lang/String;
    .param p4, "doWrite"    # Z

    .prologue
    .line 1718
    iget-object v2, p0, mAccounts:Ljava/util/HashMap;

    new-instance v3, Landroid/accounts/AccountAndUser;

    invoke-direct {v3, p1, p2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1719
    .local v0, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-eqz v0, :cond_25

    .line 1720
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1721
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_25

    .line 1722
    iget-object v2, p0, mAuthorities:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1723
    if-eqz p4, :cond_25

    .line 1724
    invoke-direct {p0}, writeAccountInfoLocked()V

    .line 1728
    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_25
    return-void
.end method

.method private reportChange(I)V
    .registers 9
    .param p1, "which"    # I

    .prologue
    .line 590
    const/4 v2, 0x0

    .line 591
    .local v2, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    iget-object v5, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 592
    :try_start_4
    iget-object v4, p0, mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_78

    move-result v0

    .local v0, "i":I
    move-object v3, v2

    .line 593
    .end local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .local v3, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_b
    :goto_b
    if-lez v0, :cond_30

    .line 594
    add-int/lit8 v0, v0, -0x1

    .line 595
    :try_start_f
    iget-object v4, p0, mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 596
    .local v1, "mask":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_b

    .line 599
    if-nez v3, :cond_7f

    .line 600
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_7c

    .line 602
    .end local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :goto_25
    :try_start_25
    iget-object v4, p0, mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_78

    move-object v3, v2

    .line 603
    .end local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_b

    .line 604
    .end local v1    # "mask":Ljava/lang/Integer;
    :cond_30
    :try_start_30
    iget-object v4, p0, mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 605
    monitor-exit v5
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_7c

    .line 607
    const-string v4, "SyncManager"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 608
    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reportChange "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_62
    if-eqz v3, :cond_7b

    .line 612
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 613
    :goto_68
    if-lez v0, :cond_7b

    .line 614
    add-int/lit8 v0, v0, -0x1

    .line 616
    :try_start_6c
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ISyncStatusObserver;

    invoke-interface {v4, p1}, Landroid/content/ISyncStatusObserver;->onStatusChanged(I)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_75} :catch_76

    goto :goto_68

    .line 617
    :catch_76
    move-exception v4

    goto :goto_68

    .line 605
    .end local v0    # "i":I
    .end local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :catchall_78
    move-exception v4

    :goto_79
    :try_start_79
    monitor-exit v5
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v4

    .line 622
    .end local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v0    # "i":I
    .restart local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_7b
    return-void

    .line 605
    :catchall_7c
    move-exception v4

    move-object v2, v3

    .end local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_79

    .end local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v1    # "mask":Ljava/lang/Integer;
    .restart local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_7f
    move-object v2, v3

    .end local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v2    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_25
.end method

.method private requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2709
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_17

    iget-object v0, p0, mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-eqz v0, :cond_17

    .line 2711
    iget-object v0, p0, mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v1, p1, p4, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-interface {v0, v1, p3, p5}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;)V

    .line 2718
    :goto_16
    return-void

    .line 2716
    :cond_17
    invoke-static {p1, p4, p5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_16
.end method

.method private requestSync(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "authorityInfo"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .param p2, "reason"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2683
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_14

    iget-object v1, p0, mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-eqz v1, :cond_14

    .line 2685
    iget-object v1, p0, mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface {v1, v2, p2, p3}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;)V

    .line 2701
    :cond_13
    :goto_13
    return-void

    .line 2687
    :cond_14
    new-instance v1, Landroid/content/SyncRequest$Builder;

    invoke-direct {v1}, Landroid/content/SyncRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/content/SyncRequest$Builder;->syncOnce()Landroid/content/SyncRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/SyncRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;

    move-result-object v0

    .line 2691
    .local v0, "req":Landroid/content/SyncRequest$Builder;
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-boolean v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v1, :cond_3a

    .line 2692
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncRequest$Builder;->setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;

    .line 2699
    invoke-virtual {v0}, Landroid/content/SyncRequest$Builder;->build()Landroid/content/SyncRequest;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentResolver;->requestSync(Landroid/content/SyncRequest;)V

    goto :goto_13

    .line 2694
    :cond_3a
    const-string v1, "SyncManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2695
    const-string v1, "SyncManager"

    const-string v2, "Unknown target, skipping sync request."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z
    .registers 16
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "nextSyncTime"    # J
    .param p6, "nextDelay"    # J

    .prologue
    .line 815
    const/4 v2, 0x0

    .line 816
    .local v2, "changed":Z
    iget-object v5, p0, mAccounts:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 817
    .local v0, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-eqz p1, :cond_29

    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v5, v5, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v5}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v5, v5, Landroid/accounts/AccountAndUser;->userId:I

    if-ne p2, v5, :cond_b

    .line 821
    :cond_29
    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_33
    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 822
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz p3, :cond_4b

    iget-object v5, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 826
    :cond_4b
    iget-wide v6, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v5, v6, p4

    if-nez v5, :cond_57

    iget-wide v6, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v5, v6, p6

    if-eqz v5, :cond_33

    .line 828
    :cond_57
    iput-wide p4, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 829
    iput-wide p6, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 830
    const/4 v2, 0x1

    goto :goto_33

    .line 834
    .end local v0    # "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_5d
    return v2
.end method

.method private setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V
    .registers 9
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "syncable"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 731
    iget-object v2, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 732
    const/4 v1, -0x1

    const/4 v3, 0x0

    :try_start_7
    invoke-direct {p0, p1, v1, v3}, getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 733
    .local v0, "aInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-le p2, v5, :cond_6c

    .line 734
    const/4 p2, 0x1

    .line 738
    :cond_e
    :goto_e
    const-string v1, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 739
    const-string v1, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setIsSyncable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_3e
    iget v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v1, p2, :cond_70

    .line 742
    const-string v1, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 743
    const-string v1, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setIsSyncable: already set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", doing nothing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_6a
    monitor-exit v2

    .line 754
    :goto_6b
    return-void

    .line 735
    :cond_6c
    if-ge p2, v4, :cond_e

    .line 736
    const/4 p2, -0x1

    goto :goto_e

    .line 747
    :cond_70
    iput p2, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 748
    invoke-direct {p0}, writeAccountInfoLocked()V

    .line 749
    monitor-exit v2
    :try_end_76
    .catchall {:try_start_7 .. :try_end_76} :catchall_85

    .line 750
    if-lez p2, :cond_81

    .line 751
    const/4 v1, -0x5

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0, v1, v2}, requestSync(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;ILandroid/os/Bundle;)V

    .line 753
    :cond_81
    invoke-direct {p0, v5}, reportChange(I)V

    goto :goto_6b

    .line 749
    .end local v0    # "aInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_85
    move-exception v1

    :try_start_86
    monitor-exit v2
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw v1
.end method

.method private static unflattenBundle([B)Landroid/os/Bundle;
    .registers 6
    .param p0, "flatData"    # [B

    .prologue
    .line 2543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2545
    .local v2, "parcel":Landroid/os/Parcel;
    const/4 v3, 0x0

    :try_start_5
    array-length v4, p0

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2546
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2547
    invoke-virtual {v2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_10} :catch_15
    .catchall {:try_start_5 .. :try_end_10} :catchall_1f

    move-result-object v0

    .line 2553
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2555
    :goto_14
    return-object v0

    .line 2548
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_15
    move-exception v1

    .line 2551
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_16
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1f

    .line 2553
    .restart local v0    # "bundle":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_14

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_1f
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method private writeAccountInfoLocked()V
    .registers 23

    .prologue
    .line 2147
    const-string v18, "SyncManagerFile"

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_2c

    .line 2148
    const-string v18, "SyncManagerFile"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Writing new "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, mAccountInfoFile:Landroid/util/AtomicFile;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    :cond_2c
    const/4 v9, 0x0

    .line 2153
    .local v9, "fos":Ljava/io/FileOutputStream;
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v0, v0, mAccountInfoFile:Landroid/util/AtomicFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v9

    .line 2154
    new-instance v15, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v15}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2155
    .local v15, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v18, "utf-8"

    move-object/from16 v0, v18

    invoke-interface {v15, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2156
    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2157
    const-string v18, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2159
    const/16 v18, 0x0

    const-string v19, "accounts"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2160
    const/16 v18, 0x0

    const-string/jumbo v19, "version"

    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2161
    const/16 v18, 0x0

    const-string v19, "nextAuthorityId"

    move-object/from16 v0, p0

    iget v0, v0, mNextAuthorityId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2162
    const/16 v18, 0x0

    const-string v19, "offsetInSeconds"

    move-object/from16 v0, p0

    iget v0, v0, mSyncRandomOffset:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2165
    move-object/from16 v0, p0

    iget-object v0, v0, mMasterSyncAutomatically:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 2166
    .local v4, "M":I
    const/4 v14, 0x0

    .local v14, "m":I
    :goto_b6
    if-ge v14, v4, :cond_112

    .line 2167
    move-object/from16 v0, p0

    iget-object v0, v0, mMasterSyncAutomatically:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v17

    .line 2168
    .local v17, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, mMasterSyncAutomatically:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    .line 2169
    .local v13, "listen":Ljava/lang/Boolean;
    const/16 v18, 0x0

    const-string v19, "listenForTickles"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2170
    const/16 v18, 0x0

    const-string/jumbo v19, "user"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2171
    const/16 v18, 0x0

    const-string v19, "enabled"

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2172
    const/16 v18, 0x0

    const-string v19, "listenForTickles"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2166
    add-int/lit8 v14, v14, 0x1

    goto :goto_b6

    .line 2175
    .end local v13    # "listen":Ljava/lang/Boolean;
    .end local v17    # "userId":I
    :cond_112
    move-object/from16 v0, p0

    iget-object v0, v0, mAuthorities:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 2176
    .local v5, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_11d
    if-ge v10, v5, :cond_2b1

    .line 2177
    move-object/from16 v0, p0

    iget-object v0, v0, mAuthorities:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 2178
    .local v6, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v12, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 2179
    .local v12, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const/16 v18, 0x0

    const-string v19, "authority"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2180
    const/16 v18, 0x0

    const-string v19, "id"

    iget v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2181
    const/16 v18, 0x0

    const-string/jumbo v19, "user"

    iget v0, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2182
    const/16 v18, 0x0

    const-string v19, "enabled"

    iget-boolean v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2183
    iget-object v0, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    if-nez v18, :cond_256

    .line 2184
    const/16 v18, 0x0

    const-string v19, "account"

    iget-object v0, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2185
    const/16 v18, 0x0

    const-string/jumbo v19, "type"

    iget-object v0, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2186
    const/16 v18, 0x0

    const-string v19, "authority"

    iget-object v0, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2191
    :goto_1c0
    iget v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    move/from16 v18, v0

    if-gez v18, :cond_283

    .line 2192
    const/16 v18, 0x0

    const-string/jumbo v19, "syncable"

    const-string/jumbo v20, "unknown"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2196
    :goto_1d7
    iget-object v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1df
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2a2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/PeriodicSync;

    .line 2197
    .local v16, "periodicSync":Landroid/content/PeriodicSync;
    const/16 v18, 0x0

    const-string/jumbo v19, "periodicSync"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2198
    const/16 v18, 0x0

    const-string/jumbo v19, "period"

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/content/PeriodicSync;->period:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2199
    const/16 v18, 0x0

    const-string v19, "flex"

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/content/PeriodicSync;->flexTime:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2200
    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    .line 2201
    .local v8, "extras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8}, extrasToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V

    .line 2202
    const/16 v18, 0x0

    const-string/jumbo v19, "periodicSync"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_23b
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_23b} :catch_23c

    goto :goto_1df

    .line 2209
    .end local v4    # "M":I
    .end local v5    # "N":I
    .end local v6    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v10    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v14    # "m":I
    .end local v15    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v16    # "periodicSync":Landroid/content/PeriodicSync;
    :catch_23c
    move-exception v7

    .line 2210
    .local v7, "e1":Ljava/io/IOException;
    const-string v18, "SyncManager"

    const-string v19, "Error writing accounts"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2211
    if-eqz v9, :cond_255

    .line 2212
    move-object/from16 v0, p0

    iget-object v0, v0, mAccountInfoFile:Landroid/util/AtomicFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2215
    .end local v7    # "e1":Ljava/io/IOException;
    :cond_255
    :goto_255
    return-void

    .line 2188
    .restart local v4    # "M":I
    .restart local v5    # "N":I
    .restart local v6    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v10    # "i":I
    .restart local v12    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .restart local v14    # "m":I
    .restart local v15    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_256
    const/16 v18, 0x0

    :try_start_258
    const-string/jumbo v19, "package"

    iget-object v0, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2189
    const/16 v18, 0x0

    const-string v19, "class"

    iget-object v0, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1c0

    .line 2194
    :cond_283
    const/16 v19, 0x0

    const-string/jumbo v20, "syncable"

    iget v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    move/from16 v18, v0

    if-eqz v18, :cond_29f

    const/16 v18, 0x1

    :goto_290
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-interface {v15, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1d7

    :cond_29f
    const/16 v18, 0x0

    goto :goto_290

    .line 2204
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_2a2
    const/16 v18, 0x0

    const-string v19, "authority"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2176
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_11d

    .line 2206
    .end local v6    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_2b1
    const/16 v18, 0x0

    const-string v19, "accounts"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2207
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2208
    move-object/from16 v0, p0

    iget-object v0, v0, mAccountInfoFile:Landroid/util/AtomicFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2ca
    .catch Ljava/io/IOException; {:try_start_258 .. :try_end_2ca} :catch_23c

    goto :goto_255
.end method

.method private writePendingOperationLocked(Lcom/android/server/content/SyncStorageEngine$PendingOperation;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .param p1, "pop"    # Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2603
    const-string v0, "op"

    invoke-interface {p2, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2605
    const-string/jumbo v0, "version"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2606
    const-string v0, "authority_id"

    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authorityId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2607
    const-string/jumbo v0, "source"

    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2608
    const-string v0, "expedited"

    iget-boolean v1, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->expedited:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2609
    const-string/jumbo v0, "reason"

    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2610
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    invoke-direct {p0, p2, v0}, extrasToXml(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V

    .line 2612
    const-string v0, "op"

    invoke-interface {p2, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2613
    return-void
.end method

.method private writePendingOperationsLocked()V
    .registers 10

    .prologue
    .line 2568
    iget-object v6, p0, mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2569
    .local v0, "N":I
    const/4 v2, 0x0

    .line 2571
    .local v2, "fos":Ljava/io/FileOutputStream;
    if-nez v0, :cond_36

    .line 2572
    :try_start_9
    const-string v6, "SyncManagerFile"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 2573
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Truncating "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    :cond_30
    iget-object v6, p0, mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->truncate()V

    .line 2597
    :cond_35
    :goto_35
    return-void

    .line 2578
    :cond_36
    const-string v6, "SyncManagerFile"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 2579
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Writing new "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    :cond_5d
    iget-object v6, p0, mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 2582
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2583
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v6, "utf-8"

    invoke-interface {v4, v2, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2585
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6f
    if-ge v3, v0, :cond_7f

    .line 2586
    iget-object v6, p0, mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    .line 2587
    .local v5, "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    invoke-direct {p0, v5, v4}, writePendingOperationLocked(Lcom/android/server/content/SyncStorageEngine$PendingOperation;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2585
    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    .line 2589
    .end local v5    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    :cond_7f
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2590
    iget-object v6, p0, mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_87} :catch_88

    goto :goto_35

    .line 2591
    .end local v3    # "i":I
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_88
    move-exception v1

    .line 2592
    .local v1, "e1":Ljava/io/IOException;
    const-string v6, "SyncManager"

    const-string v7, "Error writing pending operations"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2593
    if-eqz v2, :cond_35

    .line 2594
    iget-object v6, p0, mPendingFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_35
.end method

.method private writeStatisticsLocked()V
    .registers 11

    .prologue
    const/4 v9, 0x2

    .line 2766
    const-string v6, "SyncManagerFile"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 2767
    const-string v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Writing new "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    :cond_27
    invoke-virtual {p0, v9}, removeMessages(I)V

    .line 2774
    const/4 v3, 0x0

    .line 2776
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2b
    iget-object v6, p0, mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 2777
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 2778
    .local v5, "out":Landroid/os/Parcel;
    iget-object v6, p0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v0, v6

    .line 2779
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_39
    if-ge v4, v0, :cond_41

    .line 2780
    iget-object v6, p0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aget-object v1, v6, v4

    .line 2781
    .local v1, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-nez v1, :cond_55

    .line 2791
    .end local v1    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_41
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2792
    invoke-virtual {v5}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 2793
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 2795
    iget-object v6, p0, mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 2802
    .end local v0    # "N":I
    .end local v4    # "i":I
    .end local v5    # "out":Landroid/os/Parcel;
    :cond_54
    :goto_54
    return-void

    .line 2784
    .restart local v0    # "N":I
    .restart local v1    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .restart local v4    # "i":I
    .restart local v5    # "out":Landroid/os/Parcel;
    :cond_55
    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2785
    iget v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2786
    iget v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2787
    iget-wide v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 2788
    iget v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2789
    iget-wide v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_73} :catch_76

    .line 2779
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 2796
    .end local v0    # "N":I
    .end local v1    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .end local v4    # "i":I
    .end local v5    # "out":Landroid/os/Parcel;
    :catch_76
    move-exception v2

    .line 2797
    .local v2, "e1":Ljava/io/IOException;
    const-string v6, "SyncManager"

    const-string v7, "Error writing stats"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2798
    if-eqz v3, :cond_54

    .line 2799
    iget-object v6, p0, mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_54
.end method

.method private writeStatusLocked()V
    .registers 10

    .prologue
    .line 2398
    const-string v6, "SyncManagerFile"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 2399
    const-string v6, "SyncManagerFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Writing new "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    :cond_27
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, removeMessages(I)V

    .line 2406
    const/4 v2, 0x0

    .line 2408
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_2c
    iget-object v6, p0, mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 2409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2410
    .local v4, "out":Landroid/os/Parcel;
    iget-object v6, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2411
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3d
    if-ge v3, v0, :cond_53

    .line 2412
    iget-object v6, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SyncStatusInfo;

    .line 2413
    .local v5, "status":Landroid/content/SyncStatusInfo;
    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2414
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2411
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 2416
    .end local v5    # "status":Landroid/content/SyncStatusInfo;
    :cond_53
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2417
    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 2418
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 2420
    iget-object v6, p0, mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_66} :catch_67

    .line 2427
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "out":Landroid/os/Parcel;
    :cond_66
    :goto_66
    return-void

    .line 2421
    :catch_67
    move-exception v1

    .line 2422
    .local v1, "e1":Ljava/io/IOException;
    const-string v6, "SyncManager"

    const-string v7, "Error writing status"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2423
    if-eqz v2, :cond_66

    .line 2424
    iget-object v6, p0, mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_66
.end method


# virtual methods
.method public addActiveSync(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;
    .registers 11
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .prologue
    .line 1228
    iget-object v8, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v8

    .line 1229
    :try_start_3
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1230
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setActiveSync: account= auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " src="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v3, v3, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " extras="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :cond_45
    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v7, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1236
    .local v7, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v7, v1, v2}, getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 1240
    .local v6, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    new-instance v0, Landroid/content/SyncInfo;

    iget v1, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iget-object v2, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-wide v4, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    invoke-direct/range {v0 .. v5}, Landroid/content/SyncInfo;-><init>(ILandroid/accounts/Account;Ljava/lang/String;J)V

    .line 1245
    .local v0, "syncInfo":Landroid/content/SyncInfo;
    iget-object v1, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {p0, v1}, getCurrentSyncs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1246
    monitor-exit v8
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_70

    .line 1247
    invoke-virtual {p0}, reportActiveChange()V

    .line 1248
    return-object v0

    .line 1246
    .end local v0    # "syncInfo":Landroid/content/SyncInfo;
    .end local v6    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v7    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :catchall_70
    move-exception v1

    :try_start_71
    monitor-exit v8
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v1
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .registers 6
    .param p1, "mask"    # I
    .param p2, "callback"    # Landroid/content/ISyncStatusObserver;

    .prologue
    .line 556
    iget-object v1, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 557
    :try_start_3
    iget-object v0, p0, mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 558
    monitor-exit v1

    .line 559
    return-void

    .line 558
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public clearAllBackoffsLocked(Lcom/android/server/content/SyncQueue;)V
    .registers 16
    .param p1, "syncQueue"    # Lcom/android/server/content/SyncQueue;

    .prologue
    .line 838
    const/4 v3, 0x0

    .line 839
    .local v3, "changed":Z
    iget-object v9, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v9

    .line 841
    :try_start_4
    iget-object v8, p0, mAccounts:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 842
    .local v1, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    iget-object v8, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 843
    .local v2, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    const-wide/16 v12, -0x1

    cmp-long v8, v10, v12

    if-nez v8, :cond_40

    iget-wide v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    const-wide/16 v12, -0x1

    cmp-long v8, v10, v12

    if-eqz v8, :cond_24

    .line 845
    :cond_40
    const-string v8, "SyncManager"

    const/4 v10, 0x2

    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_99

    .line 846
    const-string v8, "SyncManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "clearAllBackoffsLocked: authority:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " account:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v11, v11, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v11, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " user:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v11, v11, Landroid/accounts/AccountAndUser;->userId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " backoffTime was: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " backoffDelay was: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_99
    const-wide/16 v10, -0x1

    iput-wide v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 854
    const-wide/16 v10, -0x1

    iput-wide v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 855
    const/4 v3, 0x1

    goto :goto_24

    .line 860
    .end local v1    # "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .end local v2    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_a3
    iget-object v8, p0, mServices:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_ad
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 861
    .local v7, "service":Landroid/content/ComponentName;
    iget-object v8, p0, mServices:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 862
    .local v0, "aInfos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v4, v8, :cond_e9

    .line 863
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 864
    .restart local v2    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    const-wide/16 v12, -0x1

    cmp-long v8, v10, v12

    if-nez v8, :cond_de

    iget-wide v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    const-wide/16 v12, -0x1

    cmp-long v8, v10, v12

    if-eqz v8, :cond_e6

    .line 866
    :cond_de
    const-wide/16 v10, -0x1

    iput-wide v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 867
    const-wide/16 v10, -0x1

    iput-wide v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 862
    :cond_e6
    add-int/lit8 v4, v4, 0x1

    goto :goto_c2

    .line 870
    .end local v2    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_e9
    invoke-virtual {p1}, Lcom/android/server/content/SyncQueue;->clearBackoffs()V

    goto :goto_ad

    .line 872
    .end local v0    # "aInfos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "service":Landroid/content/ComponentName;
    :catchall_ed
    move-exception v8

    monitor-exit v9
    :try_end_ef
    .catchall {:try_start_4 .. :try_end_ef} :catchall_ed

    throw v8

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_f0
    :try_start_f0
    monitor-exit v9
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ed

    .line 874
    if-eqz v3, :cond_f7

    .line 875
    const/4 v8, 0x1

    invoke-direct {p0, v8}, reportChange(I)V

    .line 877
    :cond_f7
    return-void
.end method

.method public clearAndReadState()V
    .registers 3

    .prologue
    .line 1782
    iget-object v1, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1783
    :try_start_3
    iget-object v0, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1784
    iget-object v0, p0, mAccounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1785
    iget-object v0, p0, mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1786
    iget-object v0, p0, mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1787
    iget-object v0, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1788
    iget-object v0, p0, mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1790
    invoke-direct {p0}, readAccountInfoLocked()V

    .line 1791
    invoke-direct {p0}, readStatusLocked()V

    .line 1792
    invoke-direct {p0}, readPendingOperationsLocked()V

    .line 1793
    invoke-direct {p0}, readStatisticsLocked()V

    .line 1794
    invoke-direct {p0}, readAndDeleteLegacyAccountInfoLocked()V

    .line 1795
    invoke-direct {p0}, writeAccountInfoLocked()V

    .line 1796
    invoke-direct {p0}, writeStatusLocked()V

    .line 1797
    invoke-direct {p0}, writePendingOperationsLocked()V

    .line 1798
    invoke-direct {p0}, writeStatisticsLocked()V

    .line 1799
    monitor-exit v1

    .line 1800
    return-void

    .line 1799
    :catchall_3e
    move-exception v0

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public deleteFromPending(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z
    .registers 14
    .param p1, "op"    # Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    .prologue
    const/4 v11, 0x2

    .line 1104
    const/4 v5, 0x0

    .line 1105
    .local v5, "res":Z
    iget-object v8, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v8

    .line 1106
    :try_start_5
    const-string v7, "SyncManager"

    const/4 v9, 0x2

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 1107
    const-string v7, "SyncManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deleteFromPending: account="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_2a
    iget-object v7, p0, mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_aa

    .line 1110
    iget-object v7, p0, mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_3f

    iget v7, p0, mNumPendingFinished:I

    const/4 v9, 0x4

    if-lt v7, v9, :cond_af

    .line 1112
    :cond_3f
    invoke-direct {p0}, writePendingOperationsLocked()V

    .line 1113
    const/4 v7, 0x0

    iput v7, p0, mNumPendingFinished:I

    .line 1117
    :goto_45
    iget-object v7, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const-string v9, "deleteFromPending"

    invoke-direct {p0, v7, v9}, getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 1118
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_a9

    .line 1119
    const-string v7, "SyncManager"

    const/4 v9, 0x2

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_75

    .line 1120
    const-string v7, "SyncManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removing - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_75
    iget-object v7, p0, mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1123
    .local v0, "N":I
    const/4 v4, 0x0

    .line 1124
    .local v4, "morePending":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7d
    if-ge v3, v0, :cond_8e

    .line 1125
    iget-object v7, p0, mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    .line 1126
    .local v2, "cur":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->equals(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z

    move-result v7

    if-eqz v7, :cond_b9

    .line 1127
    const/4 v4, 0x1

    .line 1132
    .end local v2    # "cur":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    :cond_8e
    if-nez v4, :cond_a9

    .line 1133
    const-string v7, "SyncManager"

    const/4 v9, 0x2

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_a0

    const-string v7, "SyncManager"

    const-string v9, "no more pending!"

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :cond_a0
    iget v7, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v7}, getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v6

    .line 1135
    .local v6, "status":Landroid/content/SyncStatusInfo;
    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/content/SyncStatusInfo;->pending:Z

    .line 1138
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v4    # "morePending":Z
    .end local v6    # "status":Landroid/content/SyncStatusInfo;
    :cond_a9
    const/4 v5, 0x1

    .line 1140
    .end local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_aa
    monitor-exit v8
    :try_end_ab
    .catchall {:try_start_5 .. :try_end_ab} :catchall_b6

    .line 1142
    invoke-direct {p0, v11}, reportChange(I)V

    .line 1143
    return v5

    .line 1115
    :cond_af
    :try_start_af
    iget v7, p0, mNumPendingFinished:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, mNumPendingFinished:I

    goto :goto_45

    .line 1140
    :catchall_b6
    move-exception v7

    monitor-exit v8
    :try_end_b8
    .catchall {:try_start_af .. :try_end_b8} :catchall_b6

    throw v7

    .line 1124
    .restart local v0    # "N":I
    .restart local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v2    # "cur":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .restart local v3    # "i":I
    .restart local v4    # "morePending":Z
    :cond_b9
    add-int/lit8 v3, v3, 0x1

    goto :goto_7d
.end method

.method public doDatabaseCleanup([Landroid/accounts/Account;I)V
    .registers 15
    .param p1, "accounts"    # [Landroid/accounts/Account;
    .param p2, "userId"    # I

    .prologue
    .line 1171
    iget-object v9, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v9

    .line 1172
    :try_start_3
    const-string v8, "SyncManager"

    const/4 v10, 0x2

    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1173
    const-string v8, "SyncManager"

    const-string v10, "Updating for new accounts..."

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_13
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 1176
    .local v7, "removing":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v8, p0, mAccounts:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1177
    .local v1, "accIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncStorageEngine$AccountInfo;>;"
    :cond_22
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_84

    .line 1178
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1179
    .local v0, "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v8, v8, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-static {p1, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_22

    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v8, v8, Landroid/accounts/AccountAndUser;->userId:I

    if-ne v8, p2, :cond_22

    .line 1182
    const-string v8, "SyncManager"

    const/4 v10, 0x2

    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_61

    .line 1183
    const-string v8, "SyncManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Account removed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :cond_61
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_6b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_80

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1186
    .local v2, "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v7, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6b

    .line 1219
    .end local v0    # "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .end local v1    # "accIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncStorageEngine$AccountInfo;>;"
    .end local v2    # "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "removing":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    :catchall_7d
    move-exception v8

    monitor-exit v9
    :try_end_7f
    .catchall {:try_start_3 .. :try_end_7f} :catchall_7d

    throw v8

    .line 1188
    .restart local v0    # "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .restart local v1    # "accIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncStorageEngine$AccountInfo;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "removing":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    :cond_80
    :try_start_80
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_22

    .line 1193
    .end local v0    # "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_84
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1194
    .local v3, "i":I
    if-lez v3, :cond_dd

    .line 1195
    :cond_8a
    if-lez v3, :cond_d1

    .line 1196
    add-int/lit8 v3, v3, -0x1

    .line 1197
    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1198
    .local v5, "ident":I
    iget-object v8, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 1199
    iget-object v8, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 1200
    .local v6, "j":I
    :cond_9d
    :goto_9d
    if-lez v6, :cond_b5

    .line 1201
    add-int/lit8 v6, v6, -0x1

    .line 1202
    iget-object v8, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    if-ne v8, v5, :cond_9d

    .line 1203
    iget-object v8, p0, mSyncStatus:Landroid/util/SparseArray;

    iget-object v10, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_9d

    .line 1206
    :cond_b5
    iget-object v8, p0, mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1207
    :cond_bb
    :goto_bb
    if-lez v6, :cond_8a

    .line 1208
    add-int/lit8 v6, v6, -0x1

    .line 1209
    iget-object v8, p0, mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    iget v8, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    if-ne v8, v5, :cond_bb

    .line 1210
    iget-object v8, p0, mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_bb

    .line 1214
    .end local v5    # "ident":I
    .end local v6    # "j":I
    :cond_d1
    invoke-direct {p0}, writeAccountInfoLocked()V

    .line 1215
    invoke-direct {p0}, writeStatusLocked()V

    .line 1216
    invoke-direct {p0}, writePendingOperationsLocked()V

    .line 1217
    invoke-direct {p0}, writeStatisticsLocked()V

    .line 1219
    :cond_dd
    monitor-exit v9
    :try_end_de
    .catchall {:try_start_80 .. :try_end_de} :catchall_7d

    .line 1220
    return-void
.end method

.method public dumpPendingOperations(Ljava/lang/StringBuilder;)V
    .registers 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2808
    const-string v2, "Pending Ops: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " operation(s)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2809
    iget-object v2, p0, mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    .line 2810
    .local v1, "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", extras: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 2814
    .end local v1    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    :cond_63
    return-void
.end method

.method public getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .registers 4
    .param p1, "authorityId"    # I

    .prologue
    .line 1048
    iget-object v1, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1049
    :try_start_3
    iget-object v0, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    monitor-exit v1

    return-object v0

    .line 1050
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;
    .registers 8
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 757
    iget-object v2, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 758
    :try_start_3
    const-string v1, "getBackoff"

    invoke-direct {p0, p1, v1}, getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 759
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_1d

    .line 760
    iget-wide v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    monitor-exit v2

    .line 762
    :goto_1c
    return-object v1

    :cond_1d
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_1c

    .line 763
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_20
    move-exception v1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public getCopyOfAllAuthoritiesWithSyncStatus()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1484
    iget-object v3, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1485
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1487
    .local v1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v2, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_29

    .line 1488
    iget-object v2, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {p0, v2}, createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1487
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1490
    :cond_29
    monitor-exit v3

    return-object v1

    .line 1491
    .end local v0    # "i":I
    .end local v1    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;Landroid/content/SyncStatusInfo;>;>;"
    :catchall_2b
    move-exception v2

    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method public getCopyOfAuthorityWithSyncStatus(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;
    .registers 6
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1472
    iget-object v2, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1473
    const/4 v1, -0x1

    const/4 v3, 0x1

    :try_start_5
    invoke-direct {p0, p1, v1, v3}, getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 1476
    .local v0, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    invoke-direct {p0, v0}, createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 1477
    .end local v0    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_f
    move-exception v1

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getCurrentSyncsCopy(I)Ljava/util/List;
    .registers 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1433
    iget-object v5, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1434
    :try_start_3
    invoke-direct {p0, p1}, getCurrentSyncsLocked(I)Ljava/util/List;

    move-result-object v2

    .line 1435
    .local v2, "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1436
    .local v3, "syncsCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncInfo;

    .line 1437
    .local v1, "sync":Landroid/content/SyncInfo;
    new-instance v4, Landroid/content/SyncInfo;

    invoke-direct {v4, v1}, Landroid/content/SyncInfo;-><init>(Landroid/content/SyncInfo;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1440
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sync":Landroid/content/SyncInfo;
    .end local v2    # "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    .end local v3    # "syncsCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :catchall_25
    move-exception v4

    monitor-exit v5
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v4

    .line 1439
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    .restart local v3    # "syncsCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :cond_28
    :try_start_28
    monitor-exit v5
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_25

    return-object v3
.end method

.method public getDayStatistics()[Lcom/android/server/content/SyncStorageEngine$DayStats;
    .registers 7

    .prologue
    .line 1563
    iget-object v2, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1564
    :try_start_3
    iget-object v1, p0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v1, v1

    new-array v0, v1, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 1565
    .local v0, "ds":[Lcom/android/server/content/SyncStorageEngine$DayStats;
    iget-object v1, p0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v1, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1566
    monitor-exit v2

    return-object v0

    .line 1567
    .end local v0    # "ds":[Lcom/android/server/content/SyncStorageEngine$DayStats;
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J
    .registers 7
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    .line 880
    iget-object v4, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 881
    :try_start_3
    const-string v1, "getDelayUntil"

    invoke-direct {p0, p1, v1}, getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 882
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_f

    .line 883
    const-wide/16 v2, 0x0

    monitor-exit v4

    .line 885
    :goto_e
    return-wide v2

    :cond_f
    iget-wide v2, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    monitor-exit v4

    goto :goto_e

    .line 886
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_13
    move-exception v1

    monitor-exit v4
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    .registers 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 676
    iget-object v4, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 677
    if-eqz p1, :cond_1c

    .line 678
    :try_start_6
    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v5, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string v6, "get authority syncable"

    invoke-direct {p0, v5, v6}, getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 681
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_15

    .line 682
    monitor-exit v4

    .line 696
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :goto_14
    return v3

    .line 684
    .restart local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_15
    iget v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v4

    goto :goto_14

    .line 697
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_19
    move-exception v3

    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_19

    throw v3

    .line 687
    :cond_1c
    :try_start_1c
    iget-object v5, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 688
    .local v2, "i":I
    :cond_22
    if-lez v2, :cond_40

    .line 689
    add-int/lit8 v2, v2, -0x1

    .line 690
    iget-object v5, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 691
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v5, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-eqz v5, :cond_22

    iget-object v5, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 693
    iget v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    monitor-exit v4

    goto :goto_14

    .line 696
    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_40
    monitor-exit v4
    :try_end_41
    .catchall {:try_start_1c .. :try_end_41} :catchall_19

    goto :goto_14
.end method

.method public getIsTargetServiceActive(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "cname"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 705
    iget-object v3, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    .line 706
    if-eqz p1, :cond_20

    .line 707
    :try_start_7
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v4, p1, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/content/ComponentName;I)V

    const-string v5, "get service active"

    invoke-direct {p0, v4, v5}, getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 710
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_16

    .line 711
    monitor-exit v3

    .line 715
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :goto_15
    return v1

    .line 713
    .restart local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_16
    iget v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v4, v2, :cond_1b

    move v1, v2

    :cond_1b
    monitor-exit v3

    goto :goto_15

    .line 716
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_1d
    move-exception v1

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1

    .line 715
    :cond_20
    :try_start_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    goto :goto_15
.end method

.method public getMasterSyncAutomatically(I)Z
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 1041
    iget-object v2, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1042
    :try_start_3
    iget-object v1, p0, mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1043
    .local v0, "auto":Ljava/lang/Boolean;
    if-nez v0, :cond_11

    iget-boolean v1, p0, mDefaultMasterSyncAutomatically:Z

    :goto_f
    monitor-exit v2

    return v1

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_f

    .line 1044
    .end local v0    # "auto":Ljava/lang/Boolean;
    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getPendingOperationCount()I
    .registers 3

    .prologue
    .line 1161
    iget-object v1, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1162
    :try_start_3
    iget-object v0, p0, mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1163
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public getPendingOperations()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$PendingOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1152
    iget-object v1, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1153
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, mPendingOperations:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 1154
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;
    .registers 8
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1010
    iget-object v5, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1011
    :try_start_3
    const-string v4, "getPeriodicSyncs"

    invoke-direct {p0, p1, v4}, getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 1012
    .local v0, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1013
    .local v3, "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/PeriodicSync;>;"
    if-eqz v0, :cond_2e

    .line 1014
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/PeriodicSync;

    .line 1016
    .local v2, "item":Landroid/content/PeriodicSync;
    new-instance v4, Landroid/content/PeriodicSync;

    invoke-direct {v4, v2}, Landroid/content/PeriodicSync;-><init>(Landroid/content/PeriodicSync;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 1020
    .end local v0    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Landroid/content/PeriodicSync;
    .end local v3    # "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/PeriodicSync;>;"
    :catchall_2b
    move-exception v4

    monitor-exit v5
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v4

    .line 1019
    .restart local v0    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v3    # "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/PeriodicSync;>;"
    :cond_2e
    :try_start_2e
    monitor-exit v5
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2b

    return-object v3
.end method

.method public getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;
    .registers 10
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    const/4 v4, 0x0

    .line 1501
    iget-boolean v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v5, :cond_f

    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    if-eqz v5, :cond_d

    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v5, :cond_f

    :cond_d
    move-object v2, v4

    .line 1516
    :goto_e
    return-object v2

    .line 1503
    :cond_f
    iget-boolean v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v5, :cond_19

    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    if-nez v5, :cond_19

    move-object v2, v4

    .line 1504
    goto :goto_e

    .line 1506
    :cond_19
    iget-object v5, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1507
    :try_start_1c
    iget-object v6, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1508
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_23
    if-ge v3, v0, :cond_49

    .line 1509
    iget-object v6, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStatusInfo;

    .line 1510
    .local v2, "cur":Landroid/content/SyncStatusInfo;
    iget-object v6, p0, mAuthorities:Landroid/util/SparseArray;

    iget v7, v2, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1511
    .local v1, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_46

    iget-object v6, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v6, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 1513
    monitor-exit v5

    goto :goto_e

    .line 1517
    .end local v0    # "N":I
    .end local v1    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v2    # "cur":Landroid/content/SyncStatusInfo;
    .end local v3    # "i":I
    :catchall_43
    move-exception v4

    monitor-exit v5
    :try_end_45
    .catchall {:try_start_1c .. :try_end_45} :catchall_43

    throw v4

    .line 1508
    .restart local v0    # "N":I
    .restart local v1    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v2    # "cur":Landroid/content/SyncStatusInfo;
    .restart local v3    # "i":I
    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 1516
    .end local v1    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v2    # "cur":Landroid/content/SyncStatusInfo;
    :cond_49
    :try_start_49
    monitor-exit v5
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_43

    move-object v2, v4

    goto :goto_e
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z
    .registers 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 625
    iget-object v5, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 626
    if-eqz p1, :cond_1c

    .line 627
    :try_start_7
    new-instance v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v6, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-string v7, "getSyncAutomatically"

    invoke-direct {p0, v6, v7}, getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 630
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_1a

    iget-boolean v6, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v6, :cond_1a

    :goto_18
    monitor-exit v5

    .line 642
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :goto_19
    return v3

    .restart local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_1a
    move v3, v4

    .line 630
    goto :goto_18

    .line 633
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_1c
    iget-object v6, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 634
    .local v2, "i":I
    :cond_22
    if-lez v2, :cond_44

    .line 635
    add-int/lit8 v2, v2, -0x1

    .line 636
    iget-object v6, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 637
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v6, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v7, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v6

    if-eqz v6, :cond_22

    iget-boolean v6, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v6, :cond_22

    .line 639
    monitor-exit v5

    goto :goto_19

    .line 643
    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v2    # "i":I
    :catchall_41
    move-exception v3

    monitor-exit v5
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_41

    throw v3

    .line 642
    .restart local v2    # "i":I
    :cond_44
    :try_start_44
    monitor-exit v5
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_41

    move v3, v4

    goto :goto_19
.end method

.method public getSyncHistory()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1547
    iget-object v4, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 1548
    :try_start_3
    iget-object v3, p0, mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1549
    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1550
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_1d

    .line 1551
    iget-object v3, p0, mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1550
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1553
    :cond_1d
    monitor-exit v4

    return-object v2

    .line 1554
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :catchall_1f
    move-exception v3

    monitor-exit v4
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v3
.end method

.method public getSyncRandomOffset()I
    .registers 2

    .prologue
    .line 552
    iget v0, p0, mSyncRandomOffset:I

    return v0
.end method

.method public getSyncStatus()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1458
    iget-object v4, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 1459
    :try_start_3
    iget-object v3, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1460
    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1461
    .local v2, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncStatusInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_1d

    .line 1462
    iget-object v3, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1461
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1464
    :cond_1d
    monitor-exit v4

    return-object v2

    .line 1465
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncStatusInfo;>;"
    :catchall_1f
    move-exception v3

    monitor-exit v4
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v3
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 540
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 541
    iget-object v1, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 542
    :try_start_8
    invoke-direct {p0}, writeStatusLocked()V

    .line 543
    monitor-exit v1

    .line 549
    :cond_c
    :goto_c
    return-void

    .line 543
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw v0

    .line 544
    :cond_10
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 545
    iget-object v1, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 546
    :try_start_18
    invoke-direct {p0}, writeStatisticsLocked()V

    .line 547
    monitor-exit v1

    goto :goto_c

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public insertIntoPending(Lcom/android/server/content/SyncOperation;)Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .registers 12
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;

    .prologue
    const/4 v9, 0x2

    .line 1071
    iget-object v8, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v8

    .line 1072
    :try_start_4
    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1073
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertIntoPending: authority="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " extras="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_33
    iget-object v6, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1077
    .local v6, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {p0, v6, v2, v3}, getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v1

    .line 1081
    .local v1, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_40

    .line 1082
    const/4 v0, 0x0

    monitor-exit v8

    .line 1094
    :goto_3f
    return-object v0

    .line 1085
    :cond_40
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    iget v2, p1, Lcom/android/server/content/SyncOperation;->reason:I

    iget v3, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine$PendingOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;IILandroid/os/Bundle;Z)V

    .line 1087
    .local v0, "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    iget-object v2, p0, mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    invoke-direct {p0, v0}, appendPendingOperationLocked(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)V

    .line 1090
    iget v2, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v2}, getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v7

    .line 1091
    .local v7, "status":Landroid/content/SyncStatusInfo;
    const/4 v2, 0x1

    iput-boolean v2, v7, Landroid/content/SyncStatusInfo;->pending:Z

    .line 1092
    monitor-exit v8
    :try_end_61
    .catchall {:try_start_4 .. :try_end_61} :catchall_65

    .line 1093
    invoke-direct {p0, v9}, reportChange(I)V

    goto :goto_3f

    .line 1092
    .end local v0    # "pop":Lcom/android/server/content/SyncStorageEngine$PendingOperation;
    .end local v1    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .end local v7    # "status":Landroid/content/SyncStatusInfo;
    :catchall_65
    move-exception v2

    :try_start_66
    monitor-exit v8
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v2
.end method

.method public insertStartSyncEvent(Lcom/android/server/content/SyncOperation;J)J
    .registers 12
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "now"    # J

    .prologue
    .line 1279
    iget-object v5, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1280
    :try_start_3
    const-string v4, "SyncManager"

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1281
    const-string v4, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insertStartSyncEvent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_24
    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const-string v6, "insertStartSyncEvent"

    invoke-direct {p0, v4, v6}, getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 1284
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_32

    .line 1285
    const-wide/16 v2, -0x1

    monitor-exit v5

    .line 1306
    :goto_31
    return-wide v2

    .line 1287
    :cond_32
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    invoke-direct {v1}, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;-><init>()V

    .line 1288
    .local v1, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->initialization:Z

    .line 1289
    iget v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 1290
    iget v4, p0, mNextHistoryId:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, mNextHistoryId:I

    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    .line 1291
    iget v4, p0, mNextHistoryId:I

    if-gez v4, :cond_50

    const/4 v4, 0x0

    iput v4, p0, mNextHistoryId:I

    .line 1292
    :cond_50
    iput-wide p2, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 1293
    iget v4, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .line 1294
    iget v4, p1, Lcom/android/server/content/SyncOperation;->reason:I

    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    .line 1295
    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    iput-object v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    .line 1296
    const/4 v4, 0x0

    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1297
    iget-object v4, p0, mSyncHistory:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1298
    :goto_67
    iget-object v4, p0, mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v6, 0x64

    if-le v4, v6, :cond_82

    .line 1299
    iget-object v4, p0, mSyncHistory:Ljava/util/ArrayList;

    iget-object v6, p0, mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_67

    .line 1303
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v1    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :catchall_7f
    move-exception v4

    monitor-exit v5
    :try_end_81
    .catchall {:try_start_3 .. :try_end_81} :catchall_7f

    throw v4

    .line 1301
    .restart local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v1    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :cond_82
    :try_start_82
    iget v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v2, v4

    .line 1302
    .local v2, "id":J
    const-string v4, "SyncManager"

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a7

    const-string v4, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "returning historyId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    :cond_a7
    monitor-exit v5
    :try_end_a8
    .catchall {:try_start_82 .. :try_end_a8} :catchall_7f

    .line 1305
    const/16 v4, 0x8

    invoke-direct {p0, v4}, reportChange(I)V

    goto :goto_31
.end method

.method public isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .registers 7
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    .line 1058
    iget-object v4, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 1059
    :try_start_3
    iget v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {p0, v3}, getCurrentSyncs(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncInfo;

    .line 1060
    .local v2, "syncInfo":Landroid/content/SyncInfo;
    iget v3, v2, Landroid/content/SyncInfo;->authorityId:I

    invoke-virtual {p0, v3}, getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 1061
    .local v0, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_d

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1062
    const/4 v3, 0x1

    monitor-exit v4

    .line 1066
    .end local v0    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v2    # "syncInfo":Landroid/content/SyncInfo;
    :goto_2b
    return v3

    .line 1065
    :cond_2c
    monitor-exit v4

    .line 1066
    const/4 v3, 0x0

    goto :goto_2b

    .line 1065
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_2f
    move-exception v3

    monitor-exit v4
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v3
.end method

.method public isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .registers 9
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    .line 1522
    iget-object v5, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1523
    :try_start_3
    iget-object v4, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1524
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v0, :cond_32

    .line 1525
    iget-object v4, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStatusInfo;

    .line 1526
    .local v2, "cur":Landroid/content/SyncStatusInfo;
    iget-object v4, p0, mAuthorities:Landroid/util/SparseArray;

    iget v6, v2, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1527
    .local v1, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_23

    .line 1524
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1530
    :cond_23
    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1533
    iget-boolean v4, v2, Landroid/content/SyncStatusInfo;->pending:Z

    if-eqz v4, :cond_20

    .line 1534
    const/4 v4, 0x1

    monitor-exit v5

    .line 1537
    .end local v1    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v2    # "cur":Landroid/content/SyncStatusInfo;
    :goto_31
    return v4

    :cond_32
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_31

    .line 1538
    .end local v0    # "N":I
    .end local v3    # "i":I
    :catchall_35
    move-exception v4

    monitor-exit v5
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v4
.end method

.method public removeActiveSync(Landroid/content/SyncInfo;I)V
    .registers 7
    .param p1, "syncInfo"    # Landroid/content/SyncInfo;
    .param p2, "userId"    # I

    .prologue
    .line 1255
    iget-object v1, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1256
    :try_start_3
    const-string v0, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1257
    const-string v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeActiveSync: account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_3d
    invoke-direct {p0, p2}, getCurrentSyncs(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1262
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_49

    .line 1264
    invoke-virtual {p0}, reportActiveChange()V

    .line 1265
    return-void

    .line 1262
    :catchall_49
    move-exception v0

    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v0
.end method

.method public removeAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 9
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    .line 1694
    iget-object v3, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1695
    :try_start_3
    iget-boolean v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v2, :cond_13

    .line 1696
    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {p0, v2, v4, v5, v6}, removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 1709
    :cond_11
    :goto_11
    monitor-exit v3

    .line 1710
    return-void

    .line 1698
    :cond_13
    iget-object v2, p0, mServices:Landroid/util/ArrayMap;

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1699
    .local v0, "aInfos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    if-eqz v0, :cond_11

    .line 1700
    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1701
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_11

    .line 1702
    iget-object v2, p0, mAuthorities:Landroid/util/SparseArray;

    iget v4, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 1703
    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 1704
    invoke-direct {p0}, writeAccountInfoLocked()V

    goto :goto_11

    .line 1709
    .end local v0    # "aInfos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_39
    move-exception v2

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v2
.end method

.method public removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 966
    iget-object v7, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v7

    .line 968
    const/4 v6, -0x1

    const/4 v8, 0x0

    :try_start_6
    invoke-direct {p0, p1, v6, v8}, getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 971
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v6, p0, mSyncStatus:Landroid/util/SparseArray;

    iget v8, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncStatusInfo;

    .line 972
    .local v4, "status":Landroid/content/SyncStatusInfo;
    const/4 v1, 0x0

    .line 973
    .local v1, "changed":Z
    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 974
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/PeriodicSync;>;"
    const/4 v2, 0x0

    .line 975
    .local v2, "i":I
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    .line 976
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/PeriodicSync;

    .line 977
    .local v5, "syncInfo":Landroid/content/PeriodicSync;
    iget-object v6, v5, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    const/4 v8, 0x1

    invoke-static {v6, p2, v8}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 980
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 981
    const/4 v1, 0x1

    .line 984
    if-eqz v4, :cond_46

    .line 985
    invoke-virtual {v4, v2}, Landroid/content/SyncStatusInfo;->removePeriodicSyncTime(I)V
    :try_end_3a
    .catchall {:try_start_6 .. :try_end_3a} :catchall_3b

    goto :goto_1c

    .line 998
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v1    # "changed":Z
    .end local v2    # "i":I
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/PeriodicSync;>;"
    .end local v4    # "status":Landroid/content/SyncStatusInfo;
    .end local v5    # "syncInfo":Landroid/content/PeriodicSync;
    :catchall_3b
    move-exception v6

    :try_start_3c
    invoke-direct {p0}, writeAccountInfoLocked()V

    .line 999
    invoke-direct {p0}, writeStatusLocked()V

    throw v6

    .line 1001
    :catchall_43
    move-exception v6

    monitor-exit v7
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_43

    throw v6

    .line 987
    .restart local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v1    # "changed":Z
    .restart local v2    # "i":I
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/PeriodicSync;>;"
    .restart local v4    # "status":Landroid/content/SyncStatusInfo;
    .restart local v5    # "syncInfo":Landroid/content/PeriodicSync;
    :cond_46
    :try_start_46
    const-string v6, "SyncManager"

    const-string v8, "Tried removing sync status on remove periodic sync but did not find it."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_3b

    goto :goto_1c

    .line 991
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 994
    .end local v5    # "syncInfo":Landroid/content/PeriodicSync;
    :cond_51
    if-nez v1, :cond_5b

    .line 998
    :try_start_53
    invoke-direct {p0}, writeAccountInfoLocked()V

    .line 999
    invoke-direct {p0}, writeStatusLocked()V

    monitor-exit v7

    .line 1003
    :goto_5a
    return-void

    .line 998
    :cond_5b
    invoke-direct {p0}, writeAccountInfoLocked()V

    .line 999
    invoke-direct {p0}, writeStatusLocked()V

    .line 1001
    monitor-exit v7
    :try_end_62
    .catchall {:try_start_53 .. :try_end_62} :catchall_43

    .line 1002
    invoke-direct {p0, v9}, reportChange(I)V

    goto :goto_5a
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .registers 4
    .param p1, "callback"    # Landroid/content/ISyncStatusObserver;

    .prologue
    .line 562
    iget-object v1, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 563
    :try_start_3
    iget-object v0, p0, mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 564
    monitor-exit v1

    .line 565
    return-void

    .line 564
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public reportActiveChange()V
    .registers 2

    .prologue
    .line 1271
    const/4 v0, 0x4

    invoke-direct {p0, v0}, reportChange(I)V

    .line 1272
    return-void
.end method

.method public setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V
    .registers 20
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "nextSyncTime"    # J
    .param p4, "nextDelay"    # J

    .prologue
    .line 771
    const-string v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 772
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBackoff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> nextSyncTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nextDelay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_3a
    iget-object v12, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v12

    .line 777
    :try_start_3d
    iget-boolean v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v2, :cond_60

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    if-eqz v2, :cond_49

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v2, :cond_60

    .line 781
    :cond_49
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object v2, p0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v2 .. v9}, setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z

    move-result v11

    .line 798
    .local v11, "changed":Z
    :goto_58
    monitor-exit v12
    :try_end_59
    .catchall {:try_start_3d .. :try_end_59} :catchall_7e

    .line 799
    if-eqz v11, :cond_5f

    .line 800
    const/4 v2, 0x1

    invoke-direct {p0, v2}, reportChange(I)V

    .line 802
    :cond_5f
    return-void

    .line 787
    .end local v11    # "changed":Z
    :cond_60
    const/4 v2, -0x1

    const/4 v3, 0x1

    :try_start_62
    invoke-direct {p0, p1, v2, v3}, getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v10

    .line 789
    .local v10, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v2, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_74

    iget-wide v2, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v2, v2, p4

    if-nez v2, :cond_74

    .line 791
    const/4 v11, 0x0

    .restart local v11    # "changed":Z
    goto :goto_58

    .line 793
    .end local v11    # "changed":Z
    :cond_74
    move-wide/from16 v0, p2

    iput-wide v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 794
    move-wide/from16 v0, p4

    iput-wide v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 795
    const/4 v11, 0x1

    .restart local v11    # "changed":Z
    goto :goto_58

    .line 798
    .end local v10    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v11    # "changed":Z
    :catchall_7e
    move-exception v2

    monitor-exit v12
    :try_end_80
    .catchall {:try_start_62 .. :try_end_80} :catchall_7e

    throw v2
.end method

.method public setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .registers 12
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "delayUntil"    # J

    .prologue
    const/4 v6, 0x1

    .line 890
    const-string v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 891
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDelayUntil: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> delayUntil "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_2d
    iget-object v2, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 895
    const/4 v1, -0x1

    const/4 v3, 0x1

    :try_start_32
    invoke-direct {p0, p1, v1, v3}, getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 896
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    cmp-long v1, v4, p2

    if-nez v1, :cond_3e

    .line 897
    monitor-exit v2

    .line 902
    :goto_3d
    return-void

    .line 899
    :cond_3e
    iput-wide p2, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    .line 900
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_32 .. :try_end_41} :catchall_45

    .line 901
    invoke-direct {p0, v6}, reportChange(I)V

    goto :goto_3d

    .line 900
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;I)V
    .registers 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "syncable"    # I

    .prologue
    .line 701
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-direct {p0, v0, p4}, setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V

    .line 702
    return-void
.end method

.method public setIsTargetServiceActive(Landroid/content/ComponentName;IZ)V
    .registers 6
    .param p1, "cname"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "active"    # Z

    .prologue
    .line 720
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v1, p1, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/content/ComponentName;I)V

    if-eqz p3, :cond_c

    const/4 v0, 0x1

    :goto_8
    invoke-direct {p0, v1, v0}, setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V

    .line 721
    return-void

    .line 720
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setMasterSyncAutomatically(ZI)V
    .registers 10
    .param p1, "flag"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1024
    iget-object v2, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1025
    :try_start_4
    iget-object v0, p0, mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 1026
    .local v6, "auto":Ljava/lang/Boolean;
    if-eqz v6, :cond_1a

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1027
    monitor-exit v2

    .line 1038
    :goto_19
    return-void

    .line 1029
    :cond_1a
    iget-object v0, p0, mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1030
    invoke-direct {p0}, writeAccountInfoLocked()V

    .line 1031
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_41

    .line 1032
    if-eqz p1, :cond_35

    .line 1033
    const/4 v3, -0x7

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v0, p0

    move v2, p2

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 1036
    :cond_35
    const/4 v0, 0x1

    invoke-direct {p0, v0}, reportChange(I)V

    .line 1037
    iget-object v0, p0, mContext:Landroid/content/Context;

    sget-object v1, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_19

    .line 1031
    .end local v6    # "auto":Ljava/lang/Boolean;
    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0
.end method

.method protected setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    .prologue
    .line 534
    iget-object v0, p0, mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-nez v0, :cond_6

    .line 535
    iput-object p1, p0, mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    .line 537
    :cond_6
    return-void
.end method

.method public setPeriodicSyncTime(ILandroid/content/PeriodicSync;J)V
    .registers 12
    .param p1, "authorityId"    # I
    .param p2, "targetPeriodicSync"    # Landroid/content/PeriodicSync;
    .param p3, "when"    # J

    .prologue
    .line 1735
    const/4 v1, 0x0

    .line 1737
    .local v1, "found":Z
    iget-object v5, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1738
    :try_start_4
    iget-object v4, p0, mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1739
    .local v0, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2f

    .line 1740
    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/PeriodicSync;

    .line 1741
    .local v3, "periodicSync":Landroid/content/PeriodicSync;
    invoke-virtual {p2, v3}, Landroid/content/PeriodicSync;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 1742
    iget-object v4, p0, mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SyncStatusInfo;

    invoke-virtual {v4, v2, p3, p4}, Landroid/content/SyncStatusInfo;->setPeriodicSyncTime(IJ)V

    .line 1743
    const/4 v1, 0x1

    .line 1747
    .end local v3    # "periodicSync":Landroid/content/PeriodicSync;
    :cond_2f
    monitor-exit v5
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_50

    .line 1748
    if-nez v1, :cond_4c

    .line 1749
    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring setPeriodicSyncTime request for a sync that does not exist. Authority: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    :cond_4c
    return-void

    .line 1739
    .restart local v3    # "periodicSync":Landroid/content/PeriodicSync;
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1747
    .end local v0    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v2    # "i":I
    .end local v3    # "periodicSync":Landroid/content/PeriodicSync;
    :catchall_50
    move-exception v4

    :try_start_51
    monitor-exit v5
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v4
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .registers 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "sync"    # Z

    .prologue
    const/4 v1, 0x2

    .line 648
    const-string v0, "SyncManager"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 649
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSyncAutomatically:  provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_36
    iget-object v1, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 653
    :try_start_39
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 658
    .local v6, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-boolean v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-ne v0, p4, :cond_72

    .line 659
    const-string v0, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 660
    const-string v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSyncAutomatically: already set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", doing nothing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_70
    monitor-exit v1

    .line 673
    :goto_71
    return-void

    .line 664
    :cond_72
    iput-boolean p4, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 665
    invoke-direct {p0}, writeAccountInfoLocked()V

    .line 666
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_39 .. :try_end_78} :catchall_8c

    .line 668
    if-eqz p4, :cond_87

    .line 669
    const/4 v3, -0x6

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 672
    :cond_87
    const/4 v0, 0x1

    invoke-direct {p0, v0}, reportChange(I)V

    goto :goto_71

    .line 666
    .end local v6    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_8c
    move-exception v0

    :try_start_8d
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v0
.end method

.method public stopSyncEvent(JJLjava/lang/String;JJ)V
    .registers 29
    .param p1, "historyId"    # J
    .param p3, "elapsedTime"    # J
    .param p5, "resultMessage"    # Ljava/lang/String;
    .param p6, "downstreamActivity"    # J
    .param p8, "upstreamActivity"    # J

    .prologue
    .line 1311
    move-object/from16 v0, p0

    iget-object v12, v0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v12

    .line 1312
    :try_start_5
    const-string v11, "SyncManager"

    const/4 v13, 0x2

    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_29

    .line 1313
    const-string v11, "SyncManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "stopSyncEvent: historyId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_29
    const/4 v5, 0x0

    .line 1316
    .local v5, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, p0

    iget-object v11, v0, mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1317
    .local v4, "i":I
    :goto_32
    if-lez v4, :cond_47

    .line 1318
    add-int/lit8 v4, v4, -0x1

    .line 1319
    move-object/from16 v0, p0

    iget-object v11, v0, mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    check-cast v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 1320
    .restart local v5    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v14, v11

    cmp-long v11, v14, p1

    if-nez v11, :cond_66

    .line 1326
    :cond_47
    if-nez v5, :cond_68

    .line 1327
    const-string v11, "SyncManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "stopSyncEvent: no history for id "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    monitor-exit v12

    .line 1415
    :goto_65
    return-void

    .line 1323
    :cond_66
    const/4 v5, 0x0

    goto :goto_32

    .line 1331
    :cond_68
    move-wide/from16 v0, p3

    iput-wide v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 1332
    const/4 v11, 0x1

    iput v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1333
    move-object/from16 v0, p5

    iput-object v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    .line 1334
    move-wide/from16 v0, p6

    iput-wide v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    .line 1335
    move-wide/from16 v0, p8

    iput-wide v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 1337
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v8

    .line 1339
    .local v8, "status":Landroid/content/SyncStatusInfo;
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSyncs:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSyncs:I

    .line 1340
    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    add-long v14, v14, p3

    iput-wide v14, v8, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    .line 1341
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    packed-switch v11, :pswitch_data_1de

    .line 1359
    :goto_94
    const/4 v9, 0x0

    .line 1360
    .local v9, "writeStatisticsNow":Z
    invoke-direct/range {p0 .. p0}, getCurrentDayLocked()I

    move-result v2

    .line 1361
    .local v2, "day":I
    move-object/from16 v0, p0

    iget-object v11, v0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    aget-object v11, v11, v13

    if-nez v11, :cond_134

    .line 1362
    move-object/from16 v0, p0

    iget-object v11, v0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    new-instance v14, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v14, v2}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    aput-object v14, v11, v13

    .line 1369
    :cond_ae
    :goto_ae
    move-object/from16 v0, p0

    iget-object v11, v0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    aget-object v3, v11, v13

    .line 1371
    .local v3, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    iget-wide v14, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    add-long v6, v14, p3

    .line 1372
    .local v6, "lastSyncTime":J
    const/4 v10, 0x0

    .line 1373
    .local v10, "writeStatusNow":Z
    const-string/jumbo v11, "success"

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_175

    .line 1375
    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_d5

    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_d6

    .line 1376
    :cond_d5
    const/4 v10, 0x1

    .line 1378
    :cond_d6
    iput-wide v6, v8, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 1379
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    iput v11, v8, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 1380
    const-wide/16 v14, 0x0

    iput-wide v14, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 1381
    const/4 v11, -0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 1382
    const/4 v11, 0x0

    iput-object v11, v8, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 1383
    const-wide/16 v14, 0x0

    iput-wide v14, v8, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 1384
    iget v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1385
    iget-wide v14, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    add-long v14, v14, p3

    iput-wide v14, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 1400
    :cond_f6
    :goto_f6
    if-eqz v10, :cond_1aa

    .line 1401
    invoke-direct/range {p0 .. p0}, writeStatusLocked()V

    .line 1406
    :cond_fb
    :goto_fb
    if-eqz v9, :cond_1c4

    .line 1407
    invoke-direct/range {p0 .. p0}, writeStatisticsLocked()V

    .line 1412
    :cond_100
    :goto_100
    monitor-exit v12
    :try_end_101
    .catchall {:try_start_5 .. :try_end_101} :catchall_111

    .line 1414
    const/16 v11, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, reportChange(I)V

    goto/16 :goto_65

    .line 1343
    .end local v2    # "day":I
    .end local v3    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .end local v6    # "lastSyncTime":J
    .end local v9    # "writeStatisticsNow":Z
    .end local v10    # "writeStatusNow":Z
    :pswitch_10a
    :try_start_10a
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    goto :goto_94

    .line 1412
    .end local v4    # "i":I
    .end local v5    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    .end local v8    # "status":Landroid/content/SyncStatusInfo;
    :catchall_111
    move-exception v11

    monitor-exit v12
    :try_end_113
    .catchall {:try_start_10a .. :try_end_113} :catchall_111

    throw v11

    .line 1346
    .restart local v4    # "i":I
    .restart local v5    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    .restart local v8    # "status":Landroid/content/SyncStatusInfo;
    :pswitch_114
    :try_start_114
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    goto/16 :goto_94

    .line 1349
    :pswitch_11c
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourceUser:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourceUser:I

    goto/16 :goto_94

    .line 1352
    :pswitch_124
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourceServer:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourceServer:I

    goto/16 :goto_94

    .line 1355
    :pswitch_12c
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    goto/16 :goto_94

    .line 1363
    .restart local v2    # "day":I
    .restart local v9    # "writeStatisticsNow":Z
    :cond_134
    move-object/from16 v0, p0

    iget-object v11, v0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    aget-object v11, v11, v13

    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    if-eq v2, v11, :cond_16a

    .line 1364
    move-object/from16 v0, p0

    iget-object v11, v0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-static {v11, v13, v14, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1365
    move-object/from16 v0, p0

    iget-object v11, v0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    new-instance v14, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v14, v2}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    aput-object v14, v11, v13

    .line 1366
    const/4 v9, 0x1

    goto/16 :goto_ae

    .line 1367
    :cond_16a
    move-object/from16 v0, p0

    iget-object v11, v0, mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    aget-object v11, v11, v13

    if-nez v11, :cond_ae

    goto/16 :goto_ae

    .line 1386
    .restart local v3    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .restart local v6    # "lastSyncTime":J
    .restart local v10    # "writeStatusNow":Z
    :cond_175
    const-string v11, "canceled"

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f6

    .line 1387
    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_188

    .line 1388
    const/4 v10, 0x1

    .line 1390
    :cond_188
    iput-wide v6, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 1391
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    iput v11, v8, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 1392
    move-object/from16 v0, p5

    iput-object v0, v8, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 1393
    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_19c

    .line 1394
    iput-wide v6, v8, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 1396
    :cond_19c
    iget v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1397
    iget-wide v14, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long v14, v14, p3

    iput-wide v14, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    goto/16 :goto_f6

    .line 1402
    :cond_1aa
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_fb

    .line 1403
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    const-wide/32 v14, 0x927c0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_fb

    .line 1408
    :cond_1c4
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_100

    .line 1409
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    const-wide/32 v14, 0x1b7740

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1dc
    .catchall {:try_start_114 .. :try_end_1dc} :catchall_111

    goto/16 :goto_100

    .line 1341
    :pswitch_data_1de
    .packed-switch 0x0
        :pswitch_124
        :pswitch_10a
        :pswitch_114
        :pswitch_11c
        :pswitch_12c
    .end packed-switch
.end method

.method public updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .registers 25
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "period"    # J
    .param p4, "flextime"    # J
    .param p6, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 905
    const-string v3, "SyncManager"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 906
    const-string v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addPeriodicSync: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> period "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", flex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", extras "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p6 .. p6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, mAuthorities:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 911
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gtz v3, :cond_5e

    .line 912
    :try_start_56
    const-string v3, "SyncManager"

    const-string/jumbo v4, "period < 0, should never happen in updateOrAddPeriodicSync"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_5e
    if-nez p6, :cond_67

    .line 915
    const-string v3, "SyncManager"

    const-string v4, "null extras, should never happen in updateOrAddPeriodicSync:"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_56 .. :try_end_67} :catchall_c3

    .line 919
    :cond_67
    :try_start_67
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v3, :cond_bb

    .line 920
    new-instance v2, Landroid/content/PeriodicSync;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object/from16 v5, p6

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v2 .. v9}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    .line 928
    .local v2, "toUpdate":Landroid/content/PeriodicSync;
    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v12

    .line 931
    .local v12, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v11, 0x0

    .line 932
    .local v11, "alreadyPresent":Z
    const/4 v13, 0x0

    .local v13, "i":I
    iget-object v3, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .local v10, "N":I
    :goto_92
    if-ge v13, v10, :cond_cc

    .line 933
    iget-object v3, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/PeriodicSync;

    .line 934
    .local v15, "syncInfo":Landroid/content/PeriodicSync;
    iget-object v3, v15, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    const/4 v4, 0x1

    move-object/from16 v0, p6

    invoke-static {v3, v0, v4}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 937
    iget-wide v4, v15, Landroid/content/PeriodicSync;->period:J

    cmp-long v3, p2, v4

    if-nez v3, :cond_c6

    iget-wide v4, v15, Landroid/content/PeriodicSync;->flexTime:J
    :try_end_af
    .catchall {:try_start_67 .. :try_end_af} :catchall_fb

    cmp-long v3, p4, v4

    if-nez v3, :cond_c6

    .line 958
    :try_start_b3
    invoke-direct/range {p0 .. p0}, writeAccountInfoLocked()V

    .line 959
    invoke-direct/range {p0 .. p0}, writeStatusLocked()V

    monitor-exit v16

    .line 963
    .end local v2    # "toUpdate":Landroid/content/PeriodicSync;
    .end local v10    # "N":I
    .end local v11    # "alreadyPresent":Z
    .end local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v13    # "i":I
    .end local v15    # "syncInfo":Landroid/content/PeriodicSync;
    :goto_ba
    return-void

    .line 958
    :cond_bb
    invoke-direct/range {p0 .. p0}, writeAccountInfoLocked()V

    .line 959
    invoke-direct/range {p0 .. p0}, writeStatusLocked()V

    monitor-exit v16

    goto :goto_ba

    .line 961
    :catchall_c3
    move-exception v3

    monitor-exit v16
    :try_end_c5
    .catchall {:try_start_b3 .. :try_end_c5} :catchall_c3

    throw v3

    .line 942
    .restart local v2    # "toUpdate":Landroid/content/PeriodicSync;
    .restart local v10    # "N":I
    .restart local v11    # "alreadyPresent":Z
    .restart local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v13    # "i":I
    .restart local v15    # "syncInfo":Landroid/content/PeriodicSync;
    :cond_c6
    :try_start_c6
    iget-object v3, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3, v13, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 943
    const/4 v11, 0x1

    .line 949
    .end local v15    # "syncInfo":Landroid/content/PeriodicSync;
    :cond_cc
    if-nez v11, :cond_ea

    .line 950
    iget-object v3, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    iget v3, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v14

    .line 953
    .local v14, "status":Landroid/content/SyncStatusInfo;
    iget-object v3, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v14, v3, v4, v5}, Landroid/content/SyncStatusInfo;->setPeriodicSyncTime(IJ)V
    :try_end_ea
    .catchall {:try_start_c6 .. :try_end_ea} :catchall_fb

    .line 958
    .end local v14    # "status":Landroid/content/SyncStatusInfo;
    :cond_ea
    :try_start_ea
    invoke-direct/range {p0 .. p0}, writeAccountInfoLocked()V

    .line 959
    invoke-direct/range {p0 .. p0}, writeStatusLocked()V

    .line 961
    monitor-exit v16
    :try_end_f1
    .catchall {:try_start_ea .. :try_end_f1} :catchall_c3

    .line 962
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, reportChange(I)V

    goto :goto_ba

    .line 932
    .restart local v15    # "syncInfo":Landroid/content/PeriodicSync;
    :cond_f8
    add-int/lit8 v13, v13, 0x1

    goto :goto_92

    .line 958
    .end local v2    # "toUpdate":Landroid/content/PeriodicSync;
    .end local v10    # "N":I
    .end local v11    # "alreadyPresent":Z
    .end local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v13    # "i":I
    .end local v15    # "syncInfo":Landroid/content/PeriodicSync;
    :catchall_fb
    move-exception v3

    :try_start_fc
    invoke-direct/range {p0 .. p0}, writeAccountInfoLocked()V

    .line 959
    invoke-direct/range {p0 .. p0}, writeStatusLocked()V

    throw v3
    :try_end_103
    .catchall {:try_start_fc .. :try_end_103} :catchall_c3
.end method

.method public writeAllState()V
    .registers 3

    .prologue
    .line 1764
    iget-object v1, p0, mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1767
    :try_start_3
    iget v0, p0, mNumPendingFinished:I

    if-lez v0, :cond_a

    .line 1769
    invoke-direct {p0}, writePendingOperationsLocked()V

    .line 1773
    :cond_a
    invoke-direct {p0}, writeStatusLocked()V

    .line 1774
    invoke-direct {p0}, writeStatisticsLocked()V

    .line 1775
    monitor-exit v1

    .line 1776
    return-void

    .line 1775
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method
