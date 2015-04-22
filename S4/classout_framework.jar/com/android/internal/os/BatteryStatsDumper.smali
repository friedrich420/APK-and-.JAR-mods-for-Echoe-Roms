.class public Lcom/android/internal/os/BatteryStatsDumper;
.super Ljava/lang/Object;
.source "BatteryStatsDumper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsDumper$1;,
        Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BatteryStatsDumper"

.field static cal:Ljava/util/Calendar;

.field public static db:Lcom/android/internal/os/BatteryStatsDBHelper;

.field private static sPrevBatteryLevel:I

.field public static sScreenOn:Z


# instance fields
.field private mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mContext:Landroid/content/Context;

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private final mStatsType:I

.field private pm:Landroid/content/pm/PackageManager;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, mStatsType:I

    .line 63
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, pm:Landroid/content/pm/PackageManager;

    .line 67
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 69
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 73
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, sensorManager:Landroid/hardware/SensorManager;

    .line 75
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getInstance(Landroid/content/Context;)Lcom/android/internal/os/BatteryStatsDBHelper;

    move-result-object v0

    sput-object v0, db:Lcom/android/internal/os/BatteryStatsDBHelper;

    .line 77
    sget-wide v0, Lcom/android/internal/os/BatteryStatsDBHelper;->sBatteryCapacity:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4a

    .line 79
    iget-object v0, p0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/os/BatteryStatsDBHelper;->sBatteryCapacity:D

    .line 83
    :cond_4a
    return-void
.end method

.method private addScreenUsage(J)D
    .registers 26
    .param p1, "rawRealtime"    # J

    .prologue
    .line 608
    const-wide/16 v10, 0x0

    .line 610
    .local v10, "power":D
    move-object/from16 v0, p0

    iget-object v7, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v18, 0x0

    move-wide/from16 v0, p1

    move/from16 v2, v18

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v16, v18, v20

    .line 612
    .local v16, "screenOnTimeMs":J
    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v20, "screen.on"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v10, v10, v18

    .line 614
    move-object/from16 v0, p0

    iget-object v7, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v18, "screen.full"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v14

    .line 618
    .local v14, "screenFullPower":D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_38
    const/4 v7, 0x5

    if-ge v6, v7, :cond_a1

    .line 620
    int-to-float v7, v6

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v7, v7, v18

    float-to-double v0, v7

    move-wide/from16 v18, v0

    mul-double v18, v18, v14

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    div-double v12, v18, v20

    .line 624
    .local v12, "screenBinPower":D
    move-object/from16 v0, p0

    iget-object v7, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v18, 0x0

    move-wide/from16 v0, p1

    move/from16 v2, v18

    invoke-virtual {v7, v6, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v4, v18, v20

    .line 628
    .local v4, "brightnessTime":J
    long-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v8, v12, v18

    .line 630
    .local v8, "p":D
    const-string v7, "BatteryStatsDumper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Screen bin #"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": time="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " power="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-wide v20, 0x414b774000000000L    # 3600000.0

    div-double v20, v8, v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    add-double/2addr v10, v8

    .line 618
    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    .line 638
    .end local v4    # "brightnessTime":J
    .end local v8    # "p":D
    .end local v12    # "screenBinPower":D
    :cond_a1
    const-wide v18, 0x414b774000000000L    # 3600000.0

    div-double v10, v10, v18

    return-wide v10
.end method

.method private getByteFromFile(Ljava/lang/String;)B
    .registers 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 678
    const/4 v1, 0x0

    .line 682
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x8

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_30
    .catchall {:try_start_1 .. :try_end_d} :catchall_3d

    .line 684
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 686
    .local v4, "s":Ljava/lang/String;
    :try_start_e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 688
    if-eqz v4, :cond_18

    .line 690
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 694
    :cond_18
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 696
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_22} :catch_4c
    .catchall {:try_start_e .. :try_end_22} :catchall_49

    move-result v3

    .line 706
    .local v3, "ret":B
    if-eqz v2, :cond_28

    .line 708
    :try_start_25
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_2a

    :cond_28
    move-object v1, v2

    .line 720
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v4    # "s":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :cond_29
    :goto_29
    return v3

    .line 712
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "s":Ljava/lang/String;
    :catch_2a
    move-exception v0

    .line 714
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 718
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_29

    .line 698
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "ret":B
    .end local v4    # "s":Ljava/lang/String;
    :catch_30
    move-exception v0

    .line 700
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_31
    const/4 v3, -0x1

    .line 706
    .restart local v3    # "ret":B
    if-eqz v1, :cond_29

    .line 708
    :try_start_34
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_29

    .line 712
    :catch_38
    move-exception v0

    .line 714
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 704
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "ret":B
    :catchall_3d
    move-exception v5

    .line 706
    :goto_3e
    if-eqz v1, :cond_43

    .line 708
    :try_start_40
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    .line 716
    :cond_43
    :goto_43
    throw v5

    .line 712
    :catch_44
    move-exception v0

    .line 714
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_43

    .line 704
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "s":Ljava/lang/String;
    :catchall_49
    move-exception v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_3e

    .line 698
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catch_4c
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    goto :goto_31
.end method

.method private getMobilePowerPerMs()D
    .registers 5

    .prologue
    .line 585
    iget-object v0, p0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private getMobilePowerPerPacket(J)D
    .registers 26
    .param p1, "rawRealtime"    # J

    .prologue
    .line 552
    const-wide/32 v4, 0x30d40

    .line 555
    .local v4, "MOBILE_BPS":J
    move-object/from16 v0, p0

    iget-object v0, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v18, v0

    const-string/jumbo v19, "radio.active"

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v18

    const-wide v20, 0x40ac200000000000L    # 3600.0

    div-double v6, v18, v20

    .line 559
    .local v6, "MOBILE_POWER":D
    move-object/from16 v0, p0

    iget-object v0, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkActivityPackets(II)J

    move-result-wide v12

    .line 561
    .local v12, "mobileRx":J
    move-object/from16 v0, p0

    iget-object v0, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkActivityPackets(II)J

    move-result-wide v14

    .line 563
    .local v14, "mobileTx":J
    add-long v8, v12, v14

    .line 565
    .local v8, "mobileData":J
    move-object/from16 v0, p0

    iget-object v0, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileRadioActiveTime(JI)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v16, v18, v20

    .line 569
    .local v16, "radioDataUptimeMs":J
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-eqz v18, :cond_6b

    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-eqz v18, :cond_6b

    long-to-double v0, v8

    move-wide/from16 v18, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v10, v18, v20

    .line 575
    .local v10, "mobilePps":D
    :goto_61
    div-double v18, v6, v10

    const-wide v20, 0x40ac200000000000L    # 3600.0

    div-double v18, v18, v20

    return-wide v18

    .line 569
    .end local v10    # "mobilePps":D
    :cond_6b
    const-wide v10, 0x40286a0000000000L    # 12.20703125

    goto :goto_61
.end method

.method private getWifiPowerPerPacket()D
    .registers 9

    .prologue
    const-wide v6, 0x40ac200000000000L    # 3600.0

    .line 595
    const-wide/32 v0, 0xf4240

    .line 598
    .local v0, "WIFI_BPS":J
    iget-object v4, p0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v5, "wifi.active"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    div-double v2, v4, v6

    .line 602
    .local v2, "WIFI_POWER":D
    const-wide v4, 0x404e848000000000L    # 61.03515625

    div-double v4, v2, v4

    div-double/2addr v4, v6

    return-wide v4
.end method

.method private load()V
    .registers 6

    .prologue
    .line 89
    :try_start_0
    iget-object v3, p0, mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 91
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 93
    .local v2, "parcel":Landroid/os/Parcel;
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 95
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 97
    sget-object v3, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v3, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 99
    iget-object v3, p0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V

    .line 101
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_27

    .line 109
    .end local v0    # "data":[B
    .end local v2    # "parcel":Landroid/os/Parcel;
    :goto_26
    return-void

    .line 103
    :catch_27
    move-exception v1

    .line 105
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_26
.end method


# virtual methods
.method public computeSavedTimeAfterKillingPackage(Ljava/lang/String;)J
    .registers 28
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 737
    :try_start_0
    const-string v20, "BatteryStatsDumper"

    const-string v21, "computeSavedTimeAfterKillingPackage:: start"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    sget-object v20, db:Lcom/android/internal/os/BatteryStatsDBHelper;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->getAverageLevelDropPerHour(Ljava/lang/String;)D

    move-result-wide v6

    .line 741
    .local v6, "consumptionRateOfPackage":D
    const-string v20, "BatteryStatsDumper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computeSavedTimeAfterKillingPackage:: consumptionRateOfPackage:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const-wide/16 v8, 0x0

    .line 748
    .local v8, "consumptionRateTotal":D
    move-object/from16 v0, p0

    iget-object v0, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v21, v0

    monitor-enter v21
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_123

    .line 750
    :try_start_34
    move-object/from16 v0, p0

    iget-object v0, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeStepDurationsArray()[J

    move-result-object v5

    .line 752
    .local v5, "dischageSteps":[J
    move-object/from16 v0, p0

    iget-object v0, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/BatteryStatsImpl;->getNumDischargeStepDurations()I

    move-result v10

    .line 754
    .local v10, "dischageStepsNum":I
    const-string v20, "BatteryStatsDumper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "computeSavedTimeAfterKillingPackage:: dischageStepsNum:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    if-gtz v10, :cond_6c

    .line 759
    const-wide/16 v12, -0x1

    monitor-exit v21

    .line 816
    .end local v5    # "dischageSteps":[J
    .end local v6    # "consumptionRateOfPackage":D
    .end local v8    # "consumptionRateTotal":D
    .end local v10    # "dischageStepsNum":I
    :goto_6b
    return-wide v12

    .line 763
    .restart local v5    # "dischageSteps":[J
    .restart local v6    # "consumptionRateOfPackage":D
    .restart local v8    # "consumptionRateTotal":D
    .restart local v10    # "dischageStepsNum":I
    :cond_6c
    const-wide/16 v18, 0x0

    .line 765
    .local v18, "total":J
    const-wide v16, 0xffffffffffL

    .line 767
    .local v16, "stepLevelTimeMask":J
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_74
    if-ge v12, v10, :cond_bb

    .line 769
    const-string v20, "BatteryStatsDumper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "computeSavedTimeAfterKillingPackage:: i:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " dischageSteps:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-wide v24, v5, v12

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " stepLevelTimeMask:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    aget-wide v22, v5, v12

    and-long v22, v22, v16

    add-long v18, v18, v22

    .line 767
    add-int/lit8 v12, v12, 0x1

    goto :goto_74

    .line 776
    :cond_bb
    mul-int/lit16 v0, v10, 0xe10

    move/from16 v20, v0

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v22, v0

    div-long v22, v22, v18

    move-wide/from16 v0, v22

    long-to-double v8, v0

    .line 778
    const-string v20, "BatteryStatsDumper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "computeSavedTimeAfterKillingPackage:: consumptionRateTotal:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    .line 783
    .local v4, "batteryLevel":I
    const-string v20, "BatteryStatsDumper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "computeSavedTimeAfterKillingPackage:: batteryLevel:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    monitor-exit v21

    .line 787
    const-wide/16 v20, 0x0

    cmpl-double v20, v8, v20

    if-nez v20, :cond_12f

    .line 789
    const-wide/16 v12, -0x1

    goto/16 :goto_6b

    .line 785
    .end local v4    # "batteryLevel":I
    .end local v5    # "dischageSteps":[J
    .end local v10    # "dischageStepsNum":I
    .end local v12    # "i":I
    .end local v16    # "stepLevelTimeMask":J
    .end local v18    # "total":J
    :catchall_120
    move-exception v20

    monitor-exit v21
    :try_end_122
    .catchall {:try_start_34 .. :try_end_122} :catchall_120

    :try_start_122
    throw v20
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_123} :catch_123

    .line 814
    .end local v6    # "consumptionRateOfPackage":D
    .end local v8    # "consumptionRateTotal":D
    :catch_123
    move-exception v11

    .line 815
    .local v11, "e":Ljava/lang/Exception;
    const-string v20, "BatteryStatsDumper"

    const-string v21, "computeSavedTimeAfterKillingPackage::  Exception"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const-wide/16 v12, 0x0

    goto/16 :goto_6b

    .line 793
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v4    # "batteryLevel":I
    .restart local v5    # "dischageSteps":[J
    .restart local v6    # "consumptionRateOfPackage":D
    .restart local v8    # "consumptionRateTotal":D
    .restart local v10    # "dischageStepsNum":I
    .restart local v12    # "i":I
    .restart local v16    # "stepLevelTimeMask":J
    .restart local v18    # "total":J
    :cond_12f
    const-wide/16 v14, 0x0

    .line 795
    .local v14, "newConsumptionRateTotal":D
    cmpl-double v20, v8, v6

    if-lez v20, :cond_1ab

    .line 796
    sub-double v14, v8, v6

    .line 801
    :goto_137
    :try_start_137
    const-string v20, "BatteryStatsDumper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Average battery consumption rate = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " app rate = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " new rate = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " current battery level = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    int-to-double v0, v4

    move-wide/from16 v20, v0

    mul-double v20, v20, v6

    const-wide v22, 0x40ac200000000000L    # 3600.0

    mul-double v20, v20, v22

    const-wide v22, 0x408f400000000000L    # 1000.0

    mul-double v20, v20, v22

    mul-double v22, v8, v14

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-long v12, v0

    .line 810
    .local v12, "i":J
    const-string v20, "BatteryStatsDumper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "computeSavedTimeAfterKillingPackage:: returning i:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_1a9} :catch_123

    goto/16 :goto_6b

    .line 798
    .local v12, "i":I
    :cond_1ab
    sub-double v14, v6, v8

    goto :goto_137
.end method

.method public getBatteryLevel()I
    .registers 6

    .prologue
    .line 654
    const/4 v0, 0x0

    .line 656
    .local v0, "battValue":I
    const/4 v1, -0x1

    .line 658
    .local v1, "batteryLevel":B
    const-string v2, "/sys/class/power_supply/battery/capacity"

    invoke-direct {p0, v2}, getByteFromFile(Ljava/lang/String;)B

    move-result v1

    .line 660
    if-gez v1, :cond_25

    .line 662
    const/16 v0, 0x64

    .line 668
    :goto_c
    const-string v2, "BatteryStatsDumper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    return v0

    .line 666
    :cond_25
    move v0, v1

    goto :goto_c
.end method

.method public refreshStats(Z)V
    .registers 120
    .param p1, "isWriteReasonScreenChange"    # Z

    .prologue
    .line 113
    invoke-direct/range {p0 .. p0}, load()V

    .line 115
    move-object/from16 v0, p0

    iget-object v5, v0, sensorManager:Landroid/hardware/SensorManager;

    if-nez v5, :cond_1a

    .line 117
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    const-string/jumbo v12, "sensor"

    invoke-virtual {v5, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    move-object/from16 v0, p0

    iput-object v5, v0, sensorManager:Landroid/hardware/SensorManager;

    .line 121
    :cond_1a
    const/16 v106, 0x0

    .line 123
    .local v106, "which":I
    const-wide/16 v18, 0x0

    .line 125
    .local v18, "totalPower":D
    move-object/from16 v0, p0

    iget-object v5, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v5}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v85

    .line 127
    .local v85, "speedSteps":I
    move/from16 v0, v85

    new-array v0, v0, [D

    move-object/from16 v72, v0

    .line 129
    .local v72, "powerCpuNormal":[D
    move/from16 v0, v85

    new-array v0, v0, [J

    move-object/from16 v37, v0

    .line 131
    .local v37, "cpuSpeedStepTimes":[J
    const/16 v68, 0x0

    .local v68, "p":I
    :goto_34
    move/from16 v0, v68

    move/from16 v1, v85

    if-ge v0, v1, :cond_4b

    .line 133
    move-object/from16 v0, p0

    iget-object v5, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v12, "cpu.active"

    move/from16 v0, v68

    invoke-virtual {v5, v12, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v12

    aput-wide v12, v72, v68

    .line 131
    add-int/lit8 v68, v68, 0x1

    goto :goto_34

    .line 141
    :cond_4b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const-wide/16 v16, 0x3e8

    mul-long v54, v12, v16

    .line 143
    .local v54, "mRawRealtime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v54

    invoke-direct {v0, v1, v2}, getMobilePowerPerPacket(J)D

    move-result-wide v60

    .line 145
    .local v60, "mobilePowerPerPacket":D
    invoke-direct/range {p0 .. p0}, getMobilePowerPerMs()D

    move-result-wide v58

    .line 147
    .local v58, "mobilePowerPerMs":D
    invoke-direct/range {p0 .. p0}, getWifiPowerPerPacket()D

    move-result-wide v108

    .line 149
    .local v108, "wifiPowerPerPacket":D
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    sput-object v5, cal:Ljava/util/Calendar;

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, cal:Ljava/util/Calendar;

    const/4 v13, 0x6

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ":"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v12, cal:Ljava/util/Calendar;

    const/16 v13, 0xb

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ":"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v12, cal:Ljava/util/Calendar;

    const/16 v13, 0xc

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v92

    .line 155
    .local v92, "time":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v98

    .line 157
    .local v98, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v98 .. v98}, Landroid/util/SparseArray;->size()I

    move-result v33

    .line 159
    .local v33, "NU":I
    const-string v5, "BatteryStatsDumper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "In refreshStats isReason Screen ON/OFF: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v29, "powerEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsDumper$PowerObject;>;"
    const/16 v53, 0x0

    .end local v68    # "p":I
    .local v53, "iu":I
    :goto_ce
    move/from16 v0, v53

    move/from16 v1, v33

    if-ge v0, v1, :cond_42b

    .line 165
    move-object/from16 v0, v98

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/os/BatteryStats$Uid;

    .line 169
    .local v97, "u":Landroid/os/BatteryStats$Uid;
    const-wide/16 v6, 0x0

    .line 171
    .local v6, "power":D
    const-wide/16 v50, 0x0

    .line 173
    .local v50, "highestDrain":D
    const/16 v70, 0x0

    .line 175
    .local v70, "packageWithHighestDrain":Ljava/lang/String;
    invoke-virtual/range {v97 .. v97}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v76

    .line 177
    .local v76, "processStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-wide/16 v40, 0x0

    .line 179
    .local v40, "cpuTime":J
    const-wide/16 v38, 0x0

    .line 181
    .local v38, "cpuFgTime":J
    const-wide/16 v104, 0x0

    .line 183
    .local v104, "wakelockTime":J
    const-wide/16 v48, 0x0

    .line 185
    .local v48, "gpsTime":J
    const-wide/16 v14, 0x0

    .line 187
    .local v14, "uidUsageTime":J
    invoke-interface/range {v76 .. v76}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_1bf

    .line 191
    invoke-interface/range {v76 .. v76}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v45

    .local v45, "i$":Ljava/util/Iterator;
    :cond_100
    :goto_100
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1bf

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/util/Map$Entry;

    .line 195
    .local v44, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v44 .. v44}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/os/BatteryStats$Uid$Proc;

    .line 197
    .local v77, "ps":Landroid/os/BatteryStats$Uid$Proc;
    invoke-interface/range {v44 .. v44}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Ljava/lang/String;

    .line 199
    .local v73, "process":Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, v77

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v100

    .line 201
    .local v100, "userTime":J
    const/4 v5, 0x0

    move-object/from16 v0, v77

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v90

    .line 203
    .local v90, "systemTime":J
    const/4 v5, 0x0

    move-object/from16 v0, v77

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v46

    .line 205
    .local v46, "foregroundTime":J
    const-wide/16 v12, 0xa

    mul-long v12, v12, v46

    add-long v38, v38, v12

    .line 207
    add-long v12, v100, v90

    const-wide/16 v16, 0xa

    mul-long v94, v12, v16

    .line 209
    .local v94, "tmpCpuTime":J
    const/16 v96, 0x0

    .line 211
    .local v96, "totalTimeAtSpeeds":I
    const-wide/16 v42, 0x0

    .line 215
    .local v42, "cpu_power":D
    const/16 v88, 0x0

    .local v88, "step":I
    :goto_13f
    move/from16 v0, v88

    move/from16 v1, v85

    if-ge v0, v1, :cond_15d

    .line 217
    const/4 v5, 0x0

    move-object/from16 v0, v77

    move/from16 v1, v88

    invoke-virtual {v0, v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v12

    aput-wide v12, v37, v88

    .line 219
    move/from16 v0, v96

    int-to-long v12, v0

    aget-wide v16, v37, v88

    add-long v12, v12, v16

    long-to-int v0, v12

    move/from16 v96, v0

    .line 215
    add-int/lit8 v88, v88, 0x1

    goto :goto_13f

    .line 223
    :cond_15d
    if-nez v96, :cond_161

    .line 225
    const/16 v96, 0x1

    .line 229
    :cond_161
    const-wide/16 v74, 0x0

    .line 231
    .local v74, "processPower":D
    const/16 v88, 0x0

    :goto_165
    move/from16 v0, v88

    move/from16 v1, v85

    if-ge v0, v1, :cond_183

    .line 233
    aget-wide v12, v37, v88

    long-to-double v12, v12

    move/from16 v0, v96

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v78, v12, v16

    .line 235
    .local v78, "ratio":D
    move-wide/from16 v0, v94

    long-to-double v12, v0

    mul-double v12, v12, v78

    aget-wide v16, v72, v88

    mul-double v12, v12, v16

    add-double v74, v74, v12

    .line 231
    add-int/lit8 v88, v88, 0x1

    goto :goto_165

    .line 239
    .end local v78    # "ratio":D
    :cond_183
    add-long v40, v40, v94

    .line 241
    const-wide/16 v12, 0x0

    cmpl-double v5, v74, v12

    if-eqz v5, :cond_100

    .line 243
    add-double v6, v6, v74

    .line 245
    if-eqz v70, :cond_199

    const-string v5, "*"

    move-object/from16 v0, v70

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a3

    .line 249
    :cond_199
    move-wide/from16 v50, v74

    .line 251
    invoke-interface/range {v44 .. v44}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v70

    .end local v70    # "packageWithHighestDrain":Ljava/lang/String;
    check-cast v70, Ljava/lang/String;

    .restart local v70    # "packageWithHighestDrain":Ljava/lang/String;
    goto/16 :goto_100

    .line 253
    :cond_1a3
    cmpg-double v5, v50, v74

    if-gez v5, :cond_100

    invoke-interface/range {v44 .. v44}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v12, "*"

    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_100

    .line 257
    move-wide/from16 v50, v74

    .line 259
    invoke-interface/range {v44 .. v44}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v70

    .end local v70    # "packageWithHighestDrain":Ljava/lang/String;
    check-cast v70, Ljava/lang/String;

    .restart local v70    # "packageWithHighestDrain":Ljava/lang/String;
    goto/16 :goto_100

    .line 269
    .end local v42    # "cpu_power":D
    .end local v44    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v45    # "i$":Ljava/util/Iterator;
    .end local v46    # "foregroundTime":J
    .end local v73    # "process":Ljava/lang/String;
    .end local v74    # "processPower":D
    .end local v77    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v88    # "step":I
    .end local v90    # "systemTime":J
    .end local v94    # "tmpCpuTime":J
    .end local v96    # "totalTimeAtSpeeds":I
    .end local v100    # "userTime":J
    :cond_1bf
    cmp-long v5, v38, v40

    if-lez v5, :cond_1d4

    .line 271
    const-wide/16 v12, 0x2710

    add-long v12, v12, v40

    cmp-long v5, v38, v12

    if-lez v5, :cond_1d2

    .line 273
    const-string v5, "BatteryStatsDumper"

    const-string v12, "WARNING! Cputime is more than 10 seconds behind Foreground time"

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_1d2
    move-wide/from16 v40, v38

    .line 282
    :cond_1d4
    const-wide v12, 0x414b774000000000L    # 3600000.0

    div-double/2addr v6, v12

    .line 284
    add-long v14, v14, v40

    .line 288
    invoke-virtual/range {v97 .. v97}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v103

    .line 292
    .local v103, "wakelockStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v103 .. v103}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v45

    .restart local v45    # "i$":Ljava/util/Iterator;
    :cond_1e8
    :goto_1e8
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20f

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Ljava/util/Map$Entry;

    .line 294
    .local v102, "wakelockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v102 .. v102}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v99

    check-cast v99, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 300
    .local v99, "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v5, 0x0

    move-object/from16 v0, v99

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v93

    .line 302
    .local v93, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v93, :cond_1e8

    .line 304
    const/4 v5, 0x0

    move-object/from16 v0, v93

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    add-long v104, v104, v12

    goto :goto_1e8

    .line 310
    .end local v93    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v99    # "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v102    # "wakelockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_20f
    const-wide/16 v12, 0x3e8

    div-long v104, v104, v12

    .line 314
    move-wide/from16 v0, v104

    long-to-double v12, v0

    move-object/from16 v0, p0

    iget-object v5, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v16, "cpu.awake"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v16

    mul-double v12, v12, v16

    const-wide v16, 0x414b774000000000L    # 3600000.0

    div-double v68, v12, v16

    .line 318
    .local v68, "p":D
    add-double v6, v6, v68

    .line 320
    add-long v14, v14, v104

    .line 324
    const/4 v5, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v97

    invoke-virtual {v0, v5, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v62

    .line 326
    .local v62, "mobileRx":J
    const/4 v5, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, v97

    invoke-virtual {v0, v5, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v64

    .line 328
    .local v64, "mobileTx":J
    const/4 v5, 0x0

    move-object/from16 v0, v97

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v56

    .line 330
    .local v56, "mobileActive":J
    const-wide/16 v12, 0x0

    cmp-long v5, v56, v12

    if-lez v5, :cond_2ff

    .line 337
    move-wide/from16 v0, v56

    long-to-double v12, v0

    mul-double v12, v12, v58

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v68, v12, v16

    .line 350
    :goto_258
    add-double v6, v6, v68

    .line 352
    add-long v14, v14, v56

    .line 356
    const/4 v5, 0x2

    const/4 v12, 0x0

    move-object/from16 v0, v97

    invoke-virtual {v0, v5, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v112

    .line 358
    .local v112, "wifiRx":J
    const/4 v5, 0x3

    const/4 v12, 0x0

    move-object/from16 v0, v97

    invoke-virtual {v0, v5, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v116

    .line 360
    .local v116, "wifiTx":J
    add-long v12, v112, v116

    long-to-double v12, v12

    mul-double v68, v12, v108

    .line 362
    add-double v6, v6, v68

    .line 366
    const/4 v5, 0x0

    move-object/from16 v0, v97

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2, v5}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v12

    const-wide/16 v16, 0x3e8

    div-long v110, v12, v16

    .line 368
    .local v110, "wifiRunningTimeMs":J
    move-wide/from16 v0, v110

    long-to-double v12, v0

    move-object/from16 v0, p0

    iget-object v5, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v16, "wifi.on"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v16

    mul-double v12, v12, v16

    const-wide v16, 0x414b774000000000L    # 3600000.0

    div-double v68, v12, v16

    .line 372
    add-double v6, v6, v68

    .line 374
    add-long v14, v14, v110

    .line 378
    const/4 v5, 0x0

    move-object/from16 v0, v97

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2, v5}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v12

    const-wide/16 v16, 0x3e8

    div-long v114, v12, v16

    .line 380
    .local v114, "wifiScanTimeMs":J
    move-wide/from16 v0, v114

    long-to-double v12, v0

    move-object/from16 v0, p0

    iget-object v5, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v16, "wifi.scan"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v16

    mul-double v12, v12, v16

    const-wide v16, 0x414b774000000000L    # 3600000.0

    div-double v68, v12, v16

    .line 384
    add-double v6, v6, v68

    .line 386
    add-long v14, v14, v114

    .line 388
    const/16 v36, 0x0

    .local v36, "bin":I
    :goto_2c9
    const/4 v5, 0x5

    move/from16 v0, v36

    if-ge v0, v5, :cond_306

    .line 390
    const/4 v5, 0x0

    move-object/from16 v0, v97

    move/from16 v1, v36

    move-wide/from16 v2, v54

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/os/BatteryStats$Uid;->getWifiBatchedScanTime(IJI)J

    move-result-wide v12

    const-wide/16 v16, 0x3e8

    div-long v34, v12, v16

    .line 392
    .local v34, "batchScanTimeMs":J
    move-wide/from16 v0, v34

    long-to-double v12, v0

    move-object/from16 v0, p0

    iget-object v5, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v16, "wifi.batchedscan"

    move-object/from16 v0, v16

    move/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v16

    mul-double v12, v12, v16

    const-wide v16, 0x414b774000000000L    # 3600000.0

    div-double v68, v12, v16

    .line 398
    add-double v6, v6, v68

    .line 400
    add-long v14, v14, v34

    .line 388
    add-int/lit8 v36, v36, 0x1

    goto :goto_2c9

    .line 346
    .end local v34    # "batchScanTimeMs":J
    .end local v36    # "bin":I
    .end local v110    # "wifiRunningTimeMs":J
    .end local v112    # "wifiRx":J
    .end local v114    # "wifiScanTimeMs":J
    .end local v116    # "wifiTx":J
    :cond_2ff
    add-long v12, v62, v64

    long-to-double v12, v12

    mul-double v68, v12, v60

    goto/16 :goto_258

    .line 406
    .restart local v36    # "bin":I
    .restart local v110    # "wifiRunningTimeMs":J
    .restart local v112    # "wifiRx":J
    .restart local v114    # "wifiScanTimeMs":J
    .restart local v116    # "wifiTx":J
    :cond_306
    invoke-virtual/range {v97 .. v97}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v84

    .line 408
    .local v84, "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v84 .. v84}, Landroid/util/SparseArray;->size()I

    move-result v32

    .line 410
    .local v32, "NSE":I
    const/16 v52, 0x0

    .local v52, "ise":I
    :goto_310
    move/from16 v0, v52

    move/from16 v1, v32

    if-ge v0, v1, :cond_3da

    .line 412
    move-object/from16 v0, v84

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v81

    check-cast v81, Landroid/os/BatteryStats$Uid$Sensor;

    .line 414
    .local v81, "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    move-object/from16 v0, v84

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v82

    .line 416
    .local v82, "sensorHandle":I
    invoke-virtual/range {v81 .. v81}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v93

    .line 418
    .restart local v93    # "timer":Landroid/os/BatteryStats$Timer;
    const/4 v5, 0x0

    move-object/from16 v0, v93

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    const-wide/16 v16, 0x3e8

    div-long v86, v12, v16

    .line 420
    .local v86, "sensorTime":J
    const-wide/16 v66, 0x0

    .line 422
    .local v66, "multiplier":D
    packed-switch v82, :pswitch_data_4c8

    .line 436
    const-string v5, "BatteryStatsDumper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sensor Type : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v82

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    move-object/from16 v0, p0

    iget-object v5, v0, sensorManager:Landroid/hardware/SensorManager;

    const/4 v12, -0x1

    invoke-virtual {v5, v12}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v83

    .line 442
    .local v83, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface/range {v83 .. v83}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v45

    :cond_365
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_380

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Landroid/hardware/Sensor;

    .line 444
    .local v80, "s":Landroid/hardware/Sensor;
    invoke-virtual/range {v80 .. v80}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    move/from16 v0, v82

    if-ne v5, v0, :cond_365

    .line 446
    invoke-virtual/range {v80 .. v80}, Landroid/hardware/Sensor;->getPower()F

    move-result v5

    float-to-double v0, v5

    move-wide/from16 v66, v0

    .line 456
    .end local v80    # "s":Landroid/hardware/Sensor;
    .end local v83    # "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_380
    :goto_380
    move-wide/from16 v0, v86

    long-to-double v12, v0

    mul-double v12, v12, v66

    const-wide v16, 0x414b774000000000L    # 3600000.0

    div-double v68, v12, v16

    .line 458
    add-double v6, v6, v68

    .line 460
    add-long v14, v14, v86

    .line 462
    const-string v5, "BatteryStatsDumper"

    const-string/jumbo v12, "sensor %s power=%.2f"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {v81 .. v81}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v13, v16

    const/16 v16, 0x1

    invoke-static/range {v68 .. v69}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v13, v16

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    add-int/lit8 v52, v52, 0x1

    goto/16 :goto_310

    .line 426
    :pswitch_3b3
    const-string v5, "BatteryStatsDumper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sensor Type : GPS : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v82

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    move-object/from16 v0, p0

    iget-object v5, v0, mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v12, "gps.on"

    invoke-virtual {v5, v12}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v66

    .line 430
    move-wide/from16 v48, v86

    .line 432
    goto :goto_380

    .line 466
    .end local v66    # "multiplier":D
    .end local v81    # "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v82    # "sensorHandle":I
    .end local v86    # "sensorTime":J
    .end local v93    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_3da
    const-wide/16 v12, 0x0

    cmpg-double v5, v6, v12

    if-gez v5, :cond_3e9

    .line 468
    const-string v5, "BatteryStatsDumper"

    const-string v12, " calculated power is negative"

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-wide/16 v6, 0x0

    .line 474
    :cond_3e9
    invoke-virtual/range {v97 .. v97}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v89

    .line 476
    .local v89, "thisUid":I
    const/4 v8, 0x0

    .line 478
    .local v8, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, pm:Landroid/content/pm/PackageManager;

    move/from16 v0, v89

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v71

    .line 480
    .local v71, "packages":[Ljava/lang/String;
    if-eqz v71, :cond_428

    move-object/from16 v0, v71

    array-length v5, v0

    if-lez v5, :cond_428

    .line 482
    const/4 v5, 0x0

    aget-object v8, v71, v5

    .line 490
    :goto_402
    const/4 v9, 0x0

    .line 492
    .local v9, "isSystem":Z
    const/16 v5, 0x2710

    move/from16 v0, v89

    if-ge v0, v5, :cond_40a

    .line 494
    const/4 v9, 0x1

    .line 498
    :cond_40a
    if-nez v9, :cond_40e

    .line 500
    add-double v18, v18, v6

    .line 504
    :cond_40e
    add-long v12, v112, v116

    add-long v12, v12, v62

    add-long v10, v12, v64

    .line 506
    .local v10, "totalNetworkUsage":J
    new-instance v4, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;

    const-wide/16 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v16}, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;-><init>(Lcom/android/internal/os/BatteryStatsDumper;DLjava/lang/String;ZJDJLcom/android/internal/os/BatteryStatsDumper$1;)V

    .line 509
    .local v4, "pObject":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v53, v53, 0x1

    goto/16 :goto_ce

    .line 486
    .end local v4    # "pObject":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .end local v9    # "isSystem":Z
    .end local v10    # "totalNetworkUsage":J
    :cond_428
    move-object/from16 v8, v70

    goto :goto_402

    .line 513
    .end local v6    # "power":D
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v14    # "uidUsageTime":J
    .end local v32    # "NSE":I
    .end local v36    # "bin":I
    .end local v38    # "cpuFgTime":J
    .end local v40    # "cpuTime":J
    .end local v45    # "i$":Ljava/util/Iterator;
    .end local v48    # "gpsTime":J
    .end local v50    # "highestDrain":D
    .end local v52    # "ise":I
    .end local v56    # "mobileActive":J
    .end local v62    # "mobileRx":J
    .end local v64    # "mobileTx":J
    .end local v68    # "p":D
    .end local v70    # "packageWithHighestDrain":Ljava/lang/String;
    .end local v71    # "packages":[Ljava/lang/String;
    .end local v76    # "processStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v84    # "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v89    # "thisUid":I
    .end local v97    # "u":Landroid/os/BatteryStats$Uid;
    .end local v103    # "wakelockStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v104    # "wakelockTime":J
    .end local v110    # "wifiRunningTimeMs":J
    .end local v112    # "wifiRx":J
    .end local v114    # "wifiScanTimeMs":J
    .end local v116    # "wifiTx":J
    :cond_42b
    const-string v5, "BatteryStatsDumper"

    const-string v12, "UID loop over"

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    move-object/from16 v0, p0

    move-wide/from16 v1, v54

    invoke-direct {v0, v1, v2}, addScreenUsage(J)D

    move-result-wide v24

    .line 517
    .local v24, "screenPower":D
    new-instance v4, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;

    const-string v20, "all"

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v16, v4

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v28}, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;-><init>(Lcom/android/internal/os/BatteryStatsDumper;DLjava/lang/String;ZJDJLcom/android/internal/os/BatteryStatsDumper$1;)V

    .line 519
    .restart local v4    # "pObject":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    move-object/from16 v0, p0

    iget-object v5, v0, mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v0, v5, Lcom/android/internal/os/BatteryStatsImpl;->mCurrentBatteryLevel:I

    move/from16 v31, v0

    .line 523
    .local v31, "currentBatteryLevel":I
    sget v5, sPrevBatteryLevel:I

    sub-int v30, v5, v31

    .line 525
    .local v30, "delta":I
    const-string v5, "BatteryStatsDumper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Previous Battery Level: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, sPrevBatteryLevel:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Current Level: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v31

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Delta: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    if-gez v30, :cond_494

    .line 530
    const/16 v30, 0x0

    .line 534
    :cond_494
    const-string v5, "BatteryStatsDumper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Battery delta value updated in db: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v30

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    sput v31, sPrevBatteryLevel:I

    .line 539
    const-string v5, "BatteryStatsDumper"

    const-string v12, "Writing battery level to database"

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    sget-object v26, db:Lcom/android/internal/os/BatteryStatsDBHelper;

    move/from16 v27, p1

    move-object/from16 v28, v92

    invoke-virtual/range {v26 .. v31}, Lcom/android/internal/os/BatteryStatsDBHelper;->addStatsToDB(ZLjava/lang/String;Ljava/util/ArrayList;II)V

    .line 541
    const-string v5, "BatteryStatsDumper"

    const-string v12, "Writing to database completed"

    invoke-static {v5, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return-void

    .line 422
    :pswitch_data_4c8
    .packed-switch -0x2710
        :pswitch_3b3
    .end packed-switch
.end method

.method public updateAppLaunch(I)V
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 855
    iget-object v1, p0, pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 857
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 859
    sget-object v1, db:Lcom/android/internal/os/BatteryStatsDBHelper;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->addAppLaunch(Ljava/lang/String;)V

    .line 863
    :cond_10
    return-void
.end method

.method public updatePrevBatteryValue()V
    .registers 3

    .prologue
    .line 646
    const-string v0, "BatteryStatsDumper"

    const-string v1, "Updating previous battery level value"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-virtual {p0}, getBatteryLevel()I

    move-result v0

    sput v0, sPrevBatteryLevel:I

    .line 650
    return-void
.end method
