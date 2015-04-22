.class Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
.super Ljava/lang/Object;
.source "BatteryStatsDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LastDatabaseInfo"
.end annotation


# instance fields
.field private networkUsage:J

.field private offPower:D

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsDBHelper;

.field private time:Ljava/lang/String;

.field private totalPower:D


# direct methods
.method private constructor <init>(Lcom/android/internal/os/BatteryStatsDBHelper;Ljava/lang/String;DDJ)V
    .registers 10
    .param p2, "time"    # Ljava/lang/String;
    .param p3, "offPower"    # D
    .param p5, "totalPower"    # D
    .param p7, "networkUsage"    # J

    .prologue
    .line 712
    iput-object p1, p0, this$0:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    iput-object p2, p0, time:Ljava/lang/String;

    .line 714
    iput-wide p3, p0, offPower:D

    .line 715
    iput-wide p5, p0, totalPower:D

    .line 716
    iput-wide p7, p0, networkUsage:J

    .line 717
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/BatteryStatsDBHelper;Ljava/lang/String;DDJLcom/android/internal/os/BatteryStatsDBHelper$1;)V
    .registers 11
    .param p1, "x0"    # Lcom/android/internal/os/BatteryStatsDBHelper;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # D
    .param p5, "x3"    # D
    .param p7, "x4"    # J
    .param p9, "x5"    # Lcom/android/internal/os/BatteryStatsDBHelper$1;

    .prologue
    .line 703
    invoke-direct/range {p0 .. p8}, <init>(Lcom/android/internal/os/BatteryStatsDBHelper;Ljava/lang/String;DDJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;)D
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;

    .prologue
    .line 703
    iget-wide v0, p0, totalPower:D

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;)D
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;

    .prologue
    .line 703
    iget-wide v0, p0, offPower:D

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;

    .prologue
    .line 703
    iget-wide v0, p0, networkUsage:J

    return-wide v0
.end method
