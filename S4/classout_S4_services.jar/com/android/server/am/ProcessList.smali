.class final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessList$ILS_Q;
    }
.end annotation


# static fields
.field static final BACKUP_APP_ADJ:I = 0x3

.field static final CACHED_APP_MAX_ADJ:I = 0xf

.field static final CACHED_APP_MIN_ADJ:I = 0x9

.field static DEBUG:Z = false

.field static DHA_INCREASE_THRESHOLD:J = 0x0L

.field static final DHA_MAX_MARGIN:J = 0x800000L

.field static final DHA_MIN_MARGIN:J = 0x400000L

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x4

.field static final HOME_APP_ADJ:I = 0x6

.field static INIT_CACHED_APPS:I = 0x0

.field static INIT_EMPTY_APPS:I = 0x0

.field static final LMK_PROCPRIO:B = 0x1t

.field static final LMK_PROCREMOVE:B = 0x2t

.field static final LMK_TARGET:B = 0x0t

.field static MAX_CACHED_APPS:I = 0x0

.field static MAX_EMPTY_APPS:I = 0x0

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field static MIN_CACHED_APPS:I = 0x0

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static MIN_EMPTY_APPS_FOR_DHA:I = 0x0

.field static final NATIVE_ADJ:I = -0x11

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field static final PERSISTENT_PROC_ADJ:I = -0xc

.field static final PERSISTENT_SERVICE_ADJ:I = -0xb

.field static final PREVIOUS_APP_ADJ:I = 0x7

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field public static final PSS_ALL_INTERVAL:I = 0x927c0

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x1b7740

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x1b7740

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0xdbba0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x124f80

.field private static final PSS_SHORT_INTERVAL:I = 0x1d4c0

.field static final SERVICE_ADJ:I = 0x5

.field static final SERVICE_B_ADJ:I = 0x8

.field static SMART_DHA_BG_APPS_MAX:I = 0x0

.field static SMART_DHA_BG_APPS_MIN:I = 0x0

.field static final SMART_DHA_MARGIN_MIN_HIGH:J = 0x4600000L

.field static final SMART_DHA_MARGIN_MIN_LOW:J = 0x1400000L

.field static final SYSTEM_ADJ:I = -0x10

.field static final TOTAL_DEVICE_MEMORY:J

.field static TRIM_CACHED_APPS:I = 0x0

.field static TRIM_CRITICAL_THRESHOLD:I = 0x0

.field static TRIM_EMPTY_APPS:I = 0x0

.field static TRIM_LOW_THRESHOLD:I = 0x0

.field static final UNKNOWN_ADJ:I = 0x10

.field static final VISIBLE_APP_ADJ:I = 0x1

.field static mFragEnable:I

.field static mGoldenlistEnable:I

.field static mHECEnable:I

.field static mILS_Enable:Z

.field private static mInfo:Lcom/android/internal/util/MemInfoReader;

.field static mMaxCached:I

.field static mSzILSFlag:Z

.field static mSzILSRate:F

.field static mSzILS_SDHARate:F

.field static mWhitelistEnable:I

.field static mb64bitLMKEnable:Z

.field private static final sFirstAwakePssTimes:[J

.field private static sLmkdOutputStream:Ljava/io/OutputStream;

.field private static sLmkdSocket:Landroid/net/LocalSocket;

.field private static final sProcStateToProcMem:[I

.field private static final sSameAwakePssTimes:[J


# instance fields
.field private mCachedRestoreLevel:J

.field private mHaveDisplaySize:Z

.field private final mOomAdj:[I

.field private final mOomMinFree:[I

.field private final mOomMinFreeHigh:[I

.field private final mOomMinFreeLow:[I

.field private mSmartDHADefaultMargin:J

.field private mSmartDHAKswapdWatermark:J

.field private mSzDHADefendThreshold:J

.field private mSzDHAStep:I

.field private mSzDHAThreshold:J

.field private mSzDHAThresholdRate:F

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/16 v2, 0xe

    .line 48
    sput-boolean v3, DEBUG:Z

    .line 127
    const/4 v0, 0x0

    sput-object v0, mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 129
    invoke-static {}, totalDeviceMemory()J

    move-result-wide v0

    sput-wide v0, TOTAL_DEVICE_MEMORY:J

    .line 151
    const-string/jumbo v0, "ro.config.dha_cached_max"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, INIT_CACHED_APPS:I

    .line 155
    const-string/jumbo v0, "ro.config.dha_cached_min"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, MIN_CACHED_APPS:I

    .line 157
    const-string/jumbo v0, "ro.config.dha_cached_max"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, MAX_CACHED_APPS:I

    .line 163
    const-string/jumbo v0, "ro.config.dha_empty_init"

    const-string v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, INIT_EMPTY_APPS:I

    .line 165
    const-string/jumbo v0, "ro.config.dha_empty_min"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, MIN_EMPTY_APPS_FOR_DHA:I

    .line 167
    const-string/jumbo v0, "ro.config.dha_empty_max"

    const-string v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, MAX_EMPTY_APPS:I

    .line 171
    sget v0, MAX_EMPTY_APPS:I

    div-int/lit8 v0, v0, 0x3

    sput v0, TRIM_EMPTY_APPS:I

    .line 175
    sget v0, MAX_CACHED_APPS:I

    div-int/lit8 v0, v0, 0x3

    sput v0, TRIM_CACHED_APPS:I

    .line 178
    sput v4, TRIM_CRITICAL_THRESHOLD:I

    .line 181
    const/4 v0, 0x5

    sput v0, TRIM_LOW_THRESHOLD:I

    .line 228
    const-string/jumbo v0, "ro.config.64bit_lmk_enable"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, mb64bitLMKEnable:Z

    .line 231
    const-string/jumbo v0, "ro.config.dha_ils_enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, mILS_Enable:Z

    .line 233
    const-string/jumbo v0, "ro.config.dha_ils_rate"

    const-string v1, "1.5"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, mSzILSRate:F

    .line 235
    const-string/jumbo v0, "ro.config.dha_ils_sdha_rate"

    const-string v1, "1.8"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, mSzILS_SDHARate:F

    .line 237
    sput-boolean v3, mSzILSFlag:Z

    .line 239
    sget v0, INIT_CACHED_APPS:I

    sput v0, mMaxCached:I

    .line 241
    const-string/jumbo v0, "ro.config.dha_whitelist_enable"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, mWhitelistEnable:I

    .line 243
    const-string/jumbo v0, "ro.config.dha_goldenlist_enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, mGoldenlistEnable:I

    .line 246
    const-string/jumbo v0, "ro.config.dha_HEC_enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, mHECEnable:I

    .line 249
    const-string/jumbo v0, "ro.config.dha_frag_enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, mFragEnable:I

    .line 255
    const-wide/32 v0, 0x200000

    sput-wide v0, DHA_INCREASE_THRESHOLD:J

    .line 264
    const/16 v0, 0x23

    sput v0, SMART_DHA_BG_APPS_MAX:I

    .line 265
    sput v4, SMART_DHA_BG_APPS_MIN:I

    .line 593
    new-array v0, v2, [I

    fill-array-data v0, :array_11a

    sput-object v0, sProcStateToProcMem:[I

    .line 610
    new-array v0, v2, [J

    fill-array-data v0, :array_13a

    sput-object v0, sFirstAwakePssTimes:[J

    .line 627
    new-array v0, v2, [J

    fill-array-data v0, :array_176

    sput-object v0, sSameAwakePssTimes:[J

    return-void

    .line 593
    :array_11a
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    .line 610
    :array_13a
    .array-data 8
        0x1d4c0
        0x1d4c0
        0x2710
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
    .end array-data

    .line 627
    :array_176
    .array-data 8
        0xdbba0
        0xdbba0
        0x1d4c0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0x124f80
        0x124f80
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
    .end array-data
.end method

.method constructor <init>()V
    .registers 10

    .prologue
    const/4 v4, 0x6

    const/4 v8, 0x0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-array v1, v4, [I

    fill-array-data v1, :array_68

    iput-object v1, p0, mOomAdj:[I

    .line 202
    new-array v1, v4, [I

    fill-array-data v1, :array_78

    iput-object v1, p0, mOomMinFreeLow:[I

    .line 208
    new-array v1, v4, [I

    fill-array-data v1, :array_88

    iput-object v1, p0, mOomMinFreeHigh:[I

    .line 215
    iget-object v1, p0, mOomAdj:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, mOomMinFree:[I

    .line 219
    const-wide/32 v4, 0x2000000

    iput-wide v4, p0, mSzDHAThreshold:J

    .line 221
    const-wide/32 v4, 0x800000

    iput-wide v4, p0, mSzDHADefendThreshold:J

    .line 223
    const/4 v1, 0x2

    iput v1, p0, mSzDHAStep:I

    .line 225
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, mSzDHAThresholdRate:F

    .line 258
    const-wide/32 v4, 0x1400000

    iput-wide v4, p0, mSmartDHAKswapdWatermark:J

    .line 259
    const-wide/32 v4, 0x4600000

    iput-wide v4, p0, mSmartDHADefaultMargin:J

    .line 276
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 277
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 278
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    iput-wide v4, p0, mTotalMemMb:J

    .line 281
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getWatermark()J

    move-result-wide v2

    .line 282
    .local v2, "watermark":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_5a

    iput-wide v2, p0, mSmartDHAKswapdWatermark:J

    .line 284
    :cond_5a
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    if-eqz v1, :cond_64

    const/16 v1, 0x12

    sput v1, MAX_EMPTY_APPS:I

    .line 286
    :cond_64
    invoke-direct {p0, v8, v8, v8}, updateOomLevels(IIZ)V

    .line 287
    return-void

    .line 196
    :array_68
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x9
        0xf
    .end array-data

    .line 202
    :array_78
    .array-data 4
        0x2000
        0x3000
        0x4000
        0x6000
        0x7000
        0x8000
    .end array-data

    .line 208
    :array_88
    .array-data 4
        0x16000
        0x1b800
        0x21000
        0x2d000
        0x32000
        0x37000
    .end array-data
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .registers 8
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "ramKb"    # J

    .prologue
    .line 549
    const/4 v1, 0x0

    .local v1, "j":I
    const/16 v0, 0xa

    .local v0, "fact":I
    :goto_3
    const/4 v2, 0x6

    if-ge v1, v2, :cond_15

    .line 550
    int-to-long v2, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_10

    .line 551
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 549
    :cond_10
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0xa

    goto :goto_3

    .line 554
    :cond_15
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 555
    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 6
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "space"    # Ljava/lang/String;
    .param p2, "val"    # I
    .param p3, "base"    # I

    .prologue
    .line 452
    if-ne p2, p3, :cond_19

    .line 453
    if-nez p1, :cond_5

    .line 456
    .end local p0    # "prefix":Ljava/lang/String;
    :goto_4
    return-object p0

    .line 454
    .restart local p0    # "prefix":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 456
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int v1, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4
.end method

.method public static computeEmptyProcessLimit(I)I
    .registers 2
    .param p0, "totalProcessLimit"    # I

    .prologue
    .line 448
    mul-int/lit8 v0, p0, 0x2

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static computeNextPssTime(IZZJ)J
    .registers 10
    .param p0, "procState"    # I
    .param p1, "first"    # Z
    .param p2, "sleeping"    # Z
    .param p3, "now"    # J

    .prologue
    .line 650
    if-eqz p2, :cond_11

    if-eqz p1, :cond_e

    sget-object v0, sFirstAwakePssTimes:[J

    .line 659
    .local v0, "table":[J
    :goto_6
    const/4 v1, -0x1

    if-ne p0, v1, :cond_19

    const-wide/32 v2, 0x927c0

    add-long/2addr v2, p3

    .line 661
    :goto_d
    return-wide v2

    .line 650
    .end local v0    # "table":[J
    :cond_e
    sget-object v0, sSameAwakePssTimes:[J

    goto :goto_6

    :cond_11
    if-eqz p1, :cond_16

    sget-object v0, sFirstAwakePssTimes:[J

    goto :goto_6

    :cond_16
    sget-object v0, sSameAwakePssTimes:[J

    goto :goto_6

    .line 661
    .restart local v0    # "table":[J
    :cond_19
    aget-wide v2, v0, p0

    add-long/2addr v2, p3

    goto :goto_d
.end method

.method public static makeOomAdjString(I)Ljava/lang/String;
    .registers 7
    .param p0, "setAdj"    # I

    .prologue
    const/16 v5, -0xb

    const/16 v4, -0xc

    const/16 v3, -0x10

    const/16 v1, -0x11

    const/4 v2, 0x0

    .line 460
    const/16 v0, 0x9

    if-lt p0, v0, :cond_18

    .line 461
    const-string v0, "cch"

    const-string v1, "  "

    const/16 v2, 0x9

    invoke-static {v0, v1, p0, v2}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 489
    :goto_17
    return-object v0

    .line 462
    :cond_18
    const/16 v0, 0x8

    if-lt p0, v0, :cond_26

    .line 463
    const-string/jumbo v0, "svcb "

    const/16 v1, 0x8

    invoke-static {v0, v2, p0, v1}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 464
    :cond_26
    const/4 v0, 0x7

    if-lt p0, v0, :cond_32

    .line 465
    const-string/jumbo v0, "prev "

    const/4 v1, 0x7

    invoke-static {v0, v2, p0, v1}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 466
    :cond_32
    const/4 v0, 0x6

    if-lt p0, v0, :cond_3d

    .line 467
    const-string v0, "home "

    const/4 v1, 0x6

    invoke-static {v0, v2, p0, v1}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 468
    :cond_3d
    const/4 v0, 0x5

    if-lt p0, v0, :cond_49

    .line 469
    const-string/jumbo v0, "svc  "

    const/4 v1, 0x5

    invoke-static {v0, v2, p0, v1}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 470
    :cond_49
    const/4 v0, 0x4

    if-lt p0, v0, :cond_54

    .line 471
    const-string v0, "hvy  "

    const/4 v1, 0x4

    invoke-static {v0, v2, p0, v1}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 472
    :cond_54
    const/4 v0, 0x3

    if-lt p0, v0, :cond_5f

    .line 473
    const-string v0, "bkup "

    const/4 v1, 0x3

    invoke-static {v0, v2, p0, v1}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 474
    :cond_5f
    const/4 v0, 0x2

    if-lt p0, v0, :cond_6b

    .line 475
    const-string/jumbo v0, "prcp "

    const/4 v1, 0x2

    invoke-static {v0, v2, p0, v1}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 476
    :cond_6b
    const/4 v0, 0x1

    if-lt p0, v0, :cond_77

    .line 477
    const-string/jumbo v0, "vis  "

    const/4 v1, 0x1

    invoke-static {v0, v2, p0, v1}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 478
    :cond_77
    if-ltz p0, :cond_81

    .line 479
    const-string v0, "fore "

    const/4 v1, 0x0

    invoke-static {v0, v2, p0, v1}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 480
    :cond_81
    if-lt p0, v5, :cond_8b

    .line 481
    const-string/jumbo v0, "psvc "

    invoke-static {v0, v2, p0, v5}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 482
    :cond_8b
    if-lt p0, v4, :cond_95

    .line 483
    const-string/jumbo v0, "pers "

    invoke-static {v0, v2, p0, v4}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 484
    :cond_95
    if-lt p0, v3, :cond_a0

    .line 485
    const-string/jumbo v0, "sys  "

    invoke-static {v0, v2, p0, v3}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    .line 486
    :cond_a0
    if-lt p0, v1, :cond_aa

    .line 487
    const-string v0, "ntv  "

    invoke-static {v0, v2, p0, v1}, buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    .line 489
    :cond_aa
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .registers 2
    .param p0, "curProcState"    # I

    .prologue
    .line 495
    packed-switch p0, :pswitch_data_34

    .line 542
    const-string v0, "??"

    .line 545
    .local v0, "procState":Ljava/lang/String;
    :goto_5
    return-object v0

    .line 497
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_6
    const-string v0, "N "

    .line 498
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 500
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_9
    const-string v0, "P "

    .line 501
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 503
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_c
    const-string v0, "PU"

    .line 504
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 506
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_f
    const-string v0, "T "

    .line 507
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 509
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_12
    const-string v0, "IF"

    .line 510
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 512
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_15
    const-string v0, "IB"

    .line 513
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 515
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_18
    const-string v0, "BU"

    .line 516
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 518
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1b
    const-string v0, "HW"

    .line 519
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 521
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1e
    const-string v0, "S "

    .line 522
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 524
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_21
    const-string v0, "R "

    .line 525
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 527
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_24
    const-string v0, "HO"

    .line 528
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 530
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_27
    const-string v0, "LA"

    .line 531
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 533
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2a
    const-string v0, "CA"

    .line 534
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 536
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2d
    const-string v0, "Ca"

    .line 537
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 539
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_30
    const-string v0, "CE"

    .line 540
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 495
    nop

    :pswitch_data_34
    .packed-switch -0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
    .end packed-switch
.end method

.method private static openLmkdSocket()Z
    .registers 5

    .prologue
    .line 745
    :try_start_0
    new-instance v1, Landroid/net/LocalSocket;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/net/LocalSocket;-><init>(I)V

    sput-object v1, sLmkdSocket:Landroid/net/LocalSocket;

    .line 746
    sget-object v1, sLmkdSocket:Landroid/net/LocalSocket;

    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string v3, "lmkd"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 749
    sget-object v1, sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sput-object v1, sLmkdOutputStream:Ljava/io/OutputStream;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_20

    .line 757
    const/4 v1, 0x1

    .local v0, "ex":Ljava/io/IOException;
    :goto_1f
    return v1

    .line 750
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_20
    move-exception v0

    .line 751
    .restart local v0    # "ex":Ljava/io/IOException;
    const-string v1, "ActivityManager"

    const-string v2, "lowmemorykiller daemon socket open failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v1, 0x0

    sput-object v1, sLmkdSocket:Landroid/net/LocalSocket;

    .line 754
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public static procStatesDifferForMem(II)Z
    .registers 4
    .param p0, "procState1"    # I
    .param p1, "procState2"    # I

    .prologue
    .line 645
    sget-object v0, sProcStateToProcMem:[I

    aget v0, v0, p0

    sget-object v1, sProcStateToProcMem:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static final remove(I)V
    .registers 3
    .param p0, "pid"    # I

    .prologue
    .line 737
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 738
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 739
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 740
    invoke-static {v0}, writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 741
    return-void
.end method

.method public static final setOomAdj(III)V
    .registers 13
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "amt"    # I

    .prologue
    const/16 v1, 0x10

    .line 716
    if-ne p2, v1, :cond_5

    .line 731
    :cond_4
    :goto_4
    return-void

    .line 719
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 720
    .local v4, "start":J
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 721
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 722
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 723
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 724
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 725
    invoke-static {v0}, writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 726
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 727
    .local v2, "now":J
    sub-long v6, v2, v4

    const-wide/16 v8, 0xfa

    cmp-long v1, v6, v8

    if-lez v1, :cond_4

    .line 728
    const-string v1, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SLOW OOM ADJ: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v2, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method static totalDeviceMemory()J
    .registers 4

    .prologue
    .line 132
    sget-object v0, mInfo:Lcom/android/internal/util/MemInfoReader;

    if-nez v0, :cond_b

    .line 133
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    sput-object v0, mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 135
    :cond_b
    sget-object v0, mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 137
    sget-object v0, mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static updateILS(Ljava/lang/String;)V
    .registers 5
    .param p0, "pName"    # Ljava/lang/String;

    .prologue
    .line 898
    sget-boolean v1, mILS_Enable:Z

    if-nez v1, :cond_5

    .line 907
    :cond_4
    :goto_4
    return-void

    .line 900
    :cond_5
    sget-boolean v0, mSzILSFlag:Z

    .line 902
    .local v0, "ILSPrevFlag":Z
    invoke-static {p0}, Lcom/android/server/am/ProcessList$ILS_Q;->isAppsLaunchFreq(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, mSzILSFlag:Z

    .line 904
    sget-boolean v1, mSzILSFlag:Z

    if-eq v0, v1, :cond_4

    .line 905
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ILS: FlagChange["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Before "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, mSzILSFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private updateOomLevels(IIZ)V
    .registers 29
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "write"    # Z

    .prologue
    .line 303
    move-object/from16 v0, p0

    iget-wide v0, v0, mTotalMemMb:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x12c

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x43c80000    # 400.0f

    div-float v19, v20, v21

    .line 306
    .local v19, "scaleMem":F
    const v11, 0x5dc00

    .line 307
    .local v11, "minSize":I
    const v10, 0xfa000

    .line 309
    .local v10, "maxSize":I
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v20

    if-nez v20, :cond_36

    move-object/from16 v0, p0

    iget-wide v0, v0, mTotalMemMb:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x600

    cmp-long v20, v20, v22

    if-gez v20, :cond_50

    mul-int v20, p1, p2

    const v21, 0xfa000

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_50

    .line 311
    :cond_36
    move-object/from16 v0, p0

    iget-wide v0, v0, mTotalMemMb:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x12c

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x44b54000    # 1450.0f

    div-float v19, v20, v21

    .line 313
    const v11, 0x25800

    .line 314
    const v10, 0x1fa400

    .line 317
    :cond_50
    mul-int v20, p1, p2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v11

    move/from16 v21, v0

    sub-float v20, v20, v21

    sub-int v21, v10, v11

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v18, v20, v21

    .line 324
    .local v18, "scaleDisp":F
    cmpl-float v20, v19, v18

    if-lez v20, :cond_12e

    move/from16 v17, v19

    .line 326
    .local v17, "scale":F
    :goto_6b
    const/16 v20, 0x0

    cmpg-float v20, v17, v20

    if-gez v20, :cond_132

    const/16 v17, 0x0

    .line 331
    :cond_73
    :goto_73
    const-string/jumbo v20, "ro.product.name"

    const-string/jumbo v21, "xxx"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 332
    .local v9, "mProductName":Ljava/lang/String;
    const-string v20, "fortuna3g"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_9b

    const-string v20, "fortunalte"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_9b

    const-string v20, "a3"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9e

    .line 333
    :cond_9b
    const v17, 0x3f2e978d    # 0.682f

    .line 337
    :cond_9e
    const-string/jumbo v20, "ro.config.dha_lmk_scale"

    const-string v21, "-1"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 339
    .local v5, "dha_lmk_scale_property":F
    const/high16 v20, -0x40800000    # -1.0f

    cmpl-float v20, v5, v20

    if-eqz v20, :cond_b3

    .line 340
    move/from16 v17, v5

    .line 343
    :cond_b3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10e0009

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 345
    .local v13, "minfree_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10e0008

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 351
    .local v12, "minfree_abs":I
    sget-object v20, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_f0

    sget-boolean v20, mb64bitLMKEnable:Z

    if-eqz v20, :cond_f0

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFreeHigh:[I

    move-object/from16 v20, v0

    const/16 v21, 0x4

    const v22, 0x36ee8

    aput v22, v20, v21

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFreeHigh:[I

    move-object/from16 v20, v0

    const/16 v21, 0x5

    const v22, 0x4f588

    aput v22, v20, v21

    .line 357
    :cond_f0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_f1
    move-object/from16 v0, p0

    iget-object v0, v0, mOomAdj:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_13c

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFreeLow:[I

    move-object/from16 v20, v0

    aget v8, v20, v7

    .line 359
    .local v8, "low":I
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFreeHigh:[I

    move-object/from16 v20, v0

    aget v6, v20, v7

    .line 360
    .local v6, "high":I
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFree:[I

    move-object/from16 v20, v0

    int-to-float v0, v8

    move/from16 v21, v0

    sub-int v22, v6, v8

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v17

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    aput v21, v20, v7

    .line 357
    add-int/lit8 v7, v7, 0x1

    goto :goto_f1

    .end local v5    # "dha_lmk_scale_property":F
    .end local v6    # "high":I
    .end local v7    # "i":I
    .end local v8    # "low":I
    .end local v9    # "mProductName":Ljava/lang/String;
    .end local v12    # "minfree_abs":I
    .end local v13    # "minfree_adj":I
    .end local v17    # "scale":F
    :cond_12e
    move/from16 v17, v18

    .line 324
    goto/16 :goto_6b

    .line 327
    .restart local v17    # "scale":F
    :cond_132
    const/high16 v20, 0x3f800000    # 1.0f

    cmpl-float v20, v17, v20

    if-lez v20, :cond_73

    const/high16 v17, 0x3f800000    # 1.0f

    goto/16 :goto_73

    .line 363
    .restart local v5    # "dha_lmk_scale_property":F
    .restart local v7    # "i":I
    .restart local v9    # "mProductName":Ljava/lang/String;
    .restart local v12    # "minfree_abs":I
    .restart local v13    # "minfree_adj":I
    :cond_13c
    if-ltz v12, :cond_18c

    .line 364
    const/4 v7, 0x0

    :goto_13f
    move-object/from16 v0, p0

    iget-object v0, v0, mOomAdj:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_18c

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFree:[I

    move-object/from16 v20, v0

    int-to-float v0, v12

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFree:[I

    move-object/from16 v22, v0

    aget v22, v22, v7

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFree:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mOomAdj:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    aget v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    aput v21, v20, v7

    .line 364
    add-int/lit8 v7, v7, 0x1

    goto :goto_13f

    .line 370
    :cond_18c
    if-eqz v13, :cond_1f4

    .line 371
    const/4 v7, 0x0

    :goto_18f
    move-object/from16 v0, p0

    iget-object v0, v0, mOomAdj:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_1f4

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFree:[I

    move-object/from16 v20, v0

    aget v21, v20, v7

    int-to-float v0, v13

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFree:[I

    move-object/from16 v23, v0

    aget v23, v23, v7

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFree:[I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mOomAdj:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aget v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    aput v21, v20, v7

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFree:[I

    move-object/from16 v20, v0

    aget v20, v20, v7

    if-gez v20, :cond_1f1

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFree:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v21, v20, v7

    .line 371
    :cond_1f1
    add-int/lit8 v7, v7, 0x1

    goto :goto_18f

    .line 383
    :cond_1f4
    const/16 v20, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, getMemLevel(I)J

    move-result-wide v20

    const-wide/16 v22, 0x400

    div-long v20, v20, v22

    const-wide/16 v22, 0x3

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mCachedRestoreLevel:J

    .line 387
    mul-int v20, p1, p2

    mul-int/lit8 v20, v20, 0x4

    mul-int/lit8 v20, v20, 0x3

    move/from16 v0, v20

    div-int/lit16 v14, v0, 0x400

    .line 388
    .local v14, "reserve":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10e000b

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    .line 389
    .local v16, "reserve_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10e000a

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .line 391
    .local v15, "reserve_abs":I
    if-ltz v15, :cond_22f

    .line 392
    move v14, v15

    .line 395
    :cond_22f
    if-eqz v16, :cond_236

    .line 396
    add-int v14, v14, v16

    .line 397
    if-gez v14, :cond_236

    .line 398
    const/4 v14, 0x0

    .line 402
    :cond_236
    if-eqz p3, :cond_29a

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, mOomAdj:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x2

    add-int/lit8 v20, v20, 0x1

    mul-int/lit8 v20, v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 404
    .local v4, "buf":Ljava/nio/ByteBuffer;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 405
    const/4 v7, 0x0

    :goto_255
    move-object/from16 v0, p0

    iget-object v0, v0, mOomAdj:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_28d

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFree:[I

    move-object/from16 v20, v0

    aget v20, v20, v7

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    move/from16 v0, v20

    div-int/lit16 v0, v0, 0x1000

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, mOomAdj:[I

    move-object/from16 v20, v0

    aget v20, v20, v7

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 405
    add-int/lit8 v7, v7, 0x1

    goto :goto_255

    .line 410
    :cond_28d
    invoke-static {v4}, writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 411
    const-string/jumbo v20, "sys.sysctl.extra_free_kbytes"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    :cond_29a
    const/16 v20, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, getMemLevel(I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mSzDHAThreshold:J

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFreeLow:[I

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget v20, v20, v21

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v17

    move/from16 v0, v20

    float-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mSzDHADefendThreshold:J

    .line 420
    const-string/jumbo v20, "ro.com.google.gmsversion"

    const-string v21, "none"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "none"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_308

    .line 421
    const-string/jumbo v20, "ro.config.dha_empty_max"

    const-string v21, "30"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    add-int/lit8 v20, v20, 0xc

    sput v20, MAX_EMPTY_APPS:I

    .line 422
    const-string v20, "DHA_PROPERTY"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "No GMS,  MAX_EMPTY_APPS = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget v22, MAX_EMPTY_APPS:I

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_308
    const-string/jumbo v20, "ro.config.dha_step"

    move-object/from16 v0, p0

    iget v0, v0, mSzDHAStep:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mSzDHAStep:I

    .line 428
    const-string/jumbo v20, "ro.config.dha_th_rate"

    move-object/from16 v0, p0

    iget v0, v0, mSzDHAThresholdRate:F

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, mSzDHAThresholdRate:F

    .line 430
    const-string/jumbo v20, "ro.config.dha_th_level"

    const-string v21, "15"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, getMemLevel(I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mSzDHAThreshold:J

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, mOomMinFreeLow:[I

    move-object/from16 v20, v0

    const-string/jumbo v21, "ro.config.dha_defend_th_level"

    const-string v22, "3"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    aget v20, v20, v21

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v17

    move/from16 v0, v20

    float-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mSzDHADefendThreshold:J

    .line 432
    const-string/jumbo v20, "ro.config.dha_increase_th"

    sget-wide v22, DHA_INCREASE_THRESHOLD:J

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    sput-wide v20, DHA_INCREASE_THRESHOLD:J

    .line 434
    const-string v20, "DHA_PROPERTY"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "DHA STEP "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, mSzDHAStep:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-string v20, "DHA_PROPERTY"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "DHA TH RATE "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, mSzDHAThresholdRate:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-string v20, "DHA_PROPERTY"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "DHA mSzDHAThreshold "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-wide v0, v0, mSzDHAThreshold:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const-string v20, "DHA_PROPERTY"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "DHA mSzDHADefendThreshold "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-wide v0, v0, mSzDHADefendThreshold:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string v20, "DHA_PROPERTY"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "DHA DHA_INCREASE_THRESHOLD "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-wide v22, DHA_INCREASE_THRESHOLD:J

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/high16 v20, 0x4ba00000    # 2.097152E7f

    const/high16 v21, 0x4c480000    # 5.24288E7f

    mul-float v21, v21, v17

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mSmartDHADefaultMargin:J

    .line 445
    return-void
.end method

.method private static writeLmkd(Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 762
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_24

    .line 763
    sget-object v2, sLmkdSocket:Landroid/net/LocalSocket;

    if-nez v2, :cond_16

    .line 764
    invoke-static {}, openLmkdSocket()Z

    move-result v2

    if-nez v2, :cond_16

    .line 766
    const-wide/16 v2, 0x3e8

    :try_start_10
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_36

    .line 762
    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 774
    :cond_16
    :try_start_16
    sget-object v2, sLmkdOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_24} :catch_25

    .line 788
    :cond_24
    return-void

    .line 776
    :catch_25
    move-exception v0

    .line 777
    .local v0, "ex":Ljava/io/IOException;
    const-string v2, "ActivityManager"

    const-string v3, "Error writing to lowmemorykiller socket"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :try_start_2d
    sget-object v2, sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_38

    .line 785
    :goto_32
    const/4 v2, 0x0

    sput-object v2, sLmkdSocket:Landroid/net/LocalSocket;

    goto :goto_13

    .line 767
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_36
    move-exception v2

    goto :goto_13

    .line 782
    .restart local v0    # "ex":Ljava/io/IOException;
    :catch_38
    move-exception v2

    goto :goto_32
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v3, 0x1

    .line 290
    iget-boolean v1, p0, mHaveDisplaySize:Z

    if-nez v1, :cond_1f

    .line 291
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 292
    .local v0, "p":Landroid/graphics/Point;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 293
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_1f

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_1f

    .line 294
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, v3}, updateOomLevels(IIZ)V

    .line 295
    iput-boolean v3, p0, mHaveDisplaySize:Z

    .line 298
    .end local v0    # "p":Landroid/graphics/Point;
    :cond_1f
    return-void
.end method

.method decrementEmptyAppCount(III)I
    .registers 6
    .param p1, "maxEmptyApp"    # I
    .param p2, "empty"    # I
    .param p3, "cached"    # I

    .prologue
    .line 853
    iget v1, p0, mSzDHAStep:I

    sub-int v0, p2, v1

    .line 855
    .local v0, "ret":I
    if-le p1, v0, :cond_15

    .line 856
    sget v1, MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v0, v1, :cond_c

    .line 857
    sget v0, MIN_EMPTY_APPS_FOR_DHA:I

    .line 859
    :cond_c
    sget v1, MIN_CACHED_APPS:I

    if-le p3, v1, :cond_14

    .line 860
    add-int/lit8 v1, p3, -0x1

    sput v1, mMaxCached:I

    .line 867
    :cond_14
    :goto_14
    return v0

    .line 864
    :cond_15
    move v0, p1

    goto :goto_14
.end method

.method getCachedRestoreThresholdKb()J
    .registers 3

    .prologue
    .line 678
    iget-wide v0, p0, mCachedRestoreLevel:J

    return-wide v0
.end method

.method getKswapdWatermark()J
    .registers 3

    .prologue
    .line 698
    iget-wide v0, p0, mSmartDHAKswapdWatermark:J

    return-wide v0
.end method

.method getLMKThreshold(I)J
    .registers 4
    .param p1, "adj"    # I

    .prologue
    const/16 v0, 0xf

    .line 684
    if-ge p1, v0, :cond_6

    const/16 v0, 0x9

    :cond_6
    invoke-virtual {p0, v0}, getMemLevel(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getMemLevel(I)J
    .registers 6
    .param p1, "adjustment"    # I

    .prologue
    .line 665
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 666
    iget-object v1, p0, mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_14

    .line 667
    iget-object v1, p0, mOomMinFree:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x400

    int-to-long v2, v1

    .line 670
    :goto_13
    return-wide v2

    .line 665
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 670
    :cond_17
    iget-object v1, p0, mOomMinFree:[I

    iget-object v2, p0, mOomAdj:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x400

    int-to-long v2, v1

    goto :goto_13
.end method

.method getSmartDHADefaultMargin()J
    .registers 5

    .prologue
    .line 688
    iget-wide v0, p0, mSmartDHADefaultMargin:J

    .line 690
    .local v0, "margin":J
    sget-boolean v2, mSzILSFlag:Z

    if-eqz v2, :cond_b

    .line 691
    long-to-float v2, v0

    sget v3, mSzILS_SDHARate:F

    mul-float/2addr v2, v3

    float-to-long v0, v2

    .line 694
    :cond_b
    return-wide v0
.end method

.method incrementEmptyAppCount(III)I
    .registers 6
    .param p1, "maxEmptyApp"    # I
    .param p2, "empty"    # I
    .param p3, "cached"    # I

    .prologue
    .line 871
    iget v1, p0, mSzDHAStep:I

    add-int v0, p1, v1

    .line 874
    .local v0, "ret":I
    sget v1, MAX_EMPTY_APPS:I

    if-le v0, v1, :cond_a

    .line 875
    sget v0, MAX_EMPTY_APPS:I

    .line 878
    :cond_a
    return v0
.end method

.method public setSmartDHADefaultMargin(J)V
    .registers 4
    .param p1, "margin"    # J

    .prologue
    .line 702
    iput-wide p1, p0, mSmartDHADefaultMargin:J

    .line 703
    return-void
.end method

.method public setTrimCachedApps(I)V
    .registers 2
    .param p1, "lValue"    # I

    .prologue
    .line 886
    sput p1, TRIM_CACHED_APPS:I

    .line 887
    return-void
.end method

.method public setTrimCriticalTH(I)V
    .registers 2
    .param p1, "lValue"    # I

    .prologue
    .line 890
    sput p1, TRIM_CRITICAL_THRESHOLD:I

    .line 891
    return-void
.end method

.method public setTrimEmptyApps(I)V
    .registers 2
    .param p1, "lValue"    # I

    .prologue
    .line 882
    sput p1, TRIM_EMPTY_APPS:I

    .line 883
    return-void
.end method

.method public setTrimLowlTH(I)V
    .registers 2
    .param p1, "lValue"    # I

    .prologue
    .line 894
    sput p1, TRIM_LOW_THRESHOLD:I

    .line 895
    return-void
.end method

.method public updateHiddenAppNum(III)I
    .registers 24
    .param p1, "maxEmptyApp"    # I
    .param p2, "curCached"    # I
    .param p3, "curEmpty"    # I

    .prologue
    .line 792
    move/from16 v5, p1

    .line 794
    .local v5, "ret":I
    sget-object v7, mInfo:Lcom/android/internal/util/MemInfoReader;

    if-eqz v7, :cond_161

    .line 796
    sget-object v7, mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 799
    sget-object v7, mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v12

    .line 800
    .local v12, "szFreeMem":J
    sget-object v7, mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v14

    sget-object v7, mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v16

    add-long v8, v14, v16

    .line 801
    .local v8, "szAvailableMem":J
    const-wide/16 v10, 0x0

    .line 802
    .local v10, "szFragMem":J
    sget v7, mFragEnable:I

    const/4 v14, 0x1

    if-ne v7, v14, :cond_3d

    move-object/from16 v0, p0

    iget-wide v14, v0, mSzDHAThreshold:J

    const-wide/16 v16, 0x2

    div-long v14, v14, v16

    cmp-long v7, v12, v14

    if-gez v7, :cond_3d

    .line 803
    sget-object v7, mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->readBuddyInfo()V

    .line 804
    sget-object v7, mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->getFragRate()J

    move-result-wide v10

    .line 807
    :cond_3d
    div-int/lit8 v7, p1, 0x2

    sput v7, mMaxCached:I

    .line 809
    sget v7, mMaxCached:I

    sget v14, MIN_CACHED_APPS:I

    if-ge v7, v14, :cond_4b

    .line 810
    sget v7, MIN_CACHED_APPS:I

    sput v7, mMaxCached:I

    .line 812
    :cond_4b
    sget v7, mMaxCached:I

    sget v14, MAX_CACHED_APPS:I

    if-le v7, v14, :cond_55

    .line 813
    sget v7, MAX_CACHED_APPS:I

    sput v7, mMaxCached:I

    .line 816
    :cond_55
    sget-boolean v7, DEBUG:Z

    if-eqz v7, :cond_fb

    .line 817
    const-string v7, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AvailableMem = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-wide/16 v16, 0x400

    div-long v16, v8, v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "kB (Free: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v16

    const-wide/16 v18, 0x400

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "kB, Cached: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v16

    const-wide/16 v18, 0x400

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "kB) "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Threshold = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, mSzDHAThreshold:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x400

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "kB [MaxHidden: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, mMaxCached:I

    add-int v15, v15, p1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Current Hidden"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Current Empty"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "], Frag.Mem = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-wide/16 v16, 0x400

    div-long v16, v10, v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "KB"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_fb
    const-wide/16 v14, 0x0

    cmp-long v7, v12, v14

    if-gtz v7, :cond_103

    move v6, v5

    .line 849
    .end local v5    # "ret":I
    .end local v8    # "szAvailableMem":J
    .end local v10    # "szFragMem":J
    .end local v12    # "szFreeMem":J
    .local v6, "ret":I
    :goto_102
    return v6

    .line 826
    .end local v6    # "ret":I
    .restart local v5    # "ret":I
    .restart local v8    # "szAvailableMem":J
    .restart local v10    # "szFragMem":J
    .restart local v12    # "szFreeMem":J
    :cond_103
    move-object/from16 v0, p0

    iget v4, v0, mSzDHAThresholdRate:F

    .line 828
    .local v4, "mFinalDHAThresholdRate":F
    sget-boolean v7, mSzILSFlag:Z

    if-eqz v7, :cond_113

    .line 829
    move-object/from16 v0, p0

    iget v7, v0, mSzDHAThresholdRate:F

    sget v14, mSzILSRate:F

    mul-float v4, v7, v14

    .line 833
    :cond_113
    sub-long v14, v8, v10

    long-to-float v7, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, mSzDHAThreshold:J

    long-to-float v14, v14

    mul-float/2addr v14, v4

    cmpg-float v7, v7, v14

    if-ltz v7, :cond_12c

    sub-long v14, v12, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, mSzDHADefendThreshold:J

    move-wide/from16 v16, v0

    cmp-long v7, v14, v16

    if-gez v7, :cond_163

    .line 834
    :cond_12c
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, decrementEmptyAppCount(III)I

    move-result v5

    .line 835
    sget-boolean v7, DEBUG:Z

    if-eqz v7, :cond_161

    .line 836
    const-string v7, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Decrease Hidden App Number from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "mFinalDHAThresholdRate":F
    .end local v8    # "szAvailableMem":J
    .end local v10    # "szFragMem":J
    .end local v12    # "szFreeMem":J
    :cond_161
    :goto_161
    move v6, v5

    .line 849
    .end local v5    # "ret":I
    .restart local v6    # "ret":I
    goto :goto_102

    .line 841
    .end local v6    # "ret":I
    .restart local v4    # "mFinalDHAThresholdRate":F
    .restart local v5    # "ret":I
    .restart local v8    # "szAvailableMem":J
    .restart local v10    # "szFragMem":J
    .restart local v12    # "szFreeMem":J
    :cond_163
    sub-long v14, v8, v10

    long-to-float v7, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, mSzDHAThreshold:J

    long-to-float v14, v14

    mul-float/2addr v14, v4

    sget-wide v16, DHA_INCREASE_THRESHOLD:J

    move-wide/from16 v0, v16

    long-to-float v15, v0

    add-float/2addr v14, v15

    cmpl-float v7, v7, v14

    if-lez v7, :cond_161

    move/from16 v0, p3

    move/from16 v1, p1

    if-lt v0, v1, :cond_161

    .line 842
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, incrementEmptyAppCount(III)I

    move-result v5

    .line 843
    sget-boolean v7, DEBUG:Z

    if-eqz v7, :cond_161

    .line 844
    const-string v7, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Increase Hidden App Number from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_161
.end method
