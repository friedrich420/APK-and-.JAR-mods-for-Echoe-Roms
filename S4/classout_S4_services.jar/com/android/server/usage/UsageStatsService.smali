.class public Lcom/android/server/usage/UsageStatsService;
.super Lcom/android/server/SystemService;
.source "UsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UsageStatsService$1;,
        Lcom/android/server/usage/UsageStatsService$LocalService;,
        Lcom/android/server/usage/UsageStatsService$BinderService;,
        Lcom/android/server/usage/UsageStatsService$H;,
        Lcom/android/server/usage/UsageStatsService$UserRemovedReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final FLUSH_INTERVAL:J = 0x124f80L

.field static final MSG_FLUSH_TO_DISK:I = 0x1

.field static final MSG_REMOVE_USER:I = 0x2

.field static final MSG_REPORT_EVENT:I = 0x0

.field static final TAG:Ljava/lang/String; = "UsageStatsService"

.field private static final TEN_SECONDS:J = 0x2710L

.field private static final TIME_CHANGE_THRESHOLD_MILLIS:J = 0x7d0L

.field private static final TWENTY_MINUTES:J = 0x124f80L


# instance fields
.field mAppOps:Landroid/app/AppOpsManager;

.field mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field mRealTimeSnapshot:J

.field mSystemTimeSnapshot:J

.field private mUsageStatsDir:Ljava/io/File;

.field private mUsageStatsWatchers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/usage/IUsageStatsWatcher;",
            ">;"
        }
    .end annotation
.end field

.field mUserManager:Landroid/os/UserManager;

.field private final mUserState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/usage/UserUsageStatsService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mUserState:Landroid/util/SparseArray;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mUsageStatsWatchers:Ljava/util/HashMap;

    .line 102
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/usage/UsageStatsService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usage/UsageStatsService;

    .prologue
    .line 74
    iget-object v0, p0, mUsageStatsWatchers:Ljava/util/HashMap;

    return-object v0
.end method

.method private checkAndGetTimeLocked()J
    .registers 15

    .prologue
    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 207
    .local v2, "actualSystemTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 208
    .local v0, "actualRealtime":J
    iget-wide v10, p0, mRealTimeSnapshot:J

    sub-long v10, v0, v10

    iget-wide v12, p0, mSystemTimeSnapshot:J

    add-long v4, v10, v12

    .line 209
    .local v4, "expectedSystemTime":J
    sub-long v10, v2, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x7d0

    cmp-long v9, v10, v12

    if-lez v9, :cond_37

    .line 211
    iget-object v9, p0, mUserState:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 212
    .local v8, "userCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_23
    if-ge v6, v8, :cond_33

    .line 213
    iget-object v9, p0, mUserState:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usage/UserUsageStatsService;

    .line 214
    .local v7, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v7, v4, v5, v2, v3}, Lcom/android/server/usage/UserUsageStatsService;->onTimeChanged(JJ)V

    .line 212
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 216
    .end local v7    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :cond_33
    iput-wide v0, p0, mRealTimeSnapshot:J

    .line 217
    iput-wide v2, p0, mSystemTimeSnapshot:J

    .line 219
    .end local v6    # "i":I
    .end local v8    # "userCount":I
    :cond_37
    return-wide v2
.end method

.method private cleanUpRemovedUsersLocked()V
    .registers 11

    .prologue
    .line 151
    iget-object v7, p0, mUserManager:Landroid/os/UserManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v6

    .line 152
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v6, :cond_f

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_17

    .line 153
    :cond_f
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "There can\'t be no users"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 156
    :cond_17
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 157
    .local v3, "toDelete":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v7, p0, mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "fileNames":[Ljava/lang/String;
    if-nez v1, :cond_25

    .line 175
    :cond_24
    return-void

    .line 163
    :cond_25
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 165
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 166
    .local v4, "userCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_31
    if-ge v2, v4, :cond_45

    .line 167
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 168
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 171
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_45
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 172
    .local v0, "deleteCount":I
    const/4 v2, 0x0

    :goto_4a
    if-ge v2, v0, :cond_24

    .line 173
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v8, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8}, deleteRecursively(Ljava/io/File;)V

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a
.end method

.method private convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V
    .registers 8
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;

    .prologue
    .line 227
    const-wide/16 v0, 0x0

    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v4, p0, mRealTimeSnapshot:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, mSystemTimeSnapshot:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 228
    return-void
.end method

.method private static deleteRecursively(Ljava/io/File;)V
    .registers 9
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 178
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 179
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_13

    .line 180
    move-object v0, v1

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_9
    if-ge v2, v3, :cond_13

    aget-object v4, v0, v2

    .line 181
    .local v4, "subFile":Ljava/io/File;
    invoke-static {v4}, deleteRecursively(Ljava/io/File;)V

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 185
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "subFile":Ljava/io/File;
    :cond_13
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_31

    .line 186
    const-string v5, "UsageStatsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_31
    return-void
.end method

.method private flushToDiskLocked()V
    .registers 6

    .prologue
    .line 352
    iget-object v3, p0, mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 353
    .local v2, "userCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v2, :cond_17

    .line 354
    iget-object v3, p0, mUserState:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UserUsageStatsService;

    .line 355
    .local v1, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v1}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 358
    .end local v1    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :cond_17
    iget-object v3, p0, mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 359
    return-void
.end method

.method private getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;
    .registers 8
    .param p1, "userId"    # I
    .param p2, "currentTimeMillis"    # J

    .prologue
    .line 192
    iget-object v1, p0, mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UserUsageStatsService;

    .line 193
    .local v0, "service":Lcom/android/server/usage/UserUsageStatsService;
    if-nez v0, :cond_22

    .line 194
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService;

    .end local v0    # "service":Lcom/android/server/usage/UserUsageStatsService;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, mUsageStatsDir:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1, p0}, Lcom/android/server/usage/UserUsageStatsService;-><init>(ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V

    .line 196
    .restart local v0    # "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v0, p2, p3}, Lcom/android/server/usage/UserUsageStatsService;->init(J)V

    .line 197
    iget-object v1, p0, mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    :cond_22
    return-object v0
.end method

.method private static validRange(JJJ)Z
    .registers 8
    .param p0, "currentTime"    # J
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J

    .prologue
    .line 348
    cmp-long v0, p2, p0

    if-gtz v0, :cond_a

    cmp-long v0, p2, p4

    if-gez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method flushToDisk()V
    .registers 4

    .prologue
    .line 258
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_3
    invoke-direct {p0}, flushToDiskLocked()V

    .line 262
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsage;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/application/ApplicationUsage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationUsage;->insertToAppControlDB()V

    .line 265
    monitor-exit v1

    .line 266
    return-void

    .line 265
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public onStart()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 106
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, mAppOps:Landroid/app/AppOpsManager;

    .line 107
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, mUserManager:Landroid/os/UserManager;

    .line 108
    new-instance v1, Lcom/android/server/usage/UsageStatsService$H;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/usage/UsageStatsService$H;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V

    iput-object v1, p0, mHandler:Landroid/os/Handler;

    .line 110
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    .local v0, "systemDataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "usagestats"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, mUsageStatsDir:Ljava/io/File;

    .line 112
    iget-object v1, p0, mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 113
    iget-object v1, p0, mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6f

    .line 114
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Usage stats directory does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_6f
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/usage/UsageStatsService$UserRemovedReceiver;

    invoke-direct {v2, p0, v5}, Lcom/android/server/usage/UsageStatsService$UserRemovedReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 122
    :try_start_85
    invoke-direct {p0}, cleanUpRemovedUsersLocked()V

    .line 123
    monitor-exit v2
    :try_end_89
    .catchall {:try_start_85 .. :try_end_89} :catchall_ab

    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, mRealTimeSnapshot:J

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, mSystemTimeSnapshot:J

    .line 128
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v2, Lcom/android/server/usage/UsageStatsService$LocalService;

    invoke-direct {v2, p0, v5}, Lcom/android/server/usage/UsageStatsService$LocalService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    invoke-virtual {p0, v1, v2}, publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 129
    const-string/jumbo v1, "usagestats"

    new-instance v2, Lcom/android/server/usage/UsageStatsService$BinderService;

    invoke-direct {v2, p0, v5}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    invoke-virtual {p0, v1, v2}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 130
    return-void

    .line 123
    :catchall_ab
    move-exception v1

    :try_start_ac
    monitor-exit v2
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    throw v1
.end method

.method public onStatsUpdated()V
    .registers 5

    .prologue
    .line 147
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0x124f80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 148
    return-void
.end method

.method queryConfigurationStats(IIJJ)Ljava/util/List;
    .registers 16
    .param p1, "userId"    # I
    .param p2, "bucketType"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v8, p0, mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 320
    :try_start_3
    invoke-direct {p0}, checkAndGetTimeLocked()J

    move-result-wide v0

    .local v0, "timeNow":J
    move-wide v2, p3

    move-wide v4, p5

    .line 321
    invoke-static/range {v0 .. v5}, validRange(JJJ)Z

    move-result v3

    if-nez v3, :cond_12

    .line 322
    const/4 v3, 0x0

    monitor-exit v8

    .line 327
    :goto_11
    return-object v3

    .line 325
    :cond_12
    invoke-direct {p0, p1, v0, v1}, getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v2

    .local v2, "service":Lcom/android/server/usage/UserUsageStatsService;
    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .line 327
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryConfigurationStats(IJJ)Ljava/util/List;

    move-result-object v3

    monitor-exit v8

    goto :goto_11

    .line 328
    .end local v0    # "timeNow":J
    .end local v2    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_1f
    move-exception v3

    monitor-exit v8
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v3
.end method

.method queryEvents(IJJ)Landroid/app/usage/UsageEvents;
    .registers 14
    .param p1, "userId"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J

    .prologue
    .line 335
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 336
    :try_start_3
    invoke-direct {p0}, checkAndGetTimeLocked()J

    move-result-wide v0

    .local v0, "timeNow":J
    move-wide v2, p2

    move-wide v4, p4

    .line 337
    invoke-static/range {v0 .. v5}, validRange(JJJ)Z

    move-result v2

    if-nez v2, :cond_12

    .line 338
    const/4 v2, 0x0

    monitor-exit v7

    .line 343
    :goto_11
    return-object v2

    .line 341
    :cond_12
    invoke-direct {p0, p1, v0, v1}, getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v6

    .line 343
    .local v6, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v6, p2, p3, p4, p5}, Lcom/android/server/usage/UserUsageStatsService;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    move-result-object v2

    monitor-exit v7

    goto :goto_11

    .line 344
    .end local v0    # "timeNow":J
    .end local v6    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_1c
    move-exception v2

    monitor-exit v7
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method queryPpmInfo(IIJJ)Ljava/util/List;
    .registers 16
    .param p1, "userId"    # I
    .param p2, "bucketType"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    iget-object v8, p0, mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 301
    :try_start_3
    invoke-direct {p0}, checkAndGetTimeLocked()J

    move-result-wide v0

    .local v0, "timeNow":J
    move-wide v2, p3

    move-wide v4, p5

    .line 302
    invoke-static/range {v0 .. v5}, validRange(JJJ)Z

    move-result v3

    if-nez v3, :cond_19

    .line 303
    const-string v3, "UsageStatsService"

    const-string v4, "exceed vaild range in queryPpmInfo!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v3, 0x0

    monitor-exit v8

    .line 309
    :goto_18
    return-object v3

    .line 307
    :cond_19
    invoke-direct {p0, p1, v0, v1}, getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v2

    .local v2, "service":Lcom/android/server/usage/UserUsageStatsService;
    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .line 309
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryPpmInfo(IJJ)Ljava/util/List;

    move-result-object v3

    monitor-exit v8

    goto :goto_18

    .line 310
    .end local v0    # "timeNow":J
    .end local v2    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_26
    move-exception v3

    monitor-exit v8
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v3
.end method

.method queryUsageStats(IIJJ)Ljava/util/List;
    .registers 16
    .param p1, "userId"    # I
    .param p2, "bucketType"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v8, p0, mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 284
    :try_start_3
    invoke-direct {p0}, checkAndGetTimeLocked()J

    move-result-wide v0

    .local v0, "timeNow":J
    move-wide v2, p3

    move-wide v4, p5

    .line 285
    invoke-static/range {v0 .. v5}, validRange(JJJ)Z

    move-result v3

    if-nez v3, :cond_12

    .line 286
    const/4 v3, 0x0

    monitor-exit v8

    .line 291
    :goto_11
    return-object v3

    .line 289
    :cond_12
    invoke-direct {p0, p1, v0, v1}, getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v2

    .local v2, "service":Lcom/android/server/usage/UserUsageStatsService;
    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    .line 291
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v3

    monitor-exit v8

    goto :goto_11

    .line 292
    .end local v0    # "timeNow":J
    .end local v2    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_1f
    move-exception v3

    monitor-exit v8
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v3
.end method

.method removeUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 272
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 273
    :try_start_3
    const-string v0, "UsageStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and all data."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 275
    invoke-direct {p0}, cleanUpRemovedUsersLocked()V

    .line 276
    monitor-exit v1

    .line 277
    return-void

    .line 276
    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;I)V
    .registers 8
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;
    .param p2, "userId"    # I

    .prologue
    .line 244
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 245
    :try_start_3
    invoke-direct {p0}, checkAndGetTimeLocked()J

    move-result-wide v2

    .line 246
    .local v2, "timeNow":J
    invoke-direct {p0, p1}, convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V

    .line 248
    invoke-direct {p0, p2, v2, v3}, getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v0

    .line 250
    .local v0, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v0, p1}, Lcom/android/server/usage/UserUsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 251
    monitor-exit v4

    .line 252
    return-void

    .line 251
    .end local v0    # "service":Lcom/android/server/usage/UserUsageStatsService;
    .end local v2    # "timeNow":J
    :catchall_13
    move-exception v1

    monitor-exit v4
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method shutdown()V
    .registers 4

    .prologue
    .line 234
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :try_start_3
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    invoke-direct {p0}, flushToDiskLocked()V

    .line 237
    monitor-exit v1

    .line 238
    return-void

    .line 237
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method
