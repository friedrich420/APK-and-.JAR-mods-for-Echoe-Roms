.class public Lcom/sec/android/provider/logsprovider/util/EventLogUtil;
.super Ljava/lang/Object;
.source "EventLogUtil.java"


# static fields
.field private static final EVENTLOG_ENABLED:Ljava/lang/Boolean;

.field private static final mRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/sec/android/provider/logsprovider/util/EventLogUtil;->mRandom:Ljava/util/Random;

    .line 43
    const-string v0, "true"

    const-string v1, "ro.product_ship"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/provider/logsprovider/util/EventLogUtil;->EVENTLOG_ENABLED:Ljava/lang/Boolean;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static determineForDuration(JZ)Z
    .locals 8
    .param p0, "durationMillis"    # J
    .param p2, "isEventLog"    # Z

    .prologue
    const/16 v6, 0x64

    .line 46
    const/4 v1, 0x0

    .line 48
    .local v1, "percent":I
    if-eqz p2, :cond_1

    .line 49
    const/4 v0, 0x1

    .line 53
    .local v0, "SLOW_THRESHOLD_MILLIS":I
    :goto_0
    int-to-long v2, v0

    cmp-long v2, p0, v2

    if-ltz v2, :cond_0

    .line 54
    const/16 v1, 0x64

    .line 55
    :cond_0
    const-wide/16 v2, 0x64

    mul-long/2addr v2, p0

    int-to-long v4, v0

    div-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1

    .line 56
    if-ge v1, v6, :cond_3

    .line 57
    sget-object v3, Lcom/sec/android/provider/logsprovider/util/EventLogUtil;->mRandom:Ljava/util/Random;

    monitor-enter v3

    .line 58
    :try_start_0
    sget-object v2, Lcom/sec/android/provider/logsprovider/util/EventLogUtil;->mRandom:Ljava/util/Random;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-lt v2, v1, :cond_2

    .line 59
    const/4 v2, 0x0

    monitor-exit v3

    .line 63
    :goto_1
    return v2

    .line 51
    .end local v0    # "SLOW_THRESHOLD_MILLIS":I
    :cond_1
    const/16 v0, 0x1f4

    .restart local v0    # "SLOW_THRESHOLD_MILLIS":I
    goto :goto_0

    .line 61
    :cond_2
    monitor-exit v3

    .line 63
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 61
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getTypeEvent(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 85
    packed-switch p0, :pswitch_data_0

    .line 95
    const v0, 0x12fd1

    :goto_0
    return v0

    .line 89
    :pswitch_0
    const v0, 0xcb23

    goto :goto_0

    .line 91
    :pswitch_1
    const v0, 0xcb22

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getTypeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 67
    packed-switch p0, :pswitch_data_0

    .line 79
    const-string v0, "Type error"

    :goto_0
    return-object v0

    .line 69
    :pswitch_0
    const-string v0, "insert"

    goto :goto_0

    .line 71
    :pswitch_1
    const-string v0, "delete"

    goto :goto_0

    .line 73
    :pswitch_2
    const-string v0, "update"

    goto :goto_0

    .line 75
    :pswitch_3
    const-string v0, "query"

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static tryLog(IJLandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 5
    .param p0, "type"    # I
    .param p1, "durationMillis"    # J
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;
    .param p8, "cv"    # Landroid/content/ContentValues;

    .prologue
    const/4 v3, 0x4

    .line 101
    sget-object v0, Lcom/sec/android/provider/logsprovider/util/EventLogUtil;->EVENTLOG_ENABLED:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    .end local p5    # "selection":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 104
    .restart local p5    # "selection":Ljava/lang/String;
    :cond_1
    if-ne p0, v3, :cond_2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/sec/android/provider/logsprovider/util/EventLogUtil;->determineForDuration(JZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    :cond_2
    invoke-static {p0}, Lcom/sec/android/provider/logsprovider/util/EventLogUtil;->getTypeEvent(I)I

    move-result v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contents_sample_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/provider/logsprovider/util/EventLogUtil;->getTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": [ uri = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", prj = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p4, :cond_5

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", sel = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p5, :cond_6

    move-object v0, p5

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", selArg = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p6, :cond_7

    invoke-static {p6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", so = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", cv = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p8, :cond_8

    invoke-virtual {p8}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", dur = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 113
    :cond_3
    if-ne p0, v3, :cond_4

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/sec/android/provider/logsprovider/util/EventLogUtil;->determineForDuration(JZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    :cond_4
    const-string v1, "LogsProvider_EventLog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contents_sample_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/provider/logsprovider/util/EventLogUtil;->getTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": [ uri = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", prj = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p4, :cond_9

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", sel = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p5, :cond_a

    .end local p5    # "selection":Ljava/lang/String;
    :goto_6
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", selArg = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p6, :cond_b

    invoke-static {p6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", so = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", cv = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p8, :cond_c

    invoke-virtual {p8}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", dur = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 105
    .restart local p5    # "selection":Ljava/lang/String;
    :cond_5
    const-string v0, "null"

    goto/16 :goto_1

    :cond_6
    const-string v0, "null"

    goto/16 :goto_2

    :cond_7
    const-string v0, "null"

    goto/16 :goto_3

    :cond_8
    const-string v0, "null"

    goto/16 :goto_4

    .line 114
    :cond_9
    const-string v0, "null"

    goto :goto_5

    :cond_a
    const-string p5, "null"

    goto :goto_6

    .end local p5    # "selection":Ljava/lang/String;
    :cond_b
    const-string v0, "null"

    goto :goto_7

    :cond_c
    const-string v0, "null"

    goto :goto_8
.end method
