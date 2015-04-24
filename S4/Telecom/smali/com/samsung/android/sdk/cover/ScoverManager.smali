.class public final Lcom/samsung/android/sdk/cover/ScoverManager;
.super Ljava/lang/Object;
.source "ScoverManager.java"


# static fields
.field private static sIsFilpCoverSystemFeatureEnabled:Z

.field private static sIsSViewCoverSystemFeatureEnabled:Z

.field private static sIsSystemFeatureQueried:Z

.field private static sServiceVersion:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/cover/ICoverManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 126
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    .line 132
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    .line 138
    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    .line 140
    const/high16 v0, 0x1000000

    sput v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 84
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    .line 148
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSystemFeatureQueried:Z

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverManagerVersion()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    .line 149
    :cond_0
    return-void
.end method

.method private getCoverManagerVersion()I
    .locals 5

    .prologue
    .line 205
    const/high16 v1, 0x1000000

    .line 206
    invoke-static {}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    :try_start_0
    const-class v0, Lcom/samsung/android/cover/ICoverManager;

    const-string v2, "getVersion"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 209
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 214
    :goto_0
    const-string v1, "ScoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "serviceVersion : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return v0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    const-string v2, "ScoverManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getVersion failed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private declared-synchronized getService()Lcom/samsung/android/cover/ICoverManager;
    .locals 2

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    .line 247
    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    .line 248
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    .line 249
    const-string v0, "ScoverManager"

    const-string v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static isSupportCover()Z
    .locals 1

    .prologue
    .line 172
    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/cover/ScoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportableVersion(I)Z
    .locals 7

    .prologue
    const v6, 0xffff

    .line 227
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 228
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 229
    and-int v2, p0, v6

    .line 230
    sget v3, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 231
    sget v4, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    .line 232
    sget v5, Lcom/samsung/android/sdk/cover/ScoverManager;->sServiceVersion:I

    and-int/2addr v5, v6

    .line 233
    if-lt v3, v0, :cond_0

    if-lt v4, v1, :cond_0

    if-lt v5, v2, :cond_0

    .line 235
    const/4 v0, 0x1

    .line 237
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 517
    invoke-static {}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    const-string v0, "ScoverManager"

    const-string v1, "getCoverState : This device is not supported cover"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 551
    :goto_0
    return-object v0

    .line 524
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    .line 525
    if-eqz v0, :cond_1

    .line 526
    invoke-interface {v0}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v7

    .line 527
    if-eqz v7, :cond_4

    .line 529
    const/high16 v0, 0x1020000

    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v7, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v7, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v7, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v7, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v7, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v6, v7, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget v7, v7, Lcom/samsung/android/cover/CoverState;->model:I

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    const-string v1, "ScoverManager"

    const-string v2, "RemoteException in getCoverState: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    move-object v0, v8

    .line 551
    goto :goto_0

    .line 534
    :cond_2
    const/high16 v0, 0x1010000

    :try_start_1
    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportableVersion(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 535
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v7, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v7, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v7, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v7, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v7, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    iget-boolean v6, v7, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIIIZ)V

    goto :goto_0

    .line 539
    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v7, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v7, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v7, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v7, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v7, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIII)V

    goto :goto_0

    .line 545
    :cond_4
    const-string v0, "ScoverManager"

    const-string v1, "getCoverState : coverState is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
