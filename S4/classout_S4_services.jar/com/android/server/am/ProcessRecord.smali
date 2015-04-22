.class final Lcom/android/server/am/ProcessRecord;
.super Ljava/lang/Object;
.source "ProcessRecord.java"


# static fields
.field public static final NO_TOP_IN_APP_STARTING:I = 0x0

.field public static final NO_TOP_SERVICE_IN_APP_KILLING:I = 0x2

.field private static SMART_DHA_DEBUG:Z = false

.field public static final TOP_ACTIVITY_IN_APP_KILLING:I = 0x3

.field public static final TOP_IN_APP_STARTING:I = 0x1


# instance fields
.field SAMP_DEBUG_TRACE:Z

.field final activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field adjSeq:I

.field adjSource:Ljava/lang/Object;

.field adjSourceProcState:I

.field adjTarget:Ljava/lang/Object;

.field adjType:Ljava/lang/String;

.field adjTypeCode:I

.field anrDialog:Landroid/app/Dialog;

.field bad:Z

.field baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

.field cached:Z

.field compat:Landroid/content/res/CompatibilityInfo;

.field final conProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ContentProviderConnection;",
            ">;"
        }
    .end annotation
.end field

.field final connections:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field crashDialog:Landroid/app/Dialog;

.field crashHandler:Ljava/lang/Runnable;

.field crashing:Z

.field crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field curAdj:I

.field curCpuTime:J

.field curProcBatteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

.field curProcState:I

.field curRawAdj:I

.field curReceiver:Lcom/android/server/am/BroadcastRecord;

.field curSchedGroup:I

.field deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field debugging:Z

.field empty:Z

.field errorReportReceiver:Landroid/content/ComponentName;

.field execServicesFg:Z

.field final executingServices:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field forceCrashReport:Z

.field forcingToForeground:Landroid/os/IBinder;

.field foregroundActivities:Z

.field foregroundServices:Z

.field hasAboveClient:Z

.field hasClientActivities:Z

.field hasProviderClient:Z

.field hasShownUi:Z

.field hasStartedServices:Z

.field hotnessAdj:I

.field final info:Landroid/content/pm/ApplicationInfo;

.field initialIdlePss:J

.field instrumentationArguments:Landroid/os/Bundle;

.field instrumentationClass:Landroid/content/ComponentName;

.field instrumentationInfo:Landroid/content/pm/ApplicationInfo;

.field instrumentationProfileFile:Ljava/lang/String;

.field instrumentationResultClass:Landroid/content/ComponentName;

.field instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

.field final isolated:Z

.field killed:Z

.field killedByAm:Z

.field lastActivityTime:J

.field lastCachedPss:J

.field lastCpuTime:J

.field lastLowMemory:J

.field lastProcState:I

.field lastPss:J

.field lastPssTime:J

.field lastRequestedGc:J

.field lastStateTime:J

.field lastWakeTime:J

.field latestTab:Z

.field lowestClientAdj:I

.field lowestClientName:Ljava/lang/String;

.field lruSeq:I

.field private final mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

.field maxAdj:I

.field nextPssTime:J

.field notCachedSinceIdle:Z

.field notResponding:Z

.field notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field pendingUiClean:Z

.field persistent:Z

.field pid:I

.field pkgDeps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final pkgList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessStateHolder;",
            ">;"
        }
    .end annotation
.end field

.field preferredStarted:Z

.field procStateChanged:Z

.field final processName:Ljava/lang/String;

.field pssProcState:I

.field final pubProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field final receivers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ReceiverList;",
            ">;"
        }
    .end annotation
.end field

.field removed:Z

.field repForegroundActivities:Z

.field repProcState:I

.field reportLowMemory:Z

.field serviceHighRam:Z

.field serviceb:Z

.field final services:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field setAdj:I

.field setIsForeground:Z

.field setProcState:I

.field setRawAdj:I

.field setSchedGroup:I

.field shortStringName:Ljava/lang/String;

.field startTime:J

.field startUss:J

.field starting:Z

.field stringName:Ljava/lang/String;

.field systemNoUi:Z

.field thread:Landroid/app/IApplicationThread;

.field treatLikeActivity:Z

.field trimMemoryLevel:I

.field final uid:I

.field final userId:I

.field usingWrapper:Z

.field waitDialog:Landroid/app/Dialog;

.field waitedForDebugger:Z

.field waitingToKill:Ljava/lang/String;

.field xmlFlag:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 154
    const/4 v0, 0x0

    sput-boolean v0, SMART_DHA_DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V
    .registers 12
    .param p1, "_batteryStats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "_info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "_processName"    # Ljava/lang/String;
    .param p4, "_uid"    # I

    .prologue
    const/16 v6, 0x10

    const/16 v5, -0x64

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, pkgList:Landroid/util/ArrayMap;

    .line 92
    iput v3, p0, curProcState:I

    .line 93
    iput v3, p0, repProcState:I

    .line 94
    iput v3, p0, setProcState:I

    .line 95
    iput v3, p0, pssProcState:I

    .line 147
    const-string/jumbo v0, "sys.config.samp_debug_trace"

    const-string v2, "false"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, SAMP_DEBUG_TRACE:Z

    .line 152
    iput v6, p0, lowestClientAdj:I

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, lowestClientName:Ljava/lang/String;

    .line 160
    iput v3, p0, lastProcState:I

    .line 163
    iput v1, p0, hotnessAdj:I

    .line 164
    iput-boolean v1, p0, xmlFlag:Z

    .line 166
    iput-boolean v1, p0, latestTab:Z

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, activities:Ljava/util/ArrayList;

    .line 173
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, services:Landroid/util/ArraySet;

    .line 175
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, executingServices:Landroid/util/ArraySet;

    .line 178
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, connections:Landroid/util/ArraySet;

    .line 181
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, receivers:Landroid/util/ArraySet;

    .line 183
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, pubProviders:Landroid/util/ArrayMap;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, conProviders:Ljava/util/ArrayList;

    .line 493
    iput-object p1, p0, mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 494
    iput-object p2, p0, info:Landroid/content/pm/ApplicationInfo;

    .line 495
    iget v0, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, p4, :cond_a1

    const/4 v0, 0x1

    :goto_6e
    iput-boolean v0, p0, isolated:Z

    .line 496
    iput p4, p0, uid:I

    .line 497
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, userId:I

    .line 498
    iput-object p3, p0, processName:Ljava/lang/String;

    .line 499
    iget-object v0, p0, pkgList:Landroid/util/ArrayMap;

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    iget v4, p2, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-direct {v3, v4}, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    iput v6, p0, maxAdj:I

    .line 501
    iput v5, p0, setRawAdj:I

    iput v5, p0, curRawAdj:I

    .line 502
    iput v5, p0, setAdj:I

    iput v5, p0, curAdj:I

    .line 503
    iput-boolean v1, p0, persistent:Z

    .line 504
    iput-boolean v1, p0, removed:Z

    .line 505
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, nextPssTime:J

    iput-wide v0, p0, lastPssTime:J

    iput-wide v0, p0, lastStateTime:J

    .line 506
    return-void

    :cond_a1
    move v0, v1

    .line 495
    goto :goto_6e
.end method

.method public static setSmartDHADebugMode(Z)V
    .registers 1
    .param p0, "debugMode"    # Z

    .prologue
    .line 288
    sput-boolean p0, SMART_DHA_DEBUG:Z

    .line 289
    return-void
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "versionCode"    # I
    .param p3, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .prologue
    .line 735
    iget-object v1, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 736
    new-instance v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    invoke-direct {v0, p2}, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;-><init>(I)V

    .line 738
    .local v0, "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iget-object v1, p0, baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v1, :cond_2f

    .line 739
    iget-object v1, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, processName:Ljava/lang/String;

    invoke-virtual {p3, p1, v1, p2, v2}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 741
    iget-object v1, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    iget-object v1, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v2, p0, baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v1, v2, :cond_2d

    .line 743
    iget-object v1, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    .line 748
    :cond_2d
    :goto_2d
    const/4 v1, 0x1

    .line 750
    .end local v0    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    :goto_2e
    return v1

    .line 746
    .restart local v0    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    :cond_2f
    iget-object v1, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    .line 750
    .end local v0    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    :cond_35
    const/4 v1, 0x0

    goto :goto_2e
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 293
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 295
    .local v2, "now":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "user #"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, userId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 296
    const-string v1, " uid="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 297
    iget v1, p0, uid:I

    iget-object v6, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v1, v6, :cond_30

    .line 298
    const-string v1, " ISOLATED uid="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, uid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 300
    :cond_30
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 301
    iget-object v1, p0, info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v1, :cond_48

    .line 302
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "class="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    :cond_48
    iget-object v1, p0, info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v1, :cond_5d

    .line 305
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "manageSpaceActivityName="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    :cond_5d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "dir="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    const-string v1, " publicDir="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    const-string v1, " data="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "packageList={"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8e
    iget-object v1, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_ab

    .line 313
    if-lez v0, :cond_9d

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    :cond_9d
    iget-object v1, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_8e

    .line 316
    :cond_ab
    const-string/jumbo v1, "}"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    iget-object v1, p0, pkgDeps:Landroid/util/ArraySet;

    if-eqz v1, :cond_e2

    .line 318
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "packageDependencies={"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    const/4 v0, 0x0

    :goto_bf
    iget-object v1, p0, pkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_dc

    .line 320
    if-lez v0, :cond_ce

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    :cond_ce
    iget-object v1, p0, pkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_bf

    .line 323
    :cond_dc
    const-string/jumbo v1, "}"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    :cond_e2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "compat="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, compat:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 326
    iget-object v1, p0, instrumentationClass:Landroid/content/ComponentName;

    if-nez v1, :cond_fb

    iget-object v1, p0, instrumentationProfileFile:Ljava/lang/String;

    if-nez v1, :cond_fb

    iget-object v1, p0, instrumentationArguments:Landroid/os/Bundle;

    if-eqz v1, :cond_14d

    .line 328
    :cond_fb
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "instrumentationClass="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, instrumentationClass:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 330
    const-string v1, " instrumentationProfileFile="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, instrumentationProfileFile:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "instrumentationArguments="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, instrumentationArguments:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 334
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "instrumentationInfo="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 336
    iget-object v1, p0, instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_14d

    .line 337
    iget-object v1, p0, instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v6, Landroid/util/PrintWriterPrinter;

    invoke-direct {v6, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 340
    :cond_14d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "thread="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, thread:Landroid/app/IApplicationThread;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 341
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "pid="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, pid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " starting="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 342
    iget-boolean v1, p0, starting:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 343
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "lastActivityTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    iget-wide v6, p0, lastActivityTime:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 345
    const-string v1, " lastPssTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 346
    iget-wide v6, p0, lastPssTime:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 347
    const-string v1, " nextPssTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 348
    iget-wide v6, p0, nextPssTime:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 349
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 350
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "adjSeq="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, adjSeq:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 351
    const-string v1, " lruSeq="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, lruSeq:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 352
    const-string v1, " lastPss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, lastPss:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 353
    const-string v1, " lastCachedPss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, lastCachedPss:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 354
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "cached="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, cached:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 355
    const-string v1, " empty="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, empty:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 356
    iget-boolean v1, p0, serviceb:Z

    if-eqz v1, :cond_1f5

    .line 357
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "serviceb="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, serviceb:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 358
    const-string v1, " serviceHighRam="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, serviceHighRam:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 360
    :cond_1f5
    iget-boolean v1, p0, notCachedSinceIdle:Z

    if-eqz v1, :cond_210

    .line 361
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "notCachedSinceIdle="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, notCachedSinceIdle:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 362
    const-string v1, " initialIdlePss="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, initialIdlePss:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 364
    :cond_210
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "oom: max="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, maxAdj:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 365
    const-string v1, " curRaw="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, curRawAdj:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 366
    const-string v1, " setRaw="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, setRawAdj:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 367
    const-string v1, " cur="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, curAdj:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 368
    const-string v1, " set="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, setAdj:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 369
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "curSchedGroup="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, curSchedGroup:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 370
    const-string v1, " setSchedGroup="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, setSchedGroup:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 371
    const-string v1, " systemNoUi="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, systemNoUi:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 372
    const-string v1, " trimMemoryLevel="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, trimMemoryLevel:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 373
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "curProcState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, curProcState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 374
    const-string v1, " repProcState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, repProcState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 375
    const-string v1, " pssProcState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, pssProcState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 376
    const-string v1, " setProcState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, setProcState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 377
    const-string v1, " lastStateTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 378
    iget-wide v6, p0, lastStateTime:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 379
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 380
    iget-boolean v1, p0, hasShownUi:Z

    if-nez v1, :cond_2b8

    iget-boolean v1, p0, pendingUiClean:Z

    if-nez v1, :cond_2b8

    iget-boolean v1, p0, hasAboveClient:Z

    if-nez v1, :cond_2b8

    iget-boolean v1, p0, treatLikeActivity:Z

    if-eqz v1, :cond_2e3

    .line 381
    :cond_2b8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "hasShownUi="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, hasShownUi:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 382
    const-string v1, " pendingUiClean="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, pendingUiClean:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 383
    const-string v1, " hasAboveClient="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, hasAboveClient:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 384
    const-string v1, " treatLikeActivity="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, treatLikeActivity:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 386
    :cond_2e3
    iget-boolean v1, p0, setIsForeground:Z

    if-nez v1, :cond_2ef

    iget-boolean v1, p0, foregroundServices:Z

    if-nez v1, :cond_2ef

    iget-object v1, p0, forcingToForeground:Landroid/os/IBinder;

    if-eqz v1, :cond_311

    .line 387
    :cond_2ef
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "setIsForeground="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, setIsForeground:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 388
    const-string v1, " foregroundServices="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, foregroundServices:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 389
    const-string v1, " forcingToForeground="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, forcingToForeground:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 391
    :cond_311
    iget-boolean v1, p0, persistent:Z

    if-nez v1, :cond_319

    iget-boolean v1, p0, removed:Z

    if-eqz v1, :cond_331

    .line 392
    :cond_319
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "persistent="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, persistent:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 393
    const-string v1, " removed="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, removed:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 395
    :cond_331
    iget-boolean v1, p0, hasClientActivities:Z

    if-nez v1, :cond_33d

    iget-boolean v1, p0, foregroundActivities:Z

    if-nez v1, :cond_33d

    iget-boolean v1, p0, repForegroundActivities:Z

    if-eqz v1, :cond_363

    .line 396
    :cond_33d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "hasClientActivities="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, hasClientActivities:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 397
    const-string v1, " foregroundActivities="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, foregroundActivities:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 398
    const-string v1, " (rep="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, repForegroundActivities:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    :cond_363
    iget-boolean v1, p0, hasStartedServices:Z

    if-eqz v1, :cond_374

    .line 401
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "hasStartedServices="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, hasStartedServices:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 403
    :cond_374
    iget v1, p0, setProcState:I

    const/4 v6, 0x7

    if-lt v1, v6, :cond_3ca

    .line 405
    iget-object v6, p0, mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v6

    .line 406
    :try_start_37c
    iget-object v1, p0, mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v8, p0, pid:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v1, v7, v8, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessWakeTime(IIJ)J

    move-result-wide v4

    .line 408
    .local v4, "wtime":J
    monitor-exit v6
    :try_end_38d
    .catchall {:try_start_37c .. :try_end_38d} :catchall_4b1

    .line 409
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "lastWakeTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, lastWakeTime:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 410
    const-string v1, " timeUsed="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 411
    iget-wide v6, p0, lastWakeTime:J

    sub-long v6, v4, v6

    invoke-static {v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "lastCpuTime="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, lastCpuTime:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 413
    const-string v1, " timeUsed="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 414
    iget-wide v6, p0, curCpuTime:J

    iget-wide v8, p0, lastCpuTime:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    .end local v4    # "wtime":J
    :cond_3ca
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "lastRequestedGc="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 417
    iget-wide v6, p0, lastRequestedGc:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 418
    const-string v1, " lastLowMemory="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 419
    iget-wide v6, p0, lastLowMemory:J

    invoke-static {v6, v7, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 420
    const-string v1, " reportLowMemory="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, reportLowMemory:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 421
    iget-boolean v1, p0, killed:Z

    if-nez v1, :cond_3f7

    iget-boolean v1, p0, killedByAm:Z

    if-nez v1, :cond_3f7

    iget-object v1, p0, waitingToKill:Ljava/lang/String;

    if-eqz v1, :cond_418

    .line 422
    :cond_3f7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "killed="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, killed:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 423
    const-string v1, " killedByAm="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, killedByAm:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 424
    const-string v1, " waitingToKill="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, waitingToKill:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    :cond_418
    iget-boolean v1, p0, debugging:Z

    if-nez v1, :cond_430

    iget-boolean v1, p0, crashing:Z

    if-nez v1, :cond_430

    iget-object v1, p0, crashDialog:Landroid/app/Dialog;

    if-nez v1, :cond_430

    iget-boolean v1, p0, notResponding:Z

    if-nez v1, :cond_430

    iget-object v1, p0, anrDialog:Landroid/app/Dialog;

    if-nez v1, :cond_430

    iget-boolean v1, p0, bad:Z

    if-eqz v1, :cond_484

    .line 428
    :cond_430
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "debugging="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, debugging:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 429
    const-string v1, " crashing="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, crashing:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 430
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, crashDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 431
    const-string v1, " notResponding="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, notResponding:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 432
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, anrDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 433
    const-string v1, " bad="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, bad:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 436
    iget-object v1, p0, errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v1, :cond_481

    .line 437
    const-string v1, " errorReportReceiver="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 440
    :cond_481
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 442
    :cond_484
    iget-object v1, p0, activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4b4

    .line 443
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Activities:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    const/4 v0, 0x0

    :goto_495
    iget-object v1, p0, activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4b4

    .line 445
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  - "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_495

    .line 408
    :catchall_4b1
    move-exception v1

    :try_start_4b2
    monitor-exit v6
    :try_end_4b3
    .catchall {:try_start_4b2 .. :try_end_4b3} :catchall_4b1

    throw v1

    .line 448
    :cond_4b4
    iget-object v1, p0, services:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_4e1

    .line 449
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Services:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    const/4 v0, 0x0

    :goto_4c5
    iget-object v1, p0, services:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_4e1

    .line 451
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  - "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, services:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c5

    .line 454
    :cond_4e1
    iget-object v1, p0, executingServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_518

    .line 455
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Executing Services (fg="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 456
    iget-boolean v1, p0, execServicesFg:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    const/4 v0, 0x0

    :goto_4fc
    iget-object v1, p0, executingServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_518

    .line 458
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  - "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, executingServices:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_4fc

    .line 461
    :cond_518
    iget-object v1, p0, connections:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_545

    .line 462
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Connections:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    const/4 v0, 0x0

    :goto_529
    iget-object v1, p0, connections:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_545

    .line 464
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  - "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, connections:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_529

    .line 467
    :cond_545
    iget-object v1, p0, pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_585

    .line 468
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Published Providers:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    const/4 v0, 0x0

    :goto_556
    iget-object v1, p0, pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_585

    .line 470
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  - "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    -> "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_556

    .line 474
    :cond_585
    iget-object v1, p0, conProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5b8

    .line 475
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Connected Providers:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    const/4 v0, 0x0

    :goto_596
    iget-object v1, p0, conProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5b8

    .line 477
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  - "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, conProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderConnection;

    invoke-virtual {v1}, Lcom/android/server/am/ContentProviderConnection;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_596

    .line 480
    :cond_5b8
    iget-object v1, p0, curReceiver:Lcom/android/server/am/BroadcastRecord;

    if-eqz v1, :cond_5c9

    .line 481
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "curReceiver="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, curReceiver:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 483
    :cond_5c9
    iget-object v1, p0, receivers:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_5f6

    .line 484
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Receivers:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    const/4 v0, 0x0

    :goto_5da
    iget-object v1, p0, receivers:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_5f6

    .line 486
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  - "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, receivers:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_5da

    .line 489
    :cond_5f6
    return-void
.end method

.method public forceProcessStateUpTo(I)V
    .registers 3
    .param p1, "newState"    # I

    .prologue
    .line 763
    iget v0, p0, repProcState:I

    if-le v0, p1, :cond_8

    .line 764
    iput p1, p0, repProcState:I

    iput p1, p0, curProcState:I

    .line 766
    :cond_8
    return-void
.end method

.method public getHistoricallyAvgUSS(Lcom/android/server/am/ProcessStatsService;I)J
    .registers 17
    .param p1, "procstatsservice"    # Lcom/android/server/am/ProcessStatsService;
    .param p2, "avgCase"    # I

    .prologue
    .line 216
    const-wide/16 v0, 0x0

    .line 217
    .local v0, "beforeMemCheck":J
    const-wide/16 v8, 0x0

    .line 218
    .local v8, "timetaken":J
    const-wide/16 v6, 0x0

    .line 220
    .local v6, "ret":J
    sget-boolean v5, SMART_DHA_DEBUG:Z

    if-eqz v5, :cond_e

    .line 221
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v0

    .line 222
    :cond_e
    iget-object v5, p0, info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v11, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object v12, p0, processName:Ljava/lang/String;

    invoke-virtual {p1, v5, v10, v11, v12}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v4

    .line 226
    .local v4, "processStat":Lcom/android/internal/app/ProcessStats$ProcessState;
    packed-switch p2, :pswitch_data_11a

    .line 259
    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    sget-object v5, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v11, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    invoke-direct {v3, v5, v10, v11}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 265
    .local v3, "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    :goto_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v4, v3, v10, v11}, Lcom/android/internal/app/ProcessStats;->computeProcessData(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;J)V

    .line 266
    iget-wide v10, v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    const-wide/16 v12, 0x400

    mul-long v6, v10, v12

    .line 268
    sget-boolean v5, SMART_DHA_DEBUG:Z

    if-eqz v5, :cond_79

    .line 269
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v10

    sub-long v8, v10, v0

    .line 270
    const-string v5, "ActivityManager_SDHA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "procstat t :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "us, sz : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/16 v12, 0x400

    div-long v12, v6, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "K, proc : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_79
    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-nez v5, :cond_d0

    .line 274
    sget-boolean v5, SMART_DHA_DEBUG:Z

    if-eqz v5, :cond_87

    .line 275
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v0

    .line 277
    :cond_87
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 278
    .local v2, "mi":Lcom/android/internal/util/MemInfoReader;
    iget v5, p0, pid:I

    invoke-virtual {v2, v5}, Lcom/android/internal/util/MemInfoReader;->getUssByPid(I)J

    move-result-wide v6

    .line 279
    sget-boolean v5, SMART_DHA_DEBUG:Z

    if-eqz v5, :cond_d0

    .line 280
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v10

    sub-long v8, v10, v0

    .line 281
    const-string v5, "ActivityManager_SDHA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "statm    t :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "us, sz : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/16 v12, 0x400

    div-long v12, v6, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "K, proc : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .end local v2    # "mi":Lcom/android/internal/util/MemInfoReader;
    :cond_d0
    return-wide v6

    .line 228
    .end local v3    # "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    :pswitch_d1
    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    sget-object v5, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/4 v13, 0x1

    aput v13, v11, v12

    invoke-direct {v3, v5, v10, v11}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 232
    .restart local v3    # "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    goto/16 :goto_2e

    .line 234
    .end local v3    # "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    :pswitch_e3
    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    sget-object v5, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    const/16 v11, 0xd

    new-array v11, v11, [I

    fill-array-data v11, :array_126

    invoke-direct {v3, v5, v10, v11}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 242
    .restart local v3    # "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    goto/16 :goto_2e

    .line 245
    .end local v3    # "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    :pswitch_f5
    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    sget-object v5, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/16 v13, 0xd

    aput v13, v11, v12

    invoke-direct {v3, v5, v10, v11}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 249
    .restart local v3    # "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    goto/16 :goto_2e

    .line 251
    .end local v3    # "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    :pswitch_108
    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    sget-object v5, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    const/4 v11, 0x3

    new-array v11, v11, [I

    fill-array-data v11, :array_144

    invoke-direct {v3, v5, v10, v11}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 256
    .restart local v3    # "pdc":Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    goto/16 :goto_2e

    .line 226
    nop

    :pswitch_data_11a
    .packed-switch 0x0
        :pswitch_e3
        :pswitch_d1
        :pswitch_f5
        :pswitch_108
    .end packed-switch

    .line 234
    :array_126
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data

    .line 251
    :array_144
    .array-data 4
        0xa
        0xb
        0xc
    .end array-data
.end method

.method public getPackageList()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 803
    iget-object v3, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 804
    .local v2, "size":I
    if-nez v2, :cond_a

    .line 805
    const/4 v1, 0x0

    .line 811
    :cond_9
    return-object v1

    .line 807
    :cond_a
    new-array v1, v2, [Ljava/lang/String;

    .line 808
    .local v1, "list":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget-object v3, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 809
    iget-object v3, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v0

    .line 808
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public getSetAdjWithServices()I
    .registers 3

    .prologue
    .line 754
    iget v0, p0, setAdj:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_d

    .line 755
    iget-boolean v0, p0, hasStartedServices:Z

    if-eqz v0, :cond_d

    .line 756
    const/16 v0, 0x8

    .line 759
    :goto_c
    return v0

    :cond_d
    iget v0, p0, setAdj:I

    goto :goto_c
.end method

.method public isInterestingToUserLocked()Z
    .registers 5

    .prologue
    .line 565
    iget-object v3, p0, activities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 566
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v2, :cond_1c

    .line 567
    iget-object v3, p0, activities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 568
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isInterestingToUserLocked()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 569
    const/4 v3, 0x1

    .line 572
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_18
    return v3

    .line 566
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 572
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1c
    const/4 v3, 0x0

    goto :goto_18
.end method

.method kill(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "noisy"    # Z

    .prologue
    const/4 v4, 0x1

    .line 624
    iget-boolean v0, p0, killedByAm:Z

    if-nez v0, :cond_79

    .line 625
    if-eqz p2, :cond_39

    .line 626
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Killing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (adj "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, setAdj:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_39
    const/16 v0, 0x7547

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, processName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, setAdj:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 630
    iget v0, p0, pid:I

    invoke-static {v0}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 631
    iget-object v0, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v1, p0, pid:I

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerService;->killProcessGroup(II)V

    .line 632
    iget-boolean v0, p0, persistent:Z

    if-nez v0, :cond_79

    .line 633
    iput-boolean v4, p0, killed:Z

    .line 634
    iput-boolean v4, p0, killedByAm:Z

    .line 637
    :cond_79
    return-void
.end method

.method public makeActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V
    .registers 11
    .param p1, "_thread"    # Landroid/app/IApplicationThread;
    .param p2, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .prologue
    .line 515
    iget-object v2, p0, thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_76

    .line 516
    iget-object v1, p0, baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 517
    .local v1, "origBase":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz v1, :cond_19

    .line 518
    const/4 v2, -0x1

    invoke-virtual {p2}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 520
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    .line 522
    :cond_19
    iget-object v2, p0, info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object v5, p0, processName:Ljava/lang/String;

    invoke-virtual {p2, v2, v3, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v2

    iput-object v2, p0, baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 524
    iget-object v2, p0, baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    .line 525
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_33
    iget-object v2, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v7, v2, :cond_76

    .line 526
    iget-object v2, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    .line 527
    .local v0, "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v2, :cond_50

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v2, v1, :cond_50

    .line 528
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    .line 530
    :cond_50
    iget-object v2, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object v5, p0, processName:Ljava/lang/String;

    invoke-virtual {p2, v2, v3, v4, v5}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 532
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v3, p0, baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v2, v3, :cond_73

    .line 533
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    .line 525
    :cond_73
    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    .line 537
    .end local v0    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    .end local v1    # "origBase":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v7    # "i":I
    :cond_76
    iput-object p1, p0, thread:Landroid/app/IApplicationThread;

    .line 538
    return-void
.end method

.method public makeAdjReason()Ljava/lang/String;
    .registers 3

    .prologue
    .line 706
    iget-object v1, p0, adjSource:Ljava/lang/Object;

    if-nez v1, :cond_8

    iget-object v1, p0, adjTarget:Ljava/lang/Object;

    if-eqz v1, :cond_75

    .line 707
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 708
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 709
    iget-object v1, p0, adjTarget:Ljava/lang/Object;

    instance-of v1, v1, Landroid/content/ComponentName;

    if-eqz v1, :cond_4b

    .line 710
    iget-object v1, p0, adjTarget:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    :goto_25
    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    iget-object v1, p0, adjSource:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_60

    .line 718
    const-string v1, "Proc{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    iget-object v1, p0, adjSource:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    :goto_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 728
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :goto_4a
    return-object v1

    .line 711
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_4b
    iget-object v1, p0, adjTarget:Ljava/lang/Object;

    if-eqz v1, :cond_59

    .line 712
    iget-object v1, p0, adjTarget:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 714
    :cond_59
    const-string/jumbo v1, "{null}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 721
    :cond_60
    iget-object v1, p0, adjSource:Ljava/lang/Object;

    if-eqz v1, :cond_6e

    .line 722
    iget-object v1, p0, adjSource:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46

    .line 724
    :cond_6e
    const-string/jumbo v1, "{null}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46

    .line 728
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_75
    const/4 v1, 0x0

    goto :goto_4a
.end method

.method public makeInactive(Lcom/android/server/am/ProcessStatsService;)V
    .registers 11
    .param p1, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .prologue
    const/4 v8, 0x0

    .line 541
    iput-object v8, p0, thread:Landroid/app/IApplicationThread;

    .line 542
    iget-object v1, p0, baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 543
    .local v1, "origBase":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz v1, :cond_3f

    .line 544
    if-eqz v1, :cond_1a

    .line 545
    const/4 v2, -0x1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 547
    invoke-virtual {v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    .line 549
    :cond_1a
    iput-object v8, p0, baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 550
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1d
    iget-object v2, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v7, v2, :cond_3f

    .line 551
    iget-object v2, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    .line 552
    .local v0, "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v2, :cond_3a

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v2, v1, :cond_3a

    .line 553
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    .line 555
    :cond_3a
    iput-object v8, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 550
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    .line 558
    .end local v0    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    .end local v7    # "i":I
    :cond_3f
    return-void
.end method

.method modifyRawOomAdj(I)I
    .registers 3
    .param p1, "adj"    # I

    .prologue
    .line 602
    iget-boolean v0, p0, hasAboveClient:Z

    if-eqz v0, :cond_6

    .line 608
    if-gez p1, :cond_7

    .line 620
    :cond_6
    :goto_6
    return p1

    .line 610
    :cond_7
    const/4 v0, 0x1

    if-ge p1, v0, :cond_c

    .line 611
    const/4 p1, 0x1

    goto :goto_6

    .line 612
    :cond_c
    const/4 v0, 0x2

    if-ge p1, v0, :cond_11

    .line 613
    const/4 p1, 0x2

    goto :goto_6

    .line 614
    :cond_11
    const/16 v0, 0x9

    if-ge p1, v0, :cond_18

    .line 615
    const/16 p1, 0x9

    goto :goto_6

    .line 616
    :cond_18
    const/16 v0, 0xf

    if-ge p1, v0, :cond_6

    .line 617
    add-int/lit8 p1, p1, 0x1

    goto :goto_6
.end method

.method public resetPackageList(Lcom/android/server/am/ProcessStatsService;)V
    .registers 13
    .param p1, "tracker"    # Lcom/android/server/am/ProcessStatsService;

    .prologue
    const/4 v10, 0x1

    .line 772
    iget-object v1, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 773
    .local v0, "N":I
    iget-object v1, p0, baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v1, :cond_6d

    .line 774
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 775
    .local v4, "now":J
    iget-object v1, p0, baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    const/4 v2, -0x1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v3

    iget-object v6, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 777
    if-eq v0, v10, :cond_6c

    .line 778
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1e
    if-ge v8, v0, :cond_3a

    .line 779
    iget-object v1, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    .line 780
    .local v7, "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iget-object v1, v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eqz v1, :cond_37

    iget-object v1, v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v2, p0, baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v1, v2, :cond_37

    .line 781
    iget-object v1, v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeInactive()V

    .line 778
    :cond_37
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    .line 785
    .end local v7    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    :cond_3a
    iget-object v1, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 786
    iget-object v1, p0, info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object v6, p0, processName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3, v6}, Lcom/android/server/am/ProcessStatsService;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v9

    .line 788
    .local v9, "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    new-instance v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    iget-object v1, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-direct {v7, v1}, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;-><init>(I)V

    .line 790
    .restart local v7    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iput-object v9, v7, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 791
    iget-object v1, p0, pkgList:Landroid/util/ArrayMap;

    iget-object v2, p0, info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    iget-object v1, p0, baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v9, v1, :cond_6c

    .line 793
    invoke-virtual {v9}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeActive()V

    .line 800
    .end local v4    # "now":J
    .end local v7    # "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    .end local v8    # "i":I
    .end local v9    # "ps":Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_6c
    :goto_6c
    return-void

    .line 796
    :cond_6d
    if-eq v0, v10, :cond_6c

    .line 797
    iget-object v1, p0, pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 798
    iget-object v1, p0, pkgList:Landroid/util/ArrayMap;

    iget-object v2, p0, info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    iget-object v6, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-direct {v3, v6}, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c
.end method

.method public setPid(I)V
    .registers 3
    .param p1, "_pid"    # I

    .prologue
    const/4 v0, 0x0

    .line 509
    iput p1, p0, pid:I

    .line 510
    iput-object v0, p0, shortStringName:Ljava/lang/String;

    .line 511
    iput-object v0, p0, stringName:Ljava/lang/String;

    .line 512
    return-void
.end method

.method smart_dha_kill(Ljava/lang/String;Z)V
    .registers 11
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "noisy"    # Z

    .prologue
    const-wide/16 v6, 0x40

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 641
    iget-boolean v0, p0, killedByAm:Z

    if-nez v0, :cond_86

    .line 642
    if-eqz p2, :cond_3c

    .line 643
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Killing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (adj "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, setAdj:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_3c
    const/16 v0, 0x7547

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    iget-object v3, p0, processName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, setAdj:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 647
    iget-boolean v0, p0, SAMP_DEBUG_TRACE:Z

    if-eqz v0, :cond_6f

    const-string/jumbo v0, "sdha_killProcessQuiet"

    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 648
    :cond_6f
    iget v0, p0, pid:I

    invoke-static {v0}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 649
    iget-boolean v0, p0, SAMP_DEBUG_TRACE:Z

    if-eqz v0, :cond_7e

    const-string/jumbo v0, "sdha_killProcessQuiet"

    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 650
    :cond_7e
    iget-boolean v0, p0, persistent:Z

    if-nez v0, :cond_86

    .line 651
    iput-boolean v5, p0, killed:Z

    .line 652
    iput-boolean v5, p0, killedByAm:Z

    .line 655
    :cond_86
    return-void
.end method

.method public stopFreezingAllLocked()V
    .registers 4

    .prologue
    .line 576
    iget-object v1, p0, activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 577
    .local v0, "i":I
    :goto_6
    if-lez v0, :cond_17

    .line 578
    add-int/lit8 v0, v0, -0x1

    .line 579
    iget-object v1, p0, activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto :goto_6

    .line 581
    :cond_17
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 659
    iget-object v1, p0, shortStringName:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 660
    iget-object v1, p0, shortStringName:Ljava/lang/String;

    .line 664
    :goto_6
    return-object v1

    .line 662
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 663
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, toShortString(Ljava/lang/StringBuilder;)V

    .line 664
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, shortStringName:Ljava/lang/String;

    goto :goto_6
.end method

.method toShortString(Ljava/lang/StringBuilder;)V
    .registers 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v2, 0x2710

    .line 668
    iget v1, p0, pid:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 669
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 670
    iget-object v1, p0, processName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 672
    iget-object v1, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ge v1, v2, :cond_22

    .line 673
    iget v1, p0, uid:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 690
    :cond_21
    :goto_21
    return-void

    .line 675
    :cond_22
    const/16 v1, 0x75

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 676
    iget v1, p0, userId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 677
    iget-object v1, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 678
    .local v0, "appId":I
    if-lt v0, v2, :cond_5b

    .line 679
    const/16 v1, 0x61

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 680
    add-int/lit16 v1, v0, -0x2710

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 685
    :goto_40
    iget v1, p0, uid:I

    iget-object v2, p0, info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v1, v2, :cond_21

    .line 686
    const/16 v1, 0x69

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 687
    iget v1, p0, uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const v2, 0x182b8

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 682
    :cond_5b
    const/16 v1, 0x73

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 683
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_40
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 693
    iget-object v1, p0, stringName:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 694
    iget-object v1, p0, stringName:Ljava/lang/String;

    .line 702
    :goto_6
    return-object v1

    .line 696
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 697
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ProcessRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 700
    invoke-virtual {p0, v0}, toShortString(Ljava/lang/StringBuilder;)V

    .line 701
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 702
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, stringName:Ljava/lang/String;

    goto :goto_6
.end method

.method public unlinkDeathRecipient()V
    .registers 4

    .prologue
    .line 584
    iget-object v0, p0, deathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_14

    iget-object v0, p0, thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_14

    .line 585
    iget-object v0, p0, thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 587
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 588
    return-void
.end method

.method updateHasAboveClientLocked()V
    .registers 4

    .prologue
    .line 591
    const/4 v2, 0x0

    iput-boolean v2, p0, hasAboveClient:Z

    .line 592
    iget-object v2, p0, connections:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_1e

    .line 593
    iget-object v2, p0, connections:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 594
    .local v0, "cr":Lcom/android/server/am/ConnectionRecord;
    iget v2, v0, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1f

    .line 595
    const/4 v2, 0x1

    iput-boolean v2, p0, hasAboveClient:Z

    .line 599
    .end local v0    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_1e
    return-void

    .line 592
    .restart local v0    # "cr":Lcom/android/server/am/ConnectionRecord;
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_b
.end method
