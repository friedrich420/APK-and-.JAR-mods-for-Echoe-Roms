.class public Lcom/android/server/am/PreferredPackageManager;
.super Ljava/lang/Object;
.source "PreferredPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;,
        Lcom/android/server/am/PreferredPackageManager$PPMLogFormatter;,
        Lcom/android/server/am/PreferredPackageManager$PreferredPackageCounter;,
        Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;
    }
.end annotation


# static fields
.field static final ACTIVITY_PAUSED:I = 0x5

.field static final ACTIVITY_RESUME_FINISHED:I = 0x4

.field static final ACTIVITY_RESUME_STARTED:I = 0x3

.field static DEBUG:Z = false

.field static DEBUG_LOGFILE_ENABLE:Z = false

.field static DEBUG_TRACE:Z = false

.field static final FIRST_START_PACKAGE_NUMBER:I = 0x5

.field static final PREFERRED_COUNT_DEVIDE_TERM:I = 0x5265c00

.field static final PREFERRED_DATA_SAVE_TERM:I = 0x1b7740

.field static final PREFERRED_MAX_COUNT:I = 0x32

.field static final SET_PREFERRED_PACKAGE_PSS_MSG:I = 0x2

.field static final START_TOP_PREFERRED_PACKAGES:I = 0x1

.field static final TAG:Ljava/lang/String; = "PreferredPackage"

.field private static final USAGE_STATS_PERIOD:J = 0x48190800L

.field static final WRITE_PREFERRED_DATA_MSG:I = 0x6

.field private static mInstance:Lcom/android/server/am/PreferredPackageManager;


# instance fields
.field private final BLACK_LIST:[Ljava/lang/String;

.field final DELAY_FROM_ACTVITY_RESUME_TO_PREFERRED_START:I

.field private final INSTRUMENTATION_LIST:[Ljava/lang/String;

.field private final LOG_FILE_NAME:Ljava/lang/String;

.field final MAX_CANDIDATE_LIMIT:I

.field final MAX_PREF_STARTED_EMPTY_LIMIT:I

.field final SCORE_FOR_INDIRECT_RELATION:I

.field final SCORE_FOR_PREV:I

.field final SCORE_FOR_PREV_PREV:I

.field private mBgCount:I

.field private mFlags:I

.field private mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLogger:Ljava/util/logging/Logger;

.field private mLowMemState:Z

.field private mOldAvailMemSize:J

.field private mOldBgCount:I

.field mPkgNameOfPrevActivity:Ljava/lang/String;

.field mPreferredPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPreferredStartedEmptyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPrevPkgName:Ljava/lang/String;

.field mPrevPrevPkgName:Ljava/lang/String;

.field private mSamePackage:Z

.field private mScanning:Z

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field mToStartList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTopPreferredPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

.field private mUserId:I

.field resumeLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 91
    const/4 v0, 0x1

    sput-boolean v0, DEBUG:Z

    .line 92
    const/4 v0, 0x0

    sput-boolean v0, DEBUG_LOGFILE_ENABLE:Z

    .line 93
    sget-boolean v0, DEBUG:Z

    or-int/lit8 v0, v0, 0x1

    sput-boolean v0, DEBUG_TRACE:Z

    .line 166
    const/4 v0, 0x0

    sput-object v0, mInstance:Lcom/android/server/am/PreferredPackageManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "com.android.contacts"

    aput-object v6, v5, v8

    iput-object v5, p0, BLACK_LIST:[Ljava/lang/String;

    .line 100
    const/16 v5, 0xf

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "com.sec.android.app.popupuireceiver"

    aput-object v6, v5, v8

    const-string v6, "com.sec.android.app.servicemodeapp"

    aput-object v6, v5, v9

    const-string v6, "com.sec.android.app.setupwizard"

    aput-object v6, v5, v11

    const/4 v6, 0x3

    const-string v7, "com.sec.keystringscreen"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "com.salab.act"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "com.sec.android.app.tinym"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "com.android.packageinstaller"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "com.sec.android.app.SysDump"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "com.google.android.gsf.login"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "com.android.phone"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "com.samsung.android.app.headlines"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "com.sec.android.app.videoplayer"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "com.sec.android.app.camera"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string v7, "com.sec.android.app.parser"

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string v7, "com.loaddata.ged"

    aput-object v7, v5, v6

    iput-object v5, p0, INSTRUMENTATION_LIST:[Ljava/lang/String;

    .line 118
    const-string v5, "/data/log/ppm_log.log"

    iput-object v5, p0, LOG_FILE_NAME:Ljava/lang/String;

    .line 124
    iput-boolean v8, p0, mSamePackage:Z

    .line 125
    const-wide/16 v6, -0x1

    iput-wide v6, p0, mOldAvailMemSize:J

    .line 126
    iput v10, p0, mOldBgCount:I

    .line 127
    iput v8, p0, mBgCount:I

    .line 129
    iput-boolean v8, p0, mLowMemState:Z

    .line 131
    iput v10, p0, mFlags:I

    .line 132
    iput v10, p0, mUserId:I

    .line 134
    iput-boolean v8, p0, mScanning:Z

    .line 136
    iput-object v12, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 137
    iput-object v12, p0, mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    .line 139
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, resumeLock:Ljava/lang/Object;

    .line 144
    iput v11, p0, MAX_PREF_STARTED_EMPTY_LIMIT:I

    .line 146
    const/16 v5, 0x1f4

    iput v5, p0, DELAY_FROM_ACTVITY_RESUME_TO_PREFERRED_START:I

    .line 150
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, mPreferredPackages:Ljava/util/HashMap;

    .line 153
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, mTopPreferredPackages:Ljava/util/ArrayList;

    .line 154
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, mToStartList:Ljava/util/ArrayList;

    .line 155
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, mPreferredStartedEmptyList:Ljava/util/ArrayList;

    .line 157
    const-string v5, ""

    iput-object v5, p0, mPkgNameOfPrevActivity:Ljava/lang/String;

    .line 158
    const-string v5, ""

    iput-object v5, p0, mPrevPkgName:Ljava/lang/String;

    .line 159
    const-string v5, ""

    iput-object v5, p0, mPrevPrevPkgName:Ljava/lang/String;

    .line 161
    iput v11, p0, SCORE_FOR_PREV:I

    .line 162
    iput v9, p0, SCORE_FOR_PREV_PREV:I

    .line 163
    iput v9, p0, SCORE_FOR_INDIRECT_RELATION:I

    .line 164
    const/4 v5, 0x5

    iput v5, p0, MAX_CANDIDATE_LIMIT:I

    .line 169
    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "PackageScanner"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 170
    iget-object v5, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 171
    new-instance v5, Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    iget-object v6, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;-><init>(Lcom/android/server/am/PreferredPackageManager;Landroid/os/Looper;)V

    iput-object v5, p0, mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    .line 173
    sget-boolean v5, DEBUG_LOGFILE_ENABLE:Z

    if-eqz v5, :cond_fa

    .line 174
    const-string/jumbo v5, "ppm"

    invoke-static {v5}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v5

    iput-object v5, p0, mLogger:Ljava/util/logging/Logger;

    .line 176
    :try_start_e5
    new-instance v1, Ljava/util/logging/FileHandler;

    const-string v5, "/data/log/ppm_log.log"

    invoke-direct {v1, v5}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;)V

    .line 177
    .local v1, "handler":Ljava/util/logging/Handler;
    new-instance v0, Lcom/android/server/am/PreferredPackageManager$PPMLogFormatter;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/android/server/am/PreferredPackageManager$PPMLogFormatter;-><init>(Lcom/android/server/am/PreferredPackageManager$1;)V

    .line 178
    .local v0, "formatter":Ljava/util/logging/Formatter;
    invoke-virtual {v1, v0}, Ljava/util/logging/Handler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 179
    iget-object v5, p0, mLogger:Ljava/util/logging/Logger;

    invoke-virtual {v5, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_fa} :catch_fb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e5 .. :try_end_fa} :catch_104
    .catch Ljava/lang/NullPointerException; {:try_start_e5 .. :try_end_fa} :catch_10d

    .line 189
    .end local v0    # "formatter":Ljava/util/logging/Formatter;
    .end local v1    # "handler":Ljava/util/logging/Handler;
    :cond_fa
    :goto_fa
    return-void

    .line 180
    :catch_fb
    move-exception v3

    .line 181
    .local v3, "ioe":Ljava/io/IOException;
    const-string v5, "PreferredPackage"

    const-string v6, "I/O error occurs while opening /data/log/ppm_log.log"

    invoke-static {v5, v6}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fa

    .line 182
    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_104
    move-exception v2

    .line 183
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    const-string v5, "PreferredPackage"

    const-string v6, "IllegalArgumentException occurs while opening /data/log/ppm_log.log"

    invoke-static {v5, v6}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fa

    .line 184
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_10d
    move-exception v4

    .line 185
    .local v4, "npe":Ljava/lang/NullPointerException;
    const-string v5, "PreferredPackage"

    const-string v6, "NullPointerException occurs while opening /data/log/ppm_log.log"

    invoke-static {v5, v6}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fa
.end method

.method static synthetic access$100(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/PreferredPackageManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, handleActivityResumeFinished(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;J)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/PreferredPackageManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, handleActivityPaused(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/PreferredPackageManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1}, handleStartTopPreferredPackages(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/PreferredPackageManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, handleUpdatePreferredPackage(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/PreferredPackageManager;)Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/PreferredPackageManager;

    .prologue
    .line 88
    iget-object v0, p0, mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/PreferredPackageManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/PreferredPackageManager;

    .prologue
    .line 88
    iget-boolean v0, p0, mLowMemState:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/am/PreferredPackageManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/PreferredPackageManager;

    .prologue
    .line 88
    iget-boolean v0, p0, mScanning:Z

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/am/PreferredPackageManager;
    .registers 2

    .prologue
    .line 192
    const-class v1, Lcom/android/server/am/PreferredPackageManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, mInstance:Lcom/android/server/am/PreferredPackageManager;

    if-nez v0, :cond_e

    .line 193
    new-instance v0, Lcom/android/server/am/PreferredPackageManager;

    invoke-direct {v0}, <init>()V

    sput-object v0, mInstance:Lcom/android/server/am/PreferredPackageManager;

    .line 195
    :cond_e
    sget-object v0, mInstance:Lcom/android/server/am/PreferredPackageManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 192
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 964
    const/4 v1, 0x0

    .line 965
    .local v1, "ret":Ljava/lang/String;
    const-string v0, "."

    .line 966
    .local v0, "delims":Ljava/lang/String;
    if-eqz p0, :cond_17

    .line 967
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    .local v2, "st":Ljava/util/StringTokenizer;
    :goto_a
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 969
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ret":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_a

    .line 972
    .end local v2    # "st":Ljava/util/StringTokenizer;
    :cond_17
    return-object v1
.end method

.method private handleActivityPaused(Ljava/lang/String;J)V
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "lastPauseTime"    # J

    .prologue
    .line 880
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_38

    const-string v2, "PreferredPackage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppStatus : PAUSED          "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_38
    sget-boolean v2, DEBUG_LOGFILE_ENABLE:Z

    if-eqz v2, :cond_6e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppStatus : PAUSED          "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, recordLog(Ljava/lang/String;)V

    .line 886
    :cond_6e
    const/4 v1, 0x0

    .line 887
    .local v1, "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    iget-object v3, p0, mPreferredPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 888
    :try_start_72
    iget-object v2, p0, mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    move-object v1, v0

    .line 889
    monitor-exit v3
    :try_end_7d
    .catchall {:try_start_72 .. :try_end_7d} :catchall_87

    .line 890
    if-nez v1, :cond_8a

    .line 892
    const-string v2, "PreferredPackage"

    const-string v3, "Preferred : cannot find resumed info.."

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :goto_86
    return-void

    .line 889
    :catchall_87
    move-exception v2

    :try_start_88
    monitor-exit v3
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw v2

    .line 895
    :cond_8a
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_a6

    const-string v2, "PreferredPackage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preferred : update lastPauseTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_a6
    sget-boolean v2, DEBUG_LOGFILE_ENABLE:Z

    if-eqz v2, :cond_c0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preferred : update lastPauseTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, recordLog(Ljava/lang/String;)V

    .line 897
    :cond_c0
    invoke-virtual {v1, p2, p3}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->updateLastPauseTime(J)V

    .line 898
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->setState(I)V

    goto :goto_86
.end method

.method private handleActivityResumeFinished(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 822
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_43

    const-string v4, "PreferredPackage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppStatus : RESUME FINISHED "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_43
    sget-boolean v4, DEBUG_LOGFILE_ENABLE:Z

    if-eqz v4, :cond_83

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppStatus : RESUME FINISHED "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, recordLog(Ljava/lang/String;)V

    .line 828
    :cond_83
    const/4 v1, 0x1

    .line 829
    .local v1, "diff":Z
    if-eqz p1, :cond_8f

    iget-object v4, p0, mPkgNameOfPrevActivity:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8f

    const/4 v1, 0x0

    .line 831
    :cond_8f
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_c9

    const-string v4, "PreferredPackage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PackageHistory : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mPkgNameOfPrevActivity:Ljava/lang/String;

    invoke-static {v6}, getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", diff : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_c9
    sget-boolean v4, DEBUG_LOGFILE_ENABLE:Z

    if-eqz v4, :cond_101

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PackageHistory : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mPkgNameOfPrevActivity:Ljava/lang/String;

    invoke-static {v5}, getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", diff : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, recordLog(Ljava/lang/String;)V

    .line 839
    :cond_101
    iget-object v4, p0, mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .line 840
    .local v3, "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    if-nez v3, :cond_10c

    .line 865
    :goto_10b
    return-void

    .line 841
    :cond_10c
    invoke-virtual {v3, v7}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->setState(I)V

    .line 842
    if-eqz v1, :cond_11f

    if-eqz p1, :cond_11f

    .line 844
    invoke-virtual {v3}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->increaseUsageCounting()V

    .line 845
    invoke-direct {p0, p1}, updateIndirectScore(Ljava/lang/String;)V

    .line 846
    invoke-direct {p0, p1}, increaseScore(Ljava/lang/String;)V

    .line 847
    invoke-direct {p0, p1, v7}, removeEmptyList(Ljava/lang/String;Z)V

    .line 850
    :cond_11f
    if-eqz p1, :cond_144

    iget-object v4, p0, mPkgNameOfPrevActivity:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_144

    .line 851
    iget-object v4, p0, mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 852
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 853
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "name"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 855
    iget-object v4, p0, mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v2, v6, v7}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 857
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_144
    iput-object p1, p0, mPkgNameOfPrevActivity:Ljava/lang/String;

    .line 864
    invoke-direct {p0, v3}, reportOnePprRecord(Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;)V

    goto :goto_10b
.end method

.method private handleStartTopPreferredPackages(Ljava/lang/String;)V
    .registers 14
    .param p1, "resumedPkgName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x40

    const/4 v8, 0x0

    .line 693
    sget-boolean v1, DEBUG_TRACE:Z

    if-eqz v1, :cond_c

    const-string v1, "PPM_startTop"

    invoke-static {v10, v11, v1, v8}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 695
    :cond_c
    iget-boolean v1, p0, mLowMemState:Z

    if-eqz v1, :cond_25

    .line 696
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_1b

    const-string v1, "PreferredPackage"

    const-string v4, "Not enough bg procs. Don\'t start preferred procs"

    invoke-static {v1, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_1b
    sget-boolean v1, DEBUG_LOGFILE_ENABLE:Z

    if-eqz v1, :cond_24

    const-string v1, "Not enough bg procs. Don\'t start preferred procs"

    invoke-virtual {p0, v1}, recordLog(Ljava/lang/String;)V

    .line 722
    :cond_24
    :goto_24
    return-void

    .line 700
    :cond_25
    const/4 v1, 0x1

    iput-boolean v1, p0, mScanning:Z

    .line 701
    iget v1, p0, mBgCount:I

    iput v1, p0, mOldBgCount:I

    .line 702
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 704
    .local v2, "startTime":J
    invoke-direct {p0, p1}, selectTopPreferredPkg(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_4e

    .line 705
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_42

    const-string v1, "PreferredPackage"

    const-string v4, "Error selecting TopPP"

    invoke-static {v1, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_42
    sget-boolean v1, DEBUG_LOGFILE_ENABLE:Z

    if-eqz v1, :cond_4b

    const-string v1, "Error selecting TopPP"

    invoke-virtual {p0, v1}, recordLog(Ljava/lang/String;)V

    .line 707
    :cond_4b
    iput-boolean v8, p0, mScanning:Z

    goto :goto_24

    .line 711
    :cond_4e
    iget-object v1, p0, mTopPreferredPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 713
    .local v0, "length":I
    invoke-virtual {p0}, startPreferredPackages()V

    .line 715
    const-string v1, "PreferredPackage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "total bgcount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mBgCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", TopPP size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mTopPreferredPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", spent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    sget-boolean v1, DEBUG_LOGFILE_ENABLE:Z

    if-eqz v1, :cond_c4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "total bgcount: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, mBgCount:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " TopPP size : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, mTopPreferredPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, recordLog(Ljava/lang/String;)V

    .line 720
    :cond_c4
    iput-boolean v8, p0, mScanning:Z

    .line 721
    sget-boolean v1, DEBUG_TRACE:Z

    if-eqz v1, :cond_24

    const-string v1, "PPM_startTop"

    invoke-static {v10, v11, v1, v8}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    goto/16 :goto_24
.end method

.method private handleUpdatePreferredPackage(Ljava/lang/String;I)V
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 902
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 903
    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "process starts :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    const/4 v1, 0x0

    .line 905
    .local v1, "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    iget-object v4, p0, mPreferredPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 906
    :try_start_2e
    iget-object v3, p0, mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    move-object v1, v0

    .line 907
    monitor-exit v4
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_59

    .line 908
    if-nez v1, :cond_5c

    .line 910
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_58

    .line 911
    const-string v3, " -> cannot find in PP info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    const-string v3, "PreferredPackage"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    sget-boolean v3, DEBUG_LOGFILE_ENABLE:Z

    if-eqz v3, :cond_58

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, recordLog(Ljava/lang/String;)V

    .line 926
    :cond_58
    :goto_58
    return-void

    .line 907
    :catchall_59
    move-exception v3

    :try_start_5a
    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v3

    .line 918
    :cond_5c
    iput p2, v1, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->pid:I

    .line 919
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->setState(I)V

    .line 920
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_58

    .line 921
    const-string v3, " -> State updated as BINDED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    const-string v3, "PreferredPackage"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    sget-boolean v3, DEBUG_LOGFILE_ENABLE:Z

    if-eqz v3, :cond_58

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, recordLog(Ljava/lang/String;)V

    goto :goto_58
.end method

.method private increaseScore(Ljava/lang/String;)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 976
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_52

    const-string v2, "PreferredPackage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scoring : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mPrevPrevPkgName:Ljava/lang/String;

    invoke-static {v4}, getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mPrevPkgName:Ljava/lang/String;

    invoke-static {v4}, getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_52
    sget-boolean v2, DEBUG_LOGFILE_ENABLE:Z

    if-eqz v2, :cond_a2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scoring : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mPrevPrevPkgName:Ljava/lang/String;

    invoke-static {v3}, getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mPrevPkgName:Ljava/lang/String;

    invoke-static {v3}, getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, recordLog(Ljava/lang/String;)V

    .line 984
    :cond_a2
    move-object v1, p1

    .line 985
    .local v1, "resumedPkgName":Ljava/lang/String;
    if-eqz v1, :cond_db

    .line 987
    iget-object v2, p0, mPrevPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bd

    .line 988
    iget-object v2, p0, mPreferredPackages:Ljava/util/HashMap;

    iget-object v3, p0, mPrevPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .line 989
    .local v0, "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    if-eqz v0, :cond_bd

    .line 990
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->doIncreaseScore(Ljava/lang/String;I)V

    .line 992
    .end local v0    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    :cond_bd
    iget-object v2, p0, mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d5

    .line 993
    iget-object v2, p0, mPreferredPackages:Ljava/util/HashMap;

    iget-object v3, p0, mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .line 994
    .restart local v0    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    if-eqz v0, :cond_d5

    .line 995
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->doIncreaseScore(Ljava/lang/String;I)V

    .line 997
    .end local v0    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    :cond_d5
    iget-object v2, p0, mPrevPkgName:Ljava/lang/String;

    iput-object v2, p0, mPrevPrevPkgName:Ljava/lang/String;

    .line 998
    iput-object v1, p0, mPrevPkgName:Ljava/lang/String;

    .line 1000
    :cond_db
    return-void
.end method

.method private isBlackList(Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 753
    iget-object v0, p0, BLACK_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_4
    if-ge v1, v2, :cond_13

    aget-object v3, v0, v1

    .line 754
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    .line 756
    .end local v3    # "str":Ljava/lang/String;
    :goto_f
    return v4

    .line 753
    .restart local v3    # "str":Ljava/lang/String;
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 756
    .end local v3    # "str":Ljava/lang/String;
    :cond_13
    const/4 v4, 0x0

    goto :goto_f
.end method

.method private isInstrumentList(Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 760
    iget-object v0, p0, INSTRUMENTATION_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_4
    if-ge v1, v2, :cond_13

    aget-object v3, v0, v1

    .line 761
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    .line 763
    .end local v3    # "str":Ljava/lang/String;
    :goto_f
    return v4

    .line 760
    .restart local v3    # "str":Ljava/lang/String;
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 763
    .end local v3    # "str":Ljava/lang/String;
    :cond_13
    const/4 v4, 0x0

    goto :goto_f
.end method

.method private removeEmptyList(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "update"    # Z

    .prologue
    .line 1003
    iget-object v1, p0, mPreferredStartedEmptyList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1004
    :try_start_3
    iget-object v0, p0, mPreferredStartedEmptyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1005
    iget-object v0, p0, mPreferredStartedEmptyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1007
    :cond_10
    if-eqz p2, :cond_17

    .line 1008
    iget-object v0, p0, mPreferredStartedEmptyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    :cond_17
    monitor-exit v1

    .line 1010
    return-void

    .line 1009
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private reportOnePprRecord(Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;)V
    .registers 6
    .param p1, "ppr"    # Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .prologue
    .line 868
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "PreferredPackage"

    const-string v1, "***********************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_b
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_32

    const-string v0, "PreferredPackage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "report one ppr **"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "** to USS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->getLastPauseTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_48

    .line 872
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->lastPauseTime:J

    .line 875
    :cond_48
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_63

    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v0, :cond_63

    invoke-virtual {p1}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_63

    .line 876
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/usage/UsageStatsManagerInternal;->reportPprChange(Ljava/lang/Object;)V

    .line 877
    :cond_63
    return-void
.end method

.method private selectBestRelationPkg(Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;)Ljava/lang/String;
    .registers 13
    .param p1, "cur"    # Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .prologue
    const/4 v7, 0x5

    const/4 v8, 0x0

    .line 597
    iget-object v9, p0, mPrevPrevPkgName:Ljava/lang/String;

    if-nez v9, :cond_8

    move-object v5, v8

    .line 636
    :goto_7
    return-object v5

    .line 599
    :cond_8
    iget-object v9, p0, mPreferredPackages:Ljava/util/HashMap;

    iget-object v10, p0, mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .line 600
    .local v3, "prev":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    if-nez v3, :cond_30

    .line 601
    const-string v7, "PreferredPackage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cannot find package record for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, mPrevPkgName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 602
    goto :goto_7

    .line 605
    :cond_30
    const/4 v5, 0x0

    .line 606
    .local v5, "topPkg":Ljava/lang/String;
    iget-object v9, p1, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    monitor-enter v9

    .line 607
    const/4 v6, 0x0

    .line 608
    .local v6, "topScore":I
    :try_start_35
    iget-object v10, p1, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 609
    .local v2, "limit":I
    if-nez v2, :cond_40

    monitor-exit v9

    move-object v5, v8

    goto :goto_7

    .line 611
    :cond_40
    if-ge v2, v7, :cond_ae

    .line 612
    :goto_42
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_43
    if-ge v1, v2, :cond_b0

    .line 613
    iget-object v7, p1, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/PreferredScoreInfo;

    iget-object v0, v7, Landroid/app/usage/PreferredScoreInfo;->pkgName:Ljava/lang/String;

    .line 614
    .local v0, "candidate":Ljava/lang/String;
    iget-object v7, p1, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7, v0}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->getIndirectScore(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 616
    .local v4, "score":I
    sget-boolean v7, DEBUG:Z

    if-eqz v7, :cond_7f

    const-string v7, "PreferredPackage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "indirect scoring : selectBestRelationPkg candidate = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " score="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_7f
    sget-boolean v7, DEBUG_LOGFILE_ENABLE:Z

    if-eqz v7, :cond_a7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "indirect scoring : selectBestRelationPkg candidate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " score="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, recordLog(Ljava/lang/String;)V

    .line 621
    :cond_a7
    if-ge v6, v4, :cond_ab

    .line 622
    move-object v5, v0

    .line 623
    move v6, v4

    .line 612
    :cond_ab
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .end local v0    # "candidate":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v4    # "score":I
    :cond_ae
    move v2, v7

    .line 611
    goto :goto_42

    .line 629
    .restart local v1    # "i":I
    :cond_b0
    if-nez v5, :cond_d5

    .line 630
    sget-boolean v7, DEBUG:Z

    if-eqz v7, :cond_bd

    const-string v7, "PreferredPackage"

    const-string v8, "We cannot find package that meet two conditions.. so return top score package"

    invoke-static {v7, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_bd
    sget-boolean v7, DEBUG_LOGFILE_ENABLE:Z

    if-eqz v7, :cond_c6

    const-string v7, "We cannot find package that meet two conditions.. so return top score package"

    invoke-virtual {p0, v7}, recordLog(Ljava/lang/String;)V

    .line 632
    :cond_c6
    iget-object v7, p1, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/PreferredScoreInfo;

    iget-object v7, v7, Landroid/app/usage/PreferredScoreInfo;->pkgName:Ljava/lang/String;

    monitor-exit v9

    move-object v5, v7

    goto/16 :goto_7

    .line 634
    :cond_d5
    monitor-exit v9

    goto/16 :goto_7

    .end local v1    # "i":I
    .end local v2    # "limit":I
    :catchall_d8
    move-exception v7

    monitor-exit v9
    :try_end_da
    .catchall {:try_start_35 .. :try_end_da} :catchall_d8

    throw v7
.end method

.method private selectTopPreferredPkg(Ljava/lang/String;)I
    .registers 15
    .param p1, "resumedPkgName"    # Ljava/lang/String;

    .prologue
    .line 640
    sget-boolean v9, DEBUG_TRACE:Z

    if-eqz v9, :cond_c

    const-wide/16 v10, 0x40

    const-string v9, "PPM_selectTop"

    const/4 v12, 0x0

    invoke-static {v10, v11, v9, v12}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 641
    :cond_c
    const/4 v2, 0x0

    .line 643
    .local v2, "addedCount":I
    iget-object v9, p0, mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .line 644
    .local v3, "currentPkgPpr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    if-nez v3, :cond_19

    const/4 v9, -0x1

    .line 689
    :goto_18
    return v9

    .line 646
    :cond_19
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 647
    .local v8, "topPackageNames":Ljava/lang/StringBuilder;
    iget-object v10, p0, mTopPreferredPackages:Ljava/util/ArrayList;

    monitor-enter v10

    .line 648
    :try_start_23
    iget-object v9, p0, mTopPreferredPackages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 649
    invoke-direct {p0, v3}, selectBestRelationPkg(Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;)Ljava/lang/String;

    move-result-object v7

    .line 650
    .local v7, "topPackage":Ljava/lang/String;
    sget-boolean v9, DEBUG:Z

    if-eqz v9, :cond_49

    const-string v9, "PreferredPackage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "selected package using relation is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_49
    sget-boolean v9, DEBUG_LOGFILE_ENABLE:Z

    if-eqz v9, :cond_64

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "selected package using relation is "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, recordLog(Ljava/lang/String;)V

    .line 654
    :cond_64
    if-eqz v7, :cond_a5

    .line 655
    iget-object v9, p0, mTopPreferredPackages:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    sget-boolean v9, DEBUG:Z

    if-eqz v9, :cond_89

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "(S), "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    :cond_89
    add-int/lit8 v2, v2, 0x1

    .line 659
    iget-object v9, p0, mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .line 660
    .local v6, "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    if-eqz v6, :cond_a5

    iget v9, v6, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->state:I

    const/4 v11, 0x4

    if-ne v9, v11, :cond_a5

    .line 661
    iget-object v11, p0, mToStartList:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_9d
    .catchall {:try_start_23 .. :try_end_9d} :catchall_145

    .line 662
    :try_start_9d
    iget-object v9, p0, mToStartList:Ljava/util/ArrayList;

    iget-object v12, v6, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    monitor-exit v11
    :try_end_a5
    .catchall {:try_start_9d .. :try_end_a5} :catchall_142

    .line 668
    .end local v6    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    :cond_a5
    :try_start_a5
    iget-object v11, p0, mPreferredStartedEmptyList:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_145

    .line 669
    :try_start_a8
    iget-object v9, p0, mPreferredStartedEmptyList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 670
    .local v0, "N":I
    if-lez v0, :cond_f3

    .line 671
    const/4 v1, 0x0

    .line 672
    .local v1, "addedCnt":I
    add-int/lit8 v4, v0, -0x1

    .local v4, "i":I
    :goto_b3
    if-ltz v4, :cond_f3

    .line 673
    iget-object v9, p0, mPreferredStartedEmptyList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 674
    .local v5, "pkg":Ljava/lang/String;
    iget-object v9, p0, mTopPreferredPackages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f0

    invoke-direct {p0, v5}, isBlackList(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f0

    .line 675
    iget-object v9, p0, mTopPreferredPackages:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    add-int/lit8 v1, v1, 0x1

    .line 677
    sget-boolean v9, DEBUG:Z

    if-eqz v9, :cond_f0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "(E), "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    :cond_f0
    const/4 v9, 0x2

    if-lt v1, v9, :cond_148

    .line 682
    .end local v1    # "addedCnt":I
    .end local v4    # "i":I
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_f3
    monitor-exit v11
    :try_end_f4
    .catchall {:try_start_a8 .. :try_end_f4} :catchall_14c

    .line 684
    :try_start_f4
    sget-boolean v9, DEBUG:Z

    if-eqz v9, :cond_114

    const-string v9, "PreferredPackage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mTopPreferredPackages : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_114
    sget-boolean v9, DEBUG_LOGFILE_ENABLE:Z

    if-eqz v9, :cond_132

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mTopPreferredPackages : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, recordLog(Ljava/lang/String;)V

    .line 686
    :cond_132
    monitor-exit v10
    :try_end_133
    .catchall {:try_start_f4 .. :try_end_133} :catchall_145

    .line 688
    sget-boolean v9, DEBUG_TRACE:Z

    if-eqz v9, :cond_13f

    const-wide/16 v10, 0x40

    const-string v9, "PPM_selectTop"

    const/4 v12, 0x0

    invoke-static {v10, v11, v9, v12}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 689
    :cond_13f
    const/4 v9, 0x0

    goto/16 :goto_18

    .line 663
    .end local v0    # "N":I
    .restart local v6    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    :catchall_142
    move-exception v9

    :try_start_143
    monitor-exit v11
    :try_end_144
    .catchall {:try_start_143 .. :try_end_144} :catchall_142

    :try_start_144
    throw v9

    .line 686
    .end local v6    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    .end local v7    # "topPackage":Ljava/lang/String;
    :catchall_145
    move-exception v9

    monitor-exit v10
    :try_end_147
    .catchall {:try_start_144 .. :try_end_147} :catchall_145

    throw v9

    .line 672
    .restart local v0    # "N":I
    .restart local v1    # "addedCnt":I
    .restart local v4    # "i":I
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v7    # "topPackage":Ljava/lang/String;
    :cond_148
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_b3

    .line 682
    .end local v0    # "N":I
    .end local v1    # "addedCnt":I
    .end local v4    # "i":I
    .end local v5    # "pkg":Ljava/lang/String;
    :catchall_14c
    move-exception v9

    :try_start_14d
    monitor-exit v11
    :try_end_14e
    .catchall {:try_start_14d .. :try_end_14e} :catchall_14c

    :try_start_14e
    throw v9
    :try_end_14f
    .catchall {:try_start_14e .. :try_end_14f} :catchall_145
.end method

.method private triggerScannerPackageByBGCountChecked(Ljava/lang/String;)V
    .registers 4
    .param p1, "resumedPkgName"    # Ljava/lang/String;

    .prologue
    .line 571
    new-instance v0, Lcom/android/server/am/PreferredPackageManager$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/PreferredPackageManager$2;-><init>(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;)V

    .line 593
    .local v0, "checkAndTrigger":Ljava/lang/Runnable;
    iget-object v1, p0, mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 594
    return-void
.end method

.method private updateIndirectScore(Ljava/lang/String;)V
    .registers 6
    .param p1, "curPkg"    # Ljava/lang/String;

    .prologue
    .line 931
    iget-object v1, p0, mPrevPrevPkgName:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, mPrevPkgName:Ljava/lang/String;

    if-nez v1, :cond_5b

    .line 932
    :cond_8
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_32

    const-string v1, "PreferredPackage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "indirect scoring : updateIndirectScore() mPrevPrev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPrev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mPrevPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_32
    sget-boolean v1, DEBUG_LOGFILE_ENABLE:Z

    if-eqz v1, :cond_5a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "indirect scoring : updateIndirectScore() mPrevPrev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPrev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mPrevPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, recordLog(Ljava/lang/String;)V

    .line 961
    :cond_5a
    :goto_5a
    return-void

    .line 940
    :cond_5b
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_8f

    .line 941
    const-string v1, "PreferredPackage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "indirect scoring : updateIndirectScore() mPrevPrevPkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPrevPkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mPrevPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_8f
    sget-boolean v1, DEBUG_LOGFILE_ENABLE:Z

    if-eqz v1, :cond_c1

    .line 945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "indirect scoring : updateIndirectScore() mPrevPrevPkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPrevPkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mPrevPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, recordLog(Ljava/lang/String;)V

    .line 949
    :cond_c1
    iget-object v1, p0, mPreferredPackages:Ljava/util/HashMap;

    iget-object v2, p0, mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .line 950
    .local v0, "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    if-nez v0, :cond_ed

    .line 951
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_5a

    const-string v1, "PreferredPackage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find package record for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 954
    :cond_ed
    iget-object v1, v0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_115

    .line 955
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_5a

    const-string v1, "PreferredPackage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A->B->A pattern. Skip indirect scoring! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 960
    :cond_115
    iget-object v1, p0, mPrevPkgName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->doIncreaseIndirectScore(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_5a
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1119
    const-string v4, "ACTIVITY MANAGER SERVICES (dumpsys activity preferred)"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1122
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Dump Records : \n\n--- Counts : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1123
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1124
    .local v1, "k":I
    iget-object v4, p0, mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .line 1125
    .local v2, "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-static {v5}, getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    add-int/lit8 v1, v1, 0x1

    .line 1127
    goto :goto_17

    .line 1128
    .end local v2    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    :cond_4c
    const/4 v1, 0x0

    .line 1129
    const-string v4, "\n\n--- Scores  \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    iget-object v4, p0, mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .line 1132
    .restart local v2    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-static {v5}, getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DirectScore     : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->getScoreListString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IndirectScore   : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->getIndirectScoreListString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    add-int/lit8 v1, v1, 0x1

    .line 1136
    goto :goto_5c

    .line 1138
    .end local v2    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    :cond_d1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1140
    invoke-virtual {p0}, writePackagesInfoToGoogleXml()V

    .line 1141
    return-void
.end method

.method protected init(Lcom/android/server/am/ActivityManagerService;II)V
    .registers 8
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 199
    iput-object p1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    .line 200
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 201
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 202
    iget-object v1, p0, mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 204
    iput p2, p0, mFlags:I

    .line 205
    iput p3, p0, mUserId:I

    .line 207
    invoke-virtual {p0}, updatePreferredPackagePolicy()V

    .line 209
    invoke-virtual {p0}, readPackagesFromGoogleXml()V

    .line 210
    return-void
.end method

.method isTopPreferredPackage(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 744
    iget-object v0, p0, mTopPreferredPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    .line 745
    iget-object v1, p0, mTopPreferredPackages:Ljava/util/ArrayList;

    monitor-enter v1

    .line 746
    :try_start_7
    iget-object v0, p0, mTopPreferredPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    .line 749
    :goto_e
    return v0

    .line 747
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0

    .line 749
    :cond_12
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public notifyActivityStatus(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 19
    .param p1, "kind"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/Object;
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    .line 767
    move-object/from16 v9, p3

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    .line 768
    .local v9, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p2, :cond_e

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, isInstrumentList(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_18

    :cond_e
    if-eqz v9, :cond_3b

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v10}, isInstrumentList(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3b

    .line 770
    :cond_18
    move-object/from16 v6, p2

    .line 771
    .local v6, "n":Ljava/lang/String;
    if-eqz v9, :cond_1e

    iget-object v6, v9, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 772
    :cond_1e
    sget-boolean v10, DEBUG:Z

    if-eqz v10, :cond_3a

    const-string v10, "PreferredPackage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is in instrumentation list.. so skip it"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    .end local v6    # "n":Ljava/lang/String;
    :cond_3a
    :goto_3a
    return-void

    .line 776
    :cond_3b
    move-object/from16 v7, p2

    .line 777
    .local v7, "pkgName":Ljava/lang/String;
    if-eqz v9, :cond_51

    .line 778
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_3a

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v10

    if-nez v10, :cond_3a

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v10

    if-nez v10, :cond_3a

    .line 779
    iget-object v7, v9, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 782
    :cond_51
    const/4 v10, 0x3

    if-ne p1, v10, :cond_e1

    .line 783
    sget-boolean v10, DEBUG_LOGFILE_ENABLE:Z

    if-eqz v10, :cond_8a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AppStatus : RESUME STARTED  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "(in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, recordLog(Ljava/lang/String;)V

    .line 786
    :cond_8a
    iget-object v11, p0, mPreferredPackages:Ljava/util/HashMap;

    monitor-enter v11

    .line 787
    :try_start_8d
    iget-object v10, p0, mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .line 788
    .local v8, "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    if-nez v8, :cond_db

    if-eqz v9, :cond_db

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v10

    if-nez v10, :cond_db

    .line 789
    new-instance v8, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .end local v8    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    invoke-direct {v8, p0, v7}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;-><init>(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;)V

    .line 790
    .restart local v8    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v10, v8, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->pid:I

    .line 791
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v10, v8, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->uid:I

    .line 792
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-wide v12, v10, Lcom/android/server/am/ProcessRecord;->lastPss:J

    iput-wide v12, v8, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->lastPss:J

    .line 793
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->processName:Ljava/lang/String;

    .line 794
    iget-object v10, p0, mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v10, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    sget-boolean v10, DEBUG:Z

    if-eqz v10, :cond_db

    const-string v10, "PreferredPackage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "New app started : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_db
    monitor-exit v11

    goto/16 :goto_3a

    .end local v8    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    :catchall_de
    move-exception v10

    monitor-exit v11
    :try_end_e0
    .catchall {:try_start_8d .. :try_end_e0} :catchall_de

    throw v10

    .line 801
    :cond_e1
    iget-object v10, p0, mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    invoke-static {v10, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 802
    .local v3, "msg":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 803
    .local v2, "b":Landroid/os/Bundle;
    const-string v10, "name"

    invoke-virtual {v2, v10, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    packed-switch p1, :pswitch_data_116

    .line 817
    :goto_f4
    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 818
    iget-object v10, p0, mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    invoke-virtual {v10, v3}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3a

    .line 807
    :pswitch_fe
    const-string/jumbo v10, "reason"

    move-object/from16 v0, p4

    invoke-virtual {v2, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f4

    .line 810
    :pswitch_107
    const-wide/16 v4, 0x0

    .line 811
    .local v4, "lastPauseTime":J
    if-eqz v9, :cond_10f

    .line 812
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 814
    :cond_10f
    const-string v10, "lastPauseTime"

    invoke-virtual {v2, v10, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_f4

    .line 805
    nop

    :pswitch_data_116
    .packed-switch 0x4
        :pswitch_fe
        :pswitch_107
    .end packed-switch
.end method

.method notifyMemoryAndBGProcStatus(ZI)V
    .registers 6
    .param p1, "newState"    # Z
    .param p2, "bgProcessCount"    # I

    .prologue
    .line 725
    iget-boolean v0, p0, mLowMemState:Z

    if-eq v0, p1, :cond_46

    .line 726
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_25

    const-string v1, "PreferredPackage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set memory state to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_49

    const-string v0, "low mem state"

    :goto_1a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_25
    sget-boolean v0, DEBUG_LOGFILE_ENABLE:Z

    if-eqz v0, :cond_44

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set memory state to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_4c

    const-string v0, "low mem state"

    :goto_39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, recordLog(Ljava/lang/String;)V

    .line 728
    :cond_44
    iput-boolean p1, p0, mLowMemState:Z

    .line 730
    :cond_46
    iput p2, p0, mBgCount:I

    .line 731
    return-void

    .line 726
    :cond_49
    const-string v0, "normal state"

    goto :goto_1a

    .line 727
    :cond_4c
    const-string v0, "normal state"

    goto :goto_39
.end method

.method processDiedPreferred(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "killedByAMS"    # Z

    .prologue
    const/4 v5, 0x4

    .line 1013
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1014
    .local v2, "sb":Ljava/lang/StringBuilder;
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_48

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppStatus : DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " byAMS : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    :cond_48
    const/4 v1, 0x0

    .line 1018
    .local v1, "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    iget-object v4, p0, mPreferredPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 1019
    :try_start_4c
    iget-object v3, p0, mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    move-object v1, v0

    .line 1020
    monitor-exit v4
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_6c

    .line 1022
    if-nez v1, :cond_6f

    .line 1024
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_6b

    .line 1025
    const-string v3, " -> cannot find in PP info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    const-string v3, "PreferredPackage"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_6b
    :goto_6b
    return-void

    .line 1020
    :catchall_6c
    move-exception v3

    :try_start_6d
    monitor-exit v4
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v3

    .line 1032
    :cond_6f
    iget v3, v1, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->state:I

    if-eq v3, v5, :cond_6b

    .line 1034
    invoke-virtual {v1, v5}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->setState(I)V

    .line 1035
    const/4 v3, -0x1

    iput v3, v1, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->pid:I

    .line 1036
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_96

    .line 1037
    const-string v3, " -> State updated as DIED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    const-string v3, "PreferredPackage"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    sget-boolean v3, DEBUG_LOGFILE_ENABLE:Z

    if-eqz v3, :cond_96

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, recordLog(Ljava/lang/String;)V

    .line 1041
    :cond_96
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, removeEmptyList(Ljava/lang/String;Z)V

    goto :goto_6b
.end method

.method readPackagesFromGoogleXml()V
    .registers 32

    .prologue
    .line 1053
    :try_start_0
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_e

    const-string v4, "PreferredPackage"

    const-string/jumbo v28, "readPackagesFromGoogleXml !!"

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_e
    const/4 v3, 0x0

    .line 1056
    .local v3, "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1057
    .local v20, "now":J
    const-wide/32 v28, 0x48190800

    sub-long v10, v20, v28

    .line 1059
    .local v10, "beginTime":J
    move-object/from16 v0, p0

    iget-object v4, v0, mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    if-nez v4, :cond_33

    .line 1060
    move-object/from16 v0, p0

    iget-object v4, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v28, "usagestats"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStatsManager;

    move-object/from16 v0, p0

    iput-object v4, v0, mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    .line 1061
    :cond_33
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_57

    const-string v4, "PreferredPackage"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "mUsageStatsManager is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_57
    move-object/from16 v0, p0

    iget-object v4, v0, mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    move-wide/from16 v0, v20

    invoke-virtual {v4, v10, v11, v0, v1}, Landroid/app/usage/UsageStatsManager;->queryPpmInfo(JJ)Ljava/util/List;

    move-result-object v18

    .line 1066
    .local v18, "mStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    new-instance v4, Lcom/android/server/am/PreferredPackageManager$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/am/PreferredPackageManager$3;-><init>(Lcom/android/server/am/PreferredPackageManager;)V

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1076
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_71
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/usage/UsageStats;

    .line 1077
    .local v25, "tmp":Landroid/app/usage/UsageStats;
    invoke-virtual/range {v25 .. v25}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1078
    .local v5, "pkg":Ljava/lang/String;
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_a1

    const-string v4, "PreferredPackage"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "UsageStats list is  !!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_a1
    invoke-virtual/range {v25 .. v25}, Landroid/app/usage/UsageStats;->getLaunchCount()J

    move-result-wide v12

    .line 1080
    .local v12, "count":J
    invoke-virtual/range {v25 .. v25}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v26

    .line 1081
    .local v26, "usageTime":J
    invoke-virtual/range {v25 .. v25}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v6

    .line 1082
    .local v6, "lastPauseTime":J
    invoke-virtual/range {v25 .. v25}, Landroid/app/usage/UsageStats;->getScoreListString()Ljava/lang/String;

    move-result-object v8

    .line 1083
    .local v8, "scoreListString":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Landroid/app/usage/UsageStats;->getIndirectScoreMap()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    .line 1085
    .local v24, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mPreferredPackages:Ljava/util/HashMap;

    move-object/from16 v28, v0

    monitor-enter v28
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c0} :catch_17a

    .line 1086
    :try_start_c0
    move-object/from16 v0, p0

    iget-object v4, v0, mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    :try_end_ca
    .catchall {:try_start_c0 .. :try_end_ca} :catchall_188

    .line 1087
    .end local v3    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    .local v22, "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    if-nez v22, :cond_17f

    .line 1088
    :try_start_cc
    new-instance v3, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;-><init>(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_d3
    .catchall {:try_start_cc .. :try_end_d3} :catchall_18b

    .line 1089
    .end local v22    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    .restart local v3    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    :try_start_d3
    move-object/from16 v0, p0

    iget-object v4, v0, mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    :goto_da
    monitor-exit v28
    :try_end_db
    .catchall {:try_start_d3 .. :try_end_db} :catchall_188

    .line 1096
    :try_start_db
    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_df
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_71

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 1097
    .local v9, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1100
    .local v19, "pkgName":Ljava/lang/String;
    iget-object v4, v3, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->indirectScoreMap:Ljava/util/HashMap;

    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_121

    const-string v4, "PreferredPackage"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "UsageStats New indirect score"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_121
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    .line 1106
    .local v14, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;"
    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_12f
    :goto_12f
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_df

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/usage/PreferredScoreInfo;

    .line 1107
    .local v23, "psi":Landroid/app/usage/PreferredScoreInfo;
    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/app/usage/PreferredScoreInfo;->pkgName:Ljava/lang/String;

    new-instance v28, Landroid/app/usage/PreferredScoreInfo;

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/usage/PreferredScoreInfo;->pkgName:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/app/usage/PreferredScoreInfo;->score:I

    move/from16 v30, v0

    invoke-direct/range {v28 .. v30}, Landroid/app/usage/PreferredScoreInfo;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v28

    invoke-virtual {v14, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_12f

    const-string v4, "PreferredPackage"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "UsageStats New score info"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/usage/PreferredScoreInfo;->pkgName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_179} :catch_17a

    goto :goto_12f

    .line 1112
    .end local v3    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "lastPauseTime":J
    .end local v8    # "scoreListString":Ljava/lang/String;
    .end local v9    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;>;"
    .end local v10    # "beginTime":J
    .end local v12    # "count":J
    .end local v14    # "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;"
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "mStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    .end local v19    # "pkgName":Ljava/lang/String;
    .end local v20    # "now":J
    .end local v23    # "psi":Landroid/app/usage/PreferredScoreInfo;
    .end local v24    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;>;>;"
    .end local v25    # "tmp":Landroid/app/usage/UsageStats;
    .end local v26    # "usageTime":J
    :catch_17a
    move-exception v2

    .line 1113
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1116
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_17e
    return-void

    .line 1091
    .restart local v5    # "pkg":Ljava/lang/String;
    .restart local v6    # "lastPauseTime":J
    .restart local v8    # "scoreListString":Ljava/lang/String;
    .restart local v10    # "beginTime":J
    .restart local v12    # "count":J
    .restart local v18    # "mStats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    .restart local v20    # "now":J
    .restart local v22    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    .restart local v24    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Landroid/app/usage/PreferredScoreInfo;>;>;>;"
    .restart local v25    # "tmp":Landroid/app/usage/UsageStats;
    .restart local v26    # "usageTime":J
    :cond_17f
    :try_start_17f
    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->updateLastPauseTime(J)V
    :try_end_184
    .catchall {:try_start_17f .. :try_end_184} :catchall_18b

    move-object/from16 v3, v22

    .end local v22    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    .restart local v3    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    goto/16 :goto_da

    .line 1093
    :catchall_188
    move-exception v4

    :goto_189
    :try_start_189
    monitor-exit v28
    :try_end_18a
    .catchall {:try_start_189 .. :try_end_18a} :catchall_188

    :try_start_18a
    throw v4
    :try_end_18b
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_18b} :catch_17a

    .end local v3    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    .restart local v22    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    :catchall_18b
    move-exception v4

    move-object/from16 v3, v22

    .end local v22    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    .restart local v3    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    goto :goto_189
.end method

.method recordLog(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 508
    sget-boolean v0, DEBUG_LOGFILE_ENABLE:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, mLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 509
    :cond_b
    return-void
.end method

.method registerReceiver()V
    .registers 4

    .prologue
    .line 513
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 514
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 515
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 516
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 517
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 518
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Lcom/android/server/am/PreferredPackageManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/PreferredPackageManager$1;-><init>(Lcom/android/server/am/PreferredPackageManager;)V

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 532
    return-void
.end method

.method setPackagePid(Ljava/lang/String;I)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 734
    invoke-direct {p0, p1}, isBlackList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 741
    :goto_6
    return-void

    .line 735
    :cond_7
    iget-object v2, p0, mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 736
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 737
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "name"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string/jumbo v2, "pid"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 739
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 740
    iget-object v2, p0, mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6
.end method

.method startPreferredPackages()V
    .registers 11

    .prologue
    .line 535
    iget-object v7, p0, mToStartList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 536
    :try_start_3
    iget-object v6, p0, mToStartList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_94

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 537
    .local v3, "pkg":Ljava/lang/String;
    const-string v6, "PreferredPackage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "start package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_60

    .line 539
    :try_start_2e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    iget v8, p0, mFlags:I

    iget v9, p0, mUserId:I

    invoke-interface {v6, v3, v8, v9}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 545
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_9

    .line 547
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 548
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_9

    .line 550
    iget-object v8, p0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_43} :catch_66
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_43} :catch_6b
    .catchall {:try_start_2e .. :try_end_43} :catchall_60

    .line 551
    :try_start_43
    iget-object v6, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService;->realStartPreferredPackages(Landroid/content/pm/ApplicationInfo;)V

    .line 552
    monitor-exit v8
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_63

    .line 554
    :try_start_49
    iget-object v8, p0, mPreferredPackages:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4c} :catch_66
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_4c} :catch_6b
    .catchall {:try_start_49 .. :try_end_4c} :catchall_60

    .line 555
    :try_start_4c
    iget-object v6, p0, mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    .line 556
    .local v4, "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    if-eqz v4, :cond_5a

    .line 557
    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->setState(I)V

    .line 558
    :cond_5a
    monitor-exit v8
    :try_end_5b
    .catchall {:try_start_4c .. :try_end_5b} :catchall_68

    .line 564
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v4    # "ppr":Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;
    :goto_5b
    const/4 v6, 0x1

    :try_start_5c
    invoke-direct {p0, v3, v6}, removeEmptyList(Ljava/lang/String;Z)V

    goto :goto_9

    .line 567
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "pkg":Ljava/lang/String;
    :catchall_60
    move-exception v6

    monitor-exit v7
    :try_end_62
    .catchall {:try_start_5c .. :try_end_62} :catchall_60

    throw v6

    .line 552
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v3    # "pkg":Ljava/lang/String;
    :catchall_63
    move-exception v6

    :try_start_64
    monitor-exit v8
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    :try_start_65
    throw v6
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_66} :catch_66
    .catch Ljava/lang/RuntimeException; {:try_start_65 .. :try_end_66} :catch_6b
    .catchall {:try_start_65 .. :try_end_66} :catchall_60

    .line 559
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_66
    move-exception v6

    goto :goto_5b

    .line 558
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catchall_68
    move-exception v6

    :try_start_69
    monitor-exit v8
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    :try_start_6a
    throw v6
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_6b} :catch_66
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_6b} :catch_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_60

    .line 560
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_6b
    move-exception v5

    .line 561
    .local v5, "re":Ljava/lang/RuntimeException;
    :try_start_6c
    const-string v6, "PreferredPackage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " some problems. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 566
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v5    # "re":Ljava/lang/RuntimeException;
    :cond_94
    iget-object v6, p0, mToStartList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 567
    monitor-exit v7
    :try_end_9a
    .catchall {:try_start_6c .. :try_end_9a} :catchall_60

    .line 568
    return-void
.end method

.method protected updatePreferredPackagePolicy()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 213
    const-string/jumbo v1, "sys.ppm.debug"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, DEBUG:Z

    .line 214
    const-string/jumbo v1, "sys.ppm.debug_logfile_enable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, DEBUG_LOGFILE_ENABLE:Z

    .line 215
    const-string/jumbo v1, "sys.ppm.debug_trace"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, DEBUG_TRACE:Z

    .line 216
    const-string/jumbo v1, "sys.ppm.reset"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 218
    .local v0, "reset":Z
    if-eqz v0, :cond_36

    .line 219
    const-string v1, "PreferredPackage"

    const-string v2, "Reset every PPM records!"

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v2, p0, mPreferredPackages:Ljava/util/HashMap;

    monitor-enter v2

    .line 221
    :try_start_30
    iget-object v1, p0, mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 222
    monitor-exit v2

    .line 224
    :cond_36
    return-void

    .line 222
    :catchall_37
    move-exception v1

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_37

    throw v1
.end method

.method writePackagesInfoToGoogleXml()V
    .registers 3

    .prologue
    .line 1045
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "PreferredPackage"

    const-string/jumbo v1, "writePackagesInfoToGoogleXml !!"

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_c
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v0, :cond_19

    .line 1048
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManagerInternal;->prepareShutdown()V

    .line 1049
    :cond_19
    return-void
.end method
