.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmRecord"
.end annotation


# instance fields
.field public NfgCount:I

.field public UMCount:I

.field public alarmHashCode:I

.field public fgCount:I

.field public hitCount:I

.field public intervalCalculated:J

.field public intervalRequested:J

.field public intervalTraffic:J

.field public intervalTrigger:J

.field public isExact:Z

.field public isMonitorON:Z

.field public isRunPass:Z

.field public isScnON:Z

.field public isUIalarm:Z

.field public isWhite:Z

.field public lastTrafficTime:J

.field public lastTriggerTime:J

.field public missCount:I

.field public missCountAfterHit:I

.field public missCountEvenlyDistributed:Z

.field public piHashCode:I

.field public pid:I

.field public pkgName:Ljava/lang/String;

.field public resetCount:I

.field public targetWhen:J

.field final synthetic this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

.field public triggerCount:I

.field public txbytes0time:J

.field public uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 2236
    iput-object p1, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2237
    const/4 v0, 0x0

    iput-object v0, p0, pkgName:Ljava/lang/String;

    .line 2238
    iput v2, p0, NfgCount:I

    iput v2, p0, UMCount:I

    iput v2, p0, fgCount:I

    iput v2, p0, triggerCount:I

    iput v2, p0, resetCount:I

    iput v2, p0, missCountAfterHit:I

    iput v2, p0, missCount:I

    iput v2, p0, hitCount:I

    iput v2, p0, alarmHashCode:I

    iput v2, p0, piHashCode:I

    iput v2, p0, pid:I

    iput v2, p0, uid:I

    .line 2240
    const-wide/16 v0, -0x1

    iput-wide v0, p0, intervalTraffic:J

    iput-wide v0, p0, intervalTrigger:J

    iput-wide v0, p0, intervalRequested:J

    iput-wide v0, p0, intervalCalculated:J

    iput-wide v0, p0, targetWhen:J

    .line 2241
    const-wide/16 v0, 0x0

    iput-wide v0, p0, txbytes0time:J

    iput-wide v0, p0, lastTrafficTime:J

    iput-wide v0, p0, lastTriggerTime:J

    .line 2242
    iput-boolean v2, p0, isWhite:Z

    iput-boolean v2, p0, isScnON:Z

    iput-boolean v2, p0, isUIalarm:Z

    iput-boolean v2, p0, isRunPass:Z

    iput-boolean v2, p0, isMonitorON:Z

    iput-boolean v2, p0, missCountEvenlyDistributed:Z

    iput-boolean v2, p0, isExact:Z

    .line 2243
    return-void
.end method

.method public constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)V
    .registers 5
    .param p2, "old"    # Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .prologue
    .line 2244
    iput-object p1, p0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2245
    iget-object v0, p2, pkgName:Ljava/lang/String;

    iput-object v0, p0, pkgName:Ljava/lang/String;

    .line 2246
    iget v0, p2, uid:I

    iput v0, p0, uid:I

    .line 2247
    iget v0, p2, pid:I

    iput v0, p0, pid:I

    .line 2248
    iget v0, p2, piHashCode:I

    iput v0, p0, piHashCode:I

    .line 2249
    iget v0, p2, alarmHashCode:I

    iput v0, p0, alarmHashCode:I

    .line 2250
    iget v0, p2, hitCount:I

    iput v0, p0, hitCount:I

    .line 2251
    iget v0, p2, missCount:I

    iput v0, p0, missCount:I

    .line 2252
    iget v0, p2, missCountAfterHit:I

    iput v0, p0, missCountAfterHit:I

    .line 2253
    iget-boolean v0, p2, isExact:Z

    iput-boolean v0, p0, isExact:Z

    .line 2254
    iget-boolean v0, p2, missCountEvenlyDistributed:Z

    iput-boolean v0, p0, missCountEvenlyDistributed:Z

    .line 2255
    iget-boolean v0, p2, isMonitorON:Z

    iput-boolean v0, p0, isMonitorON:Z

    .line 2256
    iget-boolean v0, p2, isRunPass:Z

    iput-boolean v0, p0, isRunPass:Z

    .line 2257
    iget-boolean v0, p2, isUIalarm:Z

    iput-boolean v0, p0, isUIalarm:Z

    .line 2258
    iget-boolean v0, p2, isScnON:Z

    iput-boolean v0, p0, isScnON:Z

    .line 2259
    iget-boolean v0, p2, isWhite:Z

    iput-boolean v0, p0, isWhite:Z

    .line 2260
    iget v0, p2, resetCount:I

    iput v0, p0, resetCount:I

    .line 2261
    iget v0, p2, triggerCount:I

    iput v0, p0, triggerCount:I

    .line 2262
    iget v0, p2, fgCount:I

    iput v0, p0, fgCount:I

    .line 2263
    iget-wide v0, p2, targetWhen:J

    iput-wide v0, p0, targetWhen:J

    .line 2264
    iget-wide v0, p2, intervalCalculated:J

    iput-wide v0, p0, intervalCalculated:J

    .line 2265
    iget-wide v0, p2, intervalRequested:J

    iput-wide v0, p0, intervalRequested:J

    .line 2266
    iget-wide v0, p2, intervalTrigger:J

    iput-wide v0, p0, intervalTrigger:J

    .line 2267
    iget-wide v0, p2, intervalTraffic:J

    iput-wide v0, p0, intervalTraffic:J

    .line 2268
    iget-wide v0, p2, lastTriggerTime:J

    iput-wide v0, p0, lastTriggerTime:J

    .line 2269
    iget-wide v0, p2, lastTrafficTime:J

    iput-wide v0, p0, lastTrafficTime:J

    .line 2270
    iget-wide v0, p2, txbytes0time:J

    iput-wide v0, p0, txbytes0time:J

    .line 2271
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const-wide/16 v4, 0x3e8

    .line 2529
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2530
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ALARM{uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2531
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2532
    const-string v1, ", intATN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, intervalCalculated:J

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2533
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, intervalTrigger:J

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2534
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, intervalTraffic:J

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2535
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, isExact:Z

    if-eqz v1, :cond_df

    const/4 v1, 0x1

    :goto_4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2536
    const-string v1, ", pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2537
    const-string v1, ", alm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, piHashCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2538
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, alarmHashCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2539
    const-string v1, ", cntTHMMRF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, triggerCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2540
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, hitCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2541
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, missCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2542
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, missCountAfterHit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2543
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, resetCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2544
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, fgCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2545
    const-string v1, ", lstTN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, lastTriggerTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2546
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, lastTrafficTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2547
    const-string v1, ", tget:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, targetWhen:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2548
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2549
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2535
    :cond_df
    const/4 v1, 0x0

    goto/16 :goto_4d
.end method

.method public updateTrafficTimeLocked(ZJ)V
    .registers 24
    .param p1, "trafficDetected"    # Z
    .param p2, "trafficTime"    # J

    .prologue
    .line 2276
    if-eqz p1, :cond_278

    .line 2280
    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, hitCount:I

    .line 2286
    move-object/from16 v0, p0

    iget-boolean v0, v0, isRunPass:Z

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8b

    .line 2290
    move-object/from16 v0, p0

    iget-boolean v0, v0, isWhite:Z

    move/from16 v16, v0

    if-nez v16, :cond_5b

    .line 2291
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, NfgCount:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, fgCount:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, UMCount:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, triggerCount:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, missCountAfterHit:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, missCount:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, hitCount:I

    .line 2293
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, isRunPass:Z

    .line 2505
    :cond_5a
    :goto_5a
    return-void

    .line 2299
    :cond_5b
    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_83

    .line 2300
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->access$1300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2301
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, isRunPass:Z

    goto :goto_5a

    .line 2308
    :cond_83
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, isRunPass:Z

    .line 2314
    :cond_8b
    move-object/from16 v0, p0

    iget-boolean v0, v0, isWhite:Z

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_221

    .line 2316
    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_19d

    .line 2318
    move-object/from16 v0, p0

    iget v0, v0, triggerCount:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, missCount:I

    .line 2319
    move-object/from16 v0, p0

    iget v0, v0, triggerCount:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, hitCount:I

    .line 2350
    :cond_c9
    :goto_c9
    move-object/from16 v0, p0

    iget-wide v0, v0, lastTrafficTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_137

    .line 2351
    move-object/from16 v0, p0

    iget-wide v0, v0, lastTrafficTime:J

    move-wide/from16 v16, v0

    sub-long v16, p2, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, intervalTraffic:J

    .line 2353
    move-object/from16 v0, p0

    iget-wide v0, v0, intervalTraffic:J

    move-wide/from16 v16, v0

    const-wide/32 v18, 0x325aa0

    cmp-long v16, v16, v18

    if-ltz v16, :cond_274

    const-wide/32 v4, 0xea60

    .line 2355
    .local v4, "NET_TOLERANCE":J
    :goto_f7
    move-object/from16 v0, p0

    iget-wide v0, v0, intervalTraffic:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    long-to-double v0, v4

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    mul-long v16, v16, v4

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, intervalTraffic:J

    .line 2357
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v16

    if-eqz v16, :cond_137

    .line 2358
    const-string v16, "AlarmManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[TM] NetInterval="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, intervalTraffic:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    .end local v4    # "NET_TOLERANCE":J
    :cond_137
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, lastTrafficTime:J

    .line 2492
    :cond_13d
    :goto_13d
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
    invoke-static/range {v16 .. v16}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-result-object v16

    if-eqz v16, :cond_599

    .line 2493
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->ta:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;
    invoke-static/range {v16 .. v16}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1600(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->determineListTypeLocked(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_599

    .line 2497
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWatchlist:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->access$1200(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 2498
    .local v12, "itWatch":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_17d
    :goto_17d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_599

    .line 2499
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2500
    .local v15, "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v0, v15, alarmHashCode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, alarmHashCode:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_17d

    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_17d

    .line 2322
    .end local v12    # "itWatch":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    .end local v15    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_19d
    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1d5

    .line 2324
    move-object/from16 v0, p0

    iget v0, v0, triggerCount:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x3

    mul-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, missCount:I

    .line 2325
    move-object/from16 v0, p0

    iget v0, v0, triggerCount:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x3

    mul-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, hitCount:I

    goto/16 :goto_c9

    .line 2328
    :cond_1d5
    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x2

    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_c9

    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_c9

    .line 2330
    move-object/from16 v0, p0

    iget v0, v0, triggerCount:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x3

    mul-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, missCount:I

    .line 2331
    move-object/from16 v0, p0

    iget v0, v0, triggerCount:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x3

    mul-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, hitCount:I

    goto/16 :goto_c9

    .line 2340
    :cond_221
    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_24b

    .line 2341
    move-object/from16 v0, p0

    iget v0, v0, missCountAfterHit:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_271

    const/16 v16, 0x1

    :goto_245
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, missCountEvenlyDistributed:Z

    .line 2345
    :cond_24b
    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c9

    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c9

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, missCount:I

    goto/16 :goto_c9

    .line 2341
    :cond_271
    const/16 v16, 0x0

    goto :goto_245

    .line 2353
    :cond_274
    const-wide/16 v4, 0x4e20

    goto/16 :goto_f7

    .line 2367
    :cond_278
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mDataConnectionIsConnected:Z

    move/from16 v16, v0

    if-eqz v16, :cond_13d

    .line 2373
    move-object/from16 v0, p0

    iget-boolean v0, v0, isRunPass:Z

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2b2

    .line 2374
    move-object/from16 v0, p0

    iget-boolean v0, v0, isWhite:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5a

    .line 2375
    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_5a

    .line 2377
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, isRunPass:Z

    .line 2383
    :cond_2b2
    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v16, v0

    if-nez v16, :cond_2d0

    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2d0

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, hitCount:I

    .line 2387
    :cond_2d0
    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_2fa

    .line 2388
    move-object/from16 v0, p0

    iget v0, v0, missCountAfterHit:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_45b

    const/16 v16, 0x1

    :goto_2f4
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, missCountEvenlyDistributed:Z

    .line 2394
    :cond_2fa
    move-object/from16 v0, p0

    iget-boolean v0, v0, isWhite:Z

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_573

    .line 2395
    const/4 v7, 0x0

    .line 2397
    .local v7, "cnt":I
    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v16, v0

    if-eqz v16, :cond_36d

    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_36d

    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x2

    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    const/16 v17, -0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_34d

    move-object/from16 v0, p0

    iget v0, v0, missCountAfterHit:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_36d

    :cond_34d
    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    mul-int/lit8 v16, v16, 0x2

    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_573

    move-object/from16 v0, p0

    iget v0, v0, missCountAfterHit:I

    move/from16 v16, v0

    if-nez v16, :cond_573

    .line 2409
    :cond_36d
    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_4dd

    .line 2410
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, isWhite:Z

    .line 2414
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAms:Lcom/android/server/AlarmManagerService;
    invoke-static/range {v16 .. v16}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerService;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, piHashCode:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/server/AlarmManagerService;->findAlarmLocked(I)Z

    move-result v8

    .line 2418
    .local v8, "exists":Z
    if-nez v8, :cond_40a

    .line 2419
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2420
    .local v9, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_3b3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_40a

    .line 2421
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 2422
    .local v6, "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v0, v6, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/PendingIntent;->hashCode()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, piHashCode:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3b3

    .line 2424
    const-string v16, "AlarmManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[AppSync] Rollback : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAms:Lcom/android/server/AlarmManagerService;
    invoke-static/range {v16 .. v16}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$1400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerService;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/AlarmManagerService;->rollbackAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;ZZ)V

    .line 2433
    .end local v6    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_40a
    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, missCount:I

    .line 2437
    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    if-lez v16, :cond_42e

    move-object/from16 v0, p0

    iget v0, v0, missCountAfterHit:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, missCountAfterHit:I

    .line 2438
    :cond_42e
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->access$1500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 2439
    .local v10, "itIgnore":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_43c
    :goto_43c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_45f

    .line 2440
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2441
    .restart local v15    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v0, v15, alarmHashCode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, alarmHashCode:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_43c

    add-int/lit8 v7, v7, 0x1

    goto :goto_43c

    .line 2388
    .end local v7    # "cnt":I
    .end local v8    # "exists":Z
    .end local v10    # "itIgnore":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    .end local v15    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_45b
    const/16 v16, 0x0

    goto/16 :goto_2f4

    .line 2443
    .restart local v7    # "cnt":I
    .restart local v8    # "exists":Z
    .restart local v10    # "itIgnore":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_45f
    if-nez v7, :cond_4dd

    .line 2444
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mPermanentWhitelistPackages:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 2445
    .local v11, "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_475
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_491

    .line 2447
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2448
    .local v14, "pStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, pkgName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_475

    goto/16 :goto_5a

    .line 2453
    .end local v14    # "pStr":Ljava/lang/String;
    :cond_491
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->access$1500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x1388

    cmp-long v16, v16, v18

    if-gez v16, :cond_4bb

    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mIgnorelist:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->access$1500(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2454
    :cond_4bb
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v16

    if-eqz v16, :cond_4dd

    const-string v16, "AlarmManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[AppSync] moved to Ignore list: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    .end local v8    # "exists":Z
    .end local v10    # "itIgnore":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    .end local v11    # "itP":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4dd
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->mWHITElist:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->access$1300(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 2461
    .local v13, "itWhite":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_4eb
    :goto_4eb
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_52b

    .line 2462
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;

    .line 2463
    .restart local v15    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    iget v0, v15, alarmHashCode:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, alarmHashCode:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4eb

    .line 2464
    # getter for: Lcom/android/server/AlarmManagerServiceExt;->APP_SYNC_LOG:Z
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->access$100()Z

    move-result v16

    if-eqz v16, :cond_527

    const-string v16, "AlarmManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[AppSync] removed from Whitelist: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    :cond_527
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    goto :goto_4eb

    .line 2468
    .end local v15    # "r":Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;
    :cond_52b
    move-object/from16 v0, p0

    iget-object v0, v0, this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer;->this$0:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mAdjustableRepeatingAlarms:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->access$400(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2469
    .restart local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    :cond_53f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5a

    .line 2470
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;

    .line 2471
    .restart local v6    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    iget-object v0, v6, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/PendingIntent;->hashCode()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, piHashCode:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_53f

    .line 2473
    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v6, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->isWhitelist:Z

    .line 2474
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    iput-wide v0, v6, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalWindow:J

    .line 2475
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    iput-wide v0, v6, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatInterval:J

    goto/16 :goto_5a

    .line 2485
    .end local v6    # "aExt":Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .end local v7    # "cnt":I
    .end local v9    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$AlarmExt;>;"
    .end local v13    # "itWhite":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$TrafficAnalyzer$AlarmRecord;>;"
    :cond_573
    move-object/from16 v0, p0

    iget v0, v0, missCount:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, missCount:I

    .line 2489
    move-object/from16 v0, p0

    iget v0, v0, hitCount:I

    move/from16 v16, v0

    if-lez v16, :cond_13d

    move-object/from16 v0, p0

    iget v0, v0, missCountAfterHit:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, missCountAfterHit:I

    goto/16 :goto_13d

    .line 2504
    :cond_599
    if-eqz p1, :cond_5a

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, missCountAfterHit:I

    goto/16 :goto_5a
.end method

.method public updateTriggerTimeLocked(IJ)V
    .registers 14
    .param p1, "count"    # I
    .param p2, "triggerTime"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 2507
    iget-wide v2, p0, lastTriggerTime:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_36

    .line 2511
    iget-wide v2, p0, lastTriggerTime:J

    sub-long v2, p2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iput-wide v2, p0, intervalTrigger:J

    .line 2515
    iget-wide v2, p0, intervalTrigger:J

    iget-wide v4, p0, intervalCalculated:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_1e

    .line 2527
    :goto_1d
    return-void

    .line 2519
    :cond_1e
    iget-wide v2, p0, intervalTrigger:J

    const-wide/32 v4, 0x325aa0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4b

    const-wide/32 v0, 0xea60

    .line 2521
    .local v0, "SYNC_TOLERANCE_VALUE":J
    :goto_2a
    iget-wide v2, p0, intervalTrigger:J

    long-to-double v2, v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    mul-long/2addr v2, v0

    iput-wide v2, p0, intervalTrigger:J

    .line 2524
    .end local v0    # "SYNC_TOLERANCE_VALUE":J
    :cond_36
    iput-wide p2, p0, lastTriggerTime:J

    .line 2525
    iget-wide v2, p0, intervalRequested:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_47

    iget-wide v2, p0, targetWhen:J

    int-to-long v4, p1

    iget-wide v6, p0, intervalRequested:J

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, targetWhen:J

    .line 2526
    :cond_47
    const/4 v2, 0x0

    iput v2, p0, resetCount:I

    goto :goto_1d

    .line 2519
    :cond_4b
    const-wide/16 v0, 0x2710

    goto :goto_2a
.end method
