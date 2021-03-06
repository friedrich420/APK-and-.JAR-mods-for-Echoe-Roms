.class public final Lcom/android/server/am/BatteryStatsService;
.super Lcom/android/internal/app/IBatteryStats$Stub;
.source "BatteryStatsService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "BatteryStatsService"

.field static sService:Lcom/android/internal/app/IBatteryStats;


# instance fields
.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothPendingStats:Z

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field mContext:Landroid/content/Context;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field final mStats:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method constructor <init>(Ljava/io/File;Landroid/os/Handler;)V
    .registers 4
    .param p1, "systemDir"    # Ljava/io/File;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/internal/app/IBatteryStats$Stub;-><init>()V

    .line 526
    new-instance v0, Lcom/android/server/am/BatteryStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$1;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v0, p0, mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 71
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;)V

    iput-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/BatteryStatsService;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryStatsService;

    .prologue
    .line 58
    iget-object v0, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/am/BatteryStatsService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryStatsService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 58
    iput-object p1, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/am/BatteryStatsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryStatsService;

    .prologue
    .line 58
    iget-boolean v0, p0, mBluetoothPendingStats:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/am/BatteryStatsService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/BatteryStatsService;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, mBluetoothPendingStats:Z

    return p1
.end method

.method static synthetic access$200([I[Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # [I
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p0, p1}, nativeWaitWakeup([I[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "i"    # I
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "enable"    # Z

    .prologue
    const/4 v1, -0x1

    .line 758
    add-int/lit8 p2, p2, 0x1

    .line 759
    array-length v0, p3

    if-lt p2, v0, :cond_28

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing option argument for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p4, :cond_25

    const-string v0, "--enable"

    :goto_15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 761
    invoke-direct {p0, p1}, dumpHelp(Ljava/io/PrintWriter;)V

    move p2, v1

    .line 777
    .end local p2    # "i":I
    :goto_24
    return p2

    .line 760
    .restart local p2    # "i":I
    :cond_25
    const-string v0, "--disable"

    goto :goto_15

    .line 764
    :cond_28
    const-string v0, "full-wake-history"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, "full-history"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 765
    :cond_3c
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 766
    :try_start_3f
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setRecordAllHistoryLocked(Z)V

    .line 767
    monitor-exit v1

    goto :goto_24

    :catchall_46
    move-exception v0

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_46

    throw v0

    .line 768
    :cond_49
    const-string v0, "no-auto-reset"

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 769
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 770
    :try_start_56
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setNoAutoReset(Z)V

    .line 771
    monitor-exit v1

    goto :goto_24

    :catchall_5d
    move-exception v0

    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_5d

    throw v0

    .line 773
    :cond_60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown enable/disable option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 774
    invoke-direct {p0, p1}, dumpHelp(Ljava/io/PrintWriter;)V

    move p2, v1

    .line 775
    goto :goto_24
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 736
    const-string v0, "Battery stats (batterystats) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 737
    const-string v0, "  [--checkin] [--history] [--history-start] [--unplugged] [--charged] [-c]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    const-string v0, "  [--reset] [--write] [-h] [<package.name>]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    const-string v0, "  --checkin: format output for a checkin report."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    const-string v0, "  --history: show only history data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 741
    const-string v0, "  --history-start <num>: show only history data starting at given time offset."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 742
    const-string v0, "  --unplugged: only output data since last unplugged."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 743
    const-string v0, "  --charged: only output data since last charged."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 744
    const-string v0, "  --reset: reset the stats, clearing all current data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 745
    const-string v0, "  --write: force write current collected stats to disk."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 746
    const-string v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    const-string v0, "  -h: print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 748
    const-string v0, "Battery stats (batterystats) commands:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 749
    const-string v0, "  enable|disable <option>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 750
    const-string v0, "    Enable or disable a running option.  Option state is not saved across boots."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 751
    const-string v0, "    Options are:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 752
    const-string v0, "      full-history: include additional detailed events in battery history:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 753
    const-string v0, "          wake_lock_in and proc events"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    const-string v0, "      no-auto-reset: don\'t automatically reset stats when unplugged"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    return-void
.end method

.method public static getService()Lcom/android/internal/app/IBatteryStats;
    .registers 2

    .prologue
    .line 102
    sget-object v1, sService:Lcom/android/internal/app/IBatteryStats;

    if-eqz v1, :cond_7

    .line 103
    sget-object v1, sService:Lcom/android/internal/app/IBatteryStats;

    .line 107
    .local v0, "b":Landroid/os/IBinder;
    :goto_6
    return-object v1

    .line 105
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_7
    const-string v1, "batterystats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 106
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    sput-object v1, sService:Lcom/android/internal/app/IBatteryStats;

    .line 107
    sget-object v1, sService:Lcom/android/internal/app/IBatteryStats;

    goto :goto_6
.end method

.method private static native nativeWaitWakeup([I[Ljava/lang/String;)I
.end method


# virtual methods
.method addIsolatedUid(II)V
    .registers 5
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .prologue
    .line 129
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 130
    :try_start_3
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->addIsolatedUidLocked(II)V

    .line 131
    monitor-exit v1

    .line 132
    return-void

    .line 131
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public computeBatteryTimeRemaining()J
    .registers 7

    .prologue
    .line 192
    iget-object v3, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 193
    :try_start_3
    iget-object v2, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryTimeRemaining(J)J

    move-result-wide v0

    .line 194
    .local v0, "time":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-ltz v2, :cond_16

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .end local v0    # "time":J
    :cond_16
    monitor-exit v3

    return-wide v0

    .line 195
    :catchall_18
    move-exception v2

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v2
.end method

.method public computeChargeTimeRemaining()J
    .registers 7

    .prologue
    .line 199
    iget-object v3, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 200
    :try_start_3
    iget-object v2, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->computeChargeTimeRemaining(J)J

    move-result-wide v0

    .line 201
    .local v0, "time":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-ltz v2, :cond_16

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .end local v0    # "time":J
    :cond_16
    monitor-exit v3

    return-wide v0

    .line 202
    :catchall_18
    move-exception v2

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 31
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 782
    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_43

    .line 784
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump BatteryStats from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " without permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 929
    :cond_42
    :goto_42
    return-void

    .line 790
    :cond_43
    const/4 v9, 0x0

    .line 791
    .local v9, "flags":I
    const/16 v25, 0x0

    .line 792
    .local v25, "useCheckinFormat":Z
    const/16 v22, 0x0

    .line 793
    .local v22, "isRealCheckin":Z
    const/16 v23, 0x0

    .line 794
    .local v23, "noOutput":Z
    const/16 v26, 0x0

    .line 795
    .local v26, "writeData":Z
    const-wide/16 v10, -0x1

    .line 796
    .local v10, "historyStart":J
    const/16 v17, -0x1

    .line 797
    .local v17, "reqUid":I
    if-eqz p3, :cond_201

    .line 798
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_54
    move-object/from16 v0, p3

    array-length v6, v0

    move/from16 v0, v20

    if-ge v0, v6, :cond_201

    .line 799
    aget-object v4, p3, v20

    .line 800
    .local v4, "arg":Ljava/lang/String;
    const-string v6, "--checkin"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 801
    const/16 v25, 0x1

    .line 802
    const/16 v22, 0x1

    .line 798
    :goto_69
    add-int/lit8 v20, v20, 0x1

    goto :goto_54

    .line 803
    :cond_6c
    const-string v6, "--history"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 804
    or-int/lit8 v9, v9, 0x4

    goto :goto_69

    .line 805
    :cond_77
    const-string v6, "--history-start"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 806
    or-int/lit8 v9, v9, 0x4

    .line 807
    add-int/lit8 v20, v20, 0x1

    .line 808
    move-object/from16 v0, p3

    array-length v6, v0

    move/from16 v0, v20

    if-lt v0, v6, :cond_99

    .line 809
    const-string v6, "Missing time argument for --history-since"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 810
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, dumpHelp(Ljava/io/PrintWriter;)V

    goto :goto_42

    .line 813
    :cond_99
    aget-object v6, p3, v20

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 814
    const/16 v26, 0x1

    goto :goto_69

    .line 815
    :cond_a2
    const-string v6, "-c"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_af

    .line 816
    const/16 v25, 0x1

    .line 817
    or-int/lit8 v9, v9, 0x8

    goto :goto_69

    .line 818
    :cond_af
    const-string v6, "--unplugged"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ba

    .line 819
    or-int/lit8 v9, v9, 0x1

    goto :goto_69

    .line 820
    :cond_ba
    const-string v6, "--charged"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c5

    .line 821
    or-int/lit8 v9, v9, 0x2

    goto :goto_69

    .line 822
    :cond_c5
    const-string v6, "--reset"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e7

    .line 823
    move-object/from16 v0, p0

    iget-object v7, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 824
    :try_start_d2
    move-object/from16 v0, p0

    iget-object v6, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsCmdLocked()V

    .line 825
    const-string v6, "Battery stats reset."

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    const/16 v23, 0x1

    .line 827
    monitor-exit v7

    goto :goto_69

    :catchall_e4
    move-exception v6

    monitor-exit v7
    :try_end_e6
    .catchall {:try_start_d2 .. :try_end_e6} :catchall_e4

    throw v6

    .line 828
    :cond_e7
    const-string v6, "--write"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10a

    .line 829
    move-object/from16 v0, p0

    iget-object v7, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 830
    :try_start_f4
    move-object/from16 v0, p0

    iget-object v6, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->writeSyncLocked()V

    .line 831
    const-string v6, "Battery stats written."

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 832
    const/16 v23, 0x1

    .line 833
    monitor-exit v7

    goto/16 :goto_69

    :catchall_107
    move-exception v6

    monitor-exit v7
    :try_end_109
    .catchall {:try_start_f4 .. :try_end_109} :catchall_107

    throw v6

    .line 834
    :cond_10a
    const-string v6, "--enable"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11a

    const-string v6, "enable"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_145

    .line 835
    :cond_11a
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v20

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v6}, doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v20

    .line 836
    if-ltz v20, :cond_42

    .line 839
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p3, v20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_42

    .line 841
    :cond_145
    const-string v6, "--disable"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_155

    const-string v6, "disable"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_180

    .line 842
    :cond_155
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v20

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v6}, doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v20

    .line 843
    if-ltz v20, :cond_42

    .line 846
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Disabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p3, v20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_42

    .line 848
    :cond_180
    const-string v6, "-h"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_191

    .line 849
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_42

    .line 851
    :cond_191
    const-string v6, "-a"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19d

    .line 852
    or-int/lit8 v9, v9, 0x10

    goto/16 :goto_69

    .line 853
    :cond_19d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1cd

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_1cd

    .line 854
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown option: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 855
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_42

    .line 860
    :cond_1cd
    :try_start_1cd
    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_1dc
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1cd .. :try_end_1dc} :catch_1df

    move-result v17

    goto/16 :goto_69

    .line 862
    :catch_1df
    move-exception v12

    .line 863
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 864
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_42

    .line 870
    .end local v4    # "arg":Ljava/lang/String;
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v20    # "i":I
    :cond_201
    if-nez v23, :cond_42

    .line 873
    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_20f

    .line 874
    or-int/lit8 v9, v9, 0x20

    .line 876
    :cond_20f
    if-ltz v17, :cond_219

    .line 879
    and-int/lit8 v6, v9, 0x7

    if-nez v6, :cond_219

    .line 881
    or-int/lit8 v9, v9, 0x2

    .line 883
    and-int/lit8 v9, v9, -0x9

    .line 886
    :cond_219
    if-eqz v25, :cond_2d5

    .line 887
    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v8

    .line 888
    .local v8, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v22, :cond_2ae

    .line 891
    move-object/from16 v0, p0

    iget-object v6, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v13, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v13

    .line 892
    :try_start_231
    move-object/from16 v0, p0

    iget-object v6, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->exists()Z
    :try_end_23a
    .catchall {:try_start_231 .. :try_end_23a} :catchall_287

    move-result v6

    if-eqz v6, :cond_2ad

    .line 894
    :try_start_23d
    move-object/from16 v0, p0

    iget-object v6, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->readFully()[B

    move-result-object v24

    .line 895
    .local v24, "raw":[B
    if-eqz v24, :cond_2ad

    .line 896
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v21

    .line 897
    .local v21, "in":Landroid/os/Parcel;
    const/4 v6, 0x0

    move-object/from16 v0, v24

    array-length v7, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 898
    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 899
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v7, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    invoke-direct {v5, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;)V

    .line 901
    .local v5, "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 902
    invoke-virtual/range {v21 .. v21}, Landroid/os/Parcel;->recycle()V

    .line 903
    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    move-object/from16 v7, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    .line 905
    move-object/from16 v0, p0

    iget-object v6, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->delete()V
    :try_end_284
    .catch Ljava/io/IOException; {:try_start_23d .. :try_end_284} :catch_28a
    .catchall {:try_start_23d .. :try_end_284} :catchall_287

    .line 906
    :try_start_284
    monitor-exit v13

    goto/16 :goto_42

    .line 913
    .end local v5    # "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v21    # "in":Landroid/os/Parcel;
    .end local v24    # "raw":[B
    :catchall_287
    move-exception v6

    monitor-exit v13
    :try_end_289
    .catchall {:try_start_284 .. :try_end_289} :catchall_287

    throw v6

    .line 908
    :catch_28a
    move-exception v12

    .line 909
    .local v12, "e":Ljava/io/IOException;
    :try_start_28b
    const-string v6, "BatteryStatsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failure reading checkin file "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v14, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v14, v14, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v14}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 913
    .end local v12    # "e":Ljava/io/IOException;
    :cond_2ad
    monitor-exit v13
    :try_end_2ae
    .catchall {:try_start_28b .. :try_end_2ae} :catchall_287

    .line 915
    :cond_2ae
    move-object/from16 v0, p0

    iget-object v7, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 916
    :try_start_2b3
    move-object/from16 v0, p0

    iget-object v13, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    move-object/from16 v15, p2

    move-object/from16 v16, v8

    move/from16 v17, v9

    move-wide/from16 v18, v10

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    .line 917
    .end local v17    # "reqUid":I
    if-eqz v26, :cond_2cf

    .line 918
    move-object/from16 v0, p0

    iget-object v6, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 920
    :cond_2cf
    monitor-exit v7

    goto/16 :goto_42

    :catchall_2d2
    move-exception v6

    monitor-exit v7
    :try_end_2d4
    .catchall {:try_start_2b3 .. :try_end_2d4} :catchall_2d2

    throw v6

    .line 922
    .end local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v17    # "reqUid":I
    :cond_2d5
    move-object/from16 v0, p0

    iget-object v7, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 923
    :try_start_2da
    move-object/from16 v0, p0

    iget-object v13, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    move-object/from16 v15, p2

    move/from16 v16, v9

    move-wide/from16 v18, v10

    invoke-virtual/range {v13 .. v19}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V

    .line 924
    if-eqz v26, :cond_2f4

    .line 925
    move-object/from16 v0, p0

    iget-object v6, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 927
    :cond_2f4
    monitor-exit v7

    goto/16 :goto_42

    :catchall_2f7
    move-exception v6

    monitor-exit v7
    :try_end_2f9
    .catchall {:try_start_2da .. :try_end_2f9} :catchall_2f7

    throw v6
.end method

.method public enforceCallingPermission()V
    .registers 6

    .prologue
    .line 696
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 701
    :goto_a
    return-void

    .line 699
    :cond_b
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_a
.end method

.method public getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getAwakeTimeBattery()J
    .registers 4

    .prologue
    .line 684
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimeBattery()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAwakeTimePlugged()J
    .registers 4

    .prologue
    .line 690
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimePlugged()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStatistics()[B
    .registers 6

    .prologue
    .line 161
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.BATTERY_STATS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 166
    .local v1, "out":Landroid/os/Parcel;
    iget-object v3, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 167
    :try_start_f
    iget-object v2, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 168
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_1e

    .line 169
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 170
    .local v0, "data":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 171
    return-object v0

    .line 168
    .end local v0    # "data":[B
    :catchall_1e
    move-exception v2

    :try_start_1f
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public getStatisticsStream()Landroid/os/ParcelFileDescriptor;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 175
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "android.permission.BATTERY_STATS"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 180
    .local v2, "out":Landroid/os/Parcel;
    iget-object v4, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 181
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 182
    .local v0, "data":[B
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 184
    :try_start_19
    const-string v4, "battery-stats"

    invoke-static {v0, v4}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_20

    move-result-object v3

    .line 187
    :goto_1f
    return-object v3

    .line 185
    :catch_20
    move-exception v1

    .line 186
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "BatteryStatsService"

    const-string v5, "Unable to create shared memory"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method

.method public initPowerManagement()V
    .registers 3

    .prologue
    .line 88
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 89
    iget-object v0, p0, mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0, p0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 90
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->getLowPowerModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteLowPowerMode(Z)V

    .line 91
    new-instance v0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->start()V

    .line 92
    return-void
.end method

.method public isOnBattery()Z
    .registers 2

    .prologue
    .line 674
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v0

    return v0
.end method

.method public noteBluetoothOff()V
    .registers 3

    .prologue
    .line 545
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 546
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 547
    const/4 v0, 0x0

    :try_start_7
    iput-boolean v0, p0, mBluetoothPendingStats:Z

    .line 548
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothOffLocked()V

    .line 549
    monitor-exit v1

    .line 550
    return-void

    .line 549
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public noteBluetoothOn()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 510
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 511
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 512
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_11

    .line 513
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 516
    :cond_11
    iget-object v2, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 517
    :try_start_14
    iget-object v1, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_26

    .line 518
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothOnLocked()V

    .line 519
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, p0, mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setBtHeadset(Landroid/bluetooth/BluetoothHeadset;)V

    .line 523
    :goto_24
    monitor-exit v2

    .line 524
    return-void

    .line 521
    :cond_26
    const/4 v1, 0x1

    iput-boolean v1, p0, mBluetoothPendingStats:Z

    goto :goto_24

    .line 523
    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_14 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public noteBluetoothState(I)V
    .registers 4
    .param p1, "bluetoothState"    # I

    .prologue
    .line 553
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 554
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 555
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothStateLocked(I)V

    .line 556
    monitor-exit v1

    .line 557
    return-void

    .line 556
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 25
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "newWs"    # Landroid/os/WorkSource;
    .param p7, "newPid"    # I
    .param p8, "newName"    # Ljava/lang/String;
    .param p9, "newHistoryName"    # Ljava/lang/String;
    .param p10, "newType"    # I
    .param p11, "newUnimportantForLogging"    # Z

    .prologue
    .line 269
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 270
    iget-object v12, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v12

    .line 271
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteChangeWakelockFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 273
    monitor-exit v12

    .line 274
    return-void

    .line 273
    :catchall_21
    move-exception v0

    monitor-exit v12
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public noteEvent(ILjava/lang/String;I)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 206
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 207
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 208
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteEventLocked(ILjava/lang/String;I)V

    .line 209
    monitor-exit v1

    .line 210
    return-void

    .line 209
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteFlashlightOff()V
    .registers 3

    .prologue
    .line 461
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 462
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 463
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOffLocked()V

    .line 464
    monitor-exit v1

    .line 465
    return-void

    .line 464
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteFlashlightOn()V
    .registers 3

    .prologue
    .line 454
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 455
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 456
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOnLocked()V

    .line 457
    monitor-exit v1

    .line 458
    return-void

    .line 457
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteFullWifiLockAcquired(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 560
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 561
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 562
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(I)V

    .line 563
    monitor-exit v1

    .line 564
    return-void

    .line 563
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 602
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 603
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 604
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredFromSourceLocked(Landroid/os/WorkSource;)V

    .line 605
    monitor-exit v1

    .line 606
    return-void

    .line 605
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteFullWifiLockReleased(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 567
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 568
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 569
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(I)V

    .line 570
    monitor-exit v1

    .line 571
    return-void

    .line 570
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 609
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 610
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 611
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 612
    monitor-exit v1

    .line 613
    return-void

    .line 612
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteInteractive(Z)V
    .registers 4
    .param p1, "interactive"    # Z

    .prologue
    .line 348
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 349
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 350
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteInteractiveLocked(Z)V

    .line 351
    monitor-exit v1

    .line 352
    return-void

    .line 351
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteJobFinish(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 234
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 235
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 236
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobFinishLocked(Ljava/lang/String;I)V

    .line 237
    monitor-exit v1

    .line 238
    return-void

    .line 237
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteJobStart(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 227
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 228
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 229
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobStartLocked(Ljava/lang/String;I)V

    .line 230
    monitor-exit v1

    .line 231
    return-void

    .line 230
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteMobileRadioPowerState(IJ)V
    .registers 6
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J

    .prologue
    .line 355
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 356
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 357
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteMobileRadioPowerState(IJ)V

    .line 358
    monitor-exit v1

    .line 359
    return-void

    .line 358
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteNetworkInterfaceType(Ljava/lang/String;I)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 659
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 660
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 661
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteNetworkInterfaceTypeLocked(Ljava/lang/String;I)V

    .line 662
    monitor-exit v1

    .line 663
    return-void

    .line 662
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteNetworkStatsEnabled()V
    .registers 3

    .prologue
    .line 667
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 668
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 669
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteNetworkStatsEnabledLocked()V

    .line 670
    monitor-exit v1

    .line 671
    return-void

    .line 670
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public notePhoneDataConnectionState(IZ)V
    .registers 5
    .param p1, "dataType"    # I
    .param p2, "hasData"    # Z

    .prologue
    .line 383
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 384
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 385
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneDataConnectionStateLocked(IZ)V

    .line 386
    monitor-exit v1

    .line 387
    return-void

    .line 386
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public notePhoneOff()V
    .registers 3

    .prologue
    .line 369
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 370
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 371
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOffLocked()V

    .line 372
    monitor-exit v1

    .line 373
    return-void

    .line 372
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public notePhoneOn()V
    .registers 3

    .prologue
    .line 362
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 363
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 364
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOnLocked()V

    .line 365
    monitor-exit v1

    .line 366
    return-void

    .line 365
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    .registers 4
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 376
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 377
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 378
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;)V

    .line 379
    monitor-exit v1

    .line 380
    return-void

    .line 379
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public notePhoneState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 390
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 391
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 392
    .local v0, "simState":I
    iget-object v2, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 393
    :try_start_e
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneStateLocked(II)V

    .line 394
    monitor-exit v2

    .line 395
    return-void

    .line 394
    :catchall_15
    move-exception v1

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v1
.end method

.method noteProcessFinish(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 153
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 154
    :try_start_3
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessFinishLocked(Ljava/lang/String;I)V

    .line 155
    monitor-exit v1

    .line 156
    return-void

    .line 155
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method noteProcessStart(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 141
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 142
    :try_start_3
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessStartLocked(Ljava/lang/String;I)V

    .line 143
    monitor-exit v1

    .line 144
    return-void

    .line 143
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method noteProcessState(Ljava/lang/String;II)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "state"    # I

    .prologue
    .line 147
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 148
    :try_start_3
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessStateLocked(Ljava/lang/String;II)V

    .line 149
    monitor-exit v1

    .line 150
    return-void

    .line 149
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public noteResetAudio()V
    .registers 3

    .prologue
    .line 440
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 441
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 442
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetAudioLocked()V

    .line 443
    monitor-exit v1

    .line 444
    return-void

    .line 443
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteResetVideo()V
    .registers 3

    .prologue
    .line 447
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 448
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 449
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetVideoLocked()V

    .line 450
    monitor-exit v1

    .line 451
    return-void

    .line 450
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteScreenBrightness(I)V
    .registers 4
    .param p1, "brightness"    # I

    .prologue
    .line 334
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 335
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 336
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenBrightnessLocked(I)V

    .line 337
    monitor-exit v1

    .line 338
    return-void

    .line 337
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteScreenState(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    .line 327
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 328
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 329
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenStateLocked(I)V

    .line 330
    monitor-exit v1

    .line 331
    return-void

    .line 330
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteStartAudio(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 412
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 413
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 414
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOnLocked(I)V

    .line 415
    monitor-exit v1

    .line 416
    return-void

    .line 415
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteStartGps(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 313
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 314
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 315
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartGpsLocked(I)V

    .line 316
    monitor-exit v1

    .line 317
    return-void

    .line 316
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteStartSensor(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .prologue
    .line 285
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 286
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 287
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartSensorLocked(II)V

    .line 288
    monitor-exit v1

    .line 289
    return-void

    .line 288
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteStartVideo(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 426
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 427
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 428
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOnLocked(I)V

    .line 429
    monitor-exit v1

    .line 430
    return-void

    .line 429
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 20
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z

    .prologue
    .line 242
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 243
    iget-object v12, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v12

    .line 244
    :try_start_6
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILjava/lang/String;Ljava/lang/String;IZJJ)V

    .line 246
    monitor-exit v12

    .line 247
    return-void

    .line 246
    :catchall_1f
    move-exception v0

    monitor-exit v12
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 15
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z

    .prologue
    .line 259
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 260
    iget-object v7, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 261
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 263
    monitor-exit v7

    .line 264
    return-void

    .line 263
    :catchall_13
    move-exception v0

    monitor-exit v7
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public noteStopAudio(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 419
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 420
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 421
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOffLocked(I)V

    .line 422
    monitor-exit v1

    .line 423
    return-void

    .line 422
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteStopGps(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 320
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 321
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 322
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopGpsLocked(I)V

    .line 323
    monitor-exit v1

    .line 324
    return-void

    .line 323
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteStopSensor(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .prologue
    .line 292
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 293
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 294
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopSensorLocked(II)V

    .line 295
    monitor-exit v1

    .line 296
    return-void

    .line 295
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteStopVideo(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 433
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 434
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 435
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOffLocked(I)V

    .line 436
    monitor-exit v1

    .line 437
    return-void

    .line 436
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V
    .registers 17
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 250
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 251
    iget-object v10, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v10

    .line 252
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILjava/lang/String;Ljava/lang/String;IJJ)V

    .line 254
    monitor-exit v10

    .line 255
    return-void

    .line 254
    :catchall_1b
    move-exception v0

    monitor-exit v10
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 278
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 279
    iget-object v6, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v6

    .line 280
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    .line 281
    monitor-exit v6

    .line 282
    return-void

    .line 281
    :catchall_12
    move-exception v0

    monitor-exit v6
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public noteSyncFinish(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 220
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 221
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 222
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncFinishLocked(Ljava/lang/String;I)V

    .line 223
    monitor-exit v1

    .line 224
    return-void

    .line 223
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteSyncStart(Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 213
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 214
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 215
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncStartLocked(Ljava/lang/String;I)V

    .line 216
    monitor-exit v1

    .line 217
    return-void

    .line 216
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteUserActivity(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "event"    # I

    .prologue
    .line 341
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 342
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 343
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteUserActivityLocked(II)V

    .line 344
    monitor-exit v1

    .line 345
    return-void

    .line 344
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteVibratorOff(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 306
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 307
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 308
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOffLocked(I)V

    .line 309
    monitor-exit v1

    .line 310
    return-void

    .line 309
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteVibratorOn(IJ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "durationMillis"    # J

    .prologue
    .line 299
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 300
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 301
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOnLocked(IJ)V

    .line 302
    monitor-exit v1

    .line 303
    return-void

    .line 302
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V
    .registers 5
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "csph"    # I

    .prologue
    .line 630
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 631
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 632
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStartedFromSourceLocked(Landroid/os/WorkSource;I)V

    .line 633
    monitor-exit v1

    .line 634
    return-void

    .line 633
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 637
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 638
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 639
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 640
    monitor-exit v1

    .line 641
    return-void

    .line 640
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiMulticastDisabled(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 595
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 596
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 597
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledLocked(I)V

    .line 598
    monitor-exit v1

    .line 599
    return-void

    .line 598
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiMulticastDisabledFromSource(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 651
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 652
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 653
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledFromSourceLocked(Landroid/os/WorkSource;)V

    .line 654
    monitor-exit v1

    .line 655
    return-void

    .line 654
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiMulticastEnabled(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 588
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 589
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 590
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledLocked(I)V

    .line 591
    monitor-exit v1

    .line 592
    return-void

    .line 591
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiMulticastEnabledFromSource(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 644
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 645
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 646
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledFromSourceLocked(Landroid/os/WorkSource;)V

    .line 647
    monitor-exit v1

    .line 648
    return-void

    .line 647
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiOff()V
    .registers 3

    .prologue
    .line 405
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 406
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 407
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOffLocked()V

    .line 408
    monitor-exit v1

    .line 409
    return-void

    .line 408
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiOn()V
    .registers 3

    .prologue
    .line 398
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 399
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 400
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOnLocked()V

    .line 401
    monitor-exit v1

    .line 402
    return-void

    .line 401
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiRssiChanged(I)V
    .registers 4
    .param p1, "newRssi"    # I

    .prologue
    .line 503
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 504
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 505
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRssiChangedLocked(I)V

    .line 506
    monitor-exit v1

    .line 507
    return-void

    .line 506
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiRunning(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 468
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 469
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 470
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningLocked(Landroid/os/WorkSource;)V

    .line 471
    monitor-exit v1

    .line 472
    return-void

    .line 471
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .registers 5
    .param p1, "oldWs"    # Landroid/os/WorkSource;
    .param p2, "newWs"    # Landroid/os/WorkSource;

    .prologue
    .line 475
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 476
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 477
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 478
    monitor-exit v1

    .line 479
    return-void

    .line 478
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiScanStarted(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 574
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 575
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 576
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedLocked(I)V

    .line 577
    monitor-exit v1

    .line 578
    return-void

    .line 577
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 616
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 617
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 618
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 619
    monitor-exit v1

    .line 620
    return-void

    .line 619
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiScanStopped(I)V
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 581
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 582
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 583
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedLocked(I)V

    .line 584
    monitor-exit v1

    .line 585
    return-void

    .line 584
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 623
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 624
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 625
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 626
    monitor-exit v1

    .line 627
    return-void

    .line 626
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiState(ILjava/lang/String;)V
    .registers 5
    .param p1, "wifiState"    # I
    .param p2, "accessPoint"    # Ljava/lang/String;

    .prologue
    .line 489
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 490
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 491
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStateLocked(ILjava/lang/String;)V

    .line 492
    monitor-exit v1

    .line 493
    return-void

    .line 492
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiStopped(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    .line 482
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 483
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 484
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStoppedLocked(Landroid/os/WorkSource;)V

    .line 485
    monitor-exit v1

    .line 486
    return-void

    .line 485
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public noteWifiSupplicantStateChanged(IZ)V
    .registers 5
    .param p1, "supplState"    # I
    .param p2, "failedAuth"    # Z

    .prologue
    .line 496
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 497
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 498
    :try_start_6
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiSupplicantStateChangedLocked(IZ)V

    .line 499
    monitor-exit v1

    .line 500
    return-void

    .line 499
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public onLowPowerModeChanged(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 112
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 113
    :try_start_3
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteLowPowerMode(Z)V

    .line 114
    monitor-exit v1

    .line 115
    return-void

    .line 114
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public publish(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 76
    const-string v0, "batterystats"

    invoke-virtual {p0}, asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 77
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    new-instance v1, Lcom/android/internal/os/PowerProfile;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->setNumSpeedSteps(I)V

    .line 78
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->setRadioScanningTimeout(J)V

    .line 81
    return-void
.end method

.method removeIsolatedUid(II)V
    .registers 5
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .prologue
    .line 135
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 136
    :try_start_3
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->removeIsolatedUidLocked(II)V

    .line 137
    monitor-exit v1

    .line 138
    return-void

    .line 137
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public setBatteryState(IIIIII)V
    .registers 14
    .param p1, "status"    # I
    .param p2, "health"    # I
    .param p3, "plugType"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I

    .prologue
    .line 679
    invoke-virtual {p0}, enforceCallingPermission()V

    .line 680
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryState(IIIIII)V

    .line 681
    return-void
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 95
    const-string v0, "BatteryStats"

    const-string v1, "Writing battery stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 97
    :try_start_a
    iget-object v0, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->shutdownLocked()V

    .line 98
    monitor-exit v1

    .line 99
    return-void

    .line 98
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw v0
.end method
