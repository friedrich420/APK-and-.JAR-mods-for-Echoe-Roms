.class public Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncScheduler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
    }
.end annotation


# static fields
.field private static final MAX_LIST_SIZE:J = 0x1388L

.field private static final SYNC_COPRIME_VALUE:J = 0xea60L

.field private static final SYNC_MAX_VALUE:J = 0x1b77400L

.field private static final SYNC_MIN_VALUE:J = 0x493e0L

.field private static final SYNC_WATCH_VALUE:J = 0x186a0L


# instance fields
.field private final DEFAULT_INTERVAL_IN_PSM:J

.field private ENABLE_FORCED_ADJUSTMENT:Z

.field private WHITELIST:Z

.field private WHITELIST_PLUS_AUTO_ADD:Z

.field private fileGmsBundlingState:Ljava/io/File;

.field private gIntervalGcd:Ljava/math/BigInteger;

.field private final mAccountsPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;"
        }
    .end annotation
.end field

.field private final mAms:Lcom/android/server/AlarmManagerService;

.field private final mAmsLock:Ljava/lang/Object;

.field private final mBlacklistPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCscPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailPid:I

.field private mEmailUid:I

.field private mLockExt:Ljava/lang/Object;

.field private mLockFgAct:Ljava/lang/Object;

.field private mNextAlarmWhen:J

.field private mNextSlotInPSM:J

.field private final mPermanentWhitelistPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private statOpCount:J

.field private statOpTime:D

.field private statOpTimeMax:D

.field private statOpTimeMaxUid:J

.field private ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService;Ljava/lang/Object;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/AlarmManagerService;
    .param p3, "lock"    # Ljava/lang/Object;

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    const/4 v11, 0x1

    iput-boolean v11, p0, WHITELIST:Z

    .line 238
    const/4 v11, 0x1

    iput-boolean v11, p0, WHITELIST_PLUS_AUTO_ADD:Z

    .line 244
    const/4 v11, 0x0

    iput-boolean v11, p0, ENABLE_FORCED_ADJUSTMENT:Z

    .line 274
    const-wide/32 v12, 0x1b77400

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    iput-object v11, p0, gIntervalGcd:Ljava/math/BigInteger;

    .line 278
    const/4 v11, 0x0

    iput v11, p0, mEmailUid:I

    .line 282
    const/4 v11, 0x0

    iput v11, p0, mEmailPid:I

    .line 292
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    .line 296
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, mTargetPackages:Ljava/util/ArrayList;

    .line 300
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, mAccountsPackages:Ljava/util/ArrayList;

    .line 304
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, mCscPackages:Ljava/util/ArrayList;

    .line 308
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, mBlacklistPackages:Ljava/util/ArrayList;

    .line 312
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, mPermanentWhitelistPackages:Ljava/util/ArrayList;

    .line 316
    const-wide/32 v12, 0xa4cb80

    iput-wide v12, p0, DEFAULT_INTERVAL_IN_PSM:J

    .line 317
    const-wide/16 v12, 0x0

    iput-wide v12, p0, mNextSlotInPSM:J

    .line 318
    const-wide/16 v12, 0x0

    iput-wide v12, p0, mNextAlarmWhen:J

    .line 319
    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/gms_bundling.data"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, fileGmsBundlingState:Ljava/io/File;

    .line 326
    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iput-object v11, p0, mLockExt:Ljava/lang/Object;

    .line 330
    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iput-object v11, p0, mLockFgAct:Ljava/lang/Object;

    .line 332
    const-wide/16 v12, 0x0

    iput-wide v12, p0, statOpCount:J

    .line 333
    const-wide/16 v12, 0x0

    iput-wide v12, p0, statOpTime:D

    .line 334
    const-wide/16 v12, 0x0

    iput-wide v12, p0, statOpTimeMax:D

    .line 335
    const-wide/16 v12, 0x0

    iput-wide v12, p0, statOpTimeMaxUid:J

    .line 337
    move-object/from16 v0, p1

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 338
    move-object/from16 v0, p2

    iput-object v0, p0, mAms:Lcom/android/server/AlarmManagerService;

    .line 339
    move-object/from16 v0, p3

    iput-object v0, p0, mAmsLock:Ljava/lang/Object;

    .line 340
    const/4 v3, 0x0

    .line 341
    .local v3, "cscAppSyncList":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Common_ParamAppSync"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 343
    const-string v11, ","

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 344
    .local v7, "listApps":[Ljava/lang/String;
    iget-object v12, p0, mLockExt:Ljava/lang/Object;

    monitor-enter v12

    .line 345
    :try_start_99
    iget-object v11, p0, mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 346
    iget-object v11, p0, mBlacklistPackages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 347
    iget-object v11, p0, mPermanentWhitelistPackages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 351
    const/4 v11, 0x0

    aget-object v11, v7, v11

    const-string/jumbo v13, "whitelist"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c2

    .line 355
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_b5
    array-length v11, v7

    if-ge v5, v11, :cond_12e

    .line 356
    iget-object v11, p0, mCscPackages:Ljava/util/ArrayList;

    aget-object v13, v7, v5

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    add-int/lit8 v5, v5, 0x1

    goto :goto_b5

    .line 363
    .end local v5    # "i":I
    :cond_c2
    const/4 v11, 0x0

    aget-object v11, v7, v11

    const-string v13, "blacklist"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e8

    .line 364
    const/4 v11, 0x0

    iput-boolean v11, p0, WHITELIST:Z

    .line 365
    const/4 v11, 0x0

    iput-boolean v11, p0, WHITELIST_PLUS_AUTO_ADD:Z

    .line 369
    const/4 v5, 0x1

    .restart local v5    # "i":I
    :goto_d4
    array-length v11, v7

    if-ge v5, v11, :cond_12e

    .line 370
    iget-object v11, p0, mCscPackages:Ljava/util/ArrayList;

    aget-object v13, v7, v5

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v11, p0, mBlacklistPackages:Ljava/util/ArrayList;

    aget-object v13, v7, v5

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v5, v5, 0x1

    goto :goto_d4

    .line 378
    .end local v5    # "i":I
    :cond_e8
    iget-object v11, p0, mCscPackages:Ljava/util/ArrayList;

    const-string v13, "com.sec.spp.push"

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v11, p0, mCscPackages:Ljava/util/ArrayList;

    const-string v13, "com.sec.chaton"

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v11, p0, mCscPackages:Ljava/util/ArrayList;

    const-string v13, "com.facebook.katana"

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v11, p0, mCscPackages:Ljava/util/ArrayList;

    const-string v13, "com.twitter.android"

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v11, p0, mCscPackages:Ljava/util/ArrayList;

    const-string v13, "com.facebook.orca"

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v11, p0, mCscPackages:Ljava/util/ArrayList;

    const-string v13, "com.kakao.talk"

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v11, p0, mCscPackages:Ljava/util/ArrayList;

    const-string v13, "com.google.android.apps.plus"

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v11, p0, mCscPackages:Ljava/util/ArrayList;

    const-string v13, "com.mobilesrepublic.appygeek"

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v11, p0, mCscPackages:Ljava/util/ArrayList;

    const-string v13, "mnn.Android"

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v11, p0, mCscPackages:Ljava/util/ArrayList;

    const-string v13, "com.google.android.apps.maps"

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_12e
    iget-boolean v11, p0, WHITELIST:Z

    if-eqz v11, :cond_163

    .line 394
    iget-object v11, p0, mBlacklistPackages:Ljava/util/ArrayList;

    const-string v13, ".*alarm.*"

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v11, p0, mBlacklistPackages:Ljava/util/ArrayList;

    const-string v13, ".*clock.*"

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v11, p0, mBlacklistPackages:Ljava/util/ArrayList;

    const-string v13, ".*ims.*"

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v11, p0, mBlacklistPackages:Ljava/util/ArrayList;

    const-string v13, "com.iloen.melon"

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v11, p0, mBlacklistPackages:Ljava/util/ArrayList;

    const-string v13, "com.iloen.melon.tablet"

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v11, p0, mBlacklistPackages:Ljava/util/ArrayList;

    const-string v13, ".*knox.*"

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v11, p0, mBlacklistPackages:Ljava/util/ArrayList;

    const-string v13, "android"

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_163
    iget-object v11, p0, mPermanentWhitelistPackages:Ljava/util/ArrayList;

    const-string v13, "com.samsung.location"

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v11, p0, mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 410
    iget-object v11, p0, mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_175
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_18a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 411
    .local v9, "pC":Ljava/lang/String;
    iget-object v11, p0, mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_175

    .line 419
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "pC":Ljava/lang/String;
    :catchall_187
    move-exception v11

    monitor-exit v12
    :try_end_189
    .catchall {:try_start_99 .. :try_end_189} :catchall_187

    throw v11

    .line 413
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_18a
    :try_start_18a
    iget-object v11, p0, mPermanentWhitelistPackages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_190
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1a2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 414
    .local v10, "pP":Ljava/lang/String;
    iget-object v11, p0, mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_190

    .line 416
    .end local v10    # "pP":Ljava/lang/String;
    :cond_1a2
    const/4 v8, 0x0

    .local v8, "nm":I
    :goto_1a3
    iget-object v11, p0, mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_1d8

    .line 417
    const-string v13, "AlarmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "<TargetPackages> "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ": "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v11, p0, mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    add-int/lit8 v8, v8, 0x1

    goto :goto_1a3

    .line 419
    :cond_1d8
    monitor-exit v12
    :try_end_1d9
    .catchall {:try_start_18a .. :try_end_1d9} :catchall_187

    .line 423
    const-string v11, "account"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/AccountManager;

    .line 424
    .local v2, "am":Landroid/accounts/AccountManager;
    if-eqz v2, :cond_1ea

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v2, p0, v11, v12}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 429
    :cond_1ea
    :try_start_1ea
    new-instance v11, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v0, p1

    invoke-direct {v11, p0, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V

    iput-object v11, p0, ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
    :try_end_1f3
    .catch Ljava/net/SocketException; {:try_start_1ea .. :try_end_1f3} :catch_1f4
    .catch Ljava/net/UnknownHostException; {:try_start_1ea .. :try_end_1f3} :catch_1f9
    .catch Ljava/io/IOException; {:try_start_1ea .. :try_end_1f3} :catch_1fe
    .catch Ljava/lang/Exception; {:try_start_1ea .. :try_end_1f3} :catch_203

    .line 439
    :goto_1f3
    return-void

    .line 430
    :catch_1f4
    move-exception v4

    .line 431
    .local v4, "e":Ljava/net/SocketException;
    invoke-virtual {v4}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_1f3

    .line 432
    .end local v4    # "e":Ljava/net/SocketException;
    :catch_1f9
    move-exception v4

    .line 433
    .local v4, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v4}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_1f3

    .line 434
    .end local v4    # "e":Ljava/net/UnknownHostException;
    :catch_1fe
    move-exception v4

    .line 435
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f3

    .line 436
    .end local v4    # "e":Ljava/io/IOException;
    :catch_203
    move-exception v4

    .line 437
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f3
.end method

.method static synthetic access$1000(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 226
    iget-object v0, p0, mLockExt:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 226
    iget-object v0, p0, mAms:Lcom/android/server/AlarmManagerService;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 226
    iget-object v0, p0, ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 226
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 226
    iget-object v0, p0, fileGmsBundlingState:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 226
    iget-object v0, p0, mPermanentWhitelistPackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 226
    iget-object v0, p0, mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 226
    iget-object v0, p0, mLockFgAct:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;IJ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 226
    invoke-direct {p0, p1, p2, p3}, updateRepeatingAlarmLocked(IJ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 226
    iget v0, p0, mEmailUid:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 226
    iget v0, p0, mEmailPid:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .prologue
    .line 226
    iget-object v0, p0, mAmsLock:Ljava/lang/Object;

    return-object v0
.end method

.method private addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V
    .registers 10
    .param p1, "alarmExt"    # Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .prologue
    .line 1229
    iget-object v1, p0, mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    .line 1230
    .local v1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_c

    .line 1231
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1247
    :cond_b
    :goto_b
    return-void

    .line 1237
    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1238
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1239
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1243
    .local v0, "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v3, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    iget-object v4, p1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    .line 1245
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_2a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v4, v3

    const-wide/16 v6, 0x1388

    cmp-long v3, v4, v6

    if-gez v3, :cond_b

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method private adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V
    .registers 41
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .param p2, "inputDistance"    # J
    .param p4, "includeItself"    # Z

    .prologue
    .line 920
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    move/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-gt v0, v1, :cond_177

    const/16 v19, 0x1

    .line 921
    .local v19, "isRtc":Z
    :goto_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 922
    .local v26, "nowRtc":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    .line 923
    .local v24, "nowElapsed":J
    sub-long v6, v26, v24

    .line 924
    .local v6, "TIME_SKEW":J
    if-eqz v19, :cond_17b

    move-wide/from16 v28, v6

    .line 925
    .local v28, "skewToRtc":J
    :goto_1e
    const-wide v20, 0x7fffffffffffffffL

    .line 926
    .local v20, "nextAlarmWhen":J
    const-wide v22, 0x7fffffffffffffffL

    .line 927
    .local v22, "nextAlarmWhenElapsed":J
    move-wide/from16 v16, p2

    .line 928
    .local v16, "distance":J
    const/16 v18, 0x0

    .line 929
    .local v18, "isFlexibleRepeatingAlarm":Z
    const-wide/16 v10, 0x0

    .line 930
    .local v10, "count":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x3e8

    add-long v12, v32, v34

    .line 931
    .local v12, "curAlarmWhen":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-wide/from16 v34, v0

    sub-long v14, v32, v34

    .line 932
    .local v14, "curAlarmWindow":J
    const/16 v30, 0x0

    .line 936
    .local v30, "x":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    move-object/from16 v0, p0

    iget-boolean v0, v0, ENABLE_FORCED_ADJUSTMENT:Z

    move/from16 v31, v0

    if-nez v31, :cond_68

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v34

    rem-long v32, v32, v34

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-nez v31, :cond_cb

    .line 938
    :cond_68
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v32

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, timeToNextRepeatingAlarmLocked(Landroid/app/PendingIntent;JZ)Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    move-result-object v30

    .line 939
    if-eqz v30, :cond_cb

    .line 943
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v32, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    move/from16 v31, v0

    const/16 v34, 0x1

    move/from16 v0, v31

    move/from16 v1, v34

    if-gt v0, v1, :cond_17f

    .end local v6    # "TIME_SKEW":J
    :goto_96
    sub-long v20, v32, v6

    .line 944
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mNextAlarmWhen:J

    .line 945
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    .line 946
    .local v9, "bigTemp":Ljava/math/BigInteger;
    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 947
    .local v8, "bigGcd":Ljava/math/BigInteger;
    invoke-virtual {v8}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v32

    const-wide/32 v34, 0x493e0

    rem-long v32, v32, v34

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-nez v31, :cond_cb

    invoke-virtual {v8}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v16

    .line 953
    .end local v8    # "bigGcd":Ljava/math/BigInteger;
    .end local v9    # "bigTemp":Ljava/math/BigInteger;
    :cond_cb
    const-wide/16 v32, 0x0

    cmp-long v31, v16, v32

    if-eqz v31, :cond_eb

    move-object/from16 v0, p0

    iget-object v0, v0, gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v32

    rem-long v32, v16, v32

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-nez v31, :cond_eb

    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    .line 958
    :cond_eb
    const-wide v32, 0x7fffffffffffffffL

    cmp-long v31, v20, v32

    if-eqz v31, :cond_259

    .line 962
    add-long v20, v20, v28

    .line 968
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-lez v31, :cond_112

    add-long v32, v24, v28

    sub-long v32, v12, v32

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v34, v0

    cmp-long v31, v32, v34

    if-lez v31, :cond_112

    .line 970
    const/16 v18, 0x1

    .line 976
    :cond_112
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->NEW_ALARM_MANAGER:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v31

    if-eqz v31, :cond_136

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhen:J

    move-wide/from16 v34, v0

    cmp-long v31, v32, v34

    if-nez v31, :cond_134

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-lez v31, :cond_136

    .line 978
    :cond_134
    const/16 v18, 0x1

    .line 985
    :cond_136
    cmp-long v31, v20, v12

    if-gtz v31, :cond_1da

    .line 989
    move-object/from16 v0, p0

    iget-boolean v0, v0, ENABLE_FORCED_ADJUSTMENT:Z

    move/from16 v31, v0

    if-eqz v31, :cond_15e

    move-object/from16 v0, p0

    iget-object v0, v0, gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v32

    rem-long v32, p2, v32

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-eqz v31, :cond_15e

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v16

    .line 991
    :cond_15e
    sub-long v32, v12, v20

    div-long v10, v32, v16

    .line 992
    if-eqz v18, :cond_183

    .line 996
    :goto_164
    const-wide/16 v32, 0x1

    add-long v32, v32, v10

    mul-long v32, v32, v16

    add-long v32, v32, v20

    add-long v34, v12, v14

    cmp-long v31, v32, v34

    if-gtz v31, :cond_183

    const-wide/16 v32, 0x1

    add-long v10, v10, v32

    goto :goto_164

    .line 920
    .end local v10    # "count":J
    .end local v12    # "curAlarmWhen":J
    .end local v14    # "curAlarmWindow":J
    .end local v16    # "distance":J
    .end local v18    # "isFlexibleRepeatingAlarm":Z
    .end local v19    # "isRtc":Z
    .end local v20    # "nextAlarmWhen":J
    .end local v22    # "nextAlarmWhenElapsed":J
    .end local v24    # "nowElapsed":J
    .end local v26    # "nowRtc":J
    .end local v28    # "skewToRtc":J
    .end local v30    # "x":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_177
    const/16 v19, 0x0

    goto/16 :goto_10

    .line 924
    .restart local v6    # "TIME_SKEW":J
    .restart local v19    # "isRtc":Z
    .restart local v24    # "nowElapsed":J
    .restart local v26    # "nowRtc":J
    :cond_17b
    const-wide/16 v28, 0x0

    goto/16 :goto_1e

    .line 943
    .restart local v10    # "count":J
    .restart local v12    # "curAlarmWhen":J
    .restart local v14    # "curAlarmWindow":J
    .restart local v16    # "distance":J
    .restart local v18    # "isFlexibleRepeatingAlarm":Z
    .restart local v20    # "nextAlarmWhen":J
    .restart local v22    # "nextAlarmWhenElapsed":J
    .restart local v28    # "skewToRtc":J
    .restart local v30    # "x":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_17f
    const-wide/16 v6, 0x0

    goto/16 :goto_96

    .line 998
    .end local v6    # "TIME_SKEW":J
    :cond_183
    mul-long v32, v16, v10

    add-long v32, v32, v20

    move-wide/from16 v0, v32

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    .line 1043
    :goto_18d
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v31

    if-eqz v31, :cond_1d9

    const-string v31, "AlarmManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, " next: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", unit: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", C: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", WL:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_1d9
    :goto_1d9
    return-void

    .line 1005
    :cond_1da
    sub-long v32, v20, v12

    div-long v10, v32, v16

    .line 1009
    sub-long v32, v12, v16

    add-long v34, v24, v28

    cmp-long v31, v32, v34

    if-gez v31, :cond_222

    const-wide/16 v32, 0x1

    add-long v32, v32, v10

    mul-long v32, v32, v16

    sub-long v32, v20, v32

    add-long v34, v24, v28

    cmp-long v31, v32, v34

    if-gez v31, :cond_222

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-gtz v31, :cond_222

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, mEmailUid:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_232

    const-wide/16 v32, 0x2

    div-long v32, v16, v32

    sub-long v32, v12, v32

    add-long v34, v24, v28

    cmp-long v31, v32, v34

    if-gtz v31, :cond_232

    .line 1020
    :cond_222
    const-wide/16 v32, 0x1

    add-long v10, v10, v32

    .line 1021
    mul-long v32, v16, v10

    sub-long v32, v20, v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    goto/16 :goto_18d

    .line 1031
    :cond_232
    if-eqz v18, :cond_24f

    .line 1035
    :goto_234
    mul-long v32, v16, v10

    sub-long v32, v20, v32

    add-long v34, v12, v14

    cmp-long v31, v32, v34

    if-ltz v31, :cond_243

    const-wide/16 v32, 0x1

    add-long v10, v10, v32

    goto :goto_234

    .line 1036
    :cond_243
    mul-long v32, v16, v10

    sub-long v32, v20, v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    goto/16 :goto_18d

    .line 1039
    :cond_24f
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    goto/16 :goto_18d

    .line 1046
    :cond_259
    const-string v31, "AlarmManager"

    const-string v32, " next == MAX_VALUE"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-lez v31, :cond_1d9

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v34

    rem-long v32, v32, v34

    const-wide/16 v34, 0x0

    cmp-long v31, v32, v34

    if-eqz v31, :cond_1d9

    .line 1053
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    goto/16 :goto_1d9
.end method

.method private calculateGcdOfRepeatIntervals(JJ)J
    .registers 14
    .param p1, "interval_old"    # J
    .param p3, "interval_new"    # J

    .prologue
    .line 876
    invoke-static {p3, p4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 877
    .local v1, "newRepeatInterval":Ljava/math/BigInteger;
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 878
    .local v2, "oldIntervalGcd":Ljava/math/BigInteger;
    move-object v0, v2

    .line 882
    .local v0, "newIntervalGcd":Ljava/math/BigInteger;
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 886
    .local v3, "tempIntervalGcd":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-lez v4, :cond_27

    .line 891
    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_27

    .line 892
    move-object v0, v3

    .line 895
    :cond_27
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    return-wide v4
.end method

.method private lookForPackageLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z
    .registers 5
    .param p2, "operation"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1220
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1b

    .line 1221
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v1, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    .line 1223
    :goto_17
    return v1

    .line 1220
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1223
    :cond_1b
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private lookForPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 5
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1211
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1f

    .line 1212
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    iget-object v1, v1, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    .line 1214
    :goto_1b
    return v1

    .line 1211
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1214
    :cond_1f
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private lookForTargetPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 4
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1201
    .local p1, "targetPackageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v0, p0, WHITELIST:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 1205
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method private queryAccounts()V
    .registers 15

    .prologue
    .line 1354
    iget-object v10, p0, mContext:Landroid/content/Context;

    const-string v11, "account"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManager;

    .line 1355
    .local v1, "am":Landroid/accounts/AccountManager;
    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 1356
    .local v0, "ads":[Landroid/accounts/AuthenticatorDescription;
    iget-object v11, p0, mLockExt:Ljava/lang/Object;

    monitor-enter v11

    .line 1357
    :try_start_11
    iget-object v10, p0, mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1358
    move-object v2, v0

    .local v2, "arr$":[Landroid/accounts/AuthenticatorDescription;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_19
    if-ge v4, v6, :cond_32

    aget-object v3, v2, v4

    .line 1359
    .local v3, "auth":Landroid/accounts/AuthenticatorDescription;
    iget-object v10, p0, mAccountsPackages:Ljava/util/ArrayList;

    iget-object v12, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    const/4 v12, 0x1

    if-eq v10, v12, :cond_2f

    .line 1360
    iget-object v10, p0, mAccountsPackages:Ljava/util/ArrayList;

    iget-object v12, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1358
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 1366
    .end local v3    # "auth":Landroid/accounts/AuthenticatorDescription;
    :cond_32
    iget-boolean v10, p0, WHITELIST_PLUS_AUTO_ADD:Z

    if-eqz v10, :cond_b7

    .line 1367
    iget-object v10, p0, mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1368
    iget-object v10, p0, mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_41
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_56

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1369
    .local v8, "pC":Ljava/lang/String;
    iget-object v10, p0, mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 1391
    .end local v2    # "arr$":[Landroid/accounts/AuthenticatorDescription;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "len$":I
    .end local v8    # "pC":Ljava/lang/String;
    :catchall_53
    move-exception v10

    monitor-exit v11
    :try_end_55
    .catchall {:try_start_11 .. :try_end_55} :catchall_53

    throw v10

    .line 1374
    .restart local v2    # "arr$":[Landroid/accounts/AuthenticatorDescription;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "len$":I
    :cond_56
    :try_start_56
    iget-object v10, p0, mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1375
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5c
    :goto_5c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_74

    .line 1376
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1377
    .local v7, "pA":Ljava/lang/String;
    iget-object v10, p0, mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5c

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_5c

    .line 1379
    .end local v7    # "pA":Ljava/lang/String;
    :cond_74
    iget-object v10, p0, mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1380
    .restart local v7    # "pA":Ljava/lang/String;
    iget-object v10, p0, mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    .line 1382
    .end local v7    # "pA":Ljava/lang/String;
    :cond_8c
    iget-object v10, p0, mTargetPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_92
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1383
    .local v9, "pT":Ljava/lang/String;
    const-string v10, "AlarmManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<TargetPackages> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    .line 1387
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v9    # "pT":Ljava/lang/String;
    .local v4, "i$":I
    :cond_b7
    iget-object v10, p0, mAccountsPackages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_bd
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1388
    .restart local v7    # "pA":Ljava/lang/String;
    const-string v10, "AlarmManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<AccPackages> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bd

    .line 1391
    .end local v7    # "pA":Ljava/lang/String;
    :cond_e2
    monitor-exit v11
    :try_end_e3
    .catchall {:try_start_56 .. :try_end_e3} :catchall_53

    .line 1392
    return-void
.end method

.method private recalculateGcdOfRepeatIntervalsLocked()V
    .registers 19

    .prologue
    .line 901
    const-wide/32 v8, 0x1b77400

    .line 902
    .local v8, "newIntervalGcd":J
    const/4 v5, 0x0

    .line 903
    .local v5, "i":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 904
    .local v10, "nowRtc":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long v2, v10, v14

    .line 905
    .local v2, "TIME_SKEW":J
    move-object/from16 v0, p0

    iget-object v14, v0, mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 906
    .local v4, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget v14, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v15, 0x1

    if-gt v14, v15, :cond_49

    const/4 v7, 0x1

    .line 907
    .local v7, "isRtc":Z
    :goto_28
    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v16, v0

    if-eqz v7, :cond_4b

    const-wide/16 v14, 0x0

    :goto_30
    add-long v12, v16, v14

    .line 908
    .local v12, "when":J
    cmp-long v14, v10, v12

    if-gez v14, :cond_16

    iget-wide v14, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_16

    .line 909
    iget-wide v14, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v14, v15}, calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v8

    .line 910
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 906
    .end local v7    # "isRtc":Z
    .end local v12    # "when":J
    :cond_49
    const/4 v7, 0x0

    goto :goto_28

    .restart local v7    # "isRtc":Z
    :cond_4b
    move-wide v14, v2

    .line 907
    goto :goto_30

    .line 913
    .end local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v7    # "isRtc":Z
    :cond_4d
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, gIntervalGcd:Ljava/math/BigInteger;

    .line 914
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v14

    if-eqz v14, :cond_83

    const-string v14, "AlarmManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " GCD_NEW("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "):"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_83
    return-void
.end method

.method private removeLocked(Ljava/util/ArrayList;I)Z
    .registers 8
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 1335
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    const/4 v1, 0x0

    .line 1336
    .local v1, "bRet":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_9

    move v2, v1

    .line 1348
    .end local v1    # "bRet":Z
    .local v2, "bRet":I
    :goto_8
    return v2

    .line 1340
    .end local v2    # "bRet":I
    .restart local v1    # "bRet":Z
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1341
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1342
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1343
    .local v0, "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_d

    .line 1344
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1345
    const/4 v1, 0x1

    goto :goto_d

    .end local v0    # "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_2a
    move v2, v1

    .line 1348
    .restart local v2    # "bRet":I
    goto :goto_8
.end method

.method private removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z
    .registers 8
    .param p2, "operation"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1303
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    const/4 v1, 0x0

    .line 1304
    .local v1, "bRet":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_9

    move v2, v1

    .line 1316
    .end local v1    # "bRet":Z
    .local v2, "bRet":I
    :goto_8
    return v2

    .line 1308
    .end local v2    # "bRet":I
    .restart local v1    # "bRet":Z
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1309
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1310
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1311
    .local v0, "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4, p2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1312
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1313
    const/4 v1, 0x1

    goto :goto_d

    .end local v0    # "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_26
    move v2, v1

    .line 1316
    .restart local v2    # "bRet":I
    goto :goto_8
.end method

.method private removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 8
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$AlarmExt;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1319
    .local p1, "alarmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    const/4 v1, 0x0

    .line 1320
    .local v1, "bRet":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_9

    move v2, v1

    .line 1332
    .end local v1    # "bRet":Z
    .local v2, "bRet":I
    :goto_8
    return v2

    .line 1324
    .end local v2    # "bRet":I
    .restart local v1    # "bRet":Z
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1325
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1326
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1327
    .local v0, "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v4, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1328
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1329
    const/4 v1, 0x1

    goto :goto_d

    .end local v0    # "alarm":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_2a
    move v2, v1

    .line 1332
    .restart local v2    # "bRet":I
    goto :goto_8
.end method

.method private timeToNextRepeatingAlarmLocked(Landroid/app/PendingIntent;JZ)Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .registers 39
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "interval"    # J
    .param p4, "includeItself"    # Z

    .prologue
    .line 1062
    const-wide v18, 0x7fffffffffffffffL

    .line 1063
    .local v18, "nextAlarm":J
    const-wide v24, 0x7fffffffffffffffL

    .line 1064
    .local v24, "nextAlarmWithSameInterval":J
    const-wide v22, 0x7fffffffffffffffL

    .line 1065
    .local v22, "nextAlarmWithMultipleInterval":J
    const-wide v20, 0x7fffffffffffffffL

    .line 1066
    .local v20, "nextAlarmWithDividedInterval":J
    const/4 v5, 0x0

    .line 1067
    .local v5, "alarmResult":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    const/4 v8, 0x0

    .line 1068
    .local v8, "alarmResultWithSameInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    const/4 v7, 0x0

    .line 1069
    .local v7, "alarmResultWithMultipleInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    const/4 v6, 0x0

    .line 1070
    .local v6, "alarmResultWithDividedInterval":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 1071
    .local v26, "nowRtc":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v30

    sub-long v2, v26, v30

    .line 1072
    .local v2, "TIME_SKEW":J
    move-object/from16 v0, p0

    iget-object v15, v0, gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v15}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v30

    cmp-long v15, p2, v30

    if-nez v15, :cond_aa

    const/4 v13, 0x1

    .line 1073
    .local v13, "isIntSameAsGcd":Z
    :goto_2f
    const-wide/16 v10, 0x0

    .line 1074
    .local v10, "biggestGcd":J
    move-object/from16 v0, p0

    iget-object v15, v0, mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_39
    :goto_39
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_115

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1079
    .local v4, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v30, v0

    const-wide/32 v32, 0x1b77400

    cmp-long v15, v30, v32

    if-gtz v15, :cond_39

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v30, v0

    const-wide/32 v32, 0x493e0

    cmp-long v15, v30, v32

    if-ltz v15, :cond_39

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v15, v0, gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v15}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v32

    rem-long v30, v30, v32

    const-wide/16 v32, 0x0

    cmp-long v15, v30, v32

    if-nez v15, :cond_39

    iget-boolean v15, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    if-eqz v15, :cond_39

    .line 1082
    if-nez p4, :cond_7f

    iget-object v15, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_39

    .line 1083
    :cond_7f
    iget v15, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/16 v30, 0x1

    move/from16 v0, v30

    if-gt v15, v0, :cond_ac

    const/4 v14, 0x1

    .line 1084
    .local v14, "isRtc":Z
    :goto_88
    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v32, v0

    if-eqz v14, :cond_ae

    const-wide/16 v30, 0x0

    :goto_90
    add-long v28, v32, v30

    .line 1088
    .local v28, "when":J
    move-object/from16 v0, p0

    iget-object v15, v0, gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v15}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v30

    add-long v30, v30, v28

    cmp-long v15, v26, v30

    if-gez v15, :cond_39

    .line 1092
    if-eqz v13, :cond_b1

    .line 1093
    cmp-long v15, v28, v18

    if-gez v15, :cond_39

    .line 1094
    move-wide/from16 v18, v28

    .line 1095
    move-object v5, v4

    goto :goto_39

    .line 1072
    .end local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v10    # "biggestGcd":J
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "isIntSameAsGcd":Z
    .end local v14    # "isRtc":Z
    .end local v28    # "when":J
    :cond_aa
    const/4 v13, 0x0

    goto :goto_2f

    .line 1083
    .restart local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v10    # "biggestGcd":J
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "isIntSameAsGcd":Z
    :cond_ac
    const/4 v14, 0x0

    goto :goto_88

    .restart local v14    # "isRtc":Z
    :cond_ae
    move-wide/from16 v30, v2

    .line 1084
    goto :goto_90

    .line 1099
    .restart local v28    # "when":J
    :cond_b1
    invoke-static/range {p2 .. p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    .line 1100
    .local v9, "bigTemp":Ljava/math/BigInteger;
    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v16

    .line 1104
    .local v16, "longGcd":J
    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v30, v0

    cmp-long v15, v30, p2

    if-nez v15, :cond_d6

    .line 1105
    cmp-long v15, v28, v24

    if-gez v15, :cond_39

    .line 1106
    move-wide/from16 v24, v28

    .line 1107
    move-object v8, v4

    goto/16 :goto_39

    .line 1113
    :cond_d6
    cmp-long v15, v16, p2

    if-nez v15, :cond_e3

    .line 1114
    cmp-long v15, v28, v22

    if-gez v15, :cond_39

    .line 1115
    move-wide/from16 v22, v28

    .line 1116
    move-object v7, v4

    goto/16 :goto_39

    .line 1122
    :cond_e3
    const-wide/16 v30, 0x0

    cmp-long v15, v16, v30

    if-eqz v15, :cond_10c

    move-object/from16 v0, p0

    iget-object v15, v0, gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v15}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v30

    rem-long v30, v16, v30

    const-wide/16 v32, 0x0

    cmp-long v15, v30, v32

    if-nez v15, :cond_10c

    cmp-long v15, v16, v10

    if-ltz v15, :cond_10c

    .line 1125
    cmp-long v15, v16, v10

    if-nez v15, :cond_105

    cmp-long v15, v28, v20

    if-gez v15, :cond_108

    .line 1126
    :cond_105
    move-wide/from16 v20, v28

    .line 1127
    move-object v6, v4

    .line 1129
    :cond_108
    move-wide/from16 v10, v16

    goto/16 :goto_39

    .line 1135
    :cond_10c
    cmp-long v15, v28, v18

    if-gez v15, :cond_39

    .line 1136
    move-wide/from16 v18, v28

    .line 1137
    move-object v5, v4

    goto/16 :goto_39

    .line 1147
    .end local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v9    # "bigTemp":Ljava/math/BigInteger;
    .end local v14    # "isRtc":Z
    .end local v16    # "longGcd":J
    .end local v28    # "when":J
    :cond_115
    if-eqz v6, :cond_118

    move-object v5, v6

    .line 1151
    :cond_118
    if-eqz v7, :cond_11b

    move-object v5, v7

    .line 1155
    :cond_11b
    if-eqz v8, :cond_11e

    move-object v5, v8

    .line 1158
    :cond_11e
    return-object v5
.end method

.method private updateRepeatingAlarmLocked(IJ)V
    .registers 26
    .param p1, "hashCode"    # I
    .param p2, "interval"    # J

    .prologue
    .line 1249
    move-object/from16 v0, p0

    iget-object v5, v0, mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_91

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1253
    .local v20, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->keyId:I

    move/from16 v0, p1

    if-ne v5, v0, :cond_8

    .line 1255
    const/4 v5, 0x1

    move-object/from16 v0, v20

    iput-boolean v5, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    .line 1256
    move-wide/from16 v0, p2

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 1257
    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_92

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    :goto_35
    move-object/from16 v0, v20

    iput-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 1259
    new-instance v4, Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    move-object/from16 v0, v20

    iget-wide v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->windowLength:J

    move-object/from16 v0, v20

    iget-wide v12, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhen:J

    move-object/from16 v0, v20

    iget-wide v14, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->workSource:Landroid/os/WorkSource;

    move-object/from16 v17, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->userId:I

    move/from16 v19, v0

    invoke-direct/range {v4 .. v19}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;I)V

    .line 1261
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_8c

    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TA] Updating the alarm... "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :cond_8c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, updateExplicitRepeatingAlarmsLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    .line 1266
    .end local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v20    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_91
    return-void

    .line 1257
    .restart local v20    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_92
    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhen:J

    move-object/from16 v0, v20

    iget-wide v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    sub-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Lcom/android/server/AlarmManagerServiceExt;->maxRepeatInterval(JJ)J

    move-result-wide v6

    goto :goto_35
.end method


# virtual methods
.method public doGarbageCollection(J)V
    .registers 26
    .param p1, "nowRtc"    # J

    .prologue
    .line 1426
    const/4 v8, 0x0

    .line 1427
    .local v8, "newAddedCount":I
    const-string v14, "AlarmManager"

    const-string v15, "<AppSync3 Whitelist>"

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v14

    if-eqz v14, :cond_51

    .line 1429
    move-object/from16 v0, p0

    iget-object v15, v0, mLockExt:Ljava/lang/Object;

    monitor-enter v15

    .line 1430
    :try_start_13
    move-object/from16 v0, p0

    iget-object v14, v0, mCscPackages:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_47

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1431
    .local v9, "pC":Ljava/lang/String;
    const-string v14, "AlarmManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "(AppSync) "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 1434
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "pC":Ljava/lang/String;
    :catchall_44
    move-exception v14

    monitor-exit v15
    :try_end_46
    .catchall {:try_start_13 .. :try_end_46} :catchall_44

    throw v14

    .line 1433
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_47
    :try_start_47
    const-string v14, "AlarmManager"

    const-string v16, "(AppSync) ---------"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    monitor-exit v15
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_44

    .line 1436
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_51
    move-object/from16 v0, p0

    iget-object v14, v0, ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v14, :cond_67

    .line 1437
    move-object/from16 v0, p0

    iget-object v14, v0, ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v14}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->printWhitelist()V

    .line 1438
    move-object/from16 v0, p0

    iget-object v14, v0, ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v14}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->getWhitelistCount()I

    move-result v14

    add-int/2addr v8, v14

    .line 1440
    :cond_67
    const-string v14, "AlarmManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "(AppSync) ### "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " added ###"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v14

    if-eqz v14, :cond_e5

    .line 1442
    const-string v14, "AlarmManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "(SyncScheduler) Processing time (avg/max) : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "%.2f"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, statOpTime:D

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, statOpTimeMax:D

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "(UID:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, statOpTimeMaxUid:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") [ms]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    :cond_e5
    move-object/from16 v0, p0

    iget-object v0, v0, mLockExt:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1446
    :try_start_ec
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    sub-long v2, v14, v18

    .line 1450
    .local v2, "TIME_SKEW":J
    move-object/from16 v0, p0

    iget-object v14, v0, mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1451
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_fe
    :goto_fe
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1eb

    .line 1452
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1456
    .local v4, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget v14, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    rem-int/lit8 v14, v14, 0x2

    if-nez v14, :cond_136

    .line 1457
    iget v14, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v15, 0x1

    if-gt v14, v15, :cond_132

    const/4 v6, 0x1

    .line 1458
    .local v6, "isRtc":Z
    :goto_116
    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v18, v0

    if-eqz v6, :cond_134

    const-wide/16 v14, 0x0

    :goto_11e
    add-long v12, v18, v14

    .line 1462
    .local v12, "when":J
    iget-wide v14, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v18, 0x3

    mul-long v14, v14, v18

    add-long/2addr v14, v12

    cmp-long v14, v14, p1

    if-gez v14, :cond_136

    .line 1463
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_fe

    .line 1477
    .end local v2    # "TIME_SKEW":J
    .end local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v6    # "isRtc":Z
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    .end local v12    # "when":J
    :catchall_12f
    move-exception v14

    monitor-exit v16
    :try_end_131
    .catchall {:try_start_ec .. :try_end_131} :catchall_12f

    throw v14

    .line 1457
    .restart local v2    # "TIME_SKEW":J
    .restart local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_132
    const/4 v6, 0x0

    goto :goto_116

    .restart local v6    # "isRtc":Z
    :cond_134
    move-wide v14, v2

    .line 1458
    goto :goto_11e

    .line 1467
    .end local v6    # "isRtc":Z
    :cond_136
    :try_start_136
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v14

    if-eqz v14, :cond_fe

    .line 1469
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 1470
    .local v10, "time":Landroid/text/format/Time;
    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v18, v0

    iget v14, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v15, 0x1

    if-gt v14, v15, :cond_1e6

    const-wide/16 v14, 0x0

    :goto_14c
    add-long v14, v14, v18

    invoke-virtual {v10, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 1471
    invoke-virtual {v10}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v11

    .line 1472
    .local v11, "timeStr":Ljava/lang/String;
    const-string v15, "AlarmManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[AppSync] T:"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, ", "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, ", INT:"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, "("

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-boolean v14, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isExact:Z

    if-eqz v14, :cond_1e9

    const/4 v14, 0x1

    :goto_1cf
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v17, ")"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fe

    .end local v11    # "timeStr":Ljava/lang/String;
    :cond_1e6
    move-wide v14, v2

    .line 1470
    goto/16 :goto_14c

    .line 1472
    .restart local v11    # "timeStr":Ljava/lang/String;
    :cond_1e9
    const/4 v14, 0x0

    goto :goto_1cf

    .line 1476
    .end local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v10    # "time":Landroid/text/format/Time;
    .end local v11    # "timeStr":Ljava/lang/String;
    :cond_1eb
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v14

    if-eqz v14, :cond_213

    const-string v14, "AlarmManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " GCD:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :cond_213
    monitor-exit v16
    :try_end_214
    .catchall {:try_start_136 .. :try_end_214} :catchall_12f

    .line 1478
    move-object/from16 v0, p0

    iget-object v14, v0, ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v14, :cond_223

    move-object/from16 v0, p0

    iget-object v14, v0, ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeUnusedAlarmRecord(J)V

    .line 1479
    :cond_223
    return-void
.end method

.method public lookForNonAdjustableAlarm(Landroid/app/PendingIntent;J)Z
    .registers 14
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "triggerAtTime"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 1164
    iget-object v3, p0, mLockExt:Ljava/lang/Object;

    monitor-enter v3

    .line 1165
    :try_start_5
    iget-object v2, p0, mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1169
    .local v0, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-wide v4, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenOriginal:J

    cmp-long v2, v4, v8

    if-lez v2, :cond_b

    iget-wide v4, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenOriginal:J

    cmp-long v2, v4, p2

    if-eqz v2, :cond_38

    iget-wide v4, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenOriginal:J

    sub-long/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    cmp-long v2, v4, v6

    if-gez v2, :cond_b

    :cond_38
    iget-wide v4, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->lastTriggerWhen:J

    cmp-long v2, v4, v8

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v2

    iget v4, p0, mEmailUid:I

    if-eq v2, v4, :cond_b

    .line 1186
    const-string v2, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OOI="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    const/4 v2, 0x1

    monitor-exit v3

    .line 1191
    .end local v0    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :goto_62
    return v2

    .line 1190
    :cond_63
    monitor-exit v3

    .line 1191
    const/4 v2, 0x0

    goto :goto_62

    .line 1190
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_66
    move-exception v2

    monitor-exit v3
    :try_end_68
    .catchall {:try_start_5 .. :try_end_68} :catchall_66

    throw v2
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 2
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 1394
    invoke-direct {p0}, queryAccounts()V

    .line 1395
    return-void
.end method

.method public removeRepeatingAlarm(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 1291
    iget-object v1, p0, mLockExt:Ljava/lang/Object;

    monitor-enter v1

    .line 1296
    :try_start_3
    iget-object v0, p0, mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, removeLocked(Ljava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1297
    invoke-direct {p0}, recalculateGcdOfRepeatIntervalsLocked()V

    .line 1299
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1a

    .line 1300
    iget-object v0, p0, ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_19

    iget-object v0, p0, ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeAlarmRecord(Ljava/lang/String;I)V

    .line 1301
    :cond_19
    return-void

    .line 1299
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public removeRepeatingAlarm(Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 1268
    iget-object v1, p0, mLockExt:Ljava/lang/Object;

    monitor-enter v1

    .line 1273
    :try_start_3
    iget-object v0, p0, mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, removeLocked(Ljava/util/ArrayList;Landroid/app/PendingIntent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1274
    invoke-direct {p0}, recalculateGcdOfRepeatIntervalsLocked()V

    .line 1276
    :cond_e
    monitor-exit v1

    .line 1277
    return-void

    .line 1276
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public removeRepeatingAlarm(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1279
    iget-object v1, p0, mLockExt:Ljava/lang/Object;

    monitor-enter v1

    .line 1284
    :try_start_3
    iget-object v0, p0, mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, removeLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1285
    invoke-direct {p0}, recalculateGcdOfRepeatIntervalsLocked()V

    .line 1287
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1a

    .line 1288
    iget-object v0, p0, ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_19

    iget-object v0, p0, ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->removeAlarmRecord(Ljava/lang/String;I)V

    .line 1289
    :cond_19
    return-void

    .line 1287
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public schedulingRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)J
    .registers 60
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 451
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, mBlacklistPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    .line 452
    .local v40, "pkg":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_8

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v44, v0
    :try_end_2b
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_2b} :catch_21b

    .line 782
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v40    # "pkg":Ljava/lang/String;
    :cond_2b
    :goto_2b
    return-wide v44

    .line 454
    :catch_2c
    move-exception v26

    .line 455
    .local v26, "e":Ljava/util/regex/PatternSyntaxException;
    invoke-virtual/range {v26 .. v26}, Ljava/util/regex/PatternSyntaxException;->printStackTrace()V

    .line 463
    .end local v26    # "e":Ljava/util/regex/PatternSyntaxException;
    :cond_30
    :goto_30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-double v0, v8

    move-wide/from16 v46, v0

    .line 464
    .local v46, "sTime":D
    new-instance v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;-><init>(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 465
    .local v4, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v44, v0

    .line 466
    .local v44, "returnValue":J
    const-wide/16 v32, -0x1

    .line 467
    .local v32, "intervalValue":J
    const-wide/16 v20, 0x0

    .line 468
    .local v20, "distRounded":J
    const-wide/16 v22, 0x0

    .line 469
    .local v22, "distanceToAlarm":J
    const-wide/16 v24, 0x0

    .line 470
    .local v24, "distanceToAlarmOriginal":J
    const-wide/16 v14, 0x0

    .line 471
    .local v14, "SYNC_TOLERANCE_VALUE":J
    iget v5, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v8, 0x1

    if-gt v5, v8, :cond_221

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    .line 472
    .local v34, "now":J
    :goto_55
    const/4 v11, 0x0

    .line 476
    .local v11, "alarmInfoStr":Ljava/lang/String;
    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v54, 0x0

    cmp-long v5, v8, v54

    if-nez v5, :cond_227

    .line 477
    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    sub-long v22, v8, v34

    .line 478
    const-wide/16 v8, 0x0

    cmp-long v5, v22, v8

    if-gez v5, :cond_6f

    .line 479
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isPassedAlarm:Z

    .line 480
    const-wide/16 v8, -0x1

    mul-long v22, v22, v8

    .line 482
    :cond_6f
    move-wide/from16 v24, v22

    .line 495
    :goto_71
    const-wide/32 v8, 0x325aa0

    cmp-long v5, v22, v8

    if-ltz v5, :cond_23c

    const-wide/32 v14, 0xea60

    .line 497
    :goto_7b
    move-wide/from16 v0, v22

    long-to-double v8, v0

    long-to-double v0, v14

    move-wide/from16 v54, v0

    div-double v8, v8, v54

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    mul-long v20, v8, v14

    .line 499
    move-wide/from16 v0, v24

    long-to-double v8, v0

    long-to-double v0, v14

    move-wide/from16 v54, v0

    div-double v8, v8, v54

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    mul-long v24, v8, v14

    .line 504
    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v54, 0x0

    cmp-long v5, v8, v54

    if-eqz v5, :cond_a3

    move-wide/from16 v0, v20

    iput-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    .line 505
    :cond_a3
    move-object/from16 v0, p0

    iget-object v0, v0, mLockExt:Ljava/lang/Object;

    move-object/from16 v53, v0

    monitor-enter v53

    .line 506
    :try_start_aa
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v54

    sub-long v16, v8, v54

    .line 507
    .local v16, "TIME_SKEW":J
    iget-object v5, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v41

    .line 511
    .local v41, "pkgName":Ljava/lang/String;
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->mGmsLocationBundling:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$000()Z

    move-result v5

    if-eqz v5, :cond_33f

    move-object/from16 v0, p0

    iget-object v5, v0, fileGmsBundlingState:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_33f

    .line 512
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_d7

    .line 513
    const-string v5, "AlarmManager"

    const-string v8, "XXX:: bundling on"

    invoke-static {v5, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_d7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v36

    .line 516
    .local v36, "nowElapsed":J
    const/16 v31, 0x0

    .line 517
    .local v31, "isExtendingEnabled":Z
    const/16 v48, 0x0

    .line 518
    .local v48, "strAction":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v8, v0, mNextSlotInPSM:J

    const-wide/16 v54, 0x0

    cmp-long v5, v8, v54

    if-nez v5, :cond_240

    .line 519
    const-wide/32 v8, 0xa4cb80

    add-long v8, v8, v36

    move-object/from16 v0, p0

    iput-wide v8, v0, mNextSlotInPSM:J
    :try_end_f2
    .catchall {:try_start_aa .. :try_end_f2} :catchall_25c

    move-object/from16 v18, v11

    .line 544
    .end local v11    # "alarmInfoStr":Ljava/lang/String;
    .local v18, "alarmInfoStr":Ljava/lang/String;
    :goto_f4
    :try_start_f4
    const-string v5, "com.google.android.gms"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_118

    .line 545
    if-nez v48, :cond_10a

    iget-object v5, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v48

    .line 546
    :cond_10a
    if-eqz v48, :cond_31c

    const-string v5, "com.google.android.gms.nlp.*"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31c

    .line 547
    const/16 v31, 0x1

    .line 556
    :cond_118
    :goto_118
    if-eqz v31, :cond_341

    .line 557
    const-wide/16 v28, 0x0

    .line 558
    .local v28, "extraDistance":J
    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    move-object/from16 v0, p0

    iget-wide v0, v0, mNextSlotInPSM:J

    move-wide/from16 v54, v0

    cmp-long v5, v8, v54

    if-lez v5, :cond_140

    .line 559
    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    move-object/from16 v0, p0

    iget-wide v0, v0, mNextSlotInPSM:J

    move-wide/from16 v54, v0

    sub-long v8, v8, v54

    const-wide/32 v54, 0xa4cb80

    div-long v8, v8, v54

    const-wide/16 v54, 0x1

    add-long v8, v8, v54

    const-wide/32 v54, 0xa4cb80

    mul-long v28, v8, v54

    .line 562
    :cond_140
    move-object/from16 v0, p0

    iget-wide v0, v0, mNextSlotInPSM:J

    move-wide/from16 v54, v0

    iget v5, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v8, 0x1

    if-gt v5, v8, :cond_33b

    move-wide/from16 v8, v16

    :goto_14d
    add-long v8, v8, v54

    add-long v8, v8, v28

    iput-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-object/from16 v0, p1

    iput-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 564
    move-object/from16 v0, p0

    iget-wide v8, v0, mNextSlotInPSM:J

    add-long v8, v8, v28

    iput-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    move-object/from16 v0, p1

    iput-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 565
    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v54, 0x0

    cmp-long v5, v8, v54

    if-lez v5, :cond_183

    .line 566
    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    const-wide/32 v54, 0xa4cb80

    div-long v8, v8, v54

    const-wide/16 v54, 0x1

    add-long v8, v8, v54

    const-wide/32 v54, 0xa4cb80

    mul-long v8, v8, v54

    iput-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iput-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-object/from16 v0, p1

    iput-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 569
    :cond_183
    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v54, v0

    add-long v8, v8, v54

    iput-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhen:J

    move-object/from16 v0, p1

    iput-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 570
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_78b

    .line 571
    new-instance v49, Landroid/text/format/Time;

    invoke-direct/range {v49 .. v49}, Landroid/text/format/Time;-><init>()V

    .line 572
    .local v49, "time":Landroid/text/format/Time;
    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v5, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/16 v54, 0x1

    move/from16 v0, v54

    if-gt v5, v0, :cond_1a8

    const-wide/16 v16, 0x0

    .end local v16    # "TIME_SKEW":J
    :cond_1a8
    add-long v8, v8, v16

    move-object/from16 v0, v49

    invoke-virtual {v0, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 573
    invoke-virtual/range {v49 .. v49}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v52

    .line 574
    .local v52, "timeStr":Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--->>> T:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v52

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", INT:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v11, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_20f
    .catchall {:try_start_f4 .. :try_end_20f} :catchall_2ea

    .line 576
    .end local v18    # "alarmInfoStr":Ljava/lang/String;
    .restart local v11    # "alarmInfoStr":Ljava/lang/String;
    :try_start_20f
    const-string v5, "AlarmManager"

    invoke-static {v5, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    .end local v49    # "time":Landroid/text/format/Time;
    .end local v52    # "timeStr":Ljava/lang/String;
    :goto_214
    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    monitor-exit v53
    :try_end_217
    .catchall {:try_start_20f .. :try_end_217} :catchall_25c

    move-wide/from16 v44, v8

    goto/16 :goto_2b

    .line 456
    .end local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v11    # "alarmInfoStr":Ljava/lang/String;
    .end local v14    # "SYNC_TOLERANCE_VALUE":J
    .end local v20    # "distRounded":J
    .end local v22    # "distanceToAlarm":J
    .end local v24    # "distanceToAlarmOriginal":J
    .end local v28    # "extraDistance":J
    .end local v31    # "isExtendingEnabled":Z
    .end local v32    # "intervalValue":J
    .end local v34    # "now":J
    .end local v36    # "nowElapsed":J
    .end local v41    # "pkgName":Ljava/lang/String;
    .end local v44    # "returnValue":J
    .end local v46    # "sTime":D
    .end local v48    # "strAction":Ljava/lang/String;
    :catch_21b
    move-exception v26

    .line 457
    .local v26, "e":Ljava/lang/NullPointerException;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_30

    .line 471
    .end local v26    # "e":Ljava/lang/NullPointerException;
    .restart local v4    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v14    # "SYNC_TOLERANCE_VALUE":J
    .restart local v20    # "distRounded":J
    .restart local v22    # "distanceToAlarm":J
    .restart local v24    # "distanceToAlarmOriginal":J
    .restart local v32    # "intervalValue":J
    .restart local v44    # "returnValue":J
    .restart local v46    # "sTime":D
    :cond_221
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    goto/16 :goto_55

    .line 488
    .restart local v11    # "alarmInfoStr":Ljava/lang/String;
    .restart local v34    # "now":J
    :cond_227
    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v22, v0

    .line 489
    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    cmp-long v5, v8, v34

    if-gez v5, :cond_237

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v24, v0

    :goto_235
    goto/16 :goto_71

    :cond_237
    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    sub-long v24, v8, v34

    goto :goto_235

    .line 495
    :cond_23c
    const-wide/16 v14, 0x2710

    goto/16 :goto_7b

    .line 522
    .restart local v16    # "TIME_SKEW":J
    .restart local v31    # "isExtendingEnabled":Z
    .restart local v36    # "nowElapsed":J
    .restart local v41    # "pkgName":Ljava/lang/String;
    .restart local v48    # "strAction":Ljava/lang/String;
    :cond_240
    :try_start_240
    move-object/from16 v0, p0

    iget-wide v0, v0, mNextSlotInPSM:J

    move-wide/from16 v42, v0

    .line 523
    .local v42, "prevNextSlotInPSM":J
    :goto_246
    move-object/from16 v0, p0

    iget-wide v8, v0, mNextSlotInPSM:J

    cmp-long v5, v8, v36

    if-gez v5, :cond_25f

    .line 524
    move-object/from16 v0, p0

    iget-wide v8, v0, mNextSlotInPSM:J

    const-wide/32 v54, 0xa4cb80

    add-long v8, v8, v54

    move-object/from16 v0, p0

    iput-wide v8, v0, mNextSlotInPSM:J

    goto :goto_246

    .line 764
    .end local v16    # "TIME_SKEW":J
    .end local v31    # "isExtendingEnabled":Z
    .end local v36    # "nowElapsed":J
    .end local v41    # "pkgName":Ljava/lang/String;
    .end local v42    # "prevNextSlotInPSM":J
    .end local v48    # "strAction":Ljava/lang/String;
    :catchall_25c
    move-exception v5

    :goto_25d
    monitor-exit v53
    :try_end_25e
    .catchall {:try_start_240 .. :try_end_25e} :catchall_25c

    throw v5

    .line 526
    .restart local v16    # "TIME_SKEW":J
    .restart local v31    # "isExtendingEnabled":Z
    .restart local v36    # "nowElapsed":J
    .restart local v41    # "pkgName":Ljava/lang/String;
    .restart local v42    # "prevNextSlotInPSM":J
    .restart local v48    # "strAction":Ljava/lang/String;
    :cond_25f
    :try_start_25f
    move-object/from16 v0, p0

    iget-wide v8, v0, mNextSlotInPSM:J

    cmp-long v5, v42, v8

    if-eqz v5, :cond_78f

    move-object/from16 v0, p0

    iget-wide v8, v0, mNextAlarmWhen:J

    const-wide/16 v54, 0x0

    cmp-long v5, v8, v54

    if-eqz v5, :cond_78f

    .line 527
    move-object/from16 v0, p0

    iget-wide v8, v0, mNextAlarmWhen:J

    move-object/from16 v0, p0

    iget-wide v0, v0, mNextSlotInPSM:J

    move-wide/from16 v54, v0

    cmp-long v5, v8, v54

    if-gtz v5, :cond_2ef

    .line 528
    move-object/from16 v0, p0

    iget-wide v8, v0, mNextAlarmWhen:J

    move-object/from16 v0, p0

    iget-wide v0, v0, mNextSlotInPSM:J

    move-wide/from16 v54, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, mNextAlarmWhen:J

    move-wide/from16 v56, v0

    sub-long v54, v54, v56

    move-object/from16 v0, p0

    iget-object v5, v0, gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v56

    div-long v54, v54, v56

    move-object/from16 v0, p0

    iget-object v5, v0, gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v56

    mul-long v54, v54, v56

    add-long v8, v8, v54

    move-object/from16 v0, p0

    iput-wide v8, v0, mNextSlotInPSM:J

    .line 535
    :goto_2ab
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_78f

    .line 536
    new-instance v49, Landroid/text/format/Time;

    invoke-direct/range {v49 .. v49}, Landroid/text/format/Time;-><init>()V

    .line 537
    .restart local v49    # "time":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-wide v8, v0, mNextSlotInPSM:J

    add-long v8, v8, v16

    move-object/from16 v0, v49

    invoke-virtual {v0, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 538
    invoke-virtual/range {v49 .. v49}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v52

    .line 539
    .restart local v52    # "timeStr":Ljava/lang/String;
    new-instance v18, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--->>> mNextSlotInPSM: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v52

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2e1
    .catchall {:try_start_25f .. :try_end_2e1} :catchall_25c

    .line 540
    .end local v11    # "alarmInfoStr":Ljava/lang/String;
    .restart local v18    # "alarmInfoStr":Ljava/lang/String;
    :try_start_2e1
    const-string v5, "AlarmManager"

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e8
    .catchall {:try_start_2e1 .. :try_end_2e8} :catchall_2ea

    goto/16 :goto_f4

    .line 764
    .end local v16    # "TIME_SKEW":J
    .end local v31    # "isExtendingEnabled":Z
    .end local v36    # "nowElapsed":J
    .end local v42    # "prevNextSlotInPSM":J
    .end local v48    # "strAction":Ljava/lang/String;
    .end local v49    # "time":Landroid/text/format/Time;
    .end local v52    # "timeStr":Ljava/lang/String;
    :catchall_2ea
    move-exception v5

    move-object/from16 v11, v18

    .end local v18    # "alarmInfoStr":Ljava/lang/String;
    .restart local v11    # "alarmInfoStr":Ljava/lang/String;
    goto/16 :goto_25d

    .line 532
    .restart local v16    # "TIME_SKEW":J
    .restart local v31    # "isExtendingEnabled":Z
    .restart local v36    # "nowElapsed":J
    .restart local v42    # "prevNextSlotInPSM":J
    .restart local v48    # "strAction":Ljava/lang/String;
    :cond_2ef
    :try_start_2ef
    move-object/from16 v0, p0

    iget-wide v8, v0, mNextAlarmWhen:J

    move-object/from16 v0, p0

    iget-wide v0, v0, mNextAlarmWhen:J

    move-wide/from16 v54, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, mNextSlotInPSM:J

    move-wide/from16 v56, v0

    sub-long v54, v54, v56

    move-object/from16 v0, p0

    iget-object v5, v0, gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v56

    div-long v54, v54, v56

    move-object/from16 v0, p0

    iget-object v5, v0, gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v56

    mul-long v54, v54, v56

    sub-long v8, v8, v54

    move-object/from16 v0, p0

    iput-wide v8, v0, mNextSlotInPSM:J
    :try_end_31b
    .catchall {:try_start_2ef .. :try_end_31b} :catchall_25c

    goto :goto_2ab

    .line 550
    .end local v11    # "alarmInfoStr":Ljava/lang/String;
    .end local v42    # "prevNextSlotInPSM":J
    .restart local v18    # "alarmInfoStr":Ljava/lang/String;
    :cond_31c
    :try_start_31c
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    .line 551
    .local v19, "comp":Landroid/content/ComponentName;
    if-eqz v19, :cond_118

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "uploader"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_118

    .line 552
    const/16 v31, 0x1

    goto/16 :goto_118

    .line 562
    .end local v19    # "comp":Landroid/content/ComponentName;
    .restart local v28    # "extraDistance":J
    :cond_33b
    const-wide/16 v8, 0x0

    goto/16 :goto_14d

    .end local v18    # "alarmInfoStr":Ljava/lang/String;
    .end local v28    # "extraDistance":J
    .end local v31    # "isExtendingEnabled":Z
    .end local v36    # "nowElapsed":J
    .end local v48    # "strAction":Ljava/lang/String;
    .restart local v11    # "alarmInfoStr":Ljava/lang/String;
    :cond_33f
    move-object/from16 v18, v11

    .line 581
    .end local v11    # "alarmInfoStr":Ljava/lang/String;
    .restart local v18    # "alarmInfoStr":Ljava/lang/String;
    :cond_341
    move-object/from16 v0, p0

    iget-object v5, v0, mTargetPackages:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v5, v1}, lookForTargetPackageLocked(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, p0

    iget-boolean v8, v0, WHITELIST:Z

    if-ne v5, v8, :cond_5bb

    .line 582
    const-wide/16 v50, 0x0

    .line 586
    .local v50, "tempPeriodicity":J
    const-string v5, "com.android.email"

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_528

    .line 587
    move-object/from16 v0, p0

    iget v5, v0, mEmailUid:I

    if-nez v5, :cond_36f

    iget-object v5, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, mEmailUid:I

    .line 588
    :cond_36f
    move-object/from16 v0, p0

    iget v5, v0, mEmailPid:I

    if-nez v5, :cond_37d

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, mEmailPid:I

    .line 589
    :cond_37d
    iget-object v5, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v30

    .line 590
    .local v30, "intent":Landroid/content/Intent;
    if-eqz v30, :cond_3ed

    .line 591
    const-string v5, "com.android.email.intent.extra.ACCOUNT"

    const-wide/16 v8, -0x2

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 592
    .local v6, "accountId":J
    const-string v5, "com.android.email.intent.extra.ACCOUNT_INFO"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v10

    .line 596
    .local v10, "mailAccountInfos":[J
    const-wide/16 v12, 0x2

    .line 597
    .local v12, "ACCOUNT_INFO_UNIT_LENGTH":J
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_3c3

    const-string v5, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(Email) ID="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_3c3
    const-wide/16 v8, -0x2

    cmp-long v5, v6, v8

    if-nez v5, :cond_500

    const-string v5, "com.android.email.intent.action.ACTION_RESET_IDLE"

    invoke-virtual/range {v30 .. v30}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_500

    .line 604
    move-wide/from16 v0, v20

    long-to-double v8, v0

    const-wide v54, 0x41124f8000000000L    # 300000.0

    div-double v8, v8, v54

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-long v8, v8

    const-wide/32 v54, 0x493e0

    mul-long v50, v8, v54

    move-wide/from16 v0, v50

    iput-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 663
    .end local v6    # "accountId":J
    .end local v10    # "mailAccountInfos":[J
    .end local v12    # "ACCOUNT_INFO_UNIT_LENGTH":J
    .end local v30    # "intent":Landroid/content/Intent;
    :cond_3ed
    :goto_3ed
    const-wide/16 v8, 0x0

    cmp-long v5, v50, v8

    if-ltz v5, :cond_3f7

    .line 664
    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v32, v0

    .line 679
    .end local v50    # "tempPeriodicity":J
    :cond_3f7
    :goto_3f7
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_42d

    const-string v5, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[TA] Periodicity="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v32

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v54, v0

    move-wide/from16 v0, v54

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_42d
    const-wide/16 v8, 0x0

    cmp-long v5, v32, v8

    if-nez v5, :cond_61a

    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/32 v54, 0x493e0

    cmp-long v5, v8, v54

    if-ltz v5, :cond_61a

    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/32 v54, 0x1b77400

    cmp-long v5, v8, v54

    if-gtz v5, :cond_61a

    .line 690
    const-wide/16 v8, 0x0

    iput-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    iput-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 694
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V
    :try_end_450
    .catchall {:try_start_31c .. :try_end_450} :catchall_2ea

    move-object/from16 v11, v18

    .line 763
    .end local v16    # "TIME_SKEW":J
    .end local v18    # "alarmInfoStr":Ljava/lang/String;
    .restart local v11    # "alarmInfoStr":Ljava/lang/String;
    :goto_452
    :try_start_452
    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v44, v0

    .line 764
    monitor-exit v53
    :try_end_457
    .catchall {:try_start_452 .. :try_end_457} :catchall_25c

    .line 768
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-double v8, v8

    sub-double v38, v8, v46

    .line 769
    .local v38, "op_period":D
    move-object/from16 v0, p0

    iget-wide v8, v0, statOpTime:D

    move-object/from16 v0, p0

    iget-wide v0, v0, statOpCount:J

    move-wide/from16 v54, v0

    move-wide/from16 v0, v54

    long-to-double v0, v0

    move-wide/from16 v54, v0

    mul-double v8, v8, v54

    add-double v8, v8, v38

    move-object/from16 v0, p0

    iget-wide v0, v0, statOpCount:J

    move-wide/from16 v54, v0

    const-wide/16 v56, 0x1

    add-long v56, v56, v54

    move-wide/from16 v0, v56

    move-object/from16 v2, p0

    iput-wide v0, v2, statOpCount:J

    const-wide/16 v56, 0x1

    add-long v54, v54, v56

    move-wide/from16 v0, v54

    long-to-double v0, v0

    move-wide/from16 v54, v0

    div-double v8, v8, v54

    move-object/from16 v0, p0

    iput-wide v8, v0, statOpTime:D

    .line 770
    move-object/from16 v0, p0

    iget-wide v8, v0, statOpTimeMax:D

    cmpl-double v5, v38, v8

    if-lez v5, :cond_4a9

    .line 771
    move-wide/from16 v0, v38

    move-object/from16 v2, p0

    iput-wide v0, v2, statOpTimeMax:D

    .line 772
    iget-object v5, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v5

    int-to-long v8, v5

    move-object/from16 v0, p0

    iput-wide v8, v0, statOpTimeMaxUid:J

    .line 774
    :cond_4a9
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 775
    const-string v5, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " (SyncScheduler) Processed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v38

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (avg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%.2f"

    const/16 v53, 0x1

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, statOpTime:D

    move-wide/from16 v56, v0

    invoke-static/range {v56 .. v57}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, v53

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") [ms]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    if-eqz v11, :cond_2b

    const-string v5, "AlarmManager"

    invoke-static {v5, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 610
    .end local v11    # "alarmInfoStr":Ljava/lang/String;
    .end local v38    # "op_period":D
    .restart local v6    # "accountId":J
    .restart local v10    # "mailAccountInfos":[J
    .restart local v12    # "ACCOUNT_INFO_UNIT_LENGTH":J
    .restart local v16    # "TIME_SKEW":J
    .restart local v18    # "alarmInfoStr":Ljava/lang/String;
    .restart local v30    # "intent":Landroid/content/Intent;
    .restart local v50    # "tempPeriodicity":J
    :cond_500
    const-wide/16 v8, -0x2

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3ed

    if-eqz v10, :cond_3ed

    :try_start_508
    array-length v5, v10

    int-to-long v8, v5

    const-wide/16 v54, 0x2

    rem-long v8, v8, v54

    const-wide/16 v54, 0x0

    cmp-long v5, v8, v54

    if-nez v5, :cond_3ed

    .line 612
    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, updateEmailSyncStatus(JJ[J)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 613
    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-wide/from16 v50, v0

    .end local v50    # "tempPeriodicity":J
    move-wide/from16 v0, v50

    iput-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .restart local v50    # "tempPeriodicity":J
    goto/16 :goto_3ed

    .line 620
    .end local v6    # "accountId":J
    .end local v10    # "mailAccountInfos":[J
    .end local v12    # "ACCOUNT_INFO_UNIT_LENGTH":J
    .end local v30    # "intent":Landroid/content/Intent;
    :cond_528
    const-wide/32 v8, 0x1b77400

    cmp-long v5, v20, v8

    if-gtz v5, :cond_3ed

    const-wide/32 v8, 0x493e0

    cmp-long v5, v20, v8

    if-ltz v5, :cond_3ed

    const-wide/32 v8, 0x186a0

    rem-long v8, v20, v8

    const-wide/16 v54, 0x0

    cmp-long v5, v8, v54

    if-eqz v5, :cond_54c

    const-wide/32 v8, 0xea60

    rem-long v8, v20, v8

    const-wide/16 v54, 0x0

    cmp-long v5, v8, v54

    if-nez v5, :cond_3ed

    .line 625
    :cond_54c
    const-wide/32 v8, 0x493e0

    rem-long v8, v20, v8

    const-wide/16 v54, 0x0

    cmp-long v5, v8, v54

    if-nez v5, :cond_567

    .line 626
    move-wide/from16 v0, v20

    iput-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 627
    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v54, 0x0

    cmp-long v5, v8, v54

    if-lez v5, :cond_5a8

    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    :goto_565
    iput-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 633
    :cond_567
    move-object/from16 v0, p0

    iget-object v5, v0, ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v5, :cond_577

    .line 634
    move-object/from16 v0, p0

    iget-object v5, v0, ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-wide/from16 v0, v20

    invoke-virtual {v5, v4, v0, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->queryTrafficPeriodicity(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;J)J

    move-result-wide v50

    .line 639
    :cond_577
    const-wide/16 v8, 0x0

    cmp-long v5, v50, v8

    if-ltz v5, :cond_593

    .line 644
    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v54, 0x0

    cmp-long v5, v8, v54

    if-eqz v5, :cond_593

    .line 645
    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v0, v20

    iput-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-wide/from16 v0, v20

    iput-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 653
    :cond_593
    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    cmp-long v5, v24, v8

    if-gez v5, :cond_3ed

    .line 654
    const-wide/16 v50, 0x0

    .line 655
    const-wide/16 v8, 0x0

    iput-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 656
    const-wide/16 v8, 0x0

    iput-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 657
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    goto/16 :goto_3ed

    .line 627
    :cond_5a8
    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhen:J

    move-wide/from16 v54, v0

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    move-wide/from16 v56, v0

    sub-long v54, v54, v56

    move-wide/from16 v0, v54

    invoke-static {v8, v9, v0, v1}, Lcom/android/server/AlarmManagerServiceExt;->maxRepeatInterval(JJ)J

    move-result-wide v8

    goto :goto_565

    .line 668
    .end local v50    # "tempPeriodicity":J
    :cond_5bb
    const-wide/32 v8, 0x1b77400

    cmp-long v5, v20, v8

    if-gtz v5, :cond_3f7

    const-wide/32 v8, 0x493e0

    cmp-long v5, v20, v8

    if-ltz v5, :cond_3f7

    const-wide/32 v8, 0x186a0

    rem-long v8, v20, v8

    const-wide/16 v54, 0x0

    cmp-long v5, v8, v54

    if-eqz v5, :cond_5df

    const-wide/32 v8, 0xea60

    rem-long v8, v20, v8

    const-wide/16 v54, 0x0

    cmp-long v5, v8, v54

    if-nez v5, :cond_3f7

    .line 671
    :cond_5df
    move-object/from16 v0, p0

    iget-object v5, v0, ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v5, :cond_5ef

    move-object/from16 v0, p0

    iget-object v5, v0, ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-wide/from16 v0, v20

    invoke-virtual {v5, v4, v0, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->queryTrafficPeriodicity(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;J)J

    move-result-wide v32

    .line 672
    :cond_5ef
    const-wide/16 v8, 0x0

    cmp-long v5, v32, v8

    if-lez v5, :cond_3f7

    .line 673
    move-wide/from16 v0, v20

    iput-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 674
    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v54, 0x0

    cmp-long v5, v8, v54

    if-lez v5, :cond_607

    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    :goto_603
    iput-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    goto/16 :goto_3f7

    :cond_607
    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhen:J

    move-wide/from16 v54, v0

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    move-wide/from16 v56, v0

    sub-long v54, v54, v56

    move-wide/from16 v0, v54

    invoke-static {v8, v9, v0, v1}, Lcom/android/server/AlarmManagerServiceExt;->maxRepeatInterval(JJ)J

    move-result-wide v8

    goto :goto_603

    .line 699
    :cond_61a
    const-wide/16 v8, 0x0

    cmp-long v5, v32, v8

    if-lez v5, :cond_787

    .line 701
    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/32 v54, 0x493e0

    cmp-long v5, v8, v54

    if-ltz v5, :cond_740

    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/32 v54, 0x1b77400

    cmp-long v5, v8, v54

    if-gtz v5, :cond_740

    .line 703
    move-object/from16 v0, p0

    iget-object v5, v0, gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v54, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v54

    invoke-direct {v0, v8, v9, v1, v2}, calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, gIntervalGcd:Ljava/math/BigInteger;

    .line 712
    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-object/from16 v0, p0

    iget-object v5, v0, gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v54

    rem-long v8, v8, v54

    const-wide/16 v54, 0x0

    cmp-long v5, v8, v54

    if-nez v5, :cond_736

    .line 713
    move-object/from16 v0, p0

    iget-object v5, v0, gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v9, v5}, adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    .line 714
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V

    .line 740
    :cond_673
    :goto_673
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->NEW_ALARM_MANAGER:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$200()Z

    move-result v5

    if-eqz v5, :cond_69e

    iget-boolean v5, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    if-eqz v5, :cond_69e

    .line 744
    iget v5, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v8, 0x1

    if-gt v5, v8, :cond_783

    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    sub-long v8, v8, v16

    :goto_686
    iput-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    move-object/from16 v0, p1

    iput-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 749
    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v54, v0

    add-long v8, v8, v54

    iput-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhen:J

    .line 753
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-object/from16 v0, p1

    iput-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 755
    :cond_69e
    const-string v5, "eng"

    sget-object v8, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b6

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    move-wide/from16 v54, v0

    cmp-long v5, v8, v54

    if-nez v5, :cond_6bc

    :cond_6b6
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_787

    .line 756
    :cond_6bc
    new-instance v49, Landroid/text/format/Time;

    invoke-direct/range {v49 .. v49}, Landroid/text/format/Time;-><init>()V

    .line 757
    .restart local v49    # "time":Landroid/text/format/Time;
    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v5, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/16 v54, 0x1

    move/from16 v0, v54

    if-gt v5, v0, :cond_6cd

    const-wide/16 v16, 0x0

    .end local v16    # "TIME_SKEW":J
    :cond_6cd
    add-long v8, v8, v16

    move-object/from16 v0, v49

    invoke-virtual {v0, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 758
    invoke-virtual/range {v49 .. v49}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v52

    .line 759
    .restart local v52    # "timeStr":Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "---> T:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v52

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", INT:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v11, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .end local v18    # "alarmInfoStr":Ljava/lang/String;
    .restart local v11    # "alarmInfoStr":Ljava/lang/String;
    goto/16 :goto_452

    .line 722
    .end local v11    # "alarmInfoStr":Ljava/lang/String;
    .end local v49    # "time":Landroid/text/format/Time;
    .end local v52    # "timeStr":Ljava/lang/String;
    .restart local v16    # "TIME_SKEW":J
    .restart local v18    # "alarmInfoStr":Ljava/lang/String;
    :cond_736
    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v9, v5}, adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    goto/16 :goto_673

    .line 728
    :cond_740
    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    const-wide/16 v54, 0x0

    cmp-long v5, v8, v54

    if-nez v5, :cond_673

    .line 733
    const-wide/32 v8, 0x1b77400

    cmp-long v5, v32, v8

    if-gtz v5, :cond_673

    const-wide/32 v8, 0x493e0

    cmp-long v5, v32, v8

    if-ltz v5, :cond_673

    .line 734
    move-object/from16 v0, p0

    iget-object v5, v0, gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-direct {v0, v8, v9, v1, v2}, calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, gIntervalGcd:Ljava/math/BigInteger;

    .line 736
    move-object/from16 v0, p0

    iget-object v5, v0, gIntervalGcd:Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v9, v5}, adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    .line 737
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, addRepeatingAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;)V

    goto/16 :goto_673

    .line 744
    :cond_783
    iget-wide v8, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J
    :try_end_785
    .catchall {:try_start_508 .. :try_end_785} :catchall_2ea

    goto/16 :goto_686

    :cond_787
    move-object/from16 v11, v18

    .end local v18    # "alarmInfoStr":Ljava/lang/String;
    .restart local v11    # "alarmInfoStr":Ljava/lang/String;
    goto/16 :goto_452

    .end local v11    # "alarmInfoStr":Ljava/lang/String;
    .restart local v18    # "alarmInfoStr":Ljava/lang/String;
    .restart local v28    # "extraDistance":J
    .restart local v31    # "isExtendingEnabled":Z
    .restart local v36    # "nowElapsed":J
    .restart local v48    # "strAction":Ljava/lang/String;
    :cond_78b
    move-object/from16 v11, v18

    .end local v18    # "alarmInfoStr":Ljava/lang/String;
    .restart local v11    # "alarmInfoStr":Ljava/lang/String;
    goto/16 :goto_214

    .end local v28    # "extraDistance":J
    .restart local v42    # "prevNextSlotInPSM":J
    :cond_78f
    move-object/from16 v18, v11

    .end local v11    # "alarmInfoStr":Ljava/lang/String;
    .restart local v18    # "alarmInfoStr":Ljava/lang/String;
    goto/16 :goto_f4
.end method

.method public updateAlarmTriggerInfo(Landroid/app/PendingIntent;IJ)V
    .registers 10
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "count"    # I
    .param p3, "nowRtc"    # J

    .prologue
    .line 1401
    iget-object v3, p0, mLockExt:Ljava/lang/Object;

    monitor-enter v3

    .line 1405
    :try_start_3
    iget-object v2, p0, mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1406
    .local v0, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1407
    iput p2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->count:I

    .line 1408
    iput-wide p3, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->lastTriggerWhen:J

    .line 1412
    iget-boolean v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isPassedAlarm:Z

    if-eqz v2, :cond_2a

    .line 1413
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isPassedAlarm:Z

    .line 1414
    monitor-exit v3

    .line 1424
    .end local v0    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_29
    :goto_29
    return-void

    .line 1419
    :cond_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_35

    .line 1423
    iget-object v2, p0, ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v2, :cond_29

    iget-object v2, p0, ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->updateAlarmTriggerInfo(Landroid/app/PendingIntent;IJ)V

    goto :goto_29

    .line 1419
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_35
    move-exception v2

    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v2
.end method

.method public updateEmailSyncStatus(JJ[J)J
    .registers 13
    .param p1, "curAccountd"    # J
    .param p3, "alarmTriggerTime"    # J
    .param p5, "emailAccountInfos"    # [J

    .prologue
    .line 1397
    iget-object v0, p0, ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    if-eqz v0, :cond_e

    iget-object v1, p0, ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->updateEmailSyncStatus(JJ[J)J

    move-result-wide v0

    .line 1398
    :goto_d
    return-wide v0

    :cond_e
    const-wide/16 v0, 0x0

    goto :goto_d
.end method

.method public updateExplicitRepeatingAlarms(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 5
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 791
    const/4 v0, 0x0

    .line 792
    .local v0, "bRet":Z
    iget-object v2, p0, mLockExt:Ljava/lang/Object;

    monitor-enter v2

    .line 793
    :try_start_4
    invoke-virtual {p0, p1}, updateExplicitRepeatingAlarmsLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    .line 794
    monitor-exit v2

    .line 795
    return v0

    .line 794
    :catchall_a
    move-exception v1

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public updateExplicitRepeatingAlarmsLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 30
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 804
    const/4 v9, 0x0

    .line 805
    .local v9, "bRet":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 806
    .local v16, "nowRtc":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 807
    .local v14, "nowElapsed":J
    sub-long v6, v16, v14

    .line 808
    .local v6, "TIME_SKEW":J
    move-object/from16 v0, p0

    iget-object v0, v0, mAdjustableRepeatingAlarms:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_15
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_245

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 812
    .local v8, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-lez v21, :cond_15

    .line 813
    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-nez v21, :cond_11e

    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide/from16 v18, v0

    .line 815
    .local v18, "tempRepeatInterval":J
    :goto_49
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v0, v22

    iput-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->lastTriggerWhen:J

    .line 816
    const-wide/16 v22, 0x1

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-wide/from16 v24, v0

    sub-long v24, v14, v24

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v26, v0

    div-long v24, v24, v26

    add-long v10, v22, v24

    .line 817
    .local v10, "count":J
    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v22, v0

    mul-long v24, v10, v18

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    iput-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    .line 821
    iget-boolean v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    move/from16 v21, v0

    if-eqz v21, :cond_87

    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-gtz v21, :cond_93

    :cond_87
    iget-boolean v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_245

    .line 822
    :cond_93
    move-object/from16 v0, p0

    iget-object v0, v0, gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v22

    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, calculateGcdOfRepeatIntervals(JJ)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, gIntervalGcd:Ljava/math/BigInteger;

    .line 824
    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v24

    rem-long v22, v22, v24

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-nez v21, :cond_124

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, gIntervalGcd:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v22

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move/from16 v3, v21

    invoke-direct {v0, v8, v1, v2, v3}, adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    .line 839
    :goto_e0
    iget-boolean v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    move/from16 v21, v0

    if-eqz v21, :cond_189

    .line 840
    const/16 v21, 0x0

    move/from16 v0, v21

    iput-boolean v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isIntervalChanged:Z

    .line 841
    const/4 v9, 0x1

    .line 845
    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 846
    :goto_f7
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v24, v0

    iget v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_134

    move-wide/from16 v22, v16

    :goto_10b
    cmp-long v21, v24, v22

    if-lez v21, :cond_137

    .line 847
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v18

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto :goto_f7

    .line 813
    .end local v10    # "count":J
    .end local v18    # "tempRepeatInterval":J
    :cond_11e
    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-wide/from16 v18, v0

    goto/16 :goto_49

    .line 833
    .restart local v10    # "count":J
    .restart local v18    # "tempRepeatInterval":J
    :cond_124
    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    move-wide/from16 v22, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move/from16 v3, v21

    invoke-direct {v0, v8, v1, v2, v3}, adjustAlarmTimeLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;JZ)V

    goto :goto_e0

    :cond_134
    move-wide/from16 v22, v14

    .line 846
    goto :goto_10b

    .line 852
    :cond_137
    iget v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_246

    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v6

    :goto_149
    move-wide/from16 v0, v22

    iput-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    .line 854
    iget v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_24c

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v22, v0

    sub-long v22, v22, v6

    :goto_161
    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 859
    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->whenElapsed:J

    move-wide/from16 v22, v0

    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    iput-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->maxWhen:J

    .line 860
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 861
    const-wide/16 v22, 0x1

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    .line 863
    :cond_189
    const-string v21, "eng"

    sget-object v22, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1a3

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    move-wide/from16 v24, v0

    cmp-long v21, v22, v24

    if-nez v21, :cond_1a9

    :cond_1a3
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v21

    if-eqz v21, :cond_245

    .line 864
    :cond_1a9
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 865
    .local v13, "time":Landroid/text/format/Time;
    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v22, v0

    iget v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    move/from16 v21, v0

    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-gt v0, v1, :cond_1c0

    const-wide/16 v6, 0x0

    .end local v6    # "TIME_SKEW":J
    :cond_1c0
    add-long v22, v22, v6

    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 866
    invoke-virtual {v13}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v20

    .line 867
    .local v20, "timeStr":Ljava/lang/String;
    const-string v21, "AlarmManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "--->> T:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", INT:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") count:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-boolean v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    .end local v8    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v10    # "count":J
    .end local v13    # "time":Landroid/text/format/Time;
    .end local v18    # "tempRepeatInterval":J
    .end local v20    # "timeStr":Ljava/lang/String;
    :cond_245
    return v9

    .line 852
    .restart local v6    # "TIME_SKEW":J
    .restart local v8    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .restart local v10    # "count":J
    .restart local v18    # "tempRepeatInterval":J
    :cond_246
    iget-wide v0, v8, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-wide/from16 v22, v0

    goto/16 :goto_149

    .line 854
    :cond_24c
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    move-wide/from16 v22, v0

    goto/16 :goto_161
.end method
