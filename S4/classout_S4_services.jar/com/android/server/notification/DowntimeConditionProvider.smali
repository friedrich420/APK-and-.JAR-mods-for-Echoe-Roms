.class public Lcom/android/server/notification/DowntimeConditionProvider;
.super Landroid/service/notification/ConditionProviderService;
.source "DowntimeConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/DowntimeConditionProvider$Callback;
    }
.end annotation


# static fields
.field public static final COMPONENT:Landroid/content/ComponentName;

.field private static final DEBUG:Z

.field private static final ENTER_ACTION:Ljava/lang/String; = "DowntimeConditions.enter"

.field private static final ENTER_CODE:I = 0x64

.field private static final EXIT_ACTION:Ljava/lang/String; = "DowntimeConditions.exit"

.field private static final EXIT_CODE:I = 0x65

.field private static final EXTRA_TIME:Ljava/lang/String; = "time"

.field private static final TAG:Ljava/lang/String; = "DowntimeConditions"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private mCallback:Lcom/android/server/notification/DowntimeConditionProvider$Callback;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private final mDays:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInDowntime:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 51
    const-string v0, "DowntimeConditions"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, DEBUG:Z

    .line 53
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/service/notification/ConditionProviderService;-><init>()V

    .line 62
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, mCalendar:Ljava/util/Calendar;

    .line 63
    iput-object p0, p0, mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, mDays:Landroid/util/ArraySet;

    .line 271
    new-instance v0, Lcom/android/server/notification/DowntimeConditionProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/DowntimeConditionProvider$1;-><init>(Lcom/android/server/notification/DowntimeConditionProvider;)V

    iput-object v0, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_24

    const-string v0, "DowntimeConditions"

    const-string v1, "new DowntimeConditionProvider()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_24
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 49
    sget-boolean v0, DEBUG:Z

    return v0
.end method

.method static synthetic access$100(J)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # J

    .prologue
    .line 49
    invoke-static {p0, p1}, ts(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/DowntimeConditionProvider;)Ljava/util/Calendar;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/DowntimeConditionProvider;

    .prologue
    .line 49
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/DowntimeConditionProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/DowntimeConditionProvider;

    .prologue
    .line 49
    invoke-direct {p0}, reevaluateDowntime()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/notification/DowntimeConditionProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/DowntimeConditionProvider;

    .prologue
    .line 49
    invoke-direct {p0}, updateAlarms()V

    return-void
.end method

.method private addDays(JI)J
    .registers 7
    .param p1, "time"    # J
    .param p3, "days"    # I

    .prologue
    .line 240
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 241
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->add(II)V

    .line 242
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private fireDowntimeChanged()V
    .registers 3

    .prologue
    .line 214
    iget-object v0, p0, mCallback:Lcom/android/server/notification/DowntimeConditionProvider$Callback;

    if-eqz v0, :cond_b

    .line 215
    iget-object v0, p0, mCallback:Lcom/android/server/notification/DowntimeConditionProvider$Callback;

    iget-boolean v1, p0, mInDowntime:Z

    invoke-interface {v0, v1}, Lcom/android/server/notification/DowntimeConditionProvider$Callback;->onDowntimeChanged(Z)V

    .line 217
    :cond_b
    return-void
.end method

.method private getDayOfWeek(J)I
    .registers 6
    .param p1, "time"    # J

    .prologue
    .line 226
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 227
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method private getTime(JII)J
    .registers 8
    .param p1, "millis"    # J
    .param p3, "hour"    # I
    .param p4, "min"    # I

    .prologue
    const/4 v2, 0x0

    .line 231
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 232
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 233
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 234
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 235
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 236
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private init()V
    .registers 1

    .prologue
    .line 169
    invoke-direct {p0}, updateDays()V

    .line 170
    invoke-direct {p0}, reevaluateDowntime()V

    .line 171
    invoke-direct {p0}, updateAlarms()V

    .line 172
    return-void
.end method

.method private isInDowntime(IJJJ)Z
    .registers 12
    .param p1, "daysOffset"    # I
    .param p2, "time"    # J
    .param p4, "start"    # J
    .param p6, "end"    # J

    .prologue
    .line 196
    const/4 v1, 0x7

    .line 197
    .local v1, "n":I
    invoke-direct {p0, p2, p3}, getDayOfWeek(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v3, p1, 0x7

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x7

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v0, v2, 0x1

    .line 198
    .local v0, "day":I
    invoke-direct {p0, p4, p5, p1}, addDays(JI)J

    move-result-wide p4

    .line 199
    invoke-direct {p0, p6, p7, p1}, addDays(JI)J

    move-result-wide p6

    .line 200
    iget-object v2, p0, mDays:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    cmp-long v2, p2, p4

    if-ltz v2, :cond_2e

    cmp-long v2, p2, p6

    if-gez v2, :cond_2e

    const/4 v2, 0x1

    :goto_2d
    return v2

    :cond_2e
    const/4 v2, 0x0

    goto :goto_2d
.end method

.method private isInDowntime(J)Z
    .registers 14
    .param p1, "time"    # J

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 185
    iget-object v0, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v0, :cond_e

    iget-object v0, p0, mDays:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 192
    :cond_e
    :goto_e
    return v8

    .line 186
    :cond_f
    iget-object v0, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    iget-object v1, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-direct {p0, p1, p2, v0, v1}, getTime(JII)J

    move-result-wide v4

    .line 187
    .local v4, "start":J
    iget-object v0, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget v0, v0, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    iget-object v1, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v1, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-direct {p0, p1, p2, v0, v1}, getTime(JII)J

    move-result-wide v6

    .line 188
    .local v6, "end":J
    cmp-long v0, v4, v6

    if-eqz v0, :cond_e

    .line 189
    cmp-long v0, v6, v4

    if-gez v0, :cond_33

    .line 190
    invoke-direct {p0, v6, v7, v9}, addDays(JI)J

    move-result-wide v6

    .line 192
    :cond_33
    const/4 v1, -0x1

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, isInDowntime(IJJJ)Z

    move-result v0

    if-nez v0, :cond_45

    move-object v0, p0

    move v1, v8

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, isInDowntime(IJJJ)Z

    move-result v0

    if-eqz v0, :cond_48

    :cond_45
    move v0, v9

    :goto_46
    move v8, v0

    goto :goto_e

    :cond_48
    move v0, v8

    goto :goto_46
.end method

.method private reevaluateDowntime()V
    .registers 5

    .prologue
    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, isInDowntime(J)Z

    move-result v0

    .line 205
    .local v0, "inDowntime":Z
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_24

    const-string v1, "DowntimeConditions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inDowntime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_24
    iget-boolean v1, p0, mInDowntime:Z

    if-ne v0, v1, :cond_29

    .line 211
    :goto_28
    return-void

    .line 207
    :cond_29
    const-string v2, "DowntimeConditions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_5a

    const-string v1, "Entering"

    :goto_34
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " downtime"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iput-boolean v0, p0, mInDowntime:Z

    .line 209
    iget-boolean v1, p0, mInDowntime:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, getDayOfWeek(J)I

    move-result v2

    iget-object v3, p0, mDays:Landroid/util/ArraySet;

    invoke-static {v1, v2, v3}, Lcom/android/server/notification/ZenLog;->traceDowntime(ZILandroid/util/ArraySet;)V

    .line 210
    invoke-direct {p0}, fireDowntimeChanged()V

    goto :goto_28

    .line 207
    :cond_5a
    const-string v1, "Exiting"

    goto :goto_34
.end method

.method private static ts(J)Ljava/lang/String;
    .registers 4
    .param p0, "time"    # J

    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateAlarm(Ljava/lang/String;III)V
    .registers 19
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "hr"    # I
    .param p4, "min"    # I

    .prologue
    .line 246
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string v9, "alarm"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 247
    .local v2, "alarms":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 248
    .local v4, "now":J
    iget-object v8, p0, mCalendar:Ljava/util/Calendar;

    invoke-virtual {v8, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 249
    iget-object v8, p0, mCalendar:Ljava/util/Calendar;

    const/16 v9, 0xb

    move/from16 v0, p3

    invoke-virtual {v8, v9, v0}, Ljava/util/Calendar;->set(II)V

    .line 250
    iget-object v8, p0, mCalendar:Ljava/util/Calendar;

    const/16 v9, 0xc

    move/from16 v0, p4

    invoke-virtual {v8, v9, v0}, Ljava/util/Calendar;->set(II)V

    .line 251
    iget-object v8, p0, mCalendar:Ljava/util/Calendar;

    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 252
    iget-object v8, p0, mCalendar:Ljava/util/Calendar;

    const/16 v9, 0xe

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 253
    iget-object v8, p0, mCalendar:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 254
    .local v6, "time":J
    cmp-long v8, v6, v4

    if-gtz v8, :cond_44

    .line 255
    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v8}, addDays(JI)J

    move-result-wide v6

    .line 257
    :cond_44
    iget-object v8, p0, mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "time"

    invoke-virtual {v9, v10, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v9

    const/high16 v10, 0x8000000

    move/from16 v0, p2

    invoke-static {v8, v0, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 259
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 260
    iget-object v8, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v8, v8, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    if-eqz v8, :cond_93

    .line 261
    sget-boolean v8, DEBUG:Z

    if-eqz v8, :cond_8f

    const-string v8, "DowntimeConditions"

    const-string v9, "Scheduling %s for %s, %s in the future, now=%s"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    invoke-static {v6, v7}, ts(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sub-long v12, v6, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v4, v5}, ts(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_8f
    const/4 v8, 0x0

    invoke-virtual {v2, v8, v6, v7, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 265
    :cond_93
    return-void
.end method

.method private updateAlarms()V
    .registers 5

    .prologue
    .line 220
    iget-object v0, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_5

    .line 223
    :goto_4
    return-void

    .line 221
    :cond_5
    const-string v0, "DowntimeConditions.enter"

    const/16 v1, 0x64

    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    iget-object v3, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-direct {p0, v0, v1, v2, v3}, updateAlarm(Ljava/lang/String;III)V

    .line 222
    const-string v0, "DowntimeConditions.exit"

    const/16 v1, 0x65

    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget v2, v2, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    iget-object v3, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget v3, v3, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-direct {p0, v0, v1, v2, v3}, updateAlarm(Ljava/lang/String;III)V

    goto :goto_4
.end method

.method private updateDays()V
    .registers 5

    .prologue
    .line 175
    iget-object v2, p0, mDays:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 176
    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v2, :cond_25

    .line 177
    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->tryParseDays(Ljava/lang/String;)[I

    move-result-object v0

    .line 178
    .local v0, "days":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-eqz v0, :cond_25

    array-length v2, v0

    if-ge v1, v2, :cond_25

    .line 179
    iget-object v2, p0, mDays:Landroid/util/ArraySet;

    aget v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 182
    .end local v0    # "days":[I
    .end local v1    # "i":I
    :cond_25
    return-void
.end method


# virtual methods
.method public asInterface()Landroid/service/notification/IConditionProvider;
    .registers 2

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/service/notification/IConditionProvider;

    return-object v0
.end method

.method public attachBase(Landroid/content/Context;)V
    .registers 2
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-virtual {p0, p1}, attachBaseContext(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;
    .registers 17
    .param p1, "downtime"    # Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    .param p2, "state"    # I

    .prologue
    .line 153
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 161
    :goto_3
    return-object v0

    .line 154
    :cond_4
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->toDowntimeConditionId(Landroid/service/notification/ZenModeConfig$DowntimeInfo;)Landroid/net/Uri;

    move-result-object v1

    .line 155
    .local v1, "id":Landroid/net/Uri;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v11, "Hm"

    .line 156
    .local v11, "skeleton":Ljava/lang/String;
    :goto_12
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    .line 157
    .local v9, "locale":Ljava/util/Locale;
    invoke-static {v9, v11}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 158
    .local v10, "pattern":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v0, p1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endHour:I

    iget v3, p1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endMinute:I

    invoke-direct {p0, v4, v5, v0, v3}, getTime(JII)J

    move-result-wide v12

    .line 159
    .local v12, "time":J
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v10, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 160
    .local v8, "formatted":Ljava/lang/String;
    iget-object v0, p0, mContext:Landroid/content/Context;

    const v3, 0x1040695

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "summary":Ljava/lang/String;
    new-instance v0, Landroid/service/notification/Condition;

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v7, 0x1

    move/from16 v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    goto :goto_3

    .line 155
    .end local v2    # "summary":Ljava/lang/String;
    .end local v8    # "formatted":Ljava/lang/String;
    .end local v9    # "locale":Ljava/util/Locale;
    .end local v10    # "pattern":Ljava/lang/String;
    .end local v11    # "skeleton":Ljava/lang/String;
    .end local v12    # "time":J
    :cond_51
    const-string v11, "hma"

    goto :goto_12
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 76
    const-string v0, "    DowntimeConditionProvider:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    const-string v0, "      mConnected="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mConnected:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 78
    const-string v0, "      mInDowntime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mInDowntime:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 79
    return-void
.end method

.method public isDowntimeCondition(Landroid/service/notification/Condition;)Z
    .registers 3
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 165
    if-eqz p1, :cond_c

    iget-object v0, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidDowntimeConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isInDowntime()Z
    .registers 2

    .prologue
    .line 149
    iget-boolean v0, p0, mInDowntime:Z

    return v0
.end method

.method public onConnected()V
    .registers 4

    .prologue
    .line 95
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_b

    const-string v1, "DowntimeConditions"

    const-string v2, "onConnected"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, mConnected:Z

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "DowntimeConditions.enter"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v1, "DowntimeConditions.exit"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    invoke-direct {p0}, init()V

    .line 104
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 108
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "DowntimeConditions"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, mConnected:Z

    .line 110
    return-void
.end method

.method public onRequestConditions(I)V
    .registers 5
    .param p1, "relevance"    # I

    .prologue
    .line 114
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "DowntimeConditions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestConditions relevance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1c
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_36

    .line 116
    iget-boolean v0, p0, mInDowntime:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v0, :cond_36

    .line 117
    iget-object v0, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->toDowntimeInfo()Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, notifyCondition(Landroid/service/notification/Condition;)V

    .line 120
    :cond_36
    return-void
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .registers 7
    .param p1, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 124
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_1c

    const-string v2, "DowntimeConditions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSubscribe conditionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_1c
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseDowntimeConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v0

    .line 126
    .local v0, "downtime":Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    if-eqz v0, :cond_5e

    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v2, :cond_5e

    .line 127
    iget-object v2, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->toDowntimeInfo()Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    iget-boolean v2, p0, mInDowntime:Z

    if-eqz v2, :cond_5f

    const/4 v1, 0x1

    .line 129
    .local v1, "state":I
    :goto_37
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_57

    const-string v2, "DowntimeConditions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify condition state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/service/notification/Condition;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_57
    invoke-virtual {p0, v0, v1}, createCondition(Landroid/service/notification/ZenModeConfig$DowntimeInfo;I)Landroid/service/notification/Condition;

    move-result-object v2

    invoke-virtual {p0, v2}, notifyCondition(Landroid/service/notification/Condition;)V

    .line 132
    .end local v1    # "state":I
    :cond_5e
    return-void

    .line 127
    :cond_5f
    const/4 v1, 0x0

    goto :goto_37
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .registers 5
    .param p1, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 136
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "DowntimeConditions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnsubscribe conditionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1c
    return-void
.end method

.method public setCallback(Lcom/android/server/notification/DowntimeConditionProvider$Callback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/notification/DowntimeConditionProvider$Callback;

    .prologue
    .line 90
    iput-object p1, p0, mCallback:Lcom/android/server/notification/DowntimeConditionProvider$Callback;

    .line 91
    return-void
.end method

.method public setConfig(Landroid/service/notification/ZenModeConfig;)V
    .registers 4
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 140
    iget-object v0, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 146
    :cond_8
    :goto_8
    return-void

    .line 141
    :cond_9
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_15

    const-string v0, "DowntimeConditions"

    const-string/jumbo v1, "setConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_15
    iput-object p1, p0, mConfig:Landroid/service/notification/ZenModeConfig;

    .line 143
    iget-boolean v0, p0, mConnected:Z

    if-eqz v0, :cond_8

    .line 144
    invoke-direct {p0}, init()V

    goto :goto_8
.end method
