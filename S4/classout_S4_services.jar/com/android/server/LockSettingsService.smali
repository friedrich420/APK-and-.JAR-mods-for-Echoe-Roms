.class public Lcom/android/server/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsService$LockSettingsObserver;,
        Lcom/android/server/LockSettingsService$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final COLUMNS_FOR_QUERY:[Ljava/lang/String;

.field private static final COLUMN_KEY:Ljava/lang/String; = "name"

.field private static final COLUMN_USERID:Ljava/lang/String; = "user"

.field private static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field private static final HAS_LOCK_CARRIER_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockCarrierPasswordCacheKey"

.field private static final HAS_LOCK_FMM_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockFMMPasswordCacheKey"

.field private static final HAS_LOCK_PARENTCONTROL_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockParentControlPasswordCacheKey"

.field private static final HAS_LOCK_PASSWORD_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPasswordCacheKey"

.field private static final HAS_LOCK_PATTERN_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.HasLockPatternCacheKey"

.field private static final IS_CARRIER_LOCK_ENABLED_CACHE_KEY:Ljava/lang/String; = "LockPatternUtils.Cache.IsCarrierLockPlusEnabledCacheKey"

.field public static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field private static final LOCK_BACKUPPIN_FILE:Ljava/lang/String; = "sparepassword.key"

.field private static final LOCK_FINGERPRINT_PASSWORD_FILE:Ljava/lang/String; = "fingerprintpassword.key"

.field private static final LOCK_FMM_FILE:Ljava/lang/String; = "fmmpassword.key"

.field private static final LOCK_PARENT_CONTROL_PASSWORD_FILE:Ljava/lang/String; = "parentcontrol.key"

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "password.key"

.field private static final LOCK_PATTERN_FILE:Ljava/lang/String; = "gesture.key"

.field private static final LOCK_SIGNATURE_BACKUPPIN_FILE:Ljava/lang/String; = "signaturebackuppin.key"

.field private static final LOCK_SIGNATURE_FILE:Ljava/lang/String; = "signature.key"

.field private static final LOCK_SKT_FILE:Ljava/lang/String; = "sktpassword.key"

.field private static final PATH_PERMANENT_MEM_LOCK_INFO:Ljava/lang/String; = "/efs/sktdm_mem/lawlock.txt"

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final PERSONAL_FINGER_PRINT_PASSWORD_FILE:Ljava/lang/String; = "personalfingerprintpassword.key"

.field private static final PERSONAL_LOCK_BACKUP_PIN_FILE:Ljava/lang/String; = "personalbackuppin.key"

.field private static final PERSONAL_LOCK_PASSWORD_FILE:Ljava/lang/String; = "personalpassword.key"

.field private static final PERSONAL_LOCK_PATTERN_FILE:Ljava/lang/String; = "personalpattern.key"

.field private static final PERSONAL_LOCK_PIN_FILE:Ljava/lang/String; = "personalpin.key"

.field private static final READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final SIGNATURE_SETTINGS_ADDED_INDEX:I = 0x9

.field private static final SIGNATURE_SETTINGS_CURRENT:I = 0x16

.field private static final SIGNATURE_SETTINGS_OLD:I = 0x15

.field private static final SYSTEM_DEBUGGABLE:Ljava/lang/String; = "ro.debuggable"

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TABLE:Ljava/lang/String; = "locksettings"

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static final VALID_SETTINGS:[Ljava/lang/String;

.field private static maxRetry:I = 0x0

.field private static final nullPassword:Ljava/lang/String; = "_nullPassword012"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mFirstCallToVold:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LockSettingsService$LockSettingsObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "value"

    aput-object v1, v0, v3

    sput-object v0, COLUMNS_FOR_QUERY:[Ljava/lang/String;

    .line 141
    const/16 v0, 0x14

    sput v0, maxRetry:I

    .line 1103
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lockscreen.lockedoutpermanently"

    aput-object v1, v0, v3

    const-string v1, "lockscreen.lockoutattemptdeadline"

    aput-object v1, v0, v4

    const-string v1, "lockscreen.patterneverchosen"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "lockscreen.password_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lockscreen.password_type_alternate"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "lockscreen.password_salt"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lockscreen.disabled"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lockscreen.options"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "lockscreen.biometric_weak_fallback"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lockscreen.biometricweakeverchosen"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lockscreen.power_button_instantly_locks"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lockscreen.passwordhistory"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "lockscreen.signatureregistered"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "lock_pattern_autolock"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "lock_biometric_weak_flags"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "lock_pattern_visible_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "lock_pattern_tactile_feedback_enabled"

    aput-object v2, v0, v1

    sput-object v0, VALID_SETTINGS:[Ljava/lang/String;

    .line 1124
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "lock_screen_owner_info_enabled"

    aput-object v1, v0, v3

    const-string v1, "lock_screen_owner_info"

    aput-object v1, v0, v4

    sput-object v0, READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 152
    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mObservers:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Lcom/android/server/LockSettingsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/LockSettingsService$1;-><init>(Lcom/android/server/LockSettingsService;)V

    iput-object v0, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 155
    new-instance v0, Lcom/android/server/LockSettingsService$DatabaseHelper;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/LockSettingsService$DatabaseHelper;-><init>(Lcom/android/server/LockSettingsService;Landroid/content/Context;)V

    iput-object v0, p0, mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;

    .line 157
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, mFirstCallToVold:Z

    .line 160
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LockSettingsService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 106
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LockSettingsService;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, writeToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 106
    iget-object v0, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/LockSettingsService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 106
    iget-object v0, p0, mObservers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkFingerprintPasswordForKeystore(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 1371
    iget-object v0, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1372
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1373
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_2c

    .line 1374
    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_null_checkFinger_isMdfSupported, userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :cond_2c
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string v1, "_nullPassword012"

    invoke-virtual {v0, v1, p1}, Landroid/security/KeyStore;->checkPassword(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_62

    .line 1377
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_56

    .line 1378
    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_null_checkFinger_updateKeystore, userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_56
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->resetHard(I)Z

    .line 1381
    const-string v0, "_nullPassword012"

    invoke-direct {p0, v0, p1}, updateKeystore(Ljava/lang/String;I)V

    .line 1391
    :cond_62
    :goto_62
    return-void

    .line 1385
    :cond_63
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_81

    .line 1386
    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_null_checkFinger_maybeUpdateKeystore, userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    :cond_81
    const-string v0, "_nullPassword012"

    invoke-direct {p0, v0, p1}, maybeUpdateKeystore(Ljava/lang/String;I)V

    goto :goto_62
.end method

.method private final checkPasswordReadPermission(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 262
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .registers 9
    .param p1, "requestedKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 266
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 267
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    sget-object v3, READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_5b

    .line 268
    sget-object v3, READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 269
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PROFILE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_58

    .line 271
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " needs permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.READ_PROFILE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 267
    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 276
    .end local v2    # "key":Ljava/lang/String;
    :cond_5b
    return-void
.end method

.method private final checkWritePermission(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 258
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method private extractPasswordFromGrabage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 20
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 703
    invoke-virtual/range {p0 .. p0}, getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v10

    .line 704
    .local v10, "pms":Lcom/android/server/pm/PersonaManagerService;
    const/4 v9, 0x0

    .line 705
    .local v9, "pInfo":Landroid/content/pm/PersonaInfo;
    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v9

    .line 706
    const/4 v8, 0x0

    .line 707
    .local v8, "matched":Z
    invoke-virtual {v10}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v9, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_78

    const/4 v14, 0x1

    iget v15, v9, Landroid/content/pm/PersonaInfo;->fotaUpgradeVersion:I

    if-le v14, v15, :cond_78

    .line 708
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " in FOTA migration removing garbage from password!!! "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v14

    if-eqz v14, :cond_7c

    .line 711
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_3e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v5, v14, :cond_78

    .line 712
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v14, v15, v0}, Landroid/security/KeyStore;->checkPassword(Ljava/lang/String;I)Z

    move-result v8

    .line 713
    if-eqz v8, :cond_79

    .line 714
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "MDPP in FOTA migration removed all garbage from password!!! "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 755
    .end local v5    # "i":I
    :cond_78
    :goto_78
    return-object p1

    .line 711
    .restart local v5    # "i":I
    :cond_79
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    .line 720
    .end local v5    # "i":I
    :cond_7c
    const/4 v11, 0x0

    .line 723
    .local v11, "raf":Ljava/io/RandomAccessFile;
    :try_start_7d
    new-instance v12, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "r"

    invoke-direct {v12, v14, v15}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/io/FileNotFoundException; {:try_start_7d .. :try_end_8d} :catch_e0
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_8d} :catch_fb

    .line 724
    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .local v12, "raf":Ljava/io/RandomAccessFile;
    :try_start_8d
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v14

    long-to-int v14, v14

    new-array v13, v14, [B

    .line 725
    .local v13, "stored":[B
    const/4 v14, 0x0

    array-length v15, v13

    invoke-virtual {v12, v13, v14, v15}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    .line 726
    .local v3, "got":I
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    .line 728
    const/4 v5, 0x1

    .restart local v5    # "i":I
    :goto_9e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v5, v14, :cond_78

    .line 730
    move-object/from16 v0, p0

    iget-object v14, v0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v14, v15, v0}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    .line 731
    .local v4, "hash":[B
    invoke-static {v13, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    .line 732
    if-eqz v8, :cond_dd

    .line 733
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "FOTA migration removed all garbage from password!!! "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_db
    .catch Ljava/io/FileNotFoundException; {:try_start_8d .. :try_end_db} :catch_139
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_db} :catch_136

    move-result-object p1

    .line 735
    goto :goto_78

    .line 728
    :cond_dd
    add-int/lit8 v5, v5, 0x1

    goto :goto_9e

    .line 740
    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v5    # "i":I
    .end local v12    # "raf":Ljava/io/RandomAccessFile;
    .end local v13    # "stored":[B
    .restart local v11    # "raf":Ljava/io/RandomAccessFile;
    :catch_e0
    move-exception v2

    .line 741
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :goto_e1
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot read file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_78

    .line 742
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_fb
    move-exception v6

    .line 743
    .local v6, "ioe":Ljava/io/IOException;
    :goto_fc
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot read file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    if-eqz v11, :cond_78

    .line 746
    :try_start_116
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_119
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_119} :catch_11b

    goto/16 :goto_78

    .line 747
    :catch_11b
    move-exception v7

    .line 748
    .local v7, "ioeClose":Ljava/io/IOException;
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot close file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_78

    .line 742
    .end local v6    # "ioe":Ljava/io/IOException;
    .end local v7    # "ioeClose":Ljava/io/IOException;
    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .restart local v12    # "raf":Ljava/io/RandomAccessFile;
    :catch_136
    move-exception v6

    move-object v11, v12

    .end local v12    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_fc

    .line 740
    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .restart local v12    # "raf":Ljava/io/RandomAccessFile;
    :catch_139
    move-exception v2

    move-object v11, v12

    .end local v12    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_e1
.end method

.method private getLockBackupPinFilename(I)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1338
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_32

    .line 1340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "sparepassword.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1342
    :goto_31
    return-object v1

    :cond_32
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "sparepassword.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_31
.end method

.method private getLockCarrierPasswordFilename(I)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 2048
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2051
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_32

    .line 2053
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "sktpassword.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2055
    :goto_31
    return-object v1

    :cond_32
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "sktpassword.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_31
.end method

.method private getLockFMMPasswordFilename(I)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1961
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_31

    .line 1963
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fmmpassword.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1965
    :goto_30
    return-object v1

    :cond_31
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "fmmpassword.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_30
.end method

.method private getLockFingerprintPasswordFilename(I)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1527
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_31

    .line 1529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fingerprintpassword.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1531
    :goto_30
    return-object v1

    :cond_31
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "fingerprintpassword.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_30
.end method

.method private getLockParentControlPasswordFilename(I)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 1860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1863
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_32

    .line 1865
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "parentcontrol.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1867
    :goto_31
    return-object v1

    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "parentcontrol.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_31
.end method

.method private getLockPasswordFilename(I)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 406
    invoke-direct {p0, p1}, getUserParentOrSelfId(I)I

    move-result p1

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_36

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "password.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 414
    :goto_35
    return-object v1

    :cond_36
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "password.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_35
.end method

.method private getLockPatternFilename(I)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    invoke-direct {p0, p1}, getUserParentOrSelfId(I)I

    move-result p1

    .line 396
    if-nez p1, :cond_35

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gesture.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 400
    :goto_34
    return-object v1

    :cond_35
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "gesture.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_34
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .registers 3

    .prologue
    .line 1130
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1131
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_d

    .line 1132
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1134
    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private getPersonalModeBackupPinFilename(I)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1777
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_32

    .line 1779
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "personalbackuppin.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1781
    :goto_31
    return-object v1

    :cond_32
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "personalbackuppin.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_31
.end method

.method private getPersonalModeFingerprintPasswordFilename(I)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1848
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_32

    .line 1850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "personalfingerprintpassword.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1852
    :goto_31
    return-object v1

    :cond_32
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "personalfingerprintpassword.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_31
.end method

.method private getPersonalModePasswordFilename(I)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1649
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_32

    .line 1651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "personalpassword.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1653
    :goto_31
    return-object v1

    :cond_32
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "personalpassword.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_31
.end method

.method private getPersonalModePatternFilename(I)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1717
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_32

    .line 1719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "personalpattern.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1721
    :goto_31
    return-object v1

    :cond_32
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "personalpattern.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_31
.end method

.method private getPersonalModePinFilename(I)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1590
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_32

    .line 1592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "personalpin.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1594
    :goto_31
    return-object v1

    :cond_32
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "personalpin.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_31
.end method

.method private getProfiles(I)Ljava/util/List;
    .registers 11
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 444
    .local v5, "um":Landroid/os/UserManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v6

    .line 448
    .local v6, "versionInfo":Landroid/os/Bundle;
    if-eqz v6, :cond_55

    const-string v7, "2.0"

    const-string/jumbo v8, "version"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 449
    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 450
    .local v4, "uinfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_35

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-eqz v7, :cond_35

    .line 454
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    .end local v4    # "uinfo":Landroid/content/pm/UserInfo;
    :cond_34
    :goto_34
    return-object v2

    .line 459
    .restart local v4    # "uinfo":Landroid/content/pm/UserInfo;
    :cond_35
    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 460
    .local v3, "profilesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3d
    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 461
    .local v1, "pi":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-nez v7, :cond_3d

    .line 462
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 467
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pi":Landroid/content/pm/UserInfo;
    .end local v3    # "profilesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "uinfo":Landroid/content/pm/UserInfo;
    :cond_55
    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    goto :goto_34
.end method

.method private getSignatureBackupPinFilename(I)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1180
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_32

    .line 1182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "signaturebackuppin.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1184
    :goto_31
    return-object v1

    :cond_32
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "signaturebackuppin.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_31
.end method

.method private getSignatureFilename(I)Ljava/lang/String;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1150
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_32

    .line 1152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "signature.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1154
    :goto_31
    return-object v1

    :cond_32
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "signature.key"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_31
.end method

.method private getUserParentOrSelfId(I)I
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 371
    if-eqz p1, :cond_1b

    .line 374
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 375
    .local v2, "versionInfo":Landroid/os/Bundle;
    if-eqz v2, :cond_1c

    const-string v3, "2.0"

    const-string/jumbo v4, "version"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/16 v3, 0x64

    if-lt p1, v3, :cond_1c

    .line 388
    .end local v2    # "versionInfo":Landroid/os/Bundle;
    .end local p1    # "userId":I
    :cond_1b
    :goto_1b
    return p1

    .line 382
    .restart local v2    # "versionInfo":Landroid/os/Bundle;
    .restart local p1    # "userId":I
    :cond_1c
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 383
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 384
    .local v0, "pi":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_1b

    .line 385
    iget p1, v0, Landroid/content/pm/UserInfo;->id:I

    goto :goto_1b
.end method

.method private maybeUpdateKeystore(Ljava/lang/String;I)V
    .registers 11
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 519
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .line 521
    .local v1, "ks":Landroid/security/KeyStore;
    invoke-direct {p0, p2}, getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 522
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 526
    .local v5, "shouldReset":Z
    if-nez p2, :cond_1c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1c

    .line 527
    invoke-virtual {v1}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1c

    .line 528
    const/4 v5, 0x0

    .line 532
    :cond_1c
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 533
    .local v2, "pi":Landroid/content/pm/UserInfo;
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    const/16 v7, 0x3e8

    invoke-static {v6, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 534
    .local v3, "profileUid":I
    if-eqz v5, :cond_3a

    .line 535
    invoke-virtual {v1, v3}, Landroid/security/KeyStore;->resetUid(I)Z

    goto :goto_20

    .line 537
    :cond_3a
    invoke-virtual {v1, p1, v3}, Landroid/security/KeyStore;->passwordUid(Ljava/lang/String;I)Z

    goto :goto_20

    .line 540
    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    .end local v3    # "profileUid":I
    :cond_3e
    return-void
.end method

.method private migrateOldData()V
    .registers 27

    .prologue
    .line 203
    :try_start_0
    const-string v23, "migrated"

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    if-nez v23, :cond_57

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 205
    .local v9, "cr":Landroid/content/ContentResolver;
    sget-object v8, VALID_SETTINGS:[Ljava/lang/String;

    .local v8, "arr$":[Ljava/lang/String;
    array-length v14, v8

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_22
    if-ge v12, v14, :cond_3e

    aget-object v21, v8, v12

    .line 206
    .local v21, "validSetting":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-static {v9, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 207
    .local v22, "value":Ljava/lang/String;
    if-eqz v22, :cond_3b

    .line 208
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 205
    :cond_3b
    add-int/lit8 v12, v12, 0x1

    goto :goto_22

    .line 212
    .end local v21    # "validSetting":Ljava/lang/String;
    .end local v22    # "value":Ljava/lang/String;
    :cond_3e
    const-string v23, "migrated"

    const-string/jumbo v24, "true"

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 213
    const-string v23, "LockSettingsService"

    const-string v24, "Migrated lock settings to new location"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v9    # "cr":Landroid/content/ContentResolver;
    .end local v12    # "i$":I
    .end local v14    # "len$":I
    :cond_57
    const-string v23, "migrated_user_specific"

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    if-nez v23, :cond_120

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string/jumbo v24, "user"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/UserManager;

    .line 219
    .local v17, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 220
    .restart local v9    # "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {v17 .. v17}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v20

    .line 221
    .local v20, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v18, 0x0

    .local v18, "user":I
    :goto_8a
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_121

    .line 223
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v19, v0

    .line 224
    .local v19, "userId":I
    const-string v6, "lock_screen_owner_info"

    .line 225
    .local v6, "OWNER_INFO":Ljava/lang/String;
    const-string v23, "lock_screen_owner_info"

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 226
    .local v15, "ownerInfo":Ljava/lang/String;
    if-eqz v15, :cond_c6

    .line 227
    const-string v23, "lock_screen_owner_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v19

    invoke-virtual {v0, v1, v15, v2}, setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 228
    const-string v23, ""

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-static {v9, v15, v0, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 234
    :cond_c6
    const-string v7, "lock_screen_owner_info_enabled"
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c8} :catch_112

    .line 237
    .local v7, "OWNER_INFO_ENABLED":Ljava/lang/String;
    :try_start_c8
    const-string v23, "lock_screen_owner_info_enabled"

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 238
    .local v13, "ivalue":I
    if-eqz v13, :cond_f6

    const/4 v11, 0x1

    .line 239
    .local v11, "enabled":Z
    :goto_d5
    const-string v23, "lock_screen_owner_info_enabled"

    if-eqz v11, :cond_f8

    const-wide/16 v24, 0x1

    :goto_db
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, setLong(Ljava/lang/String;JI)V
    :try_end_e6
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_c8 .. :try_end_e6} :catch_fb
    .catch Landroid/os/RemoteException; {:try_start_c8 .. :try_end_e6} :catch_112

    .line 246
    .end local v11    # "enabled":Z
    .end local v13    # "ivalue":I
    :cond_e6
    :goto_e6
    :try_start_e6
    const-string v23, "lock_screen_owner_info_enabled"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-static {v9, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 221
    add-int/lit8 v18, v18, 0x1

    goto :goto_8a

    .line 238
    .restart local v13    # "ivalue":I
    :cond_f6
    const/4 v11, 0x0

    goto :goto_d5

    .line 239
    .restart local v11    # "enabled":Z
    :cond_f8
    const-wide/16 v24, 0x0

    goto :goto_db

    .line 240
    .end local v11    # "enabled":Z
    .end local v13    # "ivalue":I
    :catch_fb
    move-exception v10

    .line 242
    .local v10, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_e6

    .line 243
    const-string v23, "lock_screen_owner_info_enabled"

    const-wide/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, setLong(Ljava/lang/String;JI)V
    :try_end_111
    .catch Landroid/os/RemoteException; {:try_start_e6 .. :try_end_111} :catch_112

    goto :goto_e6

    .line 252
    .end local v6    # "OWNER_INFO":Ljava/lang/String;
    .end local v7    # "OWNER_INFO_ENABLED":Ljava/lang/String;
    .end local v9    # "cr":Landroid/content/ContentResolver;
    .end local v10    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v15    # "ownerInfo":Ljava/lang/String;
    .end local v17    # "um":Landroid/os/UserManager;
    .end local v18    # "user":I
    .end local v19    # "userId":I
    .end local v20    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_112
    move-exception v16

    .line 253
    .local v16, "re":Landroid/os/RemoteException;
    const-string v23, "LockSettingsService"

    const-string v24, "Unable to migrate old data"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    .end local v16    # "re":Landroid/os/RemoteException;
    :cond_120
    :goto_120
    return-void

    .line 249
    .restart local v9    # "cr":Landroid/content/ContentResolver;
    .restart local v17    # "um":Landroid/os/UserManager;
    .restart local v18    # "user":I
    .restart local v20    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_121
    :try_start_121
    const-string v23, "migrated_user_specific"

    const-string/jumbo v24, "true"

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 250
    const-string v23, "LockSettingsService"

    const-string v24, "Migrated per-user lock settings to new location"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13a
    .catch Landroid/os/RemoteException; {:try_start_121 .. :try_end_13a} :catch_112

    goto :goto_120
.end method

.method private readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 15
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 991
    move-object v9, p2

    .line 992
    .local v9, "result":Ljava/lang/String;
    iget-object v1, p0, mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/server/LockSettingsService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 993
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "locksettings"

    sget-object v2, COLUMNS_FOR_QUERY:[Ljava/lang/String;

    const-string/jumbo v3, "user=? AND name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    const/4 v6, 0x1

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_31

    .line 997
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 998
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1000
    :cond_2e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1002
    :cond_31
    return-object v9
.end method

.method private updateKeystore(Ljava/lang/String;I)V
    .registers 15
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/16 v11, 0x14

    .line 476
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 477
    .local v7, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .line 479
    .local v1, "ks":Landroid/security/KeyStore;
    invoke-direct {p0, p2}, getProfiles(I)Ljava/util/List;

    move-result-object v5

    .line 480
    .local v5, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 485
    .local v6, "shouldReset":Z
    invoke-virtual {v1, p2}, Landroid/security/KeyStore;->isEmpty(I)Z

    move-result v8

    if-nez v8, :cond_20

    .line 486
    const/4 v6, 0x0

    .line 490
    :cond_20
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 491
    .local v2, "pi":Landroid/content/pm/UserInfo;
    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    const/16 v9, 0x3e8

    invoke-static {v8, v9}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 492
    .local v4, "profileUid":I
    if-eqz v6, :cond_3e

    .line 493
    invoke-virtual {v1, v4}, Landroid/security/KeyStore;->resetUid(I)Z

    goto :goto_24

    .line 495
    :cond_3e
    invoke-virtual {v1, p1, v4}, Landroid/security/KeyStore;->passwordUid(Ljava/lang/String;I)Z

    .line 496
    const-string v8, "LockSettingsService"

    const-string v9, "UpdateKeystore :keyStore.password"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v8, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v3

    .line 501
    .local v3, "policyRetry":I
    sget v8, maxRetry:I

    if-eq v3, v8, :cond_24

    .line 502
    if-eqz v3, :cond_81

    .line 503
    sput v3, maxRetry:I

    .line 504
    sget v8, maxRetry:I

    invoke-virtual {v1, v8}, Landroid/security/KeyStore;->setMaxRetryCount(I)Z

    .line 505
    const-string v8, "MDPP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Max retry count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, maxRetry:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 506
    :cond_81
    sget v8, maxRetry:I

    if-eq v11, v8, :cond_24

    .line 507
    sput v11, maxRetry:I

    .line 508
    sget v8, maxRetry:I

    invoke-virtual {v1, v8}, Landroid/security/KeyStore;->setMaxRetryCount(I)Z

    .line 509
    const-string v8, "MDPP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Max retry count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, maxRetry:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 514
    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    .end local v3    # "policyRetry":I
    .end local v4    # "profileUid":I
    :cond_a8
    return-void
.end method

.method private writeFile(Ljava/lang/String;[B)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hash"    # [B

    .prologue
    .line 950
    :try_start_0
    const-string v3, "fmm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 952
    .local v0, "debugFMM":Z
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    .local v2, "raf":Ljava/io/RandomAccessFile;
    if-eqz p2, :cond_13

    array-length v3, p2

    if-nez v3, :cond_25

    .line 955
    :cond_13
    if-eqz v0, :cond_1c

    const-string v3, "LockSettingsService"

    const-string v4, "hash file remove"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_1c
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 961
    :goto_21
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 965
    .end local v0    # "debugFMM":Z
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    :goto_24
    return-void

    .line 958
    .restart local v0    # "debugFMM":Z
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_25
    if-eqz v0, :cond_2e

    const-string v3, "LockSettingsService"

    const-string v4, "hash file write"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_2e
    const/4 v3, 0x0

    array-length v4, p2

    invoke-virtual {v2, p2, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_33} :catch_34

    goto :goto_21

    .line 962
    .end local v0    # "debugFMM":Z
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    :catch_34
    move-exception v1

    .line 963
    .local v1, "ioe":Ljava/io/IOException;
    const-string v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing to file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method private writeToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 973
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 974
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const-string/jumbo v1, "user"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 976
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 980
    :try_start_1d
    const-string v1, "locksettings"

    const-string v2, "name=? AND user=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 982
    const-string v1, "locksettings"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 983
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3a
    .catchall {:try_start_1d .. :try_end_3a} :catchall_3e

    .line 985
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 987
    return-void

    .line 985
    :catchall_3e
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private writeToDb(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 968
    iget-object v0, p0, mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, writeToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    .line 969
    invoke-virtual {p0, p1, p3}, notifyObservers(Ljava/lang/String;I)V

    .line 970
    return-void
.end method


# virtual methods
.method public checkBackupPin(Ljava/lang/String;I)Z
    .registers 19
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1292
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, checkPasswordReadPermission(I)V

    .line 1293
    const/4 v9, 0x0

    .line 1296
    .local v9, "raf":Ljava/io/RandomAccessFile;
    :try_start_8
    new-instance v10, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, getLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "r"

    invoke-direct {v10, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_18} :catch_87
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_c2
    .catchall {:try_start_8 .. :try_end_18} :catchall_fe

    .line 1297
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .local v10, "raf":Ljava/io/RandomAccessFile;
    :try_start_18
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    long-to-int v7, v12

    .line 1298
    .local v7, "length":I
    new-array v11, v7, [B

    .line 1299
    .local v11, "stored":[B
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v10, v11, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_24} :catch_125
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_24} :catch_122
    .catchall {:try_start_18 .. :try_end_24} :catchall_11f

    move-result v3

    .line 1301
    .local v3, "got":I
    if-gtz v3, :cond_49

    .line 1302
    const/4 v8, 0x0

    .line 1319
    if-eqz v10, :cond_2d

    .line 1320
    :try_start_2a
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2f

    :cond_2d
    :goto_2d
    move-object v9, v10

    .line 1324
    .end local v3    # "got":I
    .end local v7    # "length":I
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :cond_2e
    :goto_2e
    return v8

    .line 1322
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "got":I
    .restart local v7    # "length":I
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "stored":[B
    :catch_2f
    move-exception v6

    .line 1323
    .local v6, "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 1305
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :cond_49
    :try_start_49
    move-object/from16 v0, p0

    iget-object v12, v0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    .line 1306
    .local v4, "hash":[B
    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    .line 1307
    .local v8, "matched":Z
    if-eqz v8, :cond_66

    .line 1308
    const-string v12, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v12, v14, v15, v1}, setLong(Ljava/lang/String;JI)V
    :try_end_66
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_66} :catch_125
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_66} :catch_122
    .catchall {:try_start_49 .. :try_end_66} :catchall_11f

    .line 1319
    :cond_66
    if-eqz v10, :cond_6b

    .line 1320
    :try_start_68
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6d

    :cond_6b
    :goto_6b
    move-object v9, v10

    .line 1324
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2e

    .line 1322
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_6d
    move-exception v6

    .line 1323
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 1311
    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v7    # "length":I
    .end local v8    # "matched":Z
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :catch_87
    move-exception v2

    .line 1312
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :goto_88
    :try_start_88
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catchall {:try_start_88 .. :try_end_a0} :catchall_fe

    .line 1313
    const/4 v8, 0x0

    .line 1319
    if-eqz v9, :cond_2e

    .line 1320
    :try_start_a3
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a7

    goto :goto_2e

    .line 1322
    :catch_a7
    move-exception v6

    .line 1323
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 1314
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catch_c2
    move-exception v5

    .line 1315
    .local v5, "ioe":Ljava/io/IOException;
    :goto_c3
    :try_start_c3
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catchall {:try_start_c3 .. :try_end_db} :catchall_fe

    .line 1316
    const/4 v8, 0x0

    .line 1319
    if-eqz v9, :cond_2e

    .line 1320
    :try_start_de
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_e3

    goto/16 :goto_2e

    .line 1322
    :catch_e3
    move-exception v6

    .line 1323
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 1318
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catchall_fe
    move-exception v12

    .line 1319
    :goto_ff
    if-eqz v9, :cond_104

    .line 1320
    :try_start_101
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_105

    .line 1324
    :cond_104
    :goto_104
    throw v12

    .line 1322
    :catch_105
    move-exception v6

    .line 1323
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v13, "LockSettingsService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot close file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_104

    .line 1318
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catchall_11f
    move-exception v12

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_ff

    .line 1314
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_122
    move-exception v5

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_c3

    .line 1311
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_125
    move-exception v2

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_88
.end method

.method public checkCarrierPassword(Ljava/lang/String;I)Z
    .registers 19
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2069
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, checkPasswordReadPermission(I)V

    .line 2070
    const/4 v9, 0x0

    .line 2073
    .local v9, "raf":Ljava/io/RandomAccessFile;
    :try_start_8
    new-instance v10, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, getLockCarrierPasswordFilename(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "r"

    invoke-direct {v10, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_18} :catch_87
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_c2
    .catchall {:try_start_8 .. :try_end_18} :catchall_fe

    .line 2074
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .local v10, "raf":Ljava/io/RandomAccessFile;
    :try_start_18
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    long-to-int v7, v12

    .line 2075
    .local v7, "length":I
    new-array v11, v7, [B

    .line 2076
    .local v11, "stored":[B
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v10, v11, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_24} :catch_125
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_24} :catch_122
    .catchall {:try_start_18 .. :try_end_24} :catchall_11f

    move-result v3

    .line 2078
    .local v3, "got":I
    if-gtz v3, :cond_49

    .line 2079
    const/4 v8, 0x0

    .line 2096
    if-eqz v10, :cond_2d

    .line 2097
    :try_start_2a
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2f

    :cond_2d
    :goto_2d
    move-object v9, v10

    .line 2101
    .end local v3    # "got":I
    .end local v7    # "length":I
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :cond_2e
    :goto_2e
    return v8

    .line 2099
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "got":I
    .restart local v7    # "length":I
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "stored":[B
    :catch_2f
    move-exception v6

    .line 2100
    .local v6, "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 2082
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :cond_49
    :try_start_49
    move-object/from16 v0, p0

    iget-object v12, v0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    .line 2083
    .local v4, "hash":[B
    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    .line 2084
    .local v8, "matched":Z
    if-eqz v8, :cond_66

    .line 2085
    const-string v12, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v12, v14, v15, v1}, setLong(Ljava/lang/String;JI)V
    :try_end_66
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_66} :catch_125
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_66} :catch_122
    .catchall {:try_start_49 .. :try_end_66} :catchall_11f

    .line 2096
    :cond_66
    if-eqz v10, :cond_6b

    .line 2097
    :try_start_68
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6d

    :cond_6b
    :goto_6b
    move-object v9, v10

    .line 2101
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2e

    .line 2099
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_6d
    move-exception v6

    .line 2100
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 2088
    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v7    # "length":I
    .end local v8    # "matched":Z
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :catch_87
    move-exception v2

    .line 2089
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :goto_88
    :try_start_88
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catchall {:try_start_88 .. :try_end_a0} :catchall_fe

    .line 2090
    const/4 v8, 0x0

    .line 2096
    if-eqz v9, :cond_2e

    .line 2097
    :try_start_a3
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a7

    goto :goto_2e

    .line 2099
    :catch_a7
    move-exception v6

    .line 2100
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 2091
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catch_c2
    move-exception v5

    .line 2092
    .local v5, "ioe":Ljava/io/IOException;
    :goto_c3
    :try_start_c3
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catchall {:try_start_c3 .. :try_end_db} :catchall_fe

    .line 2093
    const/4 v8, 0x0

    .line 2096
    if-eqz v9, :cond_2e

    .line 2097
    :try_start_de
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_e3

    goto/16 :goto_2e

    .line 2099
    :catch_e3
    move-exception v6

    .line 2100
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 2095
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catchall_fe
    move-exception v12

    .line 2096
    :goto_ff
    if-eqz v9, :cond_104

    .line 2097
    :try_start_101
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_105

    .line 2101
    :cond_104
    :goto_104
    throw v12

    .line 2099
    :catch_105
    move-exception v6

    .line 2100
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v13, "LockSettingsService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot close file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_104

    .line 2095
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catchall_11f
    move-exception v12

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_ff

    .line 2091
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_122
    move-exception v5

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_c3

    .line 2088
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_125
    move-exception v2

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_88
.end method

.method public checkFMMPassword(Ljava/lang/String;I)Z
    .registers 19
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1979
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, checkPasswordReadPermission(I)V

    .line 1980
    const/4 v9, 0x0

    .line 1983
    .local v9, "raf":Ljava/io/RandomAccessFile;
    :try_start_8
    new-instance v10, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, getLockFMMPasswordFilename(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "r"

    invoke-direct {v10, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_18} :catch_87
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_c2
    .catchall {:try_start_8 .. :try_end_18} :catchall_fe

    .line 1984
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .local v10, "raf":Ljava/io/RandomAccessFile;
    :try_start_18
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    long-to-int v7, v12

    .line 1985
    .local v7, "length":I
    new-array v11, v7, [B

    .line 1986
    .local v11, "stored":[B
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v10, v11, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_24} :catch_125
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_24} :catch_122
    .catchall {:try_start_18 .. :try_end_24} :catchall_11f

    move-result v3

    .line 1988
    .local v3, "got":I
    if-gtz v3, :cond_49

    .line 1989
    const/4 v8, 0x0

    .line 2006
    if-eqz v10, :cond_2d

    .line 2007
    :try_start_2a
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2f

    :cond_2d
    :goto_2d
    move-object v9, v10

    .line 2011
    .end local v3    # "got":I
    .end local v7    # "length":I
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :cond_2e
    :goto_2e
    return v8

    .line 2009
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "got":I
    .restart local v7    # "length":I
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "stored":[B
    :catch_2f
    move-exception v6

    .line 2010
    .local v6, "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 1992
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :cond_49
    :try_start_49
    move-object/from16 v0, p0

    iget-object v12, v0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    .line 1993
    .local v4, "hash":[B
    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    .line 1994
    .local v8, "matched":Z
    if-eqz v8, :cond_66

    .line 1995
    const-string v12, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v12, v14, v15, v1}, setLong(Ljava/lang/String;JI)V
    :try_end_66
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_66} :catch_125
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_66} :catch_122
    .catchall {:try_start_49 .. :try_end_66} :catchall_11f

    .line 2006
    :cond_66
    if-eqz v10, :cond_6b

    .line 2007
    :try_start_68
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6d

    :cond_6b
    :goto_6b
    move-object v9, v10

    .line 2011
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2e

    .line 2009
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_6d
    move-exception v6

    .line 2010
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 1998
    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v7    # "length":I
    .end local v8    # "matched":Z
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :catch_87
    move-exception v2

    .line 1999
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :goto_88
    :try_start_88
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catchall {:try_start_88 .. :try_end_a0} :catchall_fe

    .line 2000
    const/4 v8, 0x0

    .line 2006
    if-eqz v9, :cond_2e

    .line 2007
    :try_start_a3
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a7

    goto :goto_2e

    .line 2009
    :catch_a7
    move-exception v6

    .line 2010
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 2001
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catch_c2
    move-exception v5

    .line 2002
    .local v5, "ioe":Ljava/io/IOException;
    :goto_c3
    :try_start_c3
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catchall {:try_start_c3 .. :try_end_db} :catchall_fe

    .line 2003
    const/4 v8, 0x0

    .line 2006
    if-eqz v9, :cond_2e

    .line 2007
    :try_start_de
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_e3

    goto/16 :goto_2e

    .line 2009
    :catch_e3
    move-exception v6

    .line 2010
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 2005
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catchall_fe
    move-exception v12

    .line 2006
    :goto_ff
    if-eqz v9, :cond_104

    .line 2007
    :try_start_101
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_104} :catch_105

    .line 2011
    :cond_104
    :goto_104
    throw v12

    .line 2009
    :catch_105
    move-exception v6

    .line 2010
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v13, "LockSettingsService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot close file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_104

    .line 2005
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catchall_11f
    move-exception v12

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_ff

    .line 2001
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_122
    move-exception v5

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_c3

    .line 1998
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_125
    move-exception v2

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_88
.end method

.method public checkFingerprintPassword(Ljava/lang/String;I)Z
    .registers 19
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1429
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, checkPasswordReadPermission(I)V

    .line 1430
    const/4 v9, 0x0

    .line 1433
    .local v9, "raf":Ljava/io/RandomAccessFile;
    if-eqz p1, :cond_1d

    const-string v12, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    .line 1434
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, checkFingerprintPasswordForKeystore(I)V

    .line 1435
    const/4 v8, 0x0

    .line 1484
    :cond_1c
    :goto_1c
    return v8

    .line 1453
    :cond_1d
    :try_start_1d
    new-instance v10, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, getLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "r"

    invoke-direct {v10, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_2d} :catch_a6
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2d} :catch_e2
    .catchall {:try_start_1d .. :try_end_2d} :catchall_11e

    .line 1454
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .local v10, "raf":Ljava/io/RandomAccessFile;
    :try_start_2d
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    long-to-int v7, v12

    .line 1455
    .local v7, "length":I
    new-array v11, v7, [B

    .line 1456
    .local v11, "stored":[B
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v10, v11, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    .line 1457
    .local v3, "got":I
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_3d} :catch_145
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3d} :catch_142
    .catchall {:try_start_2d .. :try_end_3d} :catchall_13f

    .line 1458
    if-gtz v3, :cond_61

    .line 1459
    const/4 v8, 0x0

    .line 1479
    if-eqz v10, :cond_45

    .line 1480
    :try_start_42
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_47

    :cond_45
    :goto_45
    move-object v9, v10

    .line 1484
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1c

    .line 1482
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_47
    move-exception v6

    .line 1483
    .local v6, "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 1462
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :cond_61
    :try_start_61
    move-object/from16 v0, p0

    iget-object v12, v0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    .line 1463
    .local v4, "hash":[B
    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    .line 1464
    .local v8, "matched":Z
    if-eqz v8, :cond_85

    .line 1465
    const-string v12, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v12, v14, v15, v1}, setLong(Ljava/lang/String;JI)V

    .line 1467
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, checkFingerprintPasswordForKeystore(I)V
    :try_end_85
    .catch Ljava/io/FileNotFoundException; {:try_start_61 .. :try_end_85} :catch_145
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_85} :catch_142
    .catchall {:try_start_61 .. :try_end_85} :catchall_13f

    .line 1479
    :cond_85
    if-eqz v10, :cond_8a

    .line 1480
    :try_start_87
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8c

    :cond_8a
    :goto_8a
    move-object v9, v10

    .line 1484
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_1c

    .line 1482
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_8c
    move-exception v6

    .line 1483
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a

    .line 1471
    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v7    # "length":I
    .end local v8    # "matched":Z
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :catch_a6
    move-exception v2

    .line 1472
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :goto_a7
    :try_start_a7
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf
    .catchall {:try_start_a7 .. :try_end_bf} :catchall_11e

    .line 1473
    const/4 v8, 0x0

    .line 1479
    if-eqz v9, :cond_1c

    .line 1480
    :try_start_c2
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_c7

    goto/16 :goto_1c

    .line 1482
    :catch_c7
    move-exception v6

    .line 1483
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 1474
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catch_e2
    move-exception v5

    .line 1475
    .local v5, "ioe":Ljava/io/IOException;
    :goto_e3
    :try_start_e3
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fb
    .catchall {:try_start_e3 .. :try_end_fb} :catchall_11e

    .line 1476
    const/4 v8, 0x0

    .line 1479
    if-eqz v9, :cond_1c

    .line 1480
    :try_start_fe
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_101} :catch_103

    goto/16 :goto_1c

    .line 1482
    :catch_103
    move-exception v6

    .line 1483
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 1478
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catchall_11e
    move-exception v12

    .line 1479
    :goto_11f
    if-eqz v9, :cond_124

    .line 1480
    :try_start_121
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_124} :catch_125

    .line 1484
    :cond_124
    :goto_124
    throw v12

    .line 1482
    :catch_125
    move-exception v6

    .line 1483
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v13, "LockSettingsService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot close file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_124

    .line 1478
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catchall_13f
    move-exception v12

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_11f

    .line 1474
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_142
    move-exception v5

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_e3

    .line 1471
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_145
    move-exception v2

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_a7
.end method

.method public checkParentControlPassword([BI)Z
    .registers 15
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    const/4 v8, 0x0

    .line 1882
    invoke-direct {p0, p2}, checkPasswordReadPermission(I)V

    .line 1883
    const/4 v5, 0x0

    .line 1887
    .local v5, "raf":Ljava/io/RandomAccessFile;
    :try_start_5
    new-instance v6, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, getLockParentControlPasswordFilename(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "r"

    invoke-direct {v6, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_11} :catch_66
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_9f
    .catchall {:try_start_5 .. :try_end_11} :catchall_da

    .line 1888
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v6, "raf":Ljava/io/RandomAccessFile;
    :try_start_11
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    long-to-int v4, v10

    .line 1889
    .local v4, "length":I
    new-array v7, v4, [B

    .line 1890
    .local v7, "stored":[B
    const/4 v9, 0x0

    array-length v10, v7

    invoke-virtual {v6, v7, v9, v10}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_1d} :catch_101
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1d} :catch_fe
    .catchall {:try_start_11 .. :try_end_1d} :catchall_fb

    move-result v1

    .line 1892
    .local v1, "got":I
    if-gtz v1, :cond_41

    .line 1905
    if-eqz v6, :cond_25

    .line 1906
    :try_start_22
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_27

    :cond_25
    :goto_25
    move-object v5, v6

    .line 1910
    .end local v1    # "got":I
    .end local v4    # "length":I
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .end local v7    # "stored":[B
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :cond_26
    :goto_26
    return v8

    .line 1908
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "got":I
    .restart local v4    # "length":I
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "stored":[B
    :catch_27
    move-exception v3

    .line 1909
    .local v3, "ioeClose":Ljava/io/IOException;
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 1896
    .end local v3    # "ioeClose":Ljava/io/IOException;
    :cond_41
    :try_start_41
    invoke-static {v7, p1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_44} :catch_101
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_fe
    .catchall {:try_start_41 .. :try_end_44} :catchall_fb

    move-result v8

    .line 1905
    if-eqz v6, :cond_4a

    .line 1906
    :try_start_47
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4c

    :cond_4a
    :goto_4a
    move-object v5, v6

    .line 1910
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_26

    .line 1908
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_4c
    move-exception v3

    .line 1909
    .restart local v3    # "ioeClose":Ljava/io/IOException;
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 1897
    .end local v1    # "got":I
    .end local v3    # "ioeClose":Ljava/io/IOException;
    .end local v4    # "length":I
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .end local v7    # "stored":[B
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_66
    move-exception v0

    .line 1898
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    :goto_67
    :try_start_67
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot read file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_67 .. :try_end_7f} :catchall_da

    .line 1905
    if-eqz v5, :cond_26

    .line 1906
    :try_start_81
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_26

    .line 1908
    :catch_85
    move-exception v3

    .line 1909
    .restart local v3    # "ioeClose":Ljava/io/IOException;
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 1900
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v3    # "ioeClose":Ljava/io/IOException;
    :catch_9f
    move-exception v2

    .line 1901
    .local v2, "ioe":Ljava/io/IOException;
    :goto_a0
    :try_start_a0
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot read file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catchall {:try_start_a0 .. :try_end_b8} :catchall_da

    .line 1905
    if-eqz v5, :cond_26

    .line 1906
    :try_start_ba
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_bf

    goto/16 :goto_26

    .line 1908
    :catch_bf
    move-exception v3

    .line 1909
    .restart local v3    # "ioeClose":Ljava/io/IOException;
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 1904
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v3    # "ioeClose":Ljava/io/IOException;
    :catchall_da
    move-exception v8

    .line 1905
    :goto_db
    if-eqz v5, :cond_e0

    .line 1906
    :try_start_dd
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_e1

    .line 1910
    :cond_e0
    :goto_e0
    throw v8

    .line 1908
    :catch_e1
    move-exception v3

    .line 1909
    .restart local v3    # "ioeClose":Ljava/io/IOException;
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e0

    .line 1904
    .end local v3    # "ioeClose":Ljava/io/IOException;
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catchall_fb
    move-exception v8

    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_db

    .line 1900
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_fe
    move-exception v2

    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_a0

    .line 1897
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_101
    move-exception v0

    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_67
.end method

.method public checkPassword(Ljava/lang/String;I)Z
    .registers 21
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 760
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, checkPasswordReadPermission(I)V

    .line 763
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v13

    .line 764
    .local v13, "versionInfo":Landroid/os/Bundle;
    if-eqz v13, :cond_37

    const-string v14, "2.0"

    const-string/jumbo v15, "version"

    invoke-virtual {v13, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_37

    .line 765
    invoke-virtual/range {p0 .. p0}, getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v9

    .line 766
    .local v9, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v9, :cond_37

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v14

    if-eqz v14, :cond_37

    .line 767
    invoke-direct/range {p0 .. p2}, extractPasswordFromGrabage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 768
    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v9, v0, v1, v14}, Lcom/android/server/pm/PersonaManagerService;->getEncodedPassword(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    .line 774
    .end local v9    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_37
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v14

    if-eqz v14, :cond_6e

    .line 775
    if-eqz p1, :cond_45

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_61

    .line 776
    :cond_45
    const/4 v8, 0x0

    .line 814
    .local v8, "matched":Z
    :cond_46
    :goto_46
    if-eqz v8, :cond_57

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_57

    .line 815
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v14

    if-eqz v14, :cond_17b

    .line 816
    invoke-direct/range {p0 .. p2}, updateKeystore(Ljava/lang/String;I)V

    .line 831
    :cond_57
    :goto_57
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v14

    if-eqz v14, :cond_60

    .line 832
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->clear()V

    .line 834
    .end local v8    # "matched":Z
    :cond_60
    :goto_60
    return v8

    .line 779
    :cond_61
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v14

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Landroid/security/KeyStore;->checkPassword(Ljava/lang/String;I)Z

    move-result v8

    .restart local v8    # "matched":Z
    goto :goto_46

    .line 783
    .end local v8    # "matched":Z
    :cond_6e
    const/4 v10, 0x0

    .line 786
    .local v10, "raf":Ljava/io/RandomAccessFile;
    :try_start_6f
    new-instance v11, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "r"

    invoke-direct {v11, v14, v15}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/io/FileNotFoundException; {:try_start_6f .. :try_end_7f} :catch_e0
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_7f} :catch_11c
    .catchall {:try_start_6f .. :try_end_7f} :catchall_158

    .line 787
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .local v11, "raf":Ljava/io/RandomAccessFile;
    :try_start_7f
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v14

    long-to-int v7, v14

    .line 788
    .local v7, "length":I
    new-array v12, v7, [B

    .line 789
    .local v12, "stored":[B
    const/4 v14, 0x0

    array-length v15, v12

    invoke-virtual {v11, v12, v14, v15}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_7f .. :try_end_8b} :catch_186
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_8b} :catch_183
    .catchall {:try_start_7f .. :try_end_8b} :catchall_180

    move-result v3

    .line 791
    .local v3, "got":I
    if-gtz v3, :cond_af

    .line 792
    const/4 v8, 0x0

    .line 805
    if-eqz v11, :cond_60

    .line 806
    :try_start_91
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95

    goto :goto_60

    .line 808
    :catch_95
    move-exception v6

    .line 809
    .local v6, "ioeClose":Ljava/io/IOException;
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot close file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 795
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :cond_af
    :try_start_af
    move-object/from16 v0, p0

    iget-object v14, v0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    .line 796
    .local v4, "hash":[B
    invoke-static {v12, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_be
    .catch Ljava/io/FileNotFoundException; {:try_start_af .. :try_end_be} :catch_186
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_be} :catch_183
    .catchall {:try_start_af .. :try_end_be} :catchall_180

    move-result v8

    .line 805
    .restart local v8    # "matched":Z
    if-eqz v11, :cond_46

    .line 806
    :try_start_c1
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c5

    goto :goto_46

    .line 808
    :catch_c5
    move-exception v6

    .line 809
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot close file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_46

    .line 797
    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v7    # "length":I
    .end local v8    # "matched":Z
    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .end local v12    # "stored":[B
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_e0
    move-exception v2

    .line 798
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :goto_e1
    :try_start_e1
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot read file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f9
    .catchall {:try_start_e1 .. :try_end_f9} :catchall_158

    .line 799
    const/4 v8, 0x0

    .line 805
    if-eqz v10, :cond_60

    .line 806
    :try_start_fc
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_ff} :catch_101

    goto/16 :goto_60

    .line 808
    :catch_101
    move-exception v6

    .line 809
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot close file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_60

    .line 800
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catch_11c
    move-exception v5

    .line 801
    .local v5, "ioe":Ljava/io/IOException;
    :goto_11d
    :try_start_11d
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot read file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_135
    .catchall {:try_start_11d .. :try_end_135} :catchall_158

    .line 802
    const/4 v8, 0x0

    .line 805
    if-eqz v10, :cond_60

    .line 806
    :try_start_138
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_13b} :catch_13d

    goto/16 :goto_60

    .line 808
    :catch_13d
    move-exception v6

    .line 809
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot close file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_60

    .line 804
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catchall_158
    move-exception v14

    .line 805
    :goto_159
    if-eqz v10, :cond_15e

    .line 806
    :try_start_15b
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_15e} :catch_15f

    .line 810
    :cond_15e
    :goto_15e
    throw v14

    .line 808
    :catch_15f
    move-exception v6

    .line 809
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v15, "LockSettingsService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cannot close file "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15e

    .line 818
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v8    # "matched":Z
    :cond_17b
    invoke-direct/range {p0 .. p2}, maybeUpdateKeystore(Ljava/lang/String;I)V

    goto/16 :goto_57

    .line 804
    .end local v8    # "matched":Z
    .restart local v11    # "raf":Ljava/io/RandomAccessFile;
    :catchall_180
    move-exception v14

    move-object v10, v11

    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_159

    .line 800
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "raf":Ljava/io/RandomAccessFile;
    :catch_183
    move-exception v5

    move-object v10, v11

    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_11d

    .line 797
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "raf":Ljava/io/RandomAccessFile;
    :catch_186
    move-exception v2

    move-object v10, v11

    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_e1
.end method

.method public checkPattern(Ljava/lang/String;I)Z
    .registers 21
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 648
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, checkPasswordReadPermission(I)V

    .line 649
    const/4 v10, 0x0

    .line 653
    .local v10, "raf":Ljava/io/RandomAccessFile;
    :try_start_8
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v13

    .line 654
    .local v13, "versionInfo":Landroid/os/Bundle;
    if-eqz v13, :cond_33

    const-string v14, "2.0"

    const-string/jumbo v15, "version"

    invoke-virtual {v13, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_33

    .line 655
    invoke-virtual/range {p0 .. p0}, getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v9

    .line 657
    .local v9, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v9, :cond_33

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v14

    if-eqz v14, :cond_33

    .line 658
    const/4 v14, 0x1

    move/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v9, v0, v1, v14}, Lcom/android/server/pm/PersonaManagerService;->setCachedPassword(ILjava/lang/String;Z)V

    .line 664
    .end local v9    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_33
    new-instance v11, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "r"

    invoke-direct {v11, v14, v15}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_43} :catch_156
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_43} :catch_f1
    .catchall {:try_start_8 .. :try_end_43} :catchall_12d

    .line 665
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .local v11, "raf":Ljava/io/RandomAccessFile;
    :try_start_43
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v14

    long-to-int v7, v14

    .line 666
    .local v7, "length":I
    new-array v12, v7, [B

    .line 667
    .local v12, "stored":[B
    const/4 v14, 0x0

    array-length v15, v12

    invoke-virtual {v11, v12, v14, v15}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_43 .. :try_end_4f} :catch_9c
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4f} :catch_153
    .catchall {:try_start_43 .. :try_end_4f} :catchall_150

    move-result v3

    .line 669
    .local v3, "got":I
    if-gtz v3, :cond_74

    .line 670
    const/4 v8, 0x0

    .line 692
    if-eqz v11, :cond_58

    .line 693
    :try_start_55
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_5a

    :cond_58
    :goto_58
    move-object v10, v11

    .line 697
    .end local v3    # "got":I
    .end local v7    # "length":I
    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .end local v12    # "stored":[B
    .end local v13    # "versionInfo":Landroid/os/Bundle;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :cond_59
    :goto_59
    return v8

    .line 695
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "got":I
    .restart local v7    # "length":I
    .restart local v11    # "raf":Ljava/io/RandomAccessFile;
    .restart local v12    # "stored":[B
    .restart local v13    # "versionInfo":Landroid/os/Bundle;
    :catch_5a
    move-exception v6

    .line 696
    .local v6, "ioeClose":Ljava/io/IOException;
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot close file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 673
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :cond_74
    :try_start_74
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v4

    .line 675
    .local v4, "hash":[B
    invoke-static {v12, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    .line 676
    .local v8, "matched":Z
    if-eqz v8, :cond_91

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_91

    .line 677
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v14

    if-eqz v14, :cond_98

    .line 678
    invoke-direct/range {p0 .. p2}, updateKeystore(Ljava/lang/String;I)V
    :try_end_91
    .catch Ljava/io/FileNotFoundException; {:try_start_74 .. :try_end_91} :catch_9c
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_91} :catch_153
    .catchall {:try_start_74 .. :try_end_91} :catchall_150

    .line 692
    :cond_91
    :goto_91
    if-eqz v11, :cond_96

    .line 693
    :try_start_93
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_d7

    :cond_96
    :goto_96
    move-object v10, v11

    .line 697
    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_59

    .line 680
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "raf":Ljava/io/RandomAccessFile;
    :cond_98
    :try_start_98
    invoke-direct/range {p0 .. p2}, maybeUpdateKeystore(Ljava/lang/String;I)V
    :try_end_9b
    .catch Ljava/io/FileNotFoundException; {:try_start_98 .. :try_end_9b} :catch_9c
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_153
    .catchall {:try_start_98 .. :try_end_9b} :catchall_150

    goto :goto_91

    .line 684
    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v7    # "length":I
    .end local v8    # "matched":Z
    .end local v12    # "stored":[B
    :catch_9c
    move-exception v2

    move-object v10, v11

    .line 685
    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .end local v13    # "versionInfo":Landroid/os/Bundle;
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :goto_9e
    :try_start_9e
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot read file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b6
    .catchall {:try_start_9e .. :try_end_b6} :catchall_12d

    .line 686
    const/4 v8, 0x0

    .line 692
    if-eqz v10, :cond_59

    .line 693
    :try_start_b9
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_bd

    goto :goto_59

    .line 695
    :catch_bd
    move-exception v6

    .line 696
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot close file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 695
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "got":I
    .restart local v4    # "hash":[B
    .restart local v7    # "length":I
    .restart local v8    # "matched":Z
    .restart local v11    # "raf":Ljava/io/RandomAccessFile;
    .restart local v12    # "stored":[B
    .restart local v13    # "versionInfo":Landroid/os/Bundle;
    :catch_d7
    move-exception v6

    .line 696
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot close file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    .line 687
    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v7    # "length":I
    .end local v8    # "matched":Z
    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .end local v12    # "stored":[B
    .end local v13    # "versionInfo":Landroid/os/Bundle;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_f1
    move-exception v5

    .line 688
    .local v5, "ioe":Ljava/io/IOException;
    :goto_f2
    :try_start_f2
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot read file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10a
    .catchall {:try_start_f2 .. :try_end_10a} :catchall_12d

    .line 689
    const/4 v8, 0x0

    .line 692
    if-eqz v10, :cond_59

    .line 693
    :try_start_10d
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_110} :catch_112

    goto/16 :goto_59

    .line 695
    :catch_112
    move-exception v6

    .line 696
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v14, "LockSettingsService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot close file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_59

    .line 691
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catchall_12d
    move-exception v14

    .line 692
    :goto_12e
    if-eqz v10, :cond_133

    .line 693
    :try_start_130
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_133} :catch_134

    .line 697
    :cond_133
    :goto_133
    throw v14

    .line 695
    :catch_134
    move-exception v6

    .line 696
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v15, "LockSettingsService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cannot close file "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_133

    .line 691
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "raf":Ljava/io/RandomAccessFile;
    .restart local v13    # "versionInfo":Landroid/os/Bundle;
    :catchall_150
    move-exception v14

    move-object v10, v11

    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_12e

    .line 687
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "raf":Ljava/io/RandomAccessFile;
    :catch_153
    move-exception v5

    move-object v10, v11

    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_f2

    .line 684
    .end local v13    # "versionInfo":Landroid/os/Bundle;
    :catch_156
    move-exception v2

    goto/16 :goto_9e
.end method

.method public checkPersonalModeBackupPin(Ljava/lang/String;I)Z
    .registers 19
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1740
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, checkPasswordReadPermission(I)V

    .line 1741
    const/4 v9, 0x0

    .line 1744
    .local v9, "raf":Ljava/io/RandomAccessFile;
    :try_start_8
    new-instance v10, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, getPersonalModeBackupPinFilename(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "r"

    invoke-direct {v10, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_18} :catch_7a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_b5
    .catchall {:try_start_8 .. :try_end_18} :catchall_f1

    .line 1745
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .local v10, "raf":Ljava/io/RandomAccessFile;
    :try_start_18
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    long-to-int v7, v12

    .line 1747
    .local v7, "length":I
    new-array v11, v7, [B

    .line 1748
    .local v11, "stored":[B
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v10, v11, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_24} :catch_118
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_24} :catch_115
    .catchall {:try_start_18 .. :try_end_24} :catchall_112

    move-result v3

    .line 1750
    .local v3, "got":I
    if-gtz v3, :cond_49

    .line 1751
    const/4 v8, 0x0

    .line 1765
    if-eqz v10, :cond_2d

    .line 1766
    :try_start_2a
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2f

    :cond_2d
    :goto_2d
    move-object v9, v10

    .line 1770
    .end local v3    # "got":I
    .end local v7    # "length":I
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :cond_2e
    :goto_2e
    return v8

    .line 1768
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "got":I
    .restart local v7    # "length":I
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "stored":[B
    :catch_2f
    move-exception v6

    .line 1769
    .local v6, "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 1754
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :cond_49
    :try_start_49
    move-object/from16 v0, p0

    iget-object v12, v0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    .line 1755
    .local v4, "hash":[B
    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_58} :catch_118
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_58} :catch_115
    .catchall {:try_start_49 .. :try_end_58} :catchall_112

    move-result v8

    .line 1765
    .local v8, "matched":Z
    if-eqz v10, :cond_5e

    .line 1766
    :try_start_5b
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_60

    :cond_5e
    :goto_5e
    move-object v9, v10

    .line 1770
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2e

    .line 1768
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_60
    move-exception v6

    .line 1769
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 1757
    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v7    # "length":I
    .end local v8    # "matched":Z
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :catch_7a
    move-exception v2

    .line 1758
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :goto_7b
    :try_start_7b
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_7b .. :try_end_93} :catchall_f1

    .line 1759
    const/4 v8, 0x0

    .line 1765
    if-eqz v9, :cond_2e

    .line 1766
    :try_start_96
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    goto :goto_2e

    .line 1768
    :catch_9a
    move-exception v6

    .line 1769
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 1760
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catch_b5
    move-exception v5

    .line 1761
    .local v5, "ioe":Ljava/io/IOException;
    :goto_b6
    :try_start_b6
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ce
    .catchall {:try_start_b6 .. :try_end_ce} :catchall_f1

    .line 1762
    const/4 v8, 0x0

    .line 1765
    if-eqz v9, :cond_2e

    .line 1766
    :try_start_d1
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_d6

    goto/16 :goto_2e

    .line 1768
    :catch_d6
    move-exception v6

    .line 1769
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 1764
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catchall_f1
    move-exception v12

    .line 1765
    :goto_f2
    if-eqz v9, :cond_f7

    .line 1766
    :try_start_f4
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f7} :catch_f8

    .line 1770
    :cond_f7
    :goto_f7
    throw v12

    .line 1768
    :catch_f8
    move-exception v6

    .line 1769
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v13, "LockSettingsService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot close file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f7

    .line 1764
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catchall_112
    move-exception v12

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_f2

    .line 1760
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_115
    move-exception v5

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_b6

    .line 1757
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_118
    move-exception v2

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_7b
.end method

.method public checkPersonalModeFingerprintPassword(Ljava/lang/String;I)Z
    .registers 19
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1802
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, checkPasswordReadPermission(I)V

    .line 1804
    const/4 v9, 0x0

    .line 1808
    .local v9, "raf":Ljava/io/RandomAccessFile;
    :try_start_8
    new-instance v10, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, getPersonalModeFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "r"

    invoke-direct {v10, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_18} :catch_7a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_b5
    .catchall {:try_start_8 .. :try_end_18} :catchall_f1

    .line 1810
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .local v10, "raf":Ljava/io/RandomAccessFile;
    :try_start_18
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    long-to-int v7, v12

    .line 1811
    .local v7, "length":I
    new-array v11, v7, [B

    .line 1812
    .local v11, "stored":[B
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v10, v11, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_24} :catch_118
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_24} :catch_115
    .catchall {:try_start_18 .. :try_end_24} :catchall_112

    move-result v3

    .line 1813
    .local v3, "got":I
    if-gtz v3, :cond_49

    .line 1814
    const/4 v8, 0x0

    .line 1828
    if-eqz v10, :cond_2d

    .line 1829
    :try_start_2a
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2f

    :cond_2d
    :goto_2d
    move-object v9, v10

    .line 1833
    .end local v3    # "got":I
    .end local v7    # "length":I
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :cond_2e
    :goto_2e
    return v8

    .line 1831
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "got":I
    .restart local v7    # "length":I
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "stored":[B
    :catch_2f
    move-exception v6

    .line 1832
    .local v6, "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 1817
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :cond_49
    :try_start_49
    move-object/from16 v0, p0

    iget-object v12, v0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    .line 1818
    .local v4, "hash":[B
    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_58} :catch_118
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_58} :catch_115
    .catchall {:try_start_49 .. :try_end_58} :catchall_112

    move-result v8

    .line 1828
    .local v8, "matched":Z
    if-eqz v10, :cond_5e

    .line 1829
    :try_start_5b
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_60

    :cond_5e
    :goto_5e
    move-object v9, v10

    .line 1833
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2e

    .line 1831
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_60
    move-exception v6

    .line 1832
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 1820
    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v7    # "length":I
    .end local v8    # "matched":Z
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :catch_7a
    move-exception v2

    .line 1821
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :goto_7b
    :try_start_7b
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_7b .. :try_end_93} :catchall_f1

    .line 1822
    const/4 v8, 0x0

    .line 1828
    if-eqz v9, :cond_2e

    .line 1829
    :try_start_96
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    goto :goto_2e

    .line 1831
    :catch_9a
    move-exception v6

    .line 1832
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 1823
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catch_b5
    move-exception v5

    .line 1824
    .local v5, "ioe":Ljava/io/IOException;
    :goto_b6
    :try_start_b6
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ce
    .catchall {:try_start_b6 .. :try_end_ce} :catchall_f1

    .line 1825
    const/4 v8, 0x0

    .line 1828
    if-eqz v9, :cond_2e

    .line 1829
    :try_start_d1
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_d6

    goto/16 :goto_2e

    .line 1831
    :catch_d6
    move-exception v6

    .line 1832
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 1827
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catchall_f1
    move-exception v12

    .line 1828
    :goto_f2
    if-eqz v9, :cond_f7

    .line 1829
    :try_start_f4
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f7} :catch_f8

    .line 1833
    :cond_f7
    :goto_f7
    throw v12

    .line 1831
    :catch_f8
    move-exception v6

    .line 1832
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v13, "LockSettingsService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot close file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f7

    .line 1827
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catchall_112
    move-exception v12

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_f2

    .line 1823
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_115
    move-exception v5

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_b6

    .line 1820
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_118
    move-exception v2

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_7b
.end method

.method public checkPersonalModePassword(Ljava/lang/String;I)Z
    .registers 19
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1613
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, checkPasswordReadPermission(I)V

    .line 1614
    const/4 v9, 0x0

    .line 1617
    .local v9, "raf":Ljava/io/RandomAccessFile;
    :try_start_8
    new-instance v10, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, getPersonalModePasswordFilename(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "r"

    invoke-direct {v10, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_18} :catch_7a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_b5
    .catchall {:try_start_8 .. :try_end_18} :catchall_f1

    .line 1618
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .local v10, "raf":Ljava/io/RandomAccessFile;
    :try_start_18
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    long-to-int v7, v12

    .line 1619
    .local v7, "length":I
    new-array v11, v7, [B

    .line 1620
    .local v11, "stored":[B
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v10, v11, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_24} :catch_118
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_24} :catch_115
    .catchall {:try_start_18 .. :try_end_24} :catchall_112

    move-result v3

    .line 1622
    .local v3, "got":I
    if-gtz v3, :cond_49

    .line 1623
    const/4 v8, 0x0

    .line 1637
    if-eqz v10, :cond_2d

    .line 1638
    :try_start_2a
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2f

    :cond_2d
    :goto_2d
    move-object v9, v10

    .line 1642
    .end local v3    # "got":I
    .end local v7    # "length":I
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :cond_2e
    :goto_2e
    return v8

    .line 1640
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "got":I
    .restart local v7    # "length":I
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "stored":[B
    :catch_2f
    move-exception v6

    .line 1641
    .local v6, "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 1626
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :cond_49
    :try_start_49
    move-object/from16 v0, p0

    iget-object v12, v0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    .line 1627
    .local v4, "hash":[B
    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_58} :catch_118
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_58} :catch_115
    .catchall {:try_start_49 .. :try_end_58} :catchall_112

    move-result v8

    .line 1637
    .local v8, "matched":Z
    if-eqz v10, :cond_5e

    .line 1638
    :try_start_5b
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_60

    :cond_5e
    :goto_5e
    move-object v9, v10

    .line 1642
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2e

    .line 1640
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_60
    move-exception v6

    .line 1641
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 1629
    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v7    # "length":I
    .end local v8    # "matched":Z
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :catch_7a
    move-exception v2

    .line 1630
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :goto_7b
    :try_start_7b
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_7b .. :try_end_93} :catchall_f1

    .line 1631
    const/4 v8, 0x0

    .line 1637
    if-eqz v9, :cond_2e

    .line 1638
    :try_start_96
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    goto :goto_2e

    .line 1640
    :catch_9a
    move-exception v6

    .line 1641
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 1632
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catch_b5
    move-exception v5

    .line 1633
    .local v5, "ioe":Ljava/io/IOException;
    :goto_b6
    :try_start_b6
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ce
    .catchall {:try_start_b6 .. :try_end_ce} :catchall_f1

    .line 1634
    const/4 v8, 0x0

    .line 1637
    if-eqz v9, :cond_2e

    .line 1638
    :try_start_d1
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_d6

    goto/16 :goto_2e

    .line 1640
    :catch_d6
    move-exception v6

    .line 1641
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 1636
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catchall_f1
    move-exception v12

    .line 1637
    :goto_f2
    if-eqz v9, :cond_f7

    .line 1638
    :try_start_f4
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f7} :catch_f8

    .line 1642
    :cond_f7
    :goto_f7
    throw v12

    .line 1640
    :catch_f8
    move-exception v6

    .line 1641
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v13, "LockSettingsService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot close file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f7

    .line 1636
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catchall_112
    move-exception v12

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_f2

    .line 1632
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_115
    move-exception v5

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_b6

    .line 1629
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_118
    move-exception v2

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_7b
.end method

.method public checkPersonalModePattern(Ljava/lang/String;I)Z
    .registers 19
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1680
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, checkPasswordReadPermission(I)V

    .line 1681
    const/4 v9, 0x0

    .line 1684
    .local v9, "raf":Ljava/io/RandomAccessFile;
    :try_start_8
    new-instance v10, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, getPersonalModePatternFilename(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "r"

    invoke-direct {v10, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_18} :catch_79
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_b4
    .catchall {:try_start_8 .. :try_end_18} :catchall_f0

    .line 1685
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .local v10, "raf":Ljava/io/RandomAccessFile;
    :try_start_18
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    long-to-int v7, v12

    .line 1686
    .local v7, "length":I
    new-array v11, v7, [B

    .line 1687
    .local v11, "stored":[B
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v10, v11, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    .line 1688
    .local v3, "got":I
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_28} :catch_117
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_28} :catch_114
    .catchall {:try_start_18 .. :try_end_28} :catchall_111

    .line 1689
    if-gtz v3, :cond_4c

    .line 1690
    const/4 v8, 0x0

    .line 1705
    if-eqz v10, :cond_30

    .line 1706
    :try_start_2d
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_32

    :cond_30
    :goto_30
    move-object v9, v10

    .line 1710
    .end local v3    # "got":I
    .end local v7    # "length":I
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :cond_31
    :goto_31
    return v8

    .line 1708
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "got":I
    .restart local v7    # "length":I
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "stored":[B
    :catch_32
    move-exception v6

    .line 1709
    .local v6, "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 1693
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :cond_4c
    :try_start_4c
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v4

    .line 1695
    .local v4, "hash":[B
    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_4c .. :try_end_57} :catch_117
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_57} :catch_114
    .catchall {:try_start_4c .. :try_end_57} :catchall_111

    move-result v8

    .line 1705
    .local v8, "matched":Z
    if-eqz v10, :cond_5d

    .line 1706
    :try_start_5a
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5f

    :cond_5d
    :goto_5d
    move-object v9, v10

    .line 1710
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_31

    .line 1708
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_5f
    move-exception v6

    .line 1709
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 1697
    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v7    # "length":I
    .end local v8    # "matched":Z
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :catch_79
    move-exception v2

    .line 1698
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :goto_7a
    :try_start_7a
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catchall {:try_start_7a .. :try_end_92} :catchall_f0

    .line 1699
    const/4 v8, 0x0

    .line 1705
    if-eqz v9, :cond_31

    .line 1706
    :try_start_95
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_99

    goto :goto_31

    .line 1708
    :catch_99
    move-exception v6

    .line 1709
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    .line 1700
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catch_b4
    move-exception v5

    .line 1701
    .local v5, "ioe":Ljava/io/IOException;
    :goto_b5
    :try_start_b5
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catchall {:try_start_b5 .. :try_end_cd} :catchall_f0

    .line 1702
    const/4 v8, 0x0

    .line 1705
    if-eqz v9, :cond_31

    .line 1706
    :try_start_d0
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d5

    goto/16 :goto_31

    .line 1708
    :catch_d5
    move-exception v6

    .line 1709
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    .line 1704
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catchall_f0
    move-exception v12

    .line 1705
    :goto_f1
    if-eqz v9, :cond_f6

    .line 1706
    :try_start_f3
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_f6} :catch_f7

    .line 1710
    :cond_f6
    :goto_f6
    throw v12

    .line 1708
    :catch_f7
    move-exception v6

    .line 1709
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v13, "LockSettingsService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot close file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f6

    .line 1704
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catchall_111
    move-exception v12

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_f1

    .line 1700
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_114
    move-exception v5

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_b5

    .line 1697
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_117
    move-exception v2

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_7a
.end method

.method public checkPersonalModePin(Ljava/lang/String;I)Z
    .registers 19
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1553
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, checkPasswordReadPermission(I)V

    .line 1554
    const/4 v9, 0x0

    .line 1557
    .local v9, "raf":Ljava/io/RandomAccessFile;
    :try_start_8
    new-instance v10, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, getPersonalModePinFilename(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "r"

    invoke-direct {v10, v12, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_18} :catch_7a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_b5
    .catchall {:try_start_8 .. :try_end_18} :catchall_f1

    .line 1558
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .local v10, "raf":Ljava/io/RandomAccessFile;
    :try_start_18
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    long-to-int v7, v12

    .line 1559
    .local v7, "length":I
    new-array v11, v7, [B

    .line 1560
    .local v11, "stored":[B
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v10, v11, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_24} :catch_118
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_24} :catch_115
    .catchall {:try_start_18 .. :try_end_24} :catchall_112

    move-result v3

    .line 1562
    .local v3, "got":I
    if-gtz v3, :cond_49

    .line 1563
    const/4 v8, 0x0

    .line 1577
    if-eqz v10, :cond_2d

    .line 1578
    :try_start_2a
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2f

    :cond_2d
    :goto_2d
    move-object v9, v10

    .line 1582
    .end local v3    # "got":I
    .end local v7    # "length":I
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :cond_2e
    :goto_2e
    return v8

    .line 1580
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "got":I
    .restart local v7    # "length":I
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v11    # "stored":[B
    :catch_2f
    move-exception v6

    .line 1581
    .local v6, "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 1566
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :cond_49
    :try_start_49
    move-object/from16 v0, p0

    iget-object v12, v0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    .line 1567
    .local v4, "hash":[B
    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_58} :catch_118
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_58} :catch_115
    .catchall {:try_start_49 .. :try_end_58} :catchall_112

    move-result v8

    .line 1577
    .local v8, "matched":Z
    if-eqz v10, :cond_5e

    .line 1578
    :try_start_5b
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_60

    :cond_5e
    :goto_5e
    move-object v9, v10

    .line 1582
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2e

    .line 1580
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_60
    move-exception v6

    .line 1581
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 1569
    .end local v3    # "got":I
    .end local v4    # "hash":[B
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v7    # "length":I
    .end local v8    # "matched":Z
    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .end local v11    # "stored":[B
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    :catch_7a
    move-exception v2

    .line 1570
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :goto_7b
    :try_start_7b
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_7b .. :try_end_93} :catchall_f1

    .line 1571
    const/4 v8, 0x0

    .line 1577
    if-eqz v9, :cond_2e

    .line 1578
    :try_start_96
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    goto :goto_2e

    .line 1580
    :catch_9a
    move-exception v6

    .line 1581
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 1572
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catch_b5
    move-exception v5

    .line 1573
    .local v5, "ioe":Ljava/io/IOException;
    :goto_b6
    :try_start_b6
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot read file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ce
    .catchall {:try_start_b6 .. :try_end_ce} :catchall_f1

    .line 1574
    const/4 v8, 0x0

    .line 1577
    if-eqz v9, :cond_2e

    .line 1578
    :try_start_d1
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_d6

    goto/16 :goto_2e

    .line 1580
    :catch_d6
    move-exception v6

    .line 1581
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v12, "LockSettingsService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot close file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 1576
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "ioeClose":Ljava/io/IOException;
    :catchall_f1
    move-exception v12

    .line 1577
    :goto_f2
    if-eqz v9, :cond_f7

    .line 1578
    :try_start_f4
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f7} :catch_f8

    .line 1582
    :cond_f7
    :goto_f7
    throw v12

    .line 1580
    :catch_f8
    move-exception v6

    .line 1581
    .restart local v6    # "ioeClose":Ljava/io/IOException;
    const-string v13, "LockSettingsService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot close file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f7

    .line 1576
    .end local v6    # "ioeClose":Ljava/io/IOException;
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catchall_112
    move-exception v12

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_f2

    .line 1572
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_115
    move-exception v5

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_b6

    .line 1569
    .end local v9    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "raf":Ljava/io/RandomAccessFile;
    :catch_118
    move-exception v2

    move-object v9, v10

    .end local v10    # "raf":Ljava/io/RandomAccessFile;
    .restart local v9    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_7b
.end method

.method public checkSignatureBackupPin([BI)Z
    .registers 15
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1198
    invoke-direct {p0, p2}, checkPasswordReadPermission(I)V

    .line 1199
    const/4 v5, 0x0

    .line 1202
    .local v5, "raf":Ljava/io/RandomAccessFile;
    :try_start_5
    new-instance v6, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, getSignatureBackupPinFilename(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "r"

    invoke-direct {v6, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_11} :catch_66
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_9f
    .catchall {:try_start_5 .. :try_end_11} :catchall_da

    .line 1203
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .local v6, "raf":Ljava/io/RandomAccessFile;
    :try_start_11
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    long-to-int v4, v10

    .line 1204
    .local v4, "length":I
    new-array v7, v4, [B

    .line 1205
    .local v7, "stored":[B
    const/4 v9, 0x0

    array-length v10, v7

    invoke-virtual {v6, v7, v9, v10}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_1d} :catch_101
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1d} :catch_fe
    .catchall {:try_start_11 .. :try_end_1d} :catchall_fb

    move-result v1

    .line 1206
    .local v1, "got":I
    if-gtz v1, :cond_41

    .line 1219
    if-eqz v6, :cond_25

    .line 1220
    :try_start_22
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_27

    :cond_25
    :goto_25
    move-object v5, v6

    .line 1224
    .end local v1    # "got":I
    .end local v4    # "length":I
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .end local v7    # "stored":[B
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :cond_26
    :goto_26
    return v8

    .line 1222
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "got":I
    .restart local v4    # "length":I
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "stored":[B
    :catch_27
    move-exception v3

    .line 1223
    .local v3, "ioeClose":Ljava/io/IOException;
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 1210
    .end local v3    # "ioeClose":Ljava/io/IOException;
    :cond_41
    :try_start_41
    invoke-static {v7, p1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_44} :catch_101
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_fe
    .catchall {:try_start_41 .. :try_end_44} :catchall_fb

    move-result v8

    .line 1219
    if-eqz v6, :cond_4a

    .line 1220
    :try_start_47
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4c

    :cond_4a
    :goto_4a
    move-object v5, v6

    .line 1224
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_26

    .line 1222
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_4c
    move-exception v3

    .line 1223
    .restart local v3    # "ioeClose":Ljava/io/IOException;
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 1211
    .end local v1    # "got":I
    .end local v3    # "ioeClose":Ljava/io/IOException;
    .end local v4    # "length":I
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .end local v7    # "stored":[B
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_66
    move-exception v0

    .line 1212
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    :goto_67
    :try_start_67
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot read file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_67 .. :try_end_7f} :catchall_da

    .line 1219
    if-eqz v5, :cond_26

    .line 1220
    :try_start_81
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_26

    .line 1222
    :catch_85
    move-exception v3

    .line 1223
    .restart local v3    # "ioeClose":Ljava/io/IOException;
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 1214
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v3    # "ioeClose":Ljava/io/IOException;
    :catch_9f
    move-exception v2

    .line 1215
    .local v2, "ioe":Ljava/io/IOException;
    :goto_a0
    :try_start_a0
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot read file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catchall {:try_start_a0 .. :try_end_b8} :catchall_da

    .line 1219
    if-eqz v5, :cond_26

    .line 1220
    :try_start_ba
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_bf

    goto/16 :goto_26

    .line 1222
    :catch_bf
    move-exception v3

    .line 1223
    .restart local v3    # "ioeClose":Ljava/io/IOException;
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 1218
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v3    # "ioeClose":Ljava/io/IOException;
    :catchall_da
    move-exception v8

    .line 1219
    :goto_db
    if-eqz v5, :cond_e0

    .line 1220
    :try_start_dd
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_e1

    .line 1224
    :cond_e0
    :goto_e0
    throw v8

    .line 1222
    :catch_e1
    move-exception v3

    .line 1223
    .restart local v3    # "ioeClose":Ljava/io/IOException;
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot close file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e0

    .line 1218
    .end local v3    # "ioeClose":Ljava/io/IOException;
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catchall_fb
    move-exception v8

    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_db

    .line 1214
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_fe
    move-exception v2

    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_a0

    .line 1211
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_101
    move-exception v0

    move-object v5, v6

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_67
.end method

.method public checkVoldPassword(I)Z
    .registers 16
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v2, 0x0

    const/4 v12, 0x0

    .line 839
    iget-boolean v0, p0, mFirstCallToVold:Z

    if-nez v0, :cond_9

    move v0, v12

    .line 913
    :goto_8
    return v0

    .line 842
    :cond_9
    iput-boolean v12, p0, mFirstCallToVold:Z

    .line 844
    invoke-direct {p0, p1}, checkPasswordReadPermission(I)V

    .line 854
    invoke-direct {p0}, getMountService()Landroid/os/storage/IMountService;

    move-result-object v11

    .line 855
    .local v11, "service":Landroid/os/storage/IMountService;
    invoke-interface {v11}, Landroid/os/storage/IMountService;->getPassword()Ljava/lang/String;

    move-result-object v9

    .line 856
    .local v9, "password":Ljava/lang/String;
    invoke-interface {v11}, Landroid/os/storage/IMountService;->clearPassword()V

    .line 857
    if-nez v9, :cond_1d

    move v0, v12

    .line 858
    goto :goto_8

    .line 861
    :cond_1d
    const-string v0, "content://com.sec.knox.provider/PasswordPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 862
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "getMaximumFailedPasswordsForDisable"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 866
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_69

    .line 868
    const/4 v10, 0x0

    .line 869
    .local v10, "resultMDM":I
    :try_start_34
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 870
    const-string v0, "getMaximumFailedPasswordsForDisable"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 871
    if-lez v10, :cond_66

    .line 872
    const-string v0, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check Password again due to PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_61} :catch_79
    .catchall {:try_start_34 .. :try_end_61} :catchall_7e

    .line 877
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    goto :goto_8

    :cond_66
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 881
    .end local v10    # "resultMDM":I
    :cond_69
    :goto_69
    iget-object v0, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 882
    invoke-virtual {p0, v9, p1}, checkPattern(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_83

    move v0, v13

    .line 883
    goto :goto_8

    .line 875
    .restart local v10    # "resultMDM":I
    :catch_79
    move-exception v0

    .line 877
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_69

    :catchall_7e
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 887
    .end local v10    # "resultMDM":I
    :cond_83
    iget-object v0, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 888
    invoke-virtual {p0, v9, p1}, checkPassword(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 890
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 891
    new-instance v7, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 892
    .local v7, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v7, v9}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .end local v7    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_a1
    move v0, v13

    .line 895
    goto/16 :goto_8

    .line 900
    :cond_a4
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DevicePolicyManager;

    .line 901
    .local v8, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v0, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v0

    if-eqz v0, :cond_d8

    invoke-virtual {v8, v2}, Landroid/app/admin/DevicePolicyManager;->isSupportFingerprintForODE(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 902
    invoke-virtual {p0, v9, p1}, checkFingerprintPassword(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 903
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 904
    new-instance v7, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 905
    .restart local v7    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v7, v9}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 906
    invoke-virtual {v8, v2, v12}, Landroid/app/admin/DevicePolicyManager;->setNeedToGetAlternativePasswdForODE(Landroid/content/ComponentName;Z)V

    .end local v7    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_d5
    move v0, v13

    .line 908
    goto/16 :goto_8

    :cond_d8
    move v0, v12

    .line 913
    goto/16 :goto_8
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-direct {p0, p1, p3}, checkReadPermission(Ljava/lang/String;I)V

    .line 304
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p3}, readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .end local p2    # "defaultValue":Z
    :goto_e
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_f
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    :cond_20
    const/4 p2, 0x1

    goto :goto_e

    :cond_22
    const/4 p2, 0x0

    goto :goto_e
.end method

.method public getCarrierLockPlusMode(I)Z
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2021
    const/4 v1, 0x0

    .line 2023
    .local v1, "mCarrierlockPlusMode":Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/sktdm_mem/lawlock.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_22

    move-result-object v1

    .line 2027
    :goto_f
    if-eqz v1, :cond_26

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2028
    const-string v2, "LockSettingsService"

    const-string v3, "isCarrierLockPlusEnabled() is true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    const/4 v2, 0x1

    .line 2031
    :goto_21
    return v2

    .line 2024
    :catch_22
    move-exception v0

    .line 2025
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "OFF"

    goto :goto_f

    .line 2031
    .end local v0    # "e":Ljava/io/IOException;
    :cond_26
    const/4 v2, 0x0

    goto :goto_21
.end method

.method public getLong(Ljava/lang/String;JI)J
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 311
    invoke-direct {p0, p1, p4}, checkReadPermission(Ljava/lang/String;I)V

    .line 313
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p4}, readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .end local p2    # "defaultValue":J
    :goto_e
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_f
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_e
.end method

.method public getParentControlPasswordHashSize(I)I
    .registers 12
    .param p1, "userId"    # I

    .prologue
    const/4 v3, -0x1

    .line 1921
    invoke-direct {p0, p1}, checkPasswordReadPermission(I)V

    .line 1922
    const/4 v4, 0x0

    .line 1925
    .local v4, "raf":Ljava/io/RandomAccessFile;
    :try_start_5
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p1}, getLockParentControlPasswordFilename(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "r"

    invoke-direct {v5, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_11} :catch_37
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_70
    .catchall {:try_start_5 .. :try_end_11} :catchall_aa

    .line 1926
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .local v5, "raf":Ljava/io/RandomAccessFile;
    :try_start_11
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_14} :catch_d1
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_ce
    .catchall {:try_start_11 .. :try_end_14} :catchall_cb

    move-result-wide v6

    long-to-int v3, v6

    .line 1937
    .local v3, "length":I
    if-eqz v5, :cond_1b

    .line 1938
    :try_start_18
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_1d

    :cond_1b
    :goto_1b
    move-object v4, v5

    .line 1942
    .end local v3    # "length":I
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :cond_1c
    :goto_1c
    return v3

    .line 1940
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "length":I
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_1d
    move-exception v2

    .line 1941
    .local v2, "ioeClose":Ljava/io/IOException;
    const-string v6, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot close file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 1929
    .end local v2    # "ioeClose":Ljava/io/IOException;
    .end local v3    # "length":I
    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    :catch_37
    move-exception v0

    .line 1930
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    :goto_38
    :try_start_38
    const-string v6, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot read file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_38 .. :try_end_50} :catchall_aa

    .line 1937
    if-eqz v4, :cond_1c

    .line 1938
    :try_start_52
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_1c

    .line 1940
    :catch_56
    move-exception v2

    .line 1941
    .restart local v2    # "ioeClose":Ljava/io/IOException;
    const-string v6, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot close file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 1932
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    .end local v2    # "ioeClose":Ljava/io/IOException;
    :catch_70
    move-exception v1

    .line 1933
    .local v1, "ioe":Ljava/io/IOException;
    :goto_71
    :try_start_71
    const-string v6, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot read file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_71 .. :try_end_89} :catchall_aa

    .line 1937
    if-eqz v4, :cond_1c

    .line 1938
    :try_start_8b
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_1c

    .line 1940
    :catch_8f
    move-exception v2

    .line 1941
    .restart local v2    # "ioeClose":Ljava/io/IOException;
    const-string v6, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot close file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 1936
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v2    # "ioeClose":Ljava/io/IOException;
    :catchall_aa
    move-exception v6

    .line 1937
    :goto_ab
    if-eqz v4, :cond_b0

    .line 1938
    :try_start_ad
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b1

    .line 1942
    :cond_b0
    :goto_b0
    throw v6

    .line 1940
    :catch_b1
    move-exception v2

    .line 1941
    .restart local v2    # "ioeClose":Ljava/io/IOException;
    const-string v7, "LockSettingsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot close file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    .line 1936
    .end local v2    # "ioeClose":Ljava/io/IOException;
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catchall_cb
    move-exception v6

    move-object v4, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_ab

    .line 1932
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_ce
    move-exception v1

    move-object v4, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_71

    .line 1929
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    .restart local v5    # "raf":Ljava/io/RandomAccessFile;
    :catch_d1
    move-exception v0

    move-object v4, v5

    .end local v5    # "raf":Ljava/io/RandomAccessFile;
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_38
.end method

.method getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;
    .registers 3

    .prologue
    .line 189
    const-string/jumbo v1, "persona"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    .line 190
    .local v0, "pms":Lcom/android/server/pm/PersonaManagerService;
    return-object v0
.end method

.method public getSignatureInfo(I)[B
    .registers 15
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1230
    const-string v10, "LockSettingsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getSignatureInfo"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0, p1}, getSignatureFilename(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    invoke-direct {p0, p1}, checkPasswordReadPermission(I)V

    .line 1232
    const/4 v6, 0x0

    .line 1235
    .local v6, "raf":Ljava/io/RandomAccessFile;
    :try_start_20
    new-instance v7, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p1}, getSignatureFilename(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "r"

    invoke-direct {v7, v10, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_2c} :catch_82
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2c} :catch_9d

    .line 1236
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .local v7, "raf":Ljava/io/RandomAccessFile;
    if-eqz v7, :cond_7f

    .line 1237
    const/16 v10, 0x58

    :try_start_30
    new-array v9, v10, [B

    .line 1238
    .local v9, "settings":[B
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    long-to-int v8, v10

    .line 1243
    .local v8, "savedSettingsLength":I
    const/16 v10, 0x54

    if-ne v8, v10, :cond_70

    .line 1244
    const-string v10, "LockSettingsService"

    const-string v11, "Read old signature lock settings"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    new-array v5, v8, [B

    .line 1247
    .local v5, "prev":[B
    const/4 v10, 0x0

    invoke-virtual {v7, v5, v10, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 1250
    .local v1, "got":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4a
    const/16 v10, 0x24

    if-ge v2, v10, :cond_55

    .line 1251
    aget-byte v10, v5, v2

    aput-byte v10, v9, v2

    .line 1250
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 1254
    :cond_55
    const/16 v2, 0x24

    :goto_57
    const/16 v10, 0x28

    if-ge v2, v10, :cond_61

    .line 1255
    const/4 v10, 0x0

    aput-byte v10, v9, v2

    .line 1254
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 1257
    :cond_61
    const/16 v2, 0x28

    :goto_63
    const/16 v10, 0x58

    if-ge v2, v10, :cond_75

    .line 1258
    add-int/lit8 v10, v2, -0x4

    aget-byte v10, v5, v10

    aput-byte v10, v9, v2

    .line 1257
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 1261
    .end local v1    # "got":I
    .end local v2    # "i":I
    .end local v5    # "prev":[B
    :cond_70
    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 1263
    .restart local v1    # "got":I
    :cond_75
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_78
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_78} :catch_da
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_78} :catch_d7

    .line 1264
    if-gtz v1, :cond_7d

    .line 1265
    const/4 v9, 0x0

    .end local v9    # "settings":[B
    move-object v6, v7

    .line 1281
    .end local v1    # "got":I
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .end local v8    # "savedSettingsLength":I
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :goto_7c
    return-object v9

    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "got":I
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v8    # "savedSettingsLength":I
    .restart local v9    # "settings":[B
    :cond_7d
    move-object v6, v7

    .line 1267
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_7c

    .line 1269
    .end local v1    # "got":I
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .end local v8    # "savedSettingsLength":I
    .end local v9    # "settings":[B
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :cond_7f
    const/4 v9, 0x0

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_7c

    .line 1270
    :catch_82
    move-exception v0

    .line 1271
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    :goto_83
    const-string v10, "LockSettingsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot read file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    const/4 v9, 0x0

    goto :goto_7c

    .line 1273
    .end local v0    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_9d
    move-exception v3

    .line 1274
    .local v3, "ioe":Ljava/io/IOException;
    :goto_9e
    const-string v10, "LockSettingsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot read file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    if-eqz v6, :cond_bb

    .line 1277
    :try_start_b8
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_bd

    .line 1281
    :cond_bb
    :goto_bb
    const/4 v9, 0x0

    goto :goto_7c

    .line 1278
    :catch_bd
    move-exception v4

    .line 1279
    .local v4, "ioeClose":Ljava/io/IOException;
    const-string v10, "LockSettingsService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot close file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bb

    .line 1273
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "ioeClose":Ljava/io/IOException;
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catch_d7
    move-exception v3

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_9e

    .line 1270
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catch_da
    move-exception v0

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_83
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-direct {p0, p1, p3}, checkReadPermission(Ljava/lang/String;I)V

    .line 321
    invoke-direct {p0, p1, p2, p3}, readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 1351
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, getLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
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
    .line 2064
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, getLockCarrierPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
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
    .line 1974
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, getLockFMMPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
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
    .line 1519
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, getLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public haveParentControlPassword(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1916
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, getLockParentControlPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public havePassword(I)Z
    .registers 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 424
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 425
    sget-object v2, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 430
    .local v0, "result":Z
    :goto_18
    return v0

    .end local v0    # "result":Z
    :cond_19
    move v0, v1

    .line 425
    goto :goto_18

    .line 428
    :cond_1b
    new-instance v2, Ljava/io/File;

    invoke-direct {p0, p1}, getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2f

    .restart local v0    # "result":Z
    :goto_2e
    goto :goto_18

    .end local v0    # "result":Z
    :cond_2f
    move v0, v1

    goto :goto_2e
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
    .line 438
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
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
    .line 1789
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, getPersonalModeBackupPinFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
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
    .line 1840
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, getPersonalModeFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
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
    .line 1661
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, getPersonalModePasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
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
    .line 1729
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, getPersonalModePatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
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
    .line 1602
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, getPersonalModePinFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public haveSignature(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1161
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, getSignatureFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public haveSignatureBackupPin(I)Z
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1166
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, getSignatureBackupPinFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public notifyObservers(Ljava/lang/String;I)V
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 358
    iget-object v3, p0, mObservers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 359
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_36

    move-result v2

    if-ge v1, v2, :cond_39

    .line 361
    :try_start_c
    iget-object v2, p0, mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LockSettingsService$LockSettingsObserver;

    iget-object v2, v2, Lcom/android/server/LockSettingsService$LockSettingsObserver;->remote:Lcom/android/internal/widget/ILockSettingsObserver;

    invoke-interface {v2, p1, p2}, Lcom/android/internal/widget/ILockSettingsObserver;->onLockSettingChanged(Ljava/lang/String;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_19} :catch_1c
    .catchall {:try_start_c .. :try_end_19} :catchall_36

    .line 359
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 362
    :catch_1c
    move-exception v0

    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1d
    const-string v2, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to notify ILockSettingsObserver: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 367
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_36
    move-exception v2

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_1d .. :try_end_38} :catchall_36

    throw v2

    :cond_39
    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_36

    .line 368
    return-void
.end method

.method public registerObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V
    .registers 9
    .param p1, "remote"    # Lcom/android/internal/widget/ILockSettingsObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 326
    iget-object v4, p0, mObservers:Ljava/util/ArrayList;

    monitor-enter v4

    .line 327
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    :try_start_4
    iget-object v3, p0, mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_48

    .line 328
    iget-object v3, p0, mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LockSettingsService$LockSettingsObserver;

    iget-object v3, v3, Lcom/android/server/LockSettingsService$LockSettingsObserver;->remote:Lcom/android/internal/widget/ILockSettingsObserver;

    invoke-interface {v3}, Lcom/android/internal/widget/ILockSettingsObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/widget/ILockSettingsObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v3, v5, :cond_45

    .line 329
    const-string v3, "1"

    const-string/jumbo v5, "ro.debuggable"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 330
    .local v1, "isDebuggable":Z
    if-eqz v1, :cond_3c

    .line 331
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Observer was already registered."

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 342
    .end local v1    # "isDebuggable":Z
    :catchall_39
    move-exception v3

    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_39

    throw v3

    .line 333
    .restart local v1    # "isDebuggable":Z
    :cond_3c
    :try_start_3c
    const-string v3, "LockSettingsService"

    const-string v5, "Observer was already registered."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    monitor-exit v4

    .line 343
    .end local v1    # "isDebuggable":Z
    :goto_44
    return-void

    .line 327
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 338
    :cond_48
    new-instance v2, Lcom/android/server/LockSettingsService$LockSettingsObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/LockSettingsService$LockSettingsObserver;-><init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$1;)V

    .line 339
    .local v2, "o":Lcom/android/server/LockSettingsService$LockSettingsObserver;
    iput-object p1, v2, Lcom/android/server/LockSettingsService$LockSettingsObserver;->remote:Lcom/android/internal/widget/ILockSettingsObserver;

    .line 340
    iget-object v3, v2, Lcom/android/server/LockSettingsService$LockSettingsObserver;->remote:Lcom/android/internal/widget/ILockSettingsObserver;

    invoke-interface {v3}, Lcom/android/internal/widget/ILockSettingsObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 341
    iget-object v3, p0, mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    monitor-exit v4
    :try_end_60
    .catchall {:try_start_3c .. :try_end_60} :catchall_39

    goto :goto_44
.end method

.method public removeUser(I)V
    .registers 11
    .param p1, "userId"    # I

    .prologue
    .line 918
    invoke-direct {p0, p1}, checkWritePermission(I)V

    .line 920
    iget-object v6, p0, mOpenHelper:Lcom/android/server/LockSettingsService$DatabaseHelper;

    invoke-virtual {v6}, Lcom/android/server/LockSettingsService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 922
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_9
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 923
    .local v4, "um":Landroid/os/UserManager;
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 924
    .local v3, "parentInfo":Landroid/content/pm/UserInfo;
    if-nez v3, :cond_3e

    .line 926
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 927
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 928
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 930
    :cond_2c
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {p0, p1}, getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 931
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 932
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 936
    .end local v1    # "file":Ljava/io/File;
    :cond_3e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 937
    const-string v6, "locksettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "user=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 938
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_64
    .catchall {:try_start_9 .. :try_end_64} :catchall_75

    .line 940
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 943
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    .line 944
    .local v2, "ks":Landroid/security/KeyStore;
    const/16 v6, 0x3e8

    invoke-static {p1, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 945
    .local v5, "userUid":I
    invoke-virtual {v2, v5}, Landroid/security/KeyStore;->resetUid(I)Z

    .line 946
    return-void

    .line 940
    .end local v2    # "ks":Landroid/security/KeyStore;
    .end local v3    # "parentInfo":Landroid/content/pm/UserInfo;
    .end local v4    # "um":Landroid/os/UserManager;
    .end local v5    # "userUid":I
    :catchall_75
    move-exception v6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6
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
    .line 281
    invoke-direct {p0, p3}, checkWritePermission(I)V

    .line 283
    if-eqz p2, :cond_b

    const-string v0, "1"

    :goto_7
    invoke-direct {p0, p1, v0, p3}, writeToDb(Ljava/lang/String;Ljava/lang/String;I)V

    .line 284
    return-void

    .line 283
    :cond_b
    const-string v0, "0"

    goto :goto_7
.end method

.method public setCarrierLockPlusEnabled(I)V
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2037
    const-string v0, "LockPatternUtils.Cache.IsCarrierLockPlusEnabledCacheKey"

    invoke-virtual {p0, v0, p1}, notifyObservers(Ljava/lang/String;I)V

    .line 2038
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
    .line 1330
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 1331
    invoke-direct {p0, p2}, getLockBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, writeFile(Ljava/lang/String;[B)V

    .line 1332
    return-void
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
    .line 2042
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 2043
    invoke-direct {p0, p2}, getLockCarrierPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, writeFile(Ljava/lang/String;[B)V

    .line 2044
    const-string v0, "LockPatternUtils.Cache.HasLockCarrierPasswordCacheKey"

    invoke-virtual {p0, v0, p2}, notifyObservers(Ljava/lang/String;I)V

    .line 2045
    return-void
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
    .line 1952
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 1953
    invoke-direct {p0, p2}, getLockFMMPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, writeFile(Ljava/lang/String;[B)V

    .line 1954
    const-string v0, "LockPatternUtils.Cache.HasLockFMMPasswordCacheKey"

    invoke-virtual {p0, v0, p2}, notifyObservers(Ljava/lang/String;I)V

    .line 1955
    return-void
.end method

.method public setLockFingerprintPassword(Ljava/lang/String;I)V
    .registers 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1396
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 1399
    if-eqz p1, :cond_41

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const/16 v0, 0x64

    if-ge p2, v0, :cond_41

    .line 1400
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_2f

    .line 1401
    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_null_setLFinger, userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    :cond_2f
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1417
    const-string v0, "_nullPassword012"

    invoke-direct {p0, v0, p2}, updateKeystore(Ljava/lang/String;I)V

    .line 1425
    :goto_3a
    return-void

    .line 1419
    :cond_3b
    const-string v0, "_nullPassword012"

    invoke-direct {p0, v0, p2}, maybeUpdateKeystore(Ljava/lang/String;I)V

    goto :goto_3a

    .line 1424
    :cond_41
    invoke-direct {p0, p2}, getLockFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, writeFile(Ljava/lang/String;[B)V

    goto :goto_3a
.end method

.method public setLockParentControlPassword([BI)V
    .registers 4
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 1874
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 1876
    invoke-direct {p0, p2}, getLockParentControlPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, writeFile(Ljava/lang/String;[B)V

    .line 1877
    const-string v0, "LockPatternUtils.Cache.HasLockParentControlPasswordCacheKey"

    invoke-virtual {p0, v0, p2}, notifyObservers(Ljava/lang/String;I)V

    .line 1878
    return-void
.end method

.method public setLockPassword(Ljava/lang/String;I)V
    .registers 10
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 573
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 574
    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Knox.KeyMgnt :: setLockPassword start "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v3

    .line 576
    .local v3, "versionInfo":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 577
    .local v0, "knoxSupported":Z
    const/4 v2, 0x0

    .line 579
    .local v2, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v3, :cond_37

    const-string v4, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 580
    invoke-virtual {p0}, getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v2

    .line 581
    const/4 v0, 0x1

    .line 584
    :cond_37
    if-eqz v0, :cond_9a

    invoke-virtual {v2, p2}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 586
    const/4 v1, 0x0

    .line 588
    .local v1, "password2":Ljava/lang/String;
    if-eqz p1, :cond_48

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 589
    :cond_48
    const-string v4, "LockSettingsService"

    const-string v5, "Knox.KeyMgnt :: setLockPassword null pwd - skip"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :goto_4f
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v4

    if-eqz v4, :cond_89

    .line 607
    invoke-direct {p0, v1, p2}, updateKeystore(Ljava/lang/String;I)V

    .line 615
    :goto_58
    if-eqz v1, :cond_5d

    .line 616
    invoke-virtual {v1}, Ljava/lang/String;->clear()V

    .line 643
    .end local v1    # "password2":Ljava/lang/String;
    :cond_5d
    :goto_5d
    const-string v4, "LockPatternUtils.Cache.HasLockPasswordCacheKey"

    invoke-virtual {p0, v4, p2}, notifyObservers(Ljava/lang/String;I)V

    .line 644
    return-void

    .line 591
    .restart local v1    # "password2":Ljava/lang/String;
    :cond_63
    new-instance v1, Ljava/lang/String;

    .end local v1    # "password2":Ljava/lang/String;
    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 593
    .restart local v1    # "password2":Ljava/lang/String;
    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Knox.KeyMgnt :: setLockPassword "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-direct {p0, v1, p2}, extractPasswordFromGrabage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 602
    invoke-virtual {v2, p2, v1}, Lcom/android/server/pm/PersonaManagerService;->onPasswordChange(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4f

    .line 609
    :cond_89
    invoke-direct {p0, v1, p2}, maybeUpdateKeystore(Ljava/lang/String;I)V

    .line 611
    invoke-direct {p0, p2}, getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {p0, v4, v5}, writeFile(Ljava/lang/String;[B)V

    goto :goto_58

    .line 621
    .end local v1    # "password2":Ljava/lang/String;
    :cond_9a
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 622
    invoke-direct {p0, p1, p2}, updateKeystore(Ljava/lang/String;I)V

    goto :goto_5d

    .line 624
    :cond_a4
    invoke-direct {p0, p1, p2}, maybeUpdateKeystore(Ljava/lang/String;I)V

    .line 626
    invoke-direct {p0, p2}, getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {p0, v4, v5}, writeFile(Ljava/lang/String;[B)V

    goto :goto_5d
.end method

.method public setLockPattern(Ljava/lang/String;I)V
    .registers 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 544
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 547
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 548
    invoke-direct {p0, p1, p2}, updateKeystore(Ljava/lang/String;I)V

    .line 555
    :goto_c
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 556
    .local v2, "versionInfo":Landroid/os/Bundle;
    if-eqz v2, :cond_30

    const-string v3, "2.0"

    const-string/jumbo v4, "version"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 557
    invoke-virtual {p0}, getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    .line 559
    .local v1, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v1, :cond_30

    invoke-virtual {v1, p2}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 560
    invoke-virtual {v1, p2, p1}, Lcom/android/server/pm/PersonaManagerService;->onPatternChange(ILjava/lang/String;)V

    .line 565
    .end local v1    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_30
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .line 567
    .local v0, "hash":[B
    invoke-direct {p0, p2}, getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, writeFile(Ljava/lang/String;[B)V

    .line 568
    const-string v3, "LockPatternUtils.Cache.HasLockPatternCacheKey"

    invoke-virtual {p0, v3, p2}, notifyObservers(Ljava/lang/String;I)V

    .line 569
    return-void

    .line 550
    .end local v0    # "hash":[B
    .end local v2    # "versionInfo":Landroid/os/Bundle;
    :cond_45
    invoke-direct {p0, p1, p2}, maybeUpdateKeystore(Ljava/lang/String;I)V

    goto :goto_c
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
    .line 288
    invoke-direct {p0, p4}, checkWritePermission(I)V

    .line 290
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, writeToDb(Ljava/lang/String;Ljava/lang/String;I)V

    .line 291
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
    .line 1795
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 1796
    invoke-direct {p0, p2}, getPersonalModeFingerprintPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, writeFile(Ljava/lang/String;[B)V

    .line 1797
    return-void
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
    .line 1734
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 1735
    invoke-direct {p0, p2}, getPersonalModeBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, writeFile(Ljava/lang/String;[B)V

    .line 1736
    return-void
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
    .line 1607
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 1608
    invoke-direct {p0, p2}, getPersonalModePasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, writeFile(Ljava/lang/String;[B)V

    .line 1609
    return-void
.end method

.method public setPersonalModeLockPattern(Ljava/lang/String;I)V
    .registers 6
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1666
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 1668
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .line 1671
    .local v0, "hash":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1a

    .line 1672
    invoke-direct {p0, p2}, getPersonalModePatternFilename(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, writeFile(Ljava/lang/String;[B)V

    .line 1676
    :goto_19
    return-void

    .line 1674
    :cond_1a
    invoke-direct {p0, p2}, getPersonalModePatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, writeFile(Ljava/lang/String;[B)V

    goto :goto_19
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
    .line 1547
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 1548
    invoke-direct {p0, p2}, getPersonalModePinFilename(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, writeFile(Ljava/lang/String;[B)V

    .line 1549
    return-void
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
    .line 1191
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 1193
    invoke-direct {p0, p2}, getSignatureBackupPinFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, writeFile(Ljava/lang/String;[B)V

    .line 1194
    return-void
.end method

.method public setSignatureInfo([BI)V
    .registers 6
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1171
    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSignatureInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, getSignatureFilename(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    invoke-direct {p0, p2}, checkWritePermission(I)V

    .line 1174
    invoke-direct {p0, p2}, getSignatureFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, writeFile(Ljava/lang/String;[B)V

    .line 1175
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-direct {p0, p3}, checkWritePermission(I)V

    .line 297
    invoke-direct {p0, p1, p2, p3}, writeToDb(Ljava/lang/String;Ljava/lang/String;I)V

    .line 298
    return-void
.end method

.method public systemReady()V
    .registers 2

    .prologue
    .line 195
    invoke-direct {p0}, migrateOldData()V

    .line 196
    iget-object v0, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->resetBiometricLock()V

    .line 197
    return-void
.end method

.method public unlockMDPPForFingerprint(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 1489
    invoke-direct {p0, p1}, checkPasswordReadPermission(I)V

    .line 1490
    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyMgntTest unlockMDPPForFingerprint >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 1493
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_4d

    .line 1494
    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_null_checkFinger_isMdfSupported, userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    :cond_4d
    const-string v0, "LockSettingsService"

    const-string v1, "KeyMgntTest unlockMDPPForFingerprint calling checkPassword >> "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string v1, "_nullPassword012"

    invoke-virtual {v0, v1, p1}, Landroid/security/KeyStore;->checkPassword(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_86

    .line 1498
    const-string v0, "LockSettingsService"

    const-string v1, "KeyMgntTest unlockMDPPForFingerprint checkPassword >> FALSE "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_85

    .line 1500
    const-string v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_null_checkFinger_updateKeystore, userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_85
    :goto_85
    return-void

    .line 1505
    :cond_86
    const-string v0, "LockSettingsService"

    const-string v1, "KeyMgntTest unlockMDPPForFingerprint checkPassword >> TRUE "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 1509
    :cond_8e
    const-string v0, "LockSettingsService"

    const-string v1, "KeyMgntTest unlockMDPPForFingerprint MDPP not supported >> "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85
.end method

.method public unregisterObserver(Lcom/android/internal/widget/ILockSettingsObserver;)V
    .registers 6
    .param p1, "remote"    # Lcom/android/internal/widget/ILockSettingsObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v2, p0, mObservers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 348
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    :try_start_4
    iget-object v1, p0, mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 349
    iget-object v1, p0, mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LockSettingsService$LockSettingsObserver;

    iget-object v1, v1, Lcom/android/server/LockSettingsService$LockSettingsObserver;->remote:Lcom/android/internal/widget/ILockSettingsObserver;

    invoke-interface {v1}, Lcom/android/internal/widget/ILockSettingsObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/widget/ILockSettingsObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v1, v3, :cond_27

    .line 350
    iget-object v1, p0, mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 351
    monitor-exit v2

    .line 355
    :goto_26
    return-void

    .line 348
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 354
    :cond_2a
    monitor-exit v2

    goto :goto_26

    :catchall_2c
    move-exception v1

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_2c

    throw v1
.end method
