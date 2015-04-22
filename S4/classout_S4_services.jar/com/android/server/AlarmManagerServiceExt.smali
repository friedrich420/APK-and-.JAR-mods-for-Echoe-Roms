.class Lcom/android/server/AlarmManagerServiceExt;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;,
        Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    }
.end annotation


# static fields
.field private static final APP_SYNC_LOG:Z

.field private static NEW_ALARM_MANAGER:Z = false

.field private static final TAG:Ljava/lang/String; = "AlarmManager"

.field private static mGmsLocationBundling:Z


# instance fields
.field mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    const-string v0, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Ljava/io/File;

    const-string v3, "/data/system/app_sync_log_enable"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_27

    move v0, v1

    :goto_1a
    sput-boolean v0, APP_SYNC_LOG:Z

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_29

    :goto_22
    sput-boolean v1, NEW_ALARM_MANAGER:Z

    .line 93
    sput-boolean v2, mGmsLocationBundling:Z

    return-void

    :cond_27
    move v0, v2

    .line 89
    goto :goto_1a

    :cond_29
    move v1, v2

    .line 91
    goto :goto_22
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService;Ljava/lang/Object;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/AlarmManagerService;
    .param p3, "lock"    # Ljava/lang/Object;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;-><init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService;Ljava/lang/Object;)V

    iput-object v0, p0, mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    .line 99
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 87
    sget-boolean v0, mGmsLocationBundling:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 87
    sput-boolean p0, mGmsLocationBundling:Z

    return p0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 87
    sget-boolean v0, APP_SYNC_LOG:Z

    return v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 87
    sget-boolean v0, NEW_ALARM_MANAGER:Z

    return v0
.end method

.method public static maxRepeatInterval(JJ)J
    .registers 16
    .param p0, "interval"    # J
    .param p2, "window"    # J

    .prologue
    .line 189
    move-wide v4, p0

    .line 190
    .local v4, "ret":J
    add-long v2, p0, p2

    .line 191
    .local v2, "maxInterval":J
    const-wide/16 v8, 0x2

    div-long v0, p0, v8

    .line 192
    .local v0, "halfInterval":J
    const-wide/16 v8, 0x0

    cmp-long v8, p2, v8

    if-nez v8, :cond_f

    move-wide v6, v4

    .line 211
    .end local v4    # "ret":J
    .local v6, "ret":J
    :goto_e
    return-wide v6

    .line 196
    .end local v6    # "ret":J
    .restart local v4    # "ret":J
    :cond_f
    const-wide/32 v8, 0x36ee80

    cmp-long v8, v2, v8

    if-ltz v8, :cond_22

    .line 197
    long-to-double v8, v2

    long-to-double v10, v0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-long v8, v8

    mul-long v4, v8, v0

    :goto_20
    move-wide v6, v4

    .line 211
    .end local v4    # "ret":J
    .restart local v6    # "ret":J
    goto :goto_e

    .line 202
    .end local v6    # "ret":J
    .restart local v4    # "ret":J
    :cond_22
    const-wide/32 v8, 0x1b7740

    cmp-long v8, v2, v8

    if-ltz v8, :cond_3b

    .line 203
    long-to-double v8, v2

    const-wide v10, 0x41224f8000000000L    # 600000.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-long v8, v8

    const-wide/32 v10, 0x927c0

    mul-long v4, v8, v10

    goto :goto_20

    .line 209
    :cond_3b
    long-to-double v8, v2

    const-wide v10, 0x41124f8000000000L    # 300000.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-long v8, v8

    const-wide/32 v10, 0x493e0

    mul-long v4, v8, v10

    goto :goto_20
.end method


# virtual methods
.method public getSyncScheduler()Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    return-object v0
.end method
