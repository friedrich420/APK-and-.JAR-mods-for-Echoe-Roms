.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrafficAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;,
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    }
.end annotation


# static fields
.field private static final CORELATION_TOLERANCE_VALUE:J = 0x2710L

.field private static final TRAFFICMONITOR_ON:Z = true


# instance fields
.field private mBundlingPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

.field private mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field public volatile mDataConnectionIsConnected:Z

.field private mFgActivities:Landroid/util/SparseBooleanArray;

.field private mIgnorelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mIsScreenOn:Z

.field private mLocationUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mSafeLock:Ljava/lang/Object;

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mWHITElist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mWatchlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

.field private whitelistCount:I


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V
    .registers 12
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1538
    iput-object p1, p0, this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1521
    iput v7, p0, whitelistCount:I

    .line 1522
    const/4 v6, 0x1

    iput-boolean v6, p0, mIsScreenOn:Z

    .line 1523
    iput-boolean v7, p0, mDataConnectionIsConnected:Z

    .line 1524
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, mWHITElist:Ljava/util/ArrayList;

    .line 1525
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, mIgnorelist:Ljava/util/ArrayList;

    .line 1526
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, mWatchlist:Ljava/util/ArrayList;

    .line 1527
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, p0, mFgActivities:Landroid/util/SparseBooleanArray;

    .line 1531
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, mSafeLock:Ljava/lang/Object;

    .line 1534
    iput-object v8, p0, mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    .line 2601
    new-instance v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$1;

    invoke-direct {v6, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$1;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    iput-object v6, p0, mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 2614
    new-instance v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$2;

    invoke-direct {v6, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$2;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    iput-object v6, p0, mProcessObserver:Landroid/app/IProcessObserver;

    .line 2642
    new-instance v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$3;

    invoke-direct {v6, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$3;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    iput-object v6, p0, mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 2670
    new-instance v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$4;

    invoke-direct {v6, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$4;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    iput-object v6, p0, mLocationUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 2707
    new-instance v6, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$5;

    invoke-direct {v6, p0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$5;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    iput-object v6, p0, mBundlingPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 1539
    const-string v6, "AlarmManager"

    const-string v7, "[TA] creating..."

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :try_start_5d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1546
    .local v0, "am":Landroid/app/IActivityManager;
    iget-object v6, p0, mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v6}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_66} :catch_b3

    .line 1550
    .end local v0    # "am":Landroid/app/IActivityManager;
    :goto_66
    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1551
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1552
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1553
    .local v3, "gmsBundlingFilter":Landroid/content/IntentFilter;
    const-string v6, "com.sec.GMS_bundling"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1554
    const-string v6, "com.google.android.location.reporting.ACTION_INSISTENT_SYNC"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1555
    iget-object v6, p0, mLocationUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1556
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1557
    .local v1, "bundlingPolicyFilter":Landroid/content/IntentFilter;
    const-string v6, "com.sec.android.intent.action.BUNDLING_POLICY_UPDATED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1558
    iget-object v6, p0, mBundlingPolicyReceiver:Landroid/content/BroadcastReceiver;

    const-string v7, "android.permission.DEVICE_POWER"

    invoke-virtual {p2, v6, v1, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1559
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1560
    .local v5, "screenFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1561
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1562
    iget-object v6, p0, mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1563
    const-string v6, "AlarmManager"

    const-string v7, "[TA] created."

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    return-void

    .line 1547
    .end local v1    # "bundlingPolicyFilter":Landroid/content/IntentFilter;
    .end local v3    # "gmsBundlingFilter":Landroid/content/IntentFilter;
    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    .end local v5    # "screenFilter":Landroid/content/IntentFilter;
    :catch_b3
    move-exception v2

    .line 1548
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_66
.end method

.method static synthetic access$1100(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    .prologue
    .line 1518
    iget-object v0, p0, mSafeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    .prologue
    .line 1518
    iget-object v0, p0, mWatchlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    .prologue
    .line 1518
    iget-object v0, p0, mWHITElist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    .prologue
    .line 1518
    iget-object v0, p0, mIgnorelist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Landroid/net/ConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    .prologue
    .line 1518
    invoke-direct {p0}, getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    .prologue
    .line 1518
    iget-object v0, p0, mFgActivities:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .prologue
    .line 2575
    monitor-enter p0

    .line 2576
    :try_start_1
    iget-object v0, p0, mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_15

    .line 2577
    iget-object v0, p0, this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1700(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    .line 2580
    :cond_15
    iget-object v0, p0, mConnManagerDoNotUseDirectly:Landroid/net/ConnectivityManager;

    monitor-exit p0

    return-object v0

    .line 2581
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method


# virtual methods
.method public ForegroundAppsCheckLocked(IJ)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "nowT"    # J

    .prologue
    .line 2589
    iget-object v2, p0, mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2591
    .local v1, "itWatch":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 2593
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2594
    .local v0, "ar":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    if-ne p1, v2, :cond_6

    iget-wide v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->lastTriggerTime:J

    sub-long v2, p2, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    .line 2596
    iget v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->UMCount:I

    iget v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->NfgCount:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->fgCount:I

    if-ne v2, v3, :cond_6

    iget-boolean v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isRunPass:Z

    if-nez v2, :cond_6

    iget v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->fgCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->fgCount:I

    goto :goto_6

    .line 2600
    .end local v0    # "ar":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_34
    return-void
.end method

.method public determineListTypeLocked(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)Z
    .registers 16
    .param p1, "record"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .prologue
    .line 1814
    const/4 v8, 0x0

    .line 1815
    .local v8, "typeChanged":Z
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v9

    if-eqz v9, :cond_1f

    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[TA] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    :cond_1f
    iget v9, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCount:I

    const/4 v10, 0x3

    if-lt v9, v10, :cond_b8

    iget-boolean v9, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCountEvenlyDistributed:Z

    if-nez v9, :cond_b8

    iget v9, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCountAfterHit:I

    if-eqz v9, :cond_31

    iget v9, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCountAfterHit:I

    const/4 v10, 0x3

    if-lt v9, v10, :cond_b8

    :cond_31
    iget-boolean v9, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    if-nez v9, :cond_b8

    .line 1821
    new-instance v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    invoke-direct {v5, p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V

    .line 1823
    .local v5, "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget-object v9, p0, this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1824
    .local v4, "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_44
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5a

    .line 1825
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1826
    .local v6, "pStr":Ljava/lang/String;
    iget-object v9, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_44

    .line 1827
    const/4 v9, 0x0

    .line 1923
    .end local v4    # "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .end local v6    # "pStr":Ljava/lang/String;
    :goto_59
    return v9

    .line 1830
    .restart local v4    # "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v5    # "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_5a
    iget-object v9, p0, mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    int-to-long v10, v9

    const-wide/16 v12, 0x1388

    cmp-long v9, v10, v12

    if-gez v9, :cond_6c

    iget-object v9, p0, mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1831
    :cond_6c
    iget-object v9, p0, this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1832
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_76
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_97

    .line 1833
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1834
    .local v0, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v9, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v9}, Landroid/app/PendingIntent;->hashCode()I

    move-result v9

    iget v10, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->piHashCode:I

    if-ne v9, v10, :cond_76

    .line 1836
    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    .line 1837
    const-wide/16 v10, 0x0

    iput-wide v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 1838
    const-wide/16 v10, 0x0

    iput-wide v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 1842
    .end local v0    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_97
    const/4 v8, 0x1

    .line 1843
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v9

    if-eqz v9, :cond_b6

    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[AppSync] moved to Ignore list: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    .end local v4    # "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_b6
    :goto_b6
    move v9, v8

    .line 1923
    goto :goto_59

    .line 1848
    :cond_b8
    iget v9, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->hitCount:I

    const/4 v10, 0x2

    if-lt v9, v10, :cond_b6

    iget-boolean v9, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    if-nez v9, :cond_b6

    .line 1854
    iget-boolean v9, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCountEvenlyDistributed:Z

    if-eqz v9, :cond_12b

    iget-boolean v9, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isUIalarm:Z

    if-nez v9, :cond_12b

    .line 1855
    new-instance v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    invoke-direct {v5, p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V

    .line 1856
    .restart local v5    # "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    const/4 v1, 0x0

    .line 1857
    .local v1, "found":Z
    iget-object v9, p0, mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_d5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 1859
    .local v7, "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v9, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    iget v10, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    if-ne v9, v10, :cond_d5

    .line 1860
    const/4 v1, 0x1

    .line 1867
    .end local v7    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_e8
    if-nez v1, :cond_120

    .line 1869
    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    .line 1870
    const/4 v9, 0x0

    iput v9, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCountAfterHit:I

    .line 1871
    iget-object v9, p0, mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    int-to-long v10, v9

    const-wide/16 v12, 0x1388

    cmp-long v9, v10, v12

    if-gez v9, :cond_102

    iget-object v9, p0, mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1872
    :cond_102
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v9

    if-eqz v9, :cond_120

    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[AppSync] moved to Whitelist: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    :cond_120
    iget-object v9, p0, this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget v10, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    iget-wide v12, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    # invokes: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->updateRepeatingAlarmLocked(IJ)V
    invoke-static {v9, v10, v12, v13}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;IJ)V

    .line 1921
    :cond_129
    :goto_129
    const/4 v8, 0x1

    goto :goto_b6

    .line 1883
    .end local v1    # "found":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_12b
    new-instance v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    invoke-direct {v5, p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V

    .line 1884
    .restart local v5    # "newRecord":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    const/4 v1, 0x0

    .line 1885
    .restart local v1    # "found":Z
    iget-object v9, p0, mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_137
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 1887
    .restart local v7    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v9, v7, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    iget v10, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    if-ne v9, v10, :cond_137

    .line 1888
    const/4 v1, 0x1

    .line 1895
    .end local v7    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_14a
    if-nez v1, :cond_129

    .line 1897
    iget-object v9, p0, this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1898
    .restart local v4    # "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_156
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16d

    .line 1899
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1900
    .restart local v6    # "pStr":Ljava/lang/String;
    iget-object v9, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_156

    .line 1902
    const/4 v9, 0x0

    goto/16 :goto_59

    .line 1905
    .end local v6    # "pStr":Ljava/lang/String;
    :cond_16d
    const/4 v9, 0x0

    iput-boolean v9, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    .line 1906
    iget-object v9, p0, mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    int-to-long v10, v9

    const-wide/16 v12, 0x1388

    cmp-long v9, v10, v12

    if-gez v9, :cond_182

    iget-object v9, p0, mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1907
    :cond_182
    iget-object v9, p0, this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1908
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_18c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1ad

    .line 1909
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1910
    .restart local v0    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v9, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v9}, Landroid/app/PendingIntent;->hashCode()I

    move-result v9

    iget v10, p1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->piHashCode:I

    if-ne v9, v10, :cond_18c

    .line 1912
    const/4 v9, 0x0

    iput-boolean v9, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    .line 1913
    const-wide/16 v10, 0x0

    iput-wide v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 1914
    const-wide/16 v10, 0x0

    iput-wide v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 1918
    .end local v0    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_1ad
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v9

    if-eqz v9, :cond_129

    const-string v9, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[AppSync] moved to Ignore list: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_129
.end method

.method public getWhitelistCount()I
    .registers 4

    .prologue
    .line 2556
    const/4 v0, 0x0

    .line 2557
    .local v0, "c":I
    iget-object v2, p0, mSafeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2558
    :try_start_4
    iget v0, p0, whitelistCount:I

    .line 2559
    monitor-exit v2

    .line 2560
    return v0

    .line 2559
    :catchall_8
    move-exception v1

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I
    .registers 16
    .param p2, "alarmUid"    # I
    .param p3, "alarmPid"    # I
    .param p4, "alarmHashCode"    # I
    .param p5, "repeatInterval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;",
            ">;IIIJ)I"
        }
    .end annotation

    .prologue
    .line 1993
    .local p1, "targetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    const/4 v1, 0x0

    .line 1994
    .local v1, "index":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1995
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 1996
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 1997
    .local v3, "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    if-ne v4, p4, :cond_37

    .line 2002
    const-wide/16 v4, 0x0

    cmp-long v4, p5, v4

    if-lez v4, :cond_35

    iget-wide v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    cmp-long v4, p5, v4

    if-eqz v4, :cond_35

    iget-object v4, p0, mWatchlist:Ljava/util/ArrayList;

    if-eq p1, v4, :cond_30

    const-wide/32 v4, 0x186a0

    rem-long v4, p5, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_35

    .line 2007
    :cond_30
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2008
    const/4 v4, -0x1

    .line 2050
    .end local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :goto_34
    return v4

    .restart local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_35
    move v4, v1

    .line 2010
    goto :goto_34

    .line 2012
    :cond_37
    add-int/lit8 v1, v1, 0x1

    .line 2013
    goto :goto_5

    .line 2017
    .end local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_3a
    const-wide/16 v4, 0x0

    cmp-long v4, p5, v4

    if-lez v4, :cond_71

    .line 2018
    const/4 v1, 0x0

    .line 2019
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2023
    .restart local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    if-ne v4, p2, :cond_6e

    iget-wide v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    cmp-long v4, v4, p5

    if-nez v4, :cond_6e

    .line 2027
    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    if-nez v4, :cond_61

    move v4, v1

    .line 2028
    goto :goto_34

    .line 2036
    :cond_61
    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->hitCount:I

    const/4 v5, 0x1

    if-lt v4, v5, :cond_6e

    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCount:I

    if-nez v4, :cond_6e

    .line 2040
    iput p4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    move v4, v1

    .line 2041
    goto :goto_34

    .line 2044
    :cond_6e
    add-int/lit8 v1, v1, 0x1

    .line 2045
    goto :goto_45

    .line 2050
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_71
    const/4 v4, -0x1

    goto :goto_34
.end method

.method public printWhitelist()V
    .registers 11

    .prologue
    .line 2563
    iget-object v3, p0, mSafeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2564
    const/4 v2, 0x0

    :try_start_4
    iput v2, p0, whitelistCount:I

    .line 2565
    iget-object v2, p0, mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2566
    .local v1, "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget-wide v4, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTraffic:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_c

    .line 2567
    iget v2, p0, whitelistCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, whitelistCount:I

    .line 2568
    const-string v2, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(AppSync) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTraffic:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 2572
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :catchall_65
    move-exception v2

    monitor-exit v3
    :try_end_67
    .catchall {:try_start_4 .. :try_end_67} :catchall_65

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_68
    :try_start_68
    monitor-exit v3
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_65

    .line 2573
    return-void
.end method

.method public queryTrafficPeriodicity(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;J)J
    .registers 32
    .param p1, "aExt"    # Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .param p2, "distRounded"    # J

    .prologue
    .line 1566
    const/16 v18, 0x1

    .line 1567
    .local v18, "isValidInterval":Z
    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->keyId:I

    .line 1568
    .local v9, "alarmHash":I
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v7

    .line 1569
    .local v7, "alarmUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 1570
    .local v8, "alarmPid":I
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v23

    .line 1571
    .local v23, "pkgName":Ljava/lang/String;
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_50

    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[TA] querying "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " for "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ":"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    :cond_50
    const/16 v16, -0x1

    .line 1578
    .local v16, "foundIdx":I
    move-object/from16 v0, p0

    iget-object v0, v0, mSafeLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 1582
    :try_start_59
    move-object/from16 v0, p0

    iget-object v6, v0, mIgnorelist:Ljava/util/ArrayList;

    move-object/from16 v5, p0

    move-wide/from16 v10, p2

    invoke-virtual/range {v5 .. v11}, lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_6c

    const-wide/16 p2, -0x1

    monitor-exit v25

    .line 1669
    .end local p2    # "distRounded":J
    :goto_6b
    return-wide p2

    .line 1586
    .restart local p2    # "distRounded":J
    :cond_6c
    move-object/from16 v0, p0

    iget-object v6, v0, mWHITElist:Ljava/util/ArrayList;

    move-object/from16 v5, p0

    move-wide/from16 v10, p2

    invoke-virtual/range {v5 .. v11}, lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v16

    .line 1587
    const/4 v5, -0x1

    move/from16 v0, v16

    if-le v0, v5, :cond_88

    .line 1589
    move-wide/from16 v0, p2

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    monitor-exit v25

    goto :goto_6b

    .line 1665
    .end local p2    # "distRounded":J
    :catchall_85
    move-exception v5

    monitor-exit v25
    :try_end_87
    .catchall {:try_start_59 .. :try_end_87} :catchall_85

    throw v5

    .line 1591
    .restart local p2    # "distRounded":J
    :cond_88
    const/16 v21, 0x0

    .line 1595
    .local v21, "makeNew":Z
    :try_start_8a
    move-object/from16 v0, p0

    iget-object v6, v0, mWatchlist:Ljava/util/ArrayList;

    move-object/from16 v5, p0

    move-wide/from16 v10, p2

    invoke-virtual/range {v5 .. v11}, lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v16

    .line 1596
    const/4 v5, -0x1

    move/from16 v0, v16

    if-le v0, v5, :cond_184

    .line 1597
    move-object/from16 v0, p0

    iget-object v5, v0, mWatchlist:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 1601
    .local v14, "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v0, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    move-wide/from16 v26, v0

    cmp-long v5, v10, v26

    if-gez v5, :cond_184

    .line 1602
    iget v5, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->resetCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->resetCount:I

    .line 1606
    iget v5, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->resetCount:I

    const/16 v6, 0xa

    if-le v5, v6, :cond_184

    .line 1607
    move-object/from16 v0, p0

    iget-object v5, v0, mWatchlist:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1608
    const/4 v15, 0x0

    .line 1609
    .local v15, "found":Z
    move-object/from16 v0, p0

    iget-object v5, v0, mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_d1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 1610
    .local v24, "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    iget v6, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    if-ne v5, v6, :cond_d1

    .line 1611
    const/4 v15, 0x1

    .line 1615
    .end local v24    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_e6
    if-nez v15, :cond_17f

    .line 1617
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 1618
    .local v20, "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_f4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_115

    .line 1619
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1620
    .local v22, "pStr":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f4

    .line 1621
    const-wide/16 p2, 0x0

    monitor-exit v25

    goto/16 :goto_6b

    .line 1624
    .end local v22    # "pStr":Ljava/lang/String;
    :cond_115
    const/4 v5, 0x0

    iput-boolean v5, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    .line 1625
    move-object/from16 v0, p0

    iget-object v5, v0, mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v10, v5

    const-wide/16 v26, 0x1388

    cmp-long v5, v10, v26

    if-gez v5, :cond_12e

    move-object/from16 v0, p0

    iget-object v5, v0, mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1626
    :cond_12e
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 1627
    .local v19, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_13a
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_161

    .line 1628
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 1629
    .local v4, "aaExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v5, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->hashCode()I

    move-result v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->hashCode()I

    move-result v6

    if-ne v5, v6, :cond_13a

    .line 1631
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    .line 1632
    const-wide/16 v10, 0x0

    iput-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 1633
    const-wide/16 v10, 0x0

    iput-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    .line 1637
    .end local v4    # "aaExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    :cond_161
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_17f

    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[AppSync][Periodicity] moved to Ignore list: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    .end local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    .end local v20    # "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_17f
    const-wide/16 p2, -0x1

    monitor-exit v25

    goto/16 :goto_6b

    .line 1646
    .end local v14    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .end local v15    # "found":Z
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_184
    const/4 v5, -0x1

    move/from16 v0, v16

    if-eq v0, v5, :cond_18b

    if-eqz v21, :cond_204

    .line 1647
    :cond_18b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    sub-long v12, v10, v26

    .line 1652
    .local v12, "TIME_SKEW":J
    new-instance v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    .line 1653
    .restart local v14    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    move-object/from16 v0, v23

    iput-object v0, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    .line 1654
    iput v7, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    .line 1655
    iput v8, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pid:I

    .line 1656
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->hashCode()I

    move-result v5

    iput v5, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->piHashCode:I

    .line 1657
    iput v9, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    .line 1658
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isExact:Z

    iput-boolean v5, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isExact:Z

    .line 1659
    move-wide/from16 v0, p2

    iput-wide v0, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    .line 1660
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    iput-wide v10, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalRequested:J

    .line 1661
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_1cd

    const-wide/16 v12, 0x0

    .end local v12    # "TIME_SKEW":J
    :cond_1cd
    add-long/2addr v10, v12

    iput-wide v10, v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    .line 1662
    move-object/from16 v0, p0

    iget-object v5, v0, mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v10, v5

    const-wide/16 v26, 0x1388

    cmp-long v5, v10, v26

    if-gez v5, :cond_1e6

    move-object/from16 v0, p0

    iget-object v5, v0, mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1663
    :cond_1e6
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_204

    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[AppSync][Periodicity] added to Watchlist: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    .end local v14    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_204
    monitor-exit v25
    :try_end_205
    .catchall {:try_start_8a .. :try_end_205} :catchall_85

    .line 1669
    const-wide/16 p2, 0x0

    goto/16 :goto_6b
.end method

.method public removeAlarmRecord(Ljava/lang/String;I)V
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v6, -0x1

    .line 2053
    iget-object v5, p0, mSafeLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2054
    :try_start_4
    iget-object v4, p0, mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2055
    .local v2, "itWhite":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 2056
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2057
    .local v3, "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    if-eqz p1, :cond_20

    iget-object v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    :cond_20
    if-eq p2, v6, :cond_a

    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_a

    .line 2063
    :cond_2a
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 2090
    .end local v2    # "itWhite":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    .end local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :catchall_2e
    move-exception v4

    monitor-exit v5
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_2e

    throw v4

    .line 2066
    .restart local v2    # "itWhite":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_31
    :try_start_31
    iget-object v4, p0, mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2067
    .local v1, "itWatch":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_37
    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 2068
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2069
    .restart local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    if-eqz p1, :cond_4d

    iget-object v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    :cond_4d
    if-eq p2, v6, :cond_37

    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_37

    .line 2075
    :cond_57
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_37

    .line 2078
    .end local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_5b
    iget-object v4, p0, mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2079
    .local v0, "itIgnore":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_61
    :goto_61
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_85

    .line 2080
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2081
    .restart local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    if-eqz p1, :cond_77

    iget-object v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_81

    :cond_77
    if-eq p2, v6, :cond_61

    iget v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_61

    .line 2087
    :cond_81
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_61

    .line 2090
    .end local v3    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_85
    monitor-exit v5
    :try_end_86
    .catchall {:try_start_31 .. :try_end_86} :catchall_2e

    .line 2091
    return-void
.end method

.method public removeUnusedAlarmRecord(J)V
    .registers 18
    .param p1, "curTimeRtc"    # J

    .prologue
    .line 2093
    iget-object v8, p0, mSafeLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2094
    :try_start_3
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 2095
    iget-object v5, p0, mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2096
    .local v4, "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    const-string v5, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[AppSync] WHITE: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 2146
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :catchall_34
    move-exception v5

    monitor-exit v8
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v5

    .line 2098
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_37
    :try_start_37
    iget-object v5, p0, mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2099
    .restart local v4    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    const-string v5, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[AppSync] ignore: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 2101
    .end local v4    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_62
    iget-object v5, p0, mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2102
    .restart local v4    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    const-string v5, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[AppSync] watch: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 2105
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_8d
    iget-object v5, p0, mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2106
    .local v3, "itWatch":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_93
    :goto_93
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d8

    .line 2107
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2108
    .restart local v4    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->lastTriggerTime:J

    iget-wide v12, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    cmp-long v5, v10, v12

    if-gez v5, :cond_d5

    iget-wide v6, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    .line 2109
    .local v6, "testTime":J
    :goto_a9
    iget-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    const-wide/16 v12, 0x3

    mul-long/2addr v10, v12

    add-long/2addr v10, v6

    cmp-long v5, v10, p1

    if-gez v5, :cond_93

    .line 2113
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_d1

    const-string v5, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[AppSync] removeW: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    :cond_d1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_93

    .line 2108
    .end local v6    # "testTime":J
    :cond_d5
    iget-wide v6, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->lastTriggerTime:J

    goto :goto_a9

    .line 2117
    .end local v4    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_d8
    iget-object v5, p0, mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2118
    .local v2, "itIgnore":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_de
    :goto_de
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_197

    .line 2119
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2121
    .restart local v4    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    iget v9, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->hitCount:I

    sub-int/2addr v5, v9

    iget v9, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->missCount:I

    sub-int v0, v5, v9

    .line 2123
    .local v0, "IgnoreCount":I
    iget-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    const-wide/32 v12, 0x36ee80

    cmp-long v5, v10, v12

    if-gez v5, :cond_12d

    .line 2124
    const/16 v5, 0xa

    if-ge v0, v5, :cond_10b

    int-to-long v10, v0

    iget-wide v12, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    mul-long/2addr v10, v12

    const-wide/32 v12, 0x112a880

    cmp-long v5, v10, v12

    if-ltz v5, :cond_15d

    .line 2125
    :cond_10b
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2126
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_de

    const-string v5, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[AppSync] removeI expiration1: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_de

    .line 2131
    :cond_12d
    const/4 v5, 0x5

    if-ge v0, v5, :cond_13b

    int-to-long v10, v0

    iget-wide v12, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    mul-long/2addr v10, v12

    const-wide/32 v12, 0x2932e00

    cmp-long v5, v10, v12

    if-ltz v5, :cond_15d

    .line 2132
    :cond_13b
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2133
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_de

    const-string v5, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[AppSync] removeI expiration2: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_de

    .line 2137
    :cond_15d
    iget-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->lastTriggerTime:J

    iget-wide v12, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    cmp-long v5, v10, v12

    if-gez v5, :cond_194

    iget-wide v6, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->targetWhen:J

    .line 2138
    .restart local v6    # "testTime":J
    :goto_167
    iget-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    const-wide/16 v12, 0x3

    mul-long/2addr v10, v12

    add-long/2addr v10, v6

    cmp-long v5, v10, p1

    if-gez v5, :cond_de

    .line 2142
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_18f

    const-string v5, "AlarmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[AppSync] removeI: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    :cond_18f
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_de

    .line 2137
    .end local v6    # "testTime":J
    :cond_194
    iget-wide v6, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->lastTriggerTime:J

    goto :goto_167

    .line 2146
    .end local v0    # "IgnoreCount":I
    .end local v4    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_197
    monitor-exit v8
    :try_end_198
    .catchall {:try_start_37 .. :try_end_198} :catchall_34

    .line 2147
    return-void
.end method

.method public updateAlarmTriggerInfo(Landroid/app/PendingIntent;IJ)V
    .registers 28
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "count"    # I
    .param p3, "nowRtc"    # J

    .prologue
    .line 1675
    const/4 v9, -0x1

    .line 1676
    .local v9, "piHashCode":I
    const/4 v7, -0x1

    .line 1678
    .local v7, "trigUid":I
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->getKidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v9

    .line 1679
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->getUidForIntentSender(Landroid/content/IIntentSender;)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_19} :catch_dd

    move-result v7

    .line 1683
    :goto_1a
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_56

    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TA][Trigger] "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", code="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, mSafeLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 1687
    const/4 v13, -0x1

    .line 1691
    .local v13, "foundIdx":I
    :try_start_5e
    move-object/from16 v0, p0

    iget-object v6, v0, mWHITElist:Ljava/util/ArrayList;

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v13

    .line 1692
    const/4 v5, -0x1

    if-eq v13, v5, :cond_128

    .line 1693
    move-object/from16 v0, p0

    iget-object v5, v0, mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 1695
    .local v4, "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    .line 1696
    move/from16 v0, p2

    move-wide/from16 v1, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->updateTriggerTimeLocked(IJ)V

    .line 1700
    const/16 v16, 0x1

    .line 1701
    .local v16, "tmRun":Z
    move-object/from16 v0, p0

    iget-boolean v5, v0, mIsScreenOn:Z

    if-eqz v5, :cond_a8

    .line 1702
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockFgAct:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_96
    .catchall {:try_start_5e .. :try_end_96} :catchall_e6

    .line 1703
    :try_start_96
    move-object/from16 v0, p0

    iget-object v5, v0, mFgActivities:Landroid/util/SparseBooleanArray;

    iget v8, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-virtual {v5, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 1705
    const/16 v16, 0x0

    .line 1706
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isRunPass:Z

    .line 1708
    :cond_a7
    monitor-exit v6
    :try_end_a8
    .catchall {:try_start_96 .. :try_end_a8} :catchall_e3

    .line 1713
    :cond_a8
    :try_start_a8
    iget-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    const-wide/16 v18, 0x0

    cmp-long v5, v10, v18

    if-lez v5, :cond_c0

    iget-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x5

    div-long v18, v18, v20

    cmp-long v5, v10, v18

    if-gez v5, :cond_c0

    .line 1715
    const/16 v16, 0x0

    .line 1718
    :cond_c0
    if-eqz v16, :cond_11d

    .line 1719
    invoke-static {v7}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->txbytes0time:J

    .line 1720
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isMonitorON:Z
    :try_end_cb
    .catchall {:try_start_a8 .. :try_end_cb} :catchall_e6

    .line 1722
    :try_start_cb
    new-instance v15, Ljava/util/Timer;

    invoke-direct {v15}, Ljava/util/Timer;-><init>()V

    .line 1723
    .local v15, "timer":Ljava/util/Timer;
    new-instance v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V
    :try_end_d7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_cb .. :try_end_d7} :catch_11f
    .catchall {:try_start_cb .. :try_end_d7} :catchall_e6

    .line 1724
    .local v14, "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    if-eqz v15, :cond_db

    if-nez v14, :cond_e9

    :cond_db
    :try_start_db
    monitor-exit v17
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_e6

    .line 1791
    .end local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .end local v14    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    .end local v15    # "timer":Ljava/util/Timer;
    .end local v16    # "tmRun":Z
    :goto_dc
    return-void

    .line 1680
    .end local v13    # "foundIdx":I
    :catch_dd
    move-exception v12

    .line 1681
    .local v12, "e":Landroid/os/RemoteException;
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1a

    .line 1708
    .end local v12    # "e":Landroid/os/RemoteException;
    .restart local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .restart local v13    # "foundIdx":I
    .restart local v16    # "tmRun":Z
    :catchall_e3
    move-exception v5

    :try_start_e4
    monitor-exit v6
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e3

    :try_start_e5
    throw v5

    .line 1790
    .end local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .end local v16    # "tmRun":Z
    :catchall_e6
    move-exception v5

    monitor-exit v17
    :try_end_e8
    .catchall {:try_start_e5 .. :try_end_e8} :catchall_e6

    throw v5

    .line 1725
    .restart local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .restart local v14    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    .restart local v15    # "timer":Ljava/util/Timer;
    .restart local v16    # "tmRun":Z
    :cond_e9
    :try_start_e9
    invoke-virtual {v14, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->setAlarmInfo(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V

    .line 1727
    const-wide/16 v10, 0x2710

    invoke-virtual {v15, v14, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1728
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_11d

    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TA] isRunpass="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v8, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isRunPass:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e9 .. :try_end_11d} :catch_11f
    .catchall {:try_start_e9 .. :try_end_11d} :catchall_e6

    .line 1733
    .end local v14    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    .end local v15    # "timer":Ljava/util/Timer;
    :cond_11d
    :goto_11d
    :try_start_11d
    monitor-exit v17

    goto :goto_dc

    .line 1729
    :catch_11f
    move-exception v12

    .line 1730
    .local v12, "e":Ljava/lang/OutOfMemoryError;
    const-string v5, "AlarmManager"

    const-string v6, "OutOfMemory"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11d

    .line 1738
    .end local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .end local v12    # "e":Ljava/lang/OutOfMemoryError;
    .end local v16    # "tmRun":Z
    :cond_128
    move-object/from16 v0, p0

    iget-object v6, v0, mIgnorelist:Ljava/util/ArrayList;

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v13

    const/4 v5, -0x1

    if-le v13, v5, :cond_151

    .line 1739
    move-object/from16 v0, p0

    iget-object v5, v0, mIgnorelist:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 1741
    .restart local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    .line 1742
    move/from16 v0, p2

    move-wide/from16 v1, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->updateTriggerTimeLocked(IJ)V

    .line 1743
    monitor-exit v17

    goto :goto_dc

    .line 1748
    .end local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_151
    move-object/from16 v0, p0

    iget-object v6, v0, mWatchlist:Ljava/util/ArrayList;

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v13

    .line 1749
    const/4 v5, -0x1

    if-eq v13, v5, :cond_208

    .line 1750
    move-object/from16 v0, p0

    iget-object v5, v0, mWatchlist:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 1752
    .restart local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->triggerCount:I

    .line 1753
    move/from16 v0, p2

    move-wide/from16 v1, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->updateTriggerTimeLocked(IJ)V

    .line 1757
    const/16 v16, 0x1

    .line 1758
    .restart local v16    # "tmRun":Z
    move-object/from16 v0, p0

    iget-boolean v5, v0, mIsScreenOn:Z

    if-eqz v5, :cond_19b

    .line 1759
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mLockFgAct:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_189
    .catchall {:try_start_11d .. :try_end_189} :catchall_e6

    .line 1760
    :try_start_189
    move-object/from16 v0, p0

    iget-object v5, v0, mFgActivities:Landroid/util/SparseBooleanArray;

    iget v8, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    invoke-virtual {v5, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_19a

    .line 1762
    const/16 v16, 0x0

    .line 1763
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isRunPass:Z

    .line 1765
    :cond_19a
    monitor-exit v6
    :try_end_19b
    .catchall {:try_start_189 .. :try_end_19b} :catchall_1d1

    .line 1770
    :cond_19b
    :try_start_19b
    iget-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    const-wide/16 v18, 0x0

    cmp-long v5, v10, v18

    if-lez v5, :cond_1b3

    iget-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    iget-wide v0, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x5

    div-long v18, v18, v20

    cmp-long v5, v10, v18

    if-gez v5, :cond_1b3

    .line 1772
    const/16 v16, 0x0

    .line 1774
    :cond_1b3
    if-eqz v16, :cond_208

    .line 1775
    invoke-static {v7}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    iput-wide v10, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->txbytes0time:J

    .line 1776
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isMonitorON:Z
    :try_end_1be
    .catchall {:try_start_19b .. :try_end_1be} :catchall_e6

    .line 1778
    :try_start_1be
    new-instance v15, Ljava/util/Timer;

    invoke-direct {v15}, Ljava/util/Timer;-><init>()V

    .line 1779
    .restart local v15    # "timer":Ljava/util/Timer;
    new-instance v14, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V
    :try_end_1ca
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1be .. :try_end_1ca} :catch_20b
    .catchall {:try_start_1be .. :try_end_1ca} :catchall_e6

    .line 1780
    .restart local v14    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    if-eqz v15, :cond_1ce

    if-nez v14, :cond_1d4

    :cond_1ce
    :try_start_1ce
    monitor-exit v17
    :try_end_1cf
    .catchall {:try_start_1ce .. :try_end_1cf} :catchall_e6

    goto/16 :goto_dc

    .line 1765
    .end local v14    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    .end local v15    # "timer":Ljava/util/Timer;
    :catchall_1d1
    move-exception v5

    :try_start_1d2
    monitor-exit v6
    :try_end_1d3
    .catchall {:try_start_1d2 .. :try_end_1d3} :catchall_1d1

    :try_start_1d3
    throw v5
    :try_end_1d4
    .catchall {:try_start_1d3 .. :try_end_1d4} :catchall_e6

    .line 1781
    .restart local v14    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    .restart local v15    # "timer":Ljava/util/Timer;
    :cond_1d4
    :try_start_1d4
    invoke-virtual {v14, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;->setAlarmInfo(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V

    .line 1783
    const-wide/16 v10, 0x2710

    invoke-virtual {v15, v14, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1784
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v5

    if-eqz v5, :cond_208

    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TA] isRunpass="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v8, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isRunPass:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_208
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d4 .. :try_end_208} :catch_20b
    .catchall {:try_start_1d4 .. :try_end_208} :catchall_e6

    .line 1790
    .end local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .end local v14    # "newtask":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$MonitorTask;
    .end local v15    # "timer":Ljava/util/Timer;
    .end local v16    # "tmRun":Z
    :cond_208
    :goto_208
    :try_start_208
    monitor-exit v17

    goto/16 :goto_dc

    .line 1785
    .restart local v4    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    .restart local v16    # "tmRun":Z
    :catch_20b
    move-exception v12

    .line 1786
    .restart local v12    # "e":Ljava/lang/OutOfMemoryError;
    const-string v5, "AlarmManager"

    const-string v6, "OutOfMemory"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_213
    .catchall {:try_start_208 .. :try_end_213} :catchall_e6

    goto :goto_208
.end method

.method public updateEmailSyncStatus(JJ[J)J
    .registers 31
    .param p1, "curAccountd"    # J
    .param p3, "alarmTriggerTime"    # J
    .param p5, "emailAccountInfos"    # [J

    .prologue
    .line 1926
    const/4 v12, 0x0

    .line 1927
    .local v12, "accountInfoIndex":I
    move-object/from16 v0, p5

    array-length v14, v0

    .line 1931
    .local v14, "accountInfoLimit":I
    const/4 v2, 0x2

    .line 1932
    .local v2, "ACCOUNT_INFO_UNIT_LENGTH":I
    const-wide/16 v20, 0x0

    .local v20, "newInterval":J
    move v13, v12

    .line 1933
    .end local v12    # "accountInfoIndex":I
    .local v13, "accountInfoIndex":I
    :cond_8
    :goto_8
    if-ge v13, v14, :cond_139

    .line 1934
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "accountInfoIndex":I
    .restart local v12    # "accountInfoIndex":I
    aget-wide v10, p5, v13

    .line 1935
    .local v10, "accountId":J
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "accountInfoIndex":I
    .restart local v13    # "accountInfoIndex":I
    aget-wide v22, p5, v12

    .line 1939
    .local v22, "prevSync":J
    const-wide/16 v4, 0x0

    cmp-long v3, v10, v4

    if-ltz v3, :cond_8

    .line 1944
    cmp-long v3, p1, v10

    if-nez v3, :cond_8

    .line 1945
    const-wide/16 v4, 0x0

    cmp-long v3, v22, v4

    if-nez v3, :cond_26

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    .line 1946
    :cond_26
    sub-long v4, p3, v22

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    .line 1947
    .local v16, "distance":J
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v3

    if-eqz v3, :cond_56

    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(Email) ID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", interval:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    :cond_56
    const-wide/16 v4, 0x3e8

    sub-long v4, v16, v4

    long-to-double v4, v4

    const-wide v6, 0x41124f8000000000L    # 300000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-long v4, v4

    const-wide/32 v6, 0x493e0

    mul-long v16, v4, v6

    .line 1953
    const-wide/32 v4, 0x493e0

    cmp-long v3, v16, v4

    if-ltz v3, :cond_8

    const-wide/32 v4, 0x493e0

    rem-long v4, v16, v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_8

    .line 1954
    move-wide/from16 v20, v16

    .line 1958
    move-object/from16 v0, p0

    iget-object v0, v0, mSafeLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1959
    :try_start_86
    move-object/from16 v0, p0

    iget-object v4, v0, mWHITElist:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I
    invoke-static {v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$700(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I
    invoke-static {v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I

    move-result v6

    long-to-int v7, v10

    const-wide/16 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, lookForObjectInListLocked(Ljava/util/ArrayList;IIIJ)I

    move-result v18

    .line 1964
    .local v18, "foundIdx":I
    const/4 v3, -0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_c5

    move-object/from16 v0, p0

    iget-object v3, v0, mWHITElist:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    iget-wide v4, v3, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTraffic:J

    cmp-long v3, v4, v20

    if-eqz v3, :cond_c5

    .line 1965
    move-object/from16 v0, p0

    iget-object v3, v0, mWHITElist:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1966
    const/16 v18, -0x1

    .line 1968
    :cond_c5
    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_133

    .line 1969
    new-instance v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V

    .line 1970
    .local v15, "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    const-string v3, "com.android.email"

    iput-object v3, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pkgName:Ljava/lang/String;

    .line 1971
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailUid:I
    invoke-static {v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$700(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I

    move-result v3

    iput v3, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->uid:I

    .line 1972
    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mEmailPid:I
    invoke-static {v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$800(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)I

    move-result v3

    iput v3, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->pid:I

    .line 1973
    long-to-int v3, v10

    iput v3, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->alarmHashCode:I

    .line 1974
    move-wide/from16 v0, v20

    iput-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTraffic:J

    move-wide/from16 v0, v20

    iput-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalTrigger:J

    move-wide/from16 v0, v20

    iput-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalRequested:J

    move-wide/from16 v0, v20

    iput-wide v0, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->intervalCalculated:J

    .line 1978
    const/4 v3, 0x1

    iput-boolean v3, v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;->isWhite:Z

    .line 1979
    move-object/from16 v0, p0

    iget-object v3, v0, mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v4, v3

    const-wide/16 v6, 0x1388

    cmp-long v3, v4, v6

    if-gez v3, :cond_115

    move-object/from16 v0, p0

    iget-object v3, v0, mWHITElist:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1980
    :cond_115
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v3

    if-eqz v3, :cond_133

    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AppSync] moved to Whitelist; Email IDX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    .end local v15    # "almRec":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_133
    monitor-exit v19

    goto/16 :goto_8

    .end local v18    # "foundIdx":I
    :catchall_136
    move-exception v3

    monitor-exit v19
    :try_end_138
    .catchall {:try_start_86 .. :try_end_138} :catchall_136

    throw v3

    .line 1986
    .end local v10    # "accountId":J
    .end local v16    # "distance":J
    .end local v22    # "prevSync":J
    :cond_139
    return-wide v20
.end method

.method updateGmsBundlingState(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 2693
    if-eqz p1, :cond_18

    .line 2694
    iget-object v1, p0, this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->fileGmsBundlingState:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2000(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2695
    iget-object v1, p0, this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->fileGmsBundlingState:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2000(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2706
    :cond_17
    :goto_17
    return-void

    .line 2698
    :cond_18
    iget-object v1, p0, this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->fileGmsBundlingState:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2000(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_17

    .line 2700
    :try_start_24
    iget-object v1, p0, this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->fileGmsBundlingState:Ljava/io/File;
    invoke-static {v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$2000(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2d} :catch_2e

    goto :goto_17

    .line 2701
    :catch_2e
    move-exception v0

    .line 2702
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17
.end method
