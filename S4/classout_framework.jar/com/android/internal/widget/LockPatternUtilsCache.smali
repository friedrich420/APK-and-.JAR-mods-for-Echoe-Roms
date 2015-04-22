.class public Lcom/android/internal/widget/LockPatternUtilsCache;
.super Ljava/lang/Object;
.source "LockPatternUtilsCache.java"

# interfaces
.implements Lcom/android/internal/widget/ILockSettings;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;
    }
.end annotation


# static fields
.field private static final HAS_LOCK_BACKUP_PIN_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockBackupPinCacheKey"

.field private static final HAS_LOCK_CARRIER_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockCarrierPasswordCacheKey"

.field private static final HAS_LOCK_FINGERPRINT_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockFingerprintPasswordCacheKey"

.field private static final HAS_LOCK_FMM_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockFMMPasswordCacheKey"

.field private static final HAS_LOCK_PARENTCONTROL_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockParentControlPasswordCacheKey"

.field private static final HAS_LOCK_PARENTCONTROL_PASSWORD_HASHSIZE_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockParentControlPasswordHashSizeCacheKey"

.field private static final HAS_LOCK_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPasswordCacheKey"

.field private static final HAS_LOCK_PATTERN_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPatternCacheKey"

.field private static final HAS_LOCK_PERSONALMODE_BACKUP_PIN_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPersonalModeBackupPinCacheKey"

.field private static final HAS_LOCK_PERSONALMODE_FINGERPRINT_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPersonalModeFingerprintPasswordCacheKey"

.field private static final HAS_LOCK_PERSONALMODE_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPersonalModePasswordCacheKey"

.field private static final HAS_LOCK_PERSONALMODE_PATTERN_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPersonalModePatternCacheKey"

.field private static final HAS_LOCK_PERSONALMODE_PIN_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPersonalModePinCacheKey"

.field private static final IS_CARRIER_LOCK_ENABLED_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.IsCarrierLockPlusEnabledCacheKey"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtilsCache"

.field private static sInstance:Lcom/android/internal/widget/LockPatternUtilsCache;


# instance fields
.field private final mCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mCacheKey:Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

.field private final mObserver:Lcom/android/internal/widget/ILockSettingsObserver;

.field private final mService:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/ILockSettings;)V
    .registers 5
    .param p1, "service"    # Lcom/android/internal/widget/ILockSettings;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, mCache:Landroid/util/ArrayMap;

    .line 49
    new-instance v1, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;-><init>(Lcom/android/internal/widget/LockPatternUtilsCache$1;)V

    iput-object v1, p0, mCacheKey:Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    .line 237
    new-instance v1, Lcom/android/internal/widget/LockPatternUtilsCache$1;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtilsCache$1;-><init>(Lcom/android/internal/widget/LockPatternUtilsCache;)V

    iput-object v1, p0, mObserver:Lcom/android/internal/widget/ILockSettingsObserver;

    .line 62
    iput-object p1, p0, mService:Lcom/android/internal/widget/ILockSettings;

    .line 64
    :try_start_1b
    iget-object v1, p0, mObserver:Lcom/android/internal/widget/ILockSettingsObserver;

    invoke-interface {p1, v1}, Lcom/android/internal/widget/ILockSettings;->registerObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21

    .line 70
    return-void

    .line 65
    :catch_21
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/LockPatternUtilsCache;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternUtilsCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, invalidateCache(Ljava/lang/String;I)V

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/LockPatternUtilsCache;
    .registers 3
    .param p0, "service"    # Lcom/android/internal/widget/ILockSettings;

    .prologue
    .line 53
    const-class v1, Lcom/android/internal/widget/LockPatternUtilsCache;

    monitor-enter v1

    :try_start_3
    sget-object v0, sInstance:Lcom/android/internal/widget/LockPatternUtilsCache;

    if-nez v0, :cond_e

    .line 54
    new-instance v0, Lcom/android/internal/widget/LockPatternUtilsCache;

    invoke-direct {v0, p0}, <init>(Lcom/android/internal/widget/ILockSettings;)V

    sput-object v0, sInstance:Lcom/android/internal/widget/LockPatternUtilsCache;

    .line 56
    :cond_e
    sget-object v0, sInstance:Lcom/android/internal/widget/LockPatternUtilsCache;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private invalidateCache(Ljava/lang/String;I)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 231
    iget-object v1, p0, mCache:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 233
    :try_start_3
    iget-object v0, p0, mCache:Landroid/util/ArrayMap;

    iget-object v2, p0, mCacheKey:Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->set(Ljava/lang/String;I)Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    monitor-exit v1

    .line 235
    return-void

    .line 234
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private peekCache(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 217
    iget-object v1, p0, mCache:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 219
    :try_start_3
    iget-object v0, p0, mCache:Landroid/util/ArrayMap;

    iget-object v2, p0, mCacheKey:Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->set(Ljava/lang/String;I)Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 220
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private putCache(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 224
    iget-object v1, p0, mCache:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 226
    :try_start_3
    iget-object v0, p0, mCache:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;-><init>(Lcom/android/internal/widget/LockPatternUtilsCache$1;)V

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->set(Ljava/lang/String;I)Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    monitor-exit v1

    .line 228
    return-void

    .line 227
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0}, Lcom/android/internal/widget/ILockSettings;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public checkBackupPin(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkBackupPin(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkCarrierPassword(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 538
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkCarrierPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkFMMPassword(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 496
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkFMMPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkFingerprintPassword(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkFingerprintPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkParentControlPassword([BI)Z
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkParentControlPassword([BI)Z

    move-result v0

    return v0
.end method

.method public checkPassword(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkPattern(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPattern(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkPersonalModeBackupPin(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 423
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModeBackupPin(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkPersonalModeFingerprintPassword(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModeFingerprintPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkPersonalModePassword(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkPersonalModePattern(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePattern(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkPersonalModePin(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePin(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkSignatureBackupPin([BI)Z
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkSignatureBackupPin([BI)Z

    move-result v0

    return v0
.end method

.method public checkVoldPassword(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->checkVoldPassword(I)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0, p1, p3}, peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 112
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_f

    .line 113
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 117
    :goto_e
    return v0

    .line 115
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_f
    iget-object v2, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    .line 116
    .local v0, "result":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, p1, p3, v2}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_e
.end method

.method public getCarrierLockPlusMode(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 512
    const-string v2, "LockPatternUtils.Cache.IsCarrierLockPlusEnabledCacheKey"

    invoke-direct {p0, v2, p1}, peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 513
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 514
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 518
    :goto_10
    return v0

    .line 516
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->getCarrierLockPlusMode(I)Z

    move-result v0

    .line 517
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.IsCarrierLockPlusEnabledCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10
.end method

.method public getLong(Ljava/lang/String;JI)J
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0, p1, p4}, peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    .line 92
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_f

    .line 93
    check-cast v2, Ljava/lang/Long;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 97
    :goto_e
    return-wide v0

    .line 95
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_f
    iget-object v3, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    .line 96
    .local v0, "result":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, p1, p4, v3}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_e
.end method

.method public getParentControlPasswordHashSize(I)I
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 336
    iget-object v1, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->getParentControlPasswordHashSize(I)I

    move-result v0

    .line 337
    .local v0, "result":I
    const-string v1, "LockPatternUtils.Cache.HasLockParentControlPasswordHashSizeCacheKey"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, p1, v2}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 338
    return v0
.end method

.method public getSignatureInfo(I)[B
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->getSignatureInfo(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1, p3}, peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 102
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 103
    check-cast v1, Ljava/lang/String;

    .line 107
    .end local v1    # "value":Ljava/lang/Object;
    :goto_a
    return-object v1

    .line 105
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_b
    iget-object v2, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, p1, p3, v0}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    move-object v1, v0

    .line 107
    goto :goto_a
.end method

.method public haveBackupPin(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 185
    const-string v2, "LockPatternUtils.Cache.HasLockBackupPinCacheKey"

    invoke-direct {p0, v2, p1}, peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 186
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 187
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 191
    :goto_10
    return v0

    .line 189
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->haveBackupPin(I)Z

    move-result v0

    .line 190
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockBackupPinCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10
.end method

.method public haveCarrierPassword(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 543
    const-string v2, "LockPatternUtils.Cache.HasLockCarrierPasswordCacheKey"

    invoke-direct {p0, v2, p1}, peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 544
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 545
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 549
    :goto_10
    return v0

    .line 547
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->haveCarrierPassword(I)Z

    move-result v0

    .line 548
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockCarrierPasswordCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10
.end method

.method public haveFMMPassword(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 501
    const-string v2, "LockPatternUtils.Cache.HasLockFMMPasswordCacheKey"

    invoke-direct {p0, v2, p1}, peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 502
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 503
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 507
    :goto_10
    return v0

    .line 505
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->haveFMMPassword(I)Z

    move-result v0

    .line 506
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockFMMPasswordCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10
.end method

.method public haveFingerprintPassword(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 298
    const-string v2, "LockPatternUtils.Cache.HasLockFingerprintPasswordCacheKey"

    invoke-direct {p0, v2, p1}, peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 299
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 300
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 304
    :goto_10
    return v0

    .line 302
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->haveFingerprintPassword(I)Z

    move-result v0

    .line 303
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockFingerprintPasswordCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10
.end method

.method public haveParentControlPassword(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 321
    const-string v2, "LockPatternUtils.Cache.HasLockParentControlPasswordCacheKey"

    invoke-direct {p0, v2, p1}, peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 322
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 323
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 327
    :goto_10
    return v0

    .line 325
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->haveParentControlPassword(I)Z

    move-result v0

    .line 326
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockParentControlPasswordCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10
.end method

.method public havePassword(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 174
    const-string v2, "LockPatternUtils.Cache.HasLockPasswordCacheKey"

    invoke-direct {p0, v2, p1}, peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 175
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 176
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 180
    :goto_10
    return v0

    .line 178
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z

    move-result v0

    .line 179
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockPasswordCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10
.end method

.method public havePattern(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    const-string v2, "LockPatternUtils.Cache.HasLockPatternCacheKey"

    invoke-direct {p0, v2, p1}, peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 164
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 165
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 169
    :goto_10
    return v0

    .line 167
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePattern(I)Z

    move-result v0

    .line 168
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockPatternCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10
.end method

.method public havePersonalModeBackupPin(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 467
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModeBackupPinCacheKey"

    invoke-direct {p0, v2, p1}, peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 468
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 469
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 473
    :goto_10
    return v0

    .line 471
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModeBackupPin(I)Z

    move-result v0

    .line 472
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModeBackupPinCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10
.end method

.method public havePersonalModeFingerprintPassword(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 478
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModeFingerprintPasswordCacheKey"

    invoke-direct {p0, v2, p1}, peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 479
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 480
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 484
    :goto_10
    return v0

    .line 482
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModeFingerprintPassword(I)Z

    move-result v0

    .line 483
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModeFingerprintPasswordCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10
.end method

.method public havePersonalModePassword(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 445
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModePasswordCacheKey"

    invoke-direct {p0, v2, p1}, peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 446
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 447
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 451
    :goto_10
    return v0

    .line 449
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePassword(I)Z

    move-result v0

    .line 450
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModePasswordCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10
.end method

.method public havePersonalModePattern(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 456
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModePatternCacheKey"

    invoke-direct {p0, v2, p1}, peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 457
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 458
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 462
    :goto_10
    return v0

    .line 460
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePattern(I)Z

    move-result v0

    .line 461
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModePatternCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10
.end method

.method public havePersonalModePin(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 434
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModePinCacheKey"

    invoke-direct {p0, v2, p1}, peekCache(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 435
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_11

    .line 436
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 440
    :goto_10
    return v0

    .line 438
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_11
    iget-object v2, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePin(I)Z

    move-result v0

    .line 439
    .local v0, "result":Z
    const-string v2, "LockPatternUtils.Cache.HasLockPersonalModePinCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_10
.end method

.method public haveSignature(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->haveSignature(I)Z

    move-result v0

    return v0
.end method

.method public haveSignatureBackupPin(I)Z
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->haveSignatureBackupPin(I)Z

    move-result v0

    return v0
.end method

.method public registerObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V
    .registers 3
    .param p1, "observer"    # Lcom/android/internal/widget/ILockSettingsObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->registerObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V

    .line 202
    return-void
.end method

.method public removeUser(I)V
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->removeUser(I)V

    .line 197
    return-void
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p3}, invalidateCache(Ljava/lang/String;I)V

    .line 74
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V

    .line 75
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 76
    return-void
.end method

.method public setCarrierLockPlusEnabled(I)V
    .registers 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 523
    const-string v1, "LockPatternUtils.Cache.IsCarrierLockPlusEnabledCacheKey"

    invoke-direct {p0, v1, p1}, invalidateCache(Ljava/lang/String;I)V

    .line 524
    iget-object v1, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->getCarrierLockPlusMode(I)Z

    move-result v0

    .line 525
    .local v0, "result":Z
    iget-object v1, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->setCarrierLockPlusEnabled(I)V

    .line 526
    const-string v1, "LockPatternUtils.Cache.IsCarrierLockPlusEnabledCacheKey"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, p1, v2}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 527
    return-void
.end method

.method public setLockBackupPin(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 146
    const-string v0, "LockPatternUtils.Cache.HasLockBackupPinCacheKey"

    invoke-direct {p0, v0, p2}, invalidateCache(Ljava/lang/String;I)V

    .line 147
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPin(Ljava/lang/String;I)V

    .line 148
    const-string v1, "LockPatternUtils.Cache.HasLockBackupPinCacheKey"

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 149
    return-void

    .line 148
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setLockCarrierPassword(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 531
    const-string v0, "LockPatternUtils.Cache.HasLockCarrierPasswordCacheKey"

    invoke-direct {p0, v0, p2}, invalidateCache(Ljava/lang/String;I)V

    .line 532
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockCarrierPassword(Ljava/lang/String;I)V

    .line 533
    const-string v1, "LockPatternUtils.Cache.HasLockCarrierPasswordCacheKey"

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 534
    return-void

    .line 533
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setLockFMMPassword(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 489
    const-string v0, "LockPatternUtils.Cache.HasLockFMMPasswordCacheKey"

    invoke-direct {p0, v0, p2}, invalidateCache(Ljava/lang/String;I)V

    .line 490
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockFMMPassword(Ljava/lang/String;I)V

    .line 491
    const-string v1, "LockPatternUtils.Cache.HasLockFMMPasswordCacheKey"

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 492
    return-void

    .line 491
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setLockFingerprintPassword(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 286
    const-string v0, "LockPatternUtils.Cache.HasLockFingerprintPasswordCacheKey"

    invoke-direct {p0, v0, p2}, invalidateCache(Ljava/lang/String;I)V

    .line 287
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockFingerprintPassword(Ljava/lang/String;I)V

    .line 288
    const-string v1, "LockPatternUtils.Cache.HasLockFingerprintPasswordCacheKey"

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 289
    return-void

    .line 288
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setLockParentControlPassword([BI)V
    .registers 5
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 309
    const-string v0, "LockPatternUtils.Cache.HasLockParentControlPasswordCacheKey"

    invoke-direct {p0, v0, p2}, invalidateCache(Ljava/lang/String;I)V

    .line 310
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockParentControlPassword([BI)V

    .line 311
    const-string v1, "LockPatternUtils.Cache.HasLockParentControlPasswordCacheKey"

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 312
    return-void

    .line 311
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setLockPassword(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 134
    const-string v0, "LockPatternUtils.Cache.HasLockPasswordCacheKey"

    invoke-direct {p0, v0, p2}, invalidateCache(Ljava/lang/String;I)V

    .line 135
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;I)V

    .line 136
    const-string v1, "LockPatternUtils.Cache.HasLockPasswordCacheKey"

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 137
    return-void

    .line 136
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setLockPattern(Ljava/lang/String;I)V
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    const-string v0, "LockPatternUtils.Cache.HasLockPatternCacheKey"

    invoke-direct {p0, v0, p2}, invalidateCache(Ljava/lang/String;I)V

    .line 123
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;I)V

    .line 124
    const-string v1, "LockPatternUtils.Cache.HasLockPatternCacheKey"

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 125
    return-void

    .line 124
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setLong(Ljava/lang/String;JI)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p4}, invalidateCache(Ljava/lang/String;I)V

    .line 80
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V

    .line 81
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 82
    return-void
.end method

.method public setPersonalModeFingerprintPassword(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 401
    const-string v0, "LockPatternUtils.Cache.HasLockPersonalModeFingerprintPasswordCacheKey"

    invoke-direct {p0, v0, p2}, invalidateCache(Ljava/lang/String;I)V

    .line 402
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeFingerprintPassword(Ljava/lang/String;I)V

    .line 403
    const-string v1, "LockPatternUtils.Cache.HasLockPersonalModeFingerprintPasswordCacheKey"

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 404
    return-void

    .line 403
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setPersonalModeLockBackupPin(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 393
    const-string v0, "LockPatternUtils.Cache.HasLockPersonalModeBackupPinCacheKey"

    invoke-direct {p0, v0, p2}, invalidateCache(Ljava/lang/String;I)V

    .line 394
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockBackupPin(Ljava/lang/String;I)V

    .line 395
    const-string v1, "LockPatternUtils.Cache.HasLockPersonalModeBackupPinCacheKey"

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 396
    return-void

    .line 395
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setPersonalModeLockPassword(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 379
    const-string v0, "LockPatternUtils.Cache.HasLockPersonalModePasswordCacheKey"

    invoke-direct {p0, v0, p2}, invalidateCache(Ljava/lang/String;I)V

    .line 380
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPassword(Ljava/lang/String;I)V

    .line 381
    const-string v1, "LockPatternUtils.Cache.HasLockPersonalModePasswordCacheKey"

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 382
    return-void

    .line 381
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setPersonalModeLockPattern(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 386
    const-string v0, "LockPatternUtils.Cache.HasLockPersonalModePatternCacheKey"

    invoke-direct {p0, v0, p2}, invalidateCache(Ljava/lang/String;I)V

    .line 387
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPattern(Ljava/lang/String;I)V

    .line 388
    const-string v1, "LockPatternUtils.Cache.HasLockPersonalModePatternCacheKey"

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 389
    return-void

    .line 388
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setPersonalModeLockPin(Ljava/lang/String;I)V
    .registers 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 372
    const-string v0, "LockPatternUtils.Cache.HasLockPersonalModePinCacheKey"

    invoke-direct {p0, v0, p2}, invalidateCache(Ljava/lang/String;I)V

    .line 373
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPin(Ljava/lang/String;I)V

    .line 374
    const-string v1, "LockPatternUtils.Cache.HasLockPersonalModePinCacheKey"

    if-eqz p1, :cond_17

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, p2, v0}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 375
    return-void

    .line 374
    :cond_17
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setSignatureBackupPin([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setSignatureBackupPin([BI)V

    .line 344
    return-void
.end method

.method public setSignatureInfo([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/ILockSettings;->setSignatureInfo([BI)V

    .line 358
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p3}, invalidateCache(Ljava/lang/String;I)V

    .line 86
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    invoke-direct {p0, p1, p3, p2}, putCache(Ljava/lang/String;ILjava/lang/Object;)V

    .line 88
    return-void
.end method

.method public unregisterObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V
    .registers 3
    .param p1, "observer"    # Lcom/android/internal/widget/ILockSettingsObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, mService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/ILockSettings;->unregisterObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V

    .line 207
    return-void
.end method
