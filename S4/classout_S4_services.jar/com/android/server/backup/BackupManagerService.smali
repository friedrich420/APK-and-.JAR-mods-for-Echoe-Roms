.class public Lcom/android/server/backup/BackupManagerService;
.super Landroid/app/backup/IBackupManager$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$6;,
        Lcom/android/server/backup/BackupManagerService$EdmFullObserver;,
        Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;,
        Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;,
        Lcom/android/server/backup/BackupManagerService$PerformClearTask;,
        Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;,
        Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;,
        Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;,
        Lcom/android/server/backup/BackupManagerService$RestorePolicy;,
        Lcom/android/server/backup/BackupManagerService$FileMetadata;,
        Lcom/android/server/backup/BackupManagerService$RestoreEngine;,
        Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;,
        Lcom/android/server/backup/BackupManagerService$FullBackupTask;,
        Lcom/android/server/backup/BackupManagerService$FullBackupEngine;,
        Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;,
        Lcom/android/server/backup/BackupManagerService$PerformBackupTask;,
        Lcom/android/server/backup/BackupManagerService$BackupState;,
        Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;,
        Lcom/android/server/backup/BackupManagerService$ClearDataObserver;,
        Lcom/android/server/backup/BackupManagerService$TransportConnection;,
        Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;,
        Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;,
        Lcom/android/server/backup/BackupManagerService$BackupHandler;,
        Lcom/android/server/backup/BackupManagerService$FullBackupEntry;,
        Lcom/android/server/backup/BackupManagerService$Operation;,
        Lcom/android/server/backup/BackupManagerService$FullRestoreParams;,
        Lcom/android/server/backup/BackupManagerService$FullBackupParams;,
        Lcom/android/server/backup/BackupManagerService$FullParams;,
        Lcom/android/server/backup/BackupManagerService$ClearRetryParams;,
        Lcom/android/server/backup/BackupManagerService$ClearParams;,
        Lcom/android/server/backup/BackupManagerService$RestoreParams;,
        Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;,
        Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;,
        Lcom/android/server/backup/BackupManagerService$Lifecycle;,
        Lcom/android/server/backup/BackupManagerService$BackupRequest;
    }
.end annotation


# static fields
.field static final BACKUP_FILE_HEADER_MAGIC:Ljava/lang/String; = "ANDROID BACKUP\n"

.field static final BACKUP_FILE_VERSION:I = 0x3

.field private static final BACKUP_INTERVAL:J = 0x36ee80L

.field static final BACKUP_MANIFEST_FILENAME:Ljava/lang/String; = "_manifest"

.field static final BACKUP_MANIFEST_VERSION:I = 0x1

.field static final BACKUP_METADATA_FILENAME:Ljava/lang/String; = "_meta"

.field static final BACKUP_METADATA_VERSION:I = 0x1

.field static final BACKUP_PW_FILE_VERSION:I = 0x2

.field static final BACKUP_WIDGET_METADATA_TOKEN:I = 0x1ffed01

.field static final COMPRESS_FULL_BACKUPS:Z = true

.field static final CURRENT_ANCESTRAL_RECORD_VERSION:I = 0x1

.field private static final DEBUG:Z = true

.field static final DEBUG_BACKUP_TRACE:Z = true

.field private static final DEBUG_SCHEDULING:Z = true

.field static final ENCRYPTION_ALGORITHM_NAME:Ljava/lang/String; = "AES-256"

.field private static final FIRST_BACKUP_INTERVAL:J = 0x2932e00L

.field private static final FUZZ_MILLIS:I = 0x493e0

.field static final INIT_SENTINEL_FILE_NAME:Ljava/lang/String; = "_need_init_"

.field static final KEY_WIDGET_STATE:Ljava/lang/String; = "\uffed\uffedwidget"

.field static final MIN_FULL_BACKUP_INTERVAL:J = 0x5265c00L

.field private static final MORE_DEBUG:Z = false

.field static final MSG_BACKUP_RESTORE_STEP:I = 0x14

.field private static final MSG_FULL_CONFIRMATION_TIMEOUT:I = 0x9

.field static final MSG_OP_COMPLETE:I = 0x15

.field private static final MSG_RESTORE_TIMEOUT:I = 0x8

.field private static final MSG_RETRY_CLEAR:I = 0xc

.field private static final MSG_RETRY_INIT:I = 0xb

.field private static final MSG_RUN_ADB_BACKUP:I = 0x2

.field private static final MSG_RUN_ADB_RESTORE:I = 0xa

.field private static final MSG_RUN_BACKUP:I = 0x1

.field private static final MSG_RUN_CLEAR:I = 0x4

.field private static final MSG_RUN_FULL_TRANSPORT_BACKUP:I = 0xe

.field private static final MSG_RUN_GET_RESTORE_SETS:I = 0x6

.field private static final MSG_RUN_INITIALIZE:I = 0x5

.field private static final MSG_RUN_RESTORE:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x7

.field private static final MSG_WIDGET_BROADCAST:I = 0xd

.field static final OP_ACKNOWLEDGED:I = 0x1

.field static final OP_PENDING:I = 0x0

.field static final OP_TIMEOUT:I = -0x1

.field static final PACKAGE_MANAGER_SENTINEL:Ljava/lang/String; = "@pm@"

.field static final PBKDF2_HASH_ROUNDS:I = 0x2710

.field static final PBKDF2_KEY_SIZE:I = 0x100

.field static final PBKDF2_SALT_SIZE:I = 0x200

.field static final PBKDF_CURRENT:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field static final PBKDF_FALLBACK:Ljava/lang/String; = "PBKDF2WithHmacSHA1And8bit"

.field private static final RUN_BACKUP_ACTION:Ljava/lang/String; = "android.app.backup.intent.RUN"

.field private static final RUN_CLEAR_ACTION:Ljava/lang/String; = "android.app.backup.intent.CLEAR"

.field private static final RUN_INITIALIZE_ACTION:Ljava/lang/String; = "android.app.backup.intent.INIT"

.field static final SCHEDULE_FILE_VERSION:I = 0x1

.field static final SERVICE_ACTION_TRANSPORT_HOST:Ljava/lang/String; = "android.backup.TRANSPORT_HOST"

.field static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.providers.settings"

.field static final SHARED_BACKUP_AGENT_PACKAGE:Ljava/lang/String; = "com.android.sharedstoragebackup"

.field private static final TAG:Ljava/lang/String; = "BackupManagerService"

.field static final TIMEOUT_BACKUP_INTERVAL:J = 0x7530L

.field static final TIMEOUT_FULL_BACKUP_INTERVAL:J = 0x493e0L

.field static final TIMEOUT_FULL_CONFIRMATION:J = 0xea60L

.field static final TIMEOUT_INTERVAL:J = 0x2710L

.field static final TIMEOUT_RESTORE_FINISHED_INTERVAL:J = 0x7530L

.field static final TIMEOUT_RESTORE_INTERVAL:J = 0xea60L

.field static final TIMEOUT_SHARED_BACKUP_INTERVAL:J = 0x1b7740L

.field private static final TRANSPORT_RETRY_INTERVAL:J = 0x36ee80L

.field static final sFullBackupExceptionPackages:[Ljava/lang/String;

.field static sInstance:Lcom/android/server/backup/BackupManagerService;


# instance fields
.field isEdmBackupFail:Z

.field isEdmBackupRequest:Z

.field isEdmRestoreFail:Z

.field isEdmRestoreRequest:Z

.field mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

.field private mActivityManager:Landroid/app/IActivityManager;

.field final mAgentConnectLock:Ljava/lang/Object;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field mAncestralPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAncestralToken:J

.field mAutoRestore:Z

.field mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

.field mBackupManagerBinder:Landroid/app/backup/IBackupManager;

.field final mBackupParticipants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field volatile mBackupRunning:Z

.field final mBackupTrace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBaseStateDir:Ljava/io/File;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mClearDataLock:Ljava/lang/Object;

.field volatile mClearingData:Z

.field mConnectedAgent:Landroid/app/IBackupAgent;

.field volatile mConnecting:Z

.field mContext:Landroid/content/Context;

.field final mCurrentOpLock:Ljava/lang/Object;

.field final mCurrentOperations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/backup/BackupManagerService$Operation;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentToken:J

.field mCurrentTransport:Ljava/lang/String;

.field mDataDir:Ljava/io/File;

.field mEdmBackupAppPkgName:Ljava/lang/String;

.field mEdmFullObserver:Lcom/android/server/backup/BackupManagerService$EdmFullObserver;

.field mEdmRestoreAppPkgName:Ljava/lang/String;

.field mEdmUserId:I

.field mEnabled:Z

.field private mEverStored:Ljava/io/File;

.field mEverStoredApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mExceptionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mFullBackupQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$FullBackupEntry;",
            ">;"
        }
    .end annotation
.end field

.field mFullBackupScheduleFile:Ljava/io/File;

.field mFullBackupScheduleWriter:Ljava/lang/Runnable;

.field final mFullConfirmations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/backup/BackupManagerService$FullParams;",
            ">;"
        }
    .end annotation
.end field

.field mHandlerThread:Landroid/os/HandlerThread;

.field mJournal:Ljava/io/File;

.field mJournalDir:Ljava/io/File;

.field volatile mLastBackupPass:J

.field private mMountService:Landroid/os/storage/IMountService;

.field volatile mNextBackupPass:J

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageManagerBinder:Landroid/content/pm/IPackageManager;

.field private mPasswordHash:Ljava/lang/String;

.field private mPasswordHashFile:Ljava/io/File;

.field private mPasswordSalt:[B

.field private mPasswordVersion:I

.field private mPasswordVersionFile:Ljava/io/File;

.field mPendingBackups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mPendingInits:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field mProvisioned:Z

.field mProvisionedObserver:Landroid/database/ContentObserver;

.field final mQueueLock:Ljava/lang/Object;

.field private final mRng:Ljava/security/SecureRandom;

.field mRunBackupIntent:Landroid/app/PendingIntent;

.field mRunBackupReceiver:Landroid/content/BroadcastReceiver;

.field mRunInitIntent:Landroid/app/PendingIntent;

.field mRunInitReceiver:Landroid/content/BroadcastReceiver;

.field mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

.field mTokenFile:Ljava/io/File;

.field final mTokenGenerator:Ljava/util/Random;

.field final mTransportConnections:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/BackupManagerService$TransportConnection;",
            ">;"
        }
    .end annotation
.end field

.field final mTransportNames:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTransportServiceIntent:Landroid/content/Intent;

.field final mTransports:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/backup/IBackupTransport;",
            ">;"
        }
    .end annotation
.end field

.field mWakelock:Landroid/os/PowerManager$WakeLock;

.field needUpdateBackupAlarm:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 287
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.settings"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.sharedstoragebackup"

    aput-object v2, v0, v1

    sput-object v0, sFullBackupExceptionPackages:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 24
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 971
    invoke-direct/range {p0 .. p0}, Landroid/app/backup/IBackupManager$Stub;-><init>()V

    .line 277
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, isEdmBackupRequest:Z

    .line 278
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, isEdmRestoreRequest:Z

    .line 279
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, needUpdateBackupAlarm:Z

    .line 280
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, isEdmBackupFail:Z

    .line 281
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, isEdmRestoreFail:Z

    .line 282
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mEdmBackupAppPkgName:Ljava/lang/String;

    .line 283
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mEdmRestoreAppPkgName:Ljava/lang/String;

    .line 284
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mEdmUserId:I

    .line 292
    new-instance v18, Ljava/util/ArrayList;

    sget-object v19, sFullBackupExceptionPackages:[Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mExceptionList:Ljava/util/List;

    .line 296
    new-instance v18, Landroid/util/SparseArray;

    invoke-direct/range {v18 .. v18}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mBackupParticipants:Landroid/util/SparseArray;

    .line 311
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mPendingBackups:Ljava/util/HashMap;

    .line 318
    new-instance v18, Ljava/lang/Object;

    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mQueueLock:Ljava/lang/Object;

    .line 324
    new-instance v18, Ljava/lang/Object;

    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mAgentConnectLock:Ljava/lang/Object;

    .line 333
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mBackupTrace:Ljava/util/List;

    .line 336
    new-instance v18, Ljava/lang/Object;

    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mClearDataLock:Ljava/lang/Object;

    .line 340
    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.backup.TRANSPORT_HOST"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mTransportServiceIntent:Landroid/content/Intent;

    .line 341
    new-instance v18, Landroid/util/ArrayMap;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mTransportNames:Landroid/util/ArrayMap;

    .line 343
    new-instance v18, Landroid/util/ArrayMap;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mTransports:Landroid/util/ArrayMap;

    .line 345
    new-instance v18, Landroid/util/ArrayMap;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mTransportConnections:Landroid/util/ArrayMap;

    .line 550
    new-instance v18, Landroid/util/SparseArray;

    invoke-direct/range {v18 .. v18}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mCurrentOperations:Landroid/util/SparseArray;

    .line 551
    new-instance v18, Ljava/lang/Object;

    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mCurrentOpLock:Ljava/lang/Object;

    .line 552
    new-instance v18, Ljava/util/Random;

    invoke-direct/range {v18 .. v18}, Ljava/util/Random;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mTokenGenerator:Ljava/util/Random;

    .line 554
    new-instance v18, Landroid/util/SparseArray;

    invoke-direct/range {v18 .. v18}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mFullConfirmations:Landroid/util/SparseArray;

    .line 568
    new-instance v18, Ljava/security/SecureRandom;

    invoke-direct/range {v18 .. v18}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mRng:Ljava/security/SecureRandom;

    .line 585
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mEverStoredApps:Ljava/util/HashSet;

    .line 589
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mAncestralPackages:Ljava/util/Set;

    .line 590
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, mAncestralToken:J

    .line 591
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, mCurrentToken:J

    .line 595
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mPendingInits:Ljava/util/HashSet;

    .line 1350
    new-instance v18, Lcom/android/server/backup/BackupManagerService$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$1;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mFullBackupScheduleWriter:Ljava/lang/Runnable;

    .line 1732
    new-instance v18, Lcom/android/server/backup/BackupManagerService$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$2;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 972
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mContext:Landroid/content/Context;

    .line 973
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mPackageManager:Landroid/content/pm/PackageManager;

    .line 974
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    .line 975
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mActivityManager:Landroid/app/IActivityManager;

    .line 977
    const-string v18, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/AlarmManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mAlarmManager:Landroid/app/AlarmManager;

    .line 978
    const-string/jumbo v18, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/PowerManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mPowerManager:Landroid/os/PowerManager;

    .line 979
    const-string v18, "mount"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mMountService:Landroid/os/storage/IMountService;

    .line 981
    invoke-virtual/range {p0 .. p0}, asBinder()Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 984
    new-instance v18, Landroid/os/HandlerThread;

    const-string v19, "backup"

    const/16 v20, 0xa

    invoke-direct/range {v18 .. v20}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mHandlerThread:Landroid/os/HandlerThread;

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->start()V

    .line 986
    new-instance v18, Lcom/android/server/backup/BackupManagerService$BackupHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Looper;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    .line 989
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 990
    .local v14, "resolver":Landroid/content/ContentResolver;
    const-string v18, "device_provisioned"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_4ed

    const/16 v18, 0x1

    :goto_1f5
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, mProvisioned:Z

    .line 992
    const-string v18, "backup_auto_restore"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_4f1

    const/16 v18, 0x1

    :goto_20b
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, mAutoRestore:Z

    .line 995
    new-instance v18, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Handler;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mProvisionedObserver:Landroid/database/ContentObserver;

    .line 996
    const-string v18, "device_provisioned"

    invoke-static/range {v18 .. v18}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, mProvisionedObserver:Landroid/database/ContentObserver;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1002
    new-instance v18, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSecureDataDirectory()Ljava/io/File;

    move-result-object v19

    const-string v20, "backup"

    invoke-direct/range {v18 .. v20}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mBaseStateDir:Ljava/io/File;

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, mBaseStateDir:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, mBaseStateDir:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v18

    if-nez v18, :cond_283

    .line 1005
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SELinux restorecon failed on "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, mBaseStateDir:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_283
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mDataDir:Ljava/io/File;

    .line 1009
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mPasswordVersion:I

    .line 1010
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, mBaseStateDir:Ljava/io/File;

    move-object/from16 v19, v0

    const-string/jumbo v20, "pwversion"

    invoke-direct/range {v18 .. v20}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mPasswordVersionFile:Ljava/io/File;

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, mPasswordVersionFile:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_2dd

    .line 1012
    const/4 v7, 0x0

    .line 1013
    .local v7, "fin":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 1015
    .local v11, "in":Ljava/io/DataInputStream;
    :try_start_2b7
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, mPasswordVersionFile:Ljava/io/File;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2c4
    .catch Ljava/io/IOException; {:try_start_2b7 .. :try_end_2c4} :catch_4ff
    .catchall {:try_start_2b7 .. :try_end_2c4} :catchall_51d

    .line 1016
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .local v8, "fin":Ljava/io/FileInputStream;
    :try_start_2c4
    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2c9
    .catch Ljava/io/IOException; {:try_start_2c4 .. :try_end_2c9} :catch_5ab
    .catchall {:try_start_2c4 .. :try_end_2c9} :catchall_5a2

    .line 1017
    .end local v11    # "in":Ljava/io/DataInputStream;
    .local v12, "in":Ljava/io/DataInputStream;
    :try_start_2c9
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mPasswordVersion:I
    :try_end_2d3
    .catch Ljava/io/IOException; {:try_start_2c9 .. :try_end_2d3} :catch_5af
    .catchall {:try_start_2c9 .. :try_end_2d3} :catchall_5a6

    .line 1022
    if-eqz v12, :cond_2d8

    :try_start_2d5
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    .line 1023
    :cond_2d8
    if-eqz v8, :cond_2dd

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2dd
    .catch Ljava/io/IOException; {:try_start_2d5 .. :try_end_2dd} :catch_4f5

    .line 1030
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    :cond_2dd
    :goto_2dd
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, mBaseStateDir:Ljava/io/File;

    move-object/from16 v19, v0

    const-string/jumbo v20, "pwhash"

    invoke-direct/range {v18 .. v20}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mPasswordHashFile:Ljava/io/File;

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, mPasswordHashFile:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_33d

    .line 1032
    const/4 v7, 0x0

    .line 1033
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 1035
    .restart local v11    # "in":Ljava/io/DataInputStream;
    :try_start_2ff
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, mPasswordHashFile:Ljava/io/File;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_30c
    .catch Ljava/io/IOException; {:try_start_2ff .. :try_end_30c} :catch_53c
    .catchall {:try_start_2ff .. :try_end_30c} :catchall_55a

    .line 1036
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    :try_start_30c
    new-instance v12, Ljava/io/DataInputStream;

    new-instance v18, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_31a
    .catch Ljava/io/IOException; {:try_start_30c .. :try_end_31a} :catch_59b
    .catchall {:try_start_30c .. :try_end_31a} :catchall_594

    .line 1039
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :try_start_31a
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    .line 1040
    .local v16, "saltLen":I
    move/from16 v0, v16

    new-array v15, v0, [B

    .line 1041
    .local v15, "salt":[B
    invoke-virtual {v12, v15}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1042
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mPasswordHash:Ljava/lang/String;

    .line 1043
    move-object/from16 v0, p0

    iput-object v15, v0, mPasswordSalt:[B
    :try_end_333
    .catch Ljava/io/IOException; {:try_start_31a .. :try_end_333} :catch_59e
    .catchall {:try_start_31a .. :try_end_333} :catchall_597

    .line 1048
    if-eqz v12, :cond_338

    :try_start_335
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V

    .line 1049
    :cond_338
    if-eqz v8, :cond_33d

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_33d
    .catch Ljava/io/IOException; {:try_start_335 .. :try_end_33d} :catch_532

    .line 1057
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    .end local v15    # "salt":[B
    .end local v16    # "saltLen":I
    :cond_33d
    :goto_33d
    new-instance v18, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    .line 1058
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1059
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v18, "android.app.backup.intent.RUN"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    const-string v19, "android.permission.BACKUP"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1063
    new-instance v18, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mRunInitReceiver:Landroid/content/BroadcastReceiver;

    .line 1064
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 1065
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    const-string v18, "android.app.backup.intent.INIT"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, mRunInitReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    const-string v19, "android.permission.BACKUP"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1070
    new-instance v18, Lcom/android/server/backup/BackupManagerService$EdmFullObserver;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$EdmFullObserver;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mEdmFullObserver:Lcom/android/server/backup/BackupManagerService$EdmFullObserver;

    .line 1073
    new-instance v4, Landroid/content/Intent;

    const-string v18, "android.app.backup.intent.RUN"

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1074
    .local v4, "backupIntent":Landroid/content/Intent;
    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1075
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v4, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mRunBackupIntent:Landroid/app/PendingIntent;

    .line 1077
    new-instance v13, Landroid/content/Intent;

    const-string v18, "android.app.backup.intent.INIT"

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1078
    .local v13, "initIntent":Landroid/content/Intent;
    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1079
    const/16 v18, 0x5

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mRunInitIntent:Landroid/app/PendingIntent;

    .line 1082
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, mBaseStateDir:Ljava/io/File;

    move-object/from16 v19, v0

    const-string/jumbo v20, "pending"

    invoke-direct/range {v18 .. v20}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mJournalDir:Ljava/io/File;

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, mJournalDir:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z

    .line 1084
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mJournal:Ljava/io/File;

    .line 1087
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, mBaseStateDir:Ljava/io/File;

    move-object/from16 v19, v0

    const-string v20, "fb-schedule"

    invoke-direct/range {v18 .. v20}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mFullBackupScheduleFile:Ljava/io/File;

    .line 1088
    invoke-direct/range {p0 .. p0}, initPackageTracking()V

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1094
    const/16 v18, 0x0

    :try_start_444
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, addPackageParticipantsLocked([Ljava/lang/String;)V

    .line 1095
    monitor-exit v19
    :try_end_44c
    .catchall {:try_start_444 .. :try_end_44c} :catchall_56f

    .line 1099
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "backup_transport"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mCurrentTransport:Ljava/lang/String;

    .line 1101
    const-string v18, ""

    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentTransport:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_472

    .line 1102
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mCurrentTransport:Ljava/lang/String;

    .line 1104
    :cond_472
    const-string v18, "BackupManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Starting with transport "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentTransport:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTransportServiceIntent:Landroid/content/Intent;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v9

    .line 1110
    .local v9, "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v19, "BackupManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Found transports: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-nez v9, :cond_572

    const-string v18, "null"

    :goto_4b9
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    if-eqz v9, :cond_57c

    .line 1113
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4cf
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_57c

    .line 1114
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    .line 1118
    .local v17, "transport":Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, tryBindTransport(Landroid/content/pm/ServiceInfo;)Z

    .line 1113
    add-int/lit8 v10, v10, 0x1

    goto :goto_4cf

    .line 990
    .end local v4    # "backupIntent":Landroid/content/Intent;
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "i":I
    .end local v13    # "initIntent":Landroid/content/Intent;
    .end local v17    # "transport":Landroid/content/pm/ServiceInfo;
    :cond_4ed
    const/16 v18, 0x0

    goto/16 :goto_1f5

    .line 992
    :cond_4f1
    const/16 v18, 0x0

    goto/16 :goto_20b

    .line 1024
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catch_4f5
    move-exception v5

    .line 1025
    .local v5, "e":Ljava/io/IOException;
    const-string v18, "BackupManagerService"

    const-string v19, "Error closing pw version files"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2dd

    .line 1018
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    :catch_4ff
    move-exception v5

    .line 1019
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_500
    :try_start_500
    const-string v18, "BackupManagerService"

    const-string v19, "Unable to read backup pw version"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_507
    .catchall {:try_start_500 .. :try_end_507} :catchall_51d

    .line 1022
    if-eqz v11, :cond_50c

    :try_start_509
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 1023
    :cond_50c
    if-eqz v7, :cond_2dd

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_511
    .catch Ljava/io/IOException; {:try_start_509 .. :try_end_511} :catch_513

    goto/16 :goto_2dd

    .line 1024
    :catch_513
    move-exception v5

    .line 1025
    const-string v18, "BackupManagerService"

    const-string v19, "Error closing pw version files"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2dd

    .line 1021
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_51d
    move-exception v18

    .line 1022
    :goto_51e
    if-eqz v11, :cond_523

    :try_start_520
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 1023
    :cond_523
    if-eqz v7, :cond_528

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_528
    .catch Ljava/io/IOException; {:try_start_520 .. :try_end_528} :catch_529

    .line 1026
    :cond_528
    :goto_528
    throw v18

    .line 1024
    :catch_529
    move-exception v5

    .line 1025
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v19, "BackupManagerService"

    const-string v20, "Error closing pw version files"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_528

    .line 1050
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    .restart local v15    # "salt":[B
    .restart local v16    # "saltLen":I
    :catch_532
    move-exception v5

    .line 1051
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v18, "BackupManagerService"

    const-string v19, "Unable to close streams"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33d

    .line 1044
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "fin":Ljava/io/FileInputStream;
    .end local v12    # "in":Ljava/io/DataInputStream;
    .end local v15    # "salt":[B
    .end local v16    # "saltLen":I
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    :catch_53c
    move-exception v5

    .line 1045
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_53d
    :try_start_53d
    const-string v18, "BackupManagerService"

    const-string v19, "Unable to read saved backup pw hash"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_544
    .catchall {:try_start_53d .. :try_end_544} :catchall_55a

    .line 1048
    if-eqz v11, :cond_549

    :try_start_546
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 1049
    :cond_549
    if-eqz v7, :cond_33d

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_54e
    .catch Ljava/io/IOException; {:try_start_546 .. :try_end_54e} :catch_550

    goto/16 :goto_33d

    .line 1050
    :catch_550
    move-exception v5

    .line 1051
    const-string v18, "BackupManagerService"

    const-string v19, "Unable to close streams"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33d

    .line 1047
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_55a
    move-exception v18

    .line 1048
    :goto_55b
    if-eqz v11, :cond_560

    :try_start_55d
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 1049
    :cond_560
    if-eqz v7, :cond_565

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_565
    .catch Ljava/io/IOException; {:try_start_55d .. :try_end_565} :catch_566

    .line 1052
    :cond_565
    :goto_565
    throw v18

    .line 1050
    :catch_566
    move-exception v5

    .line 1051
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v19, "BackupManagerService"

    const-string v20, "Unable to close streams"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_565

    .line 1095
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "backupIntent":Landroid/content/Intent;
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    .restart local v13    # "initIntent":Landroid/content/Intent;
    :catchall_56f
    move-exception v18

    :try_start_570
    monitor-exit v19
    :try_end_571
    .catchall {:try_start_570 .. :try_end_571} :catchall_56f

    throw v18

    .line 1110
    .restart local v9    # "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_572
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    goto/16 :goto_4b9

    .line 1124
    :cond_57c
    invoke-direct/range {p0 .. p0}, parseLeftoverJournals()V

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const-string v20, "*backup*"

    invoke-virtual/range {v18 .. v20}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 1128
    return-void

    .line 1047
    .end local v4    # "backupIntent":Landroid/content/Intent;
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13    # "initIntent":Landroid/content/Intent;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    :catchall_594
    move-exception v18

    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_55b

    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catchall_597
    move-exception v18

    move-object v11, v12

    .end local v12    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_55b

    .line 1044
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    :catch_59b
    move-exception v5

    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_53d

    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catch_59e
    move-exception v5

    move-object v11, v12

    .end local v12    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto :goto_53d

    .line 1021
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    :catchall_5a2
    move-exception v18

    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_51e

    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catchall_5a6
    move-exception v18

    move-object v11, v12

    .end local v12    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_51e

    .line 1018
    .end local v7    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    :catch_5ab
    move-exception v5

    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_500

    .end local v7    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "in":Ljava/io/DataInputStream;
    :catch_5af
    move-exception v5

    move-object v11, v12

    .end local v12    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "in":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_500
.end method

.method static synthetic access$000(Lcom/android/server/backup/BackupManagerService;J)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # J

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, startBackupAlarmsLocked(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-direct {p0, p1}, getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .prologue
    .line 164
    iget-object v0, p0, mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "x2"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/backup/BackupManagerService;I)[B
    .registers 3
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 164
    invoke-direct {p0, p1}, randomBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    .registers 6
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [B
    .param p4, "x4"    # I

    .prologue
    .line 164
    invoke-direct {p0, p1, p2, p3, p4}, buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/backup/BackupManagerService;)Ljava/security/SecureRandom;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .prologue
    .line 164
    iget-object v0, p0, mRng:Ljava/security/SecureRandom;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # [B

    .prologue
    .line 164
    invoke-direct {p0, p1}, byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;[B[BI)[B
    .registers 6
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [B
    .param p3, "x3"    # [B
    .param p4, "x4"    # I

    .prologue
    .line 164
    invoke-direct {p0, p1, p2, p3, p4}, makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/backup/BackupManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .prologue
    .line 164
    invoke-direct {p0}, warnEdmAdminOperationCompleted()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-direct {p0, p1}, backupPasswordMatches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B
    .registers 3
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-direct {p0, p1}, hexToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/HashSet;

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/backup/BackupManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 164
    invoke-direct {p0, p1}, resetEdmBackupTags(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/backup/BackupManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 164
    invoke-direct {p0, p1}, resetEdmRestoreTags(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/backup/BackupManagerService;)Landroid/app/AlarmManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .prologue
    .line 164
    iget-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;

    .prologue
    .line 164
    iget-object v0, p0, mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    .line 164
    invoke-direct {p0, p1, p2, p3}, registerTransport(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-direct {p0, p1}, dataChangedImpl(Ljava/lang/String;)V

    return-void
.end method

.method private addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1969
    .local p2, "targetPkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 1970
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz p1, :cond_1a

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1971
    :cond_1a
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1972
    .local v3, "uid":I
    iget-object v4, p0, mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 1973
    .local v2, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v2, :cond_32

    .line 1974
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1975
    .restart local v2    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v4, p0, mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1977
    :cond_32
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1982
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, dataChangedImpl(Ljava/lang/String;)V

    goto :goto_4

    .line 1985
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "uid":I
    :cond_3d
    return-void
.end method

.method public static appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z
    .registers 4
    .param p0, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x1

    .line 654
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 656
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    .line 660
    :cond_10
    :goto_10
    return v0

    .line 656
    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4
    .param p0, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v0, 0x0

    .line 635
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-nez v1, :cond_a

    .line 649
    :cond_9
    :goto_9
    return v0

    .line 640
    :cond_a
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_14

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 645
    :cond_14
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.sharedstoragebackup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 649
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private backupPasswordMatches(Ljava/lang/String;)Z
    .registers 8
    .param p1, "currentPw"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x2710

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1591
    invoke-virtual {p0}, hasBackupPassword()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1592
    iget v3, p0, mPasswordVersion:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2a

    move v0, v1

    .line 1593
    .local v0, "pbkdf2Fallback":Z
    :goto_10
    const-string v3, "PBKDF2WithHmacSHA1"

    invoke-virtual {p0, v3, p1, v5}, passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2c

    if-eqz v0, :cond_22

    const-string v3, "PBKDF2WithHmacSHA1And8bit"

    invoke-virtual {p0, v3, p1, v5}, passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 1596
    :cond_22
    const-string v1, "BackupManagerService"

    const-string v3, "Backup password mismatch; aborting"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    .end local v0    # "pbkdf2Fallback":Z
    :goto_29
    return v2

    :cond_2a
    move v0, v2

    .line 1592
    goto :goto_10

    :cond_2c
    move v2, v1

    .line 1600
    goto :goto_29
.end method

.method private buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;
    .registers 10
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pwArray"    # [C
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    .prologue
    .line 1425
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 1426
    .local v1, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v3, 0x100

    invoke-direct {v2, p2, p3, p4, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 1427
    .local v2, "ks":Ljava/security/spec/KeySpec;
    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    :try_end_e
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_1a

    move-result-object v3

    .line 1433
    .end local v1    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v2    # "ks":Ljava/security/spec/KeySpec;
    :goto_f
    return-object v3

    .line 1428
    :catch_10
    move-exception v0

    .line 1429
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v3, "BackupManagerService"

    const-string v4, "Invalid key spec for PBKDF2!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    :goto_18
    const/4 v3, 0x0

    goto :goto_f

    .line 1430
    :catch_1a
    move-exception v0

    .line 1431
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "BackupManagerService"

    const-string v4, "PBKDF2 unavailable!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method private buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;
    .registers 7
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/lang/String;
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    .prologue
    .line 1437
    invoke-direct {p0, p1, p2, p3, p4}, buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1438
    .local v0, "key":Ljavax/crypto/SecretKey;
    if-eqz v0, :cond_f

    .line 1439
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {p0, v1}, byteArrayToHex([B)Ljava/lang/String;

    move-result-object v1

    .line 1441
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    .registers 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/lang/String;
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    .prologue
    .line 1420
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method private byteArrayToHex([B)Ljava/lang/String;
    .registers 6
    .param p1, "data"    # [B

    .prologue
    .line 1445
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1446
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_19

    .line 1447
    aget-byte v2, p1, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1446
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1449
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private dataChangedImpl(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 8236
    invoke-direct {p0, p1}, dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 8237
    .local v0, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0}, dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 8238
    return-void
.end method

.method private dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8244
    .local p2, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v1, 0xb04

    invoke-static {v1, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 8246
    if-nez p2, :cond_34

    .line 8247
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataChanged but no participant pkg=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8276
    :goto_33
    return-void

    .line 8252
    :cond_34
    iget-object v2, p0, mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 8254
    :try_start_37
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 8257
    new-instance v0, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/BackupManagerService$BackupRequest;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    .line 8258
    .local v0, "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    iget-object v1, p0, mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_65

    .line 8259
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now staging backup of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8264
    invoke-direct {p0, p1}, writeToJournalLocked(Ljava/lang/String;)V

    .line 8275
    .end local v0    # "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    :cond_65
    monitor-exit v2

    goto :goto_33

    :catchall_67
    move-exception v1

    monitor-exit v2
    :try_end_69
    .catchall {:try_start_37 .. :try_end_69} :catchall_67

    throw v1
.end method

.method private dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8282
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_27

    .line 8284
    iget-object v5, p0, mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v5

    .line 8285
    :try_start_16
    iget-object v4, p0, mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    monitor-exit v5

    .line 8301
    :goto_23
    return-object v4

    .line 8286
    :catchall_24
    move-exception v4

    monitor-exit v5
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_24

    throw v4

    .line 8291
    :cond_27
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 8292
    .local v3, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v5, p0, mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v5

    .line 8293
    :try_start_2f
    iget-object v4, p0, mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 8294
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_36
    if-ge v1, v0, :cond_48

    .line 8295
    iget-object v4, p0, mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 8296
    .local v2, "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_45

    .line 8297
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 8294
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 8300
    .end local v2    # "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_48
    monitor-exit v5

    move-object v4, v3

    .line 8301
    goto :goto_23

    .line 8300
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_4b
    move-exception v4

    monitor-exit v5
    :try_end_4d
    .catchall {:try_start_2f .. :try_end_4d} :catchall_4b

    throw v4
.end method

.method private dumpAgents(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 9525
    invoke-virtual {p0}, allAgentPackages()Ljava/util/List;

    move-result-object v0

    .line 9526
    .local v0, "agentPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v3, "Defined backup agents:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9527
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 9528
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9529
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 9530
    const-string v3, "      "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    .line 9532
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_35
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 32
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 9535
    move-object/from16 v0, p0

    iget-object v0, v0, mQueueLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 9536
    :try_start_7
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Backup Manager is "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, mEnabled:Z

    move/from16 v25, v0

    if-eqz v25, :cond_232

    const-string v25, "enabled"

    :goto_20
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, " / "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, mProvisioned:Z

    move/from16 v25, v0

    if-nez v25, :cond_236

    const-string v25, "not "

    :goto_3c
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v27, "provisioned / "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, mPendingInits:Ljava/util/HashSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->size()I

    move-result v25

    if-nez v25, :cond_23a

    const-string v25, "not "

    :goto_5d
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v27, "pending init"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9539
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Auto-restore is "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, mAutoRestore:Z

    move/from16 v25, v0

    if-eqz v25, :cond_23e

    const-string v25, "enabled"

    :goto_94
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9540
    move-object/from16 v0, p0

    iget-boolean v0, v0, mBackupRunning:Z

    move/from16 v25, v0

    if-eqz v25, :cond_b8

    const-string v25, "Backup currently running"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9541
    :cond_b8
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Last backup pass started: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, mLastBackupPass:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, " (now = "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-object/from16 v0, v25

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v27, 0x29

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9543
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "  next scheduled: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, mNextBackupPass:J

    move-wide/from16 v28, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9545
    const-string v25, "Available transports:"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9546
    invoke-virtual/range {p0 .. p0}, listAllTransports()[Ljava/lang/String;

    move-result-object v23

    .line 9547
    .local v23, "transports":[Ljava/lang/String;
    if-eqz v23, :cond_277

    .line 9548
    invoke-virtual/range {p0 .. p0}, listAllTransports()[Ljava/lang/String;

    move-result-object v6

    .local v6, "arr$":[Ljava/lang/String;
    array-length v15, v6

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    move v14, v13

    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .local v14, "i$":I
    :goto_13e
    if-ge v14, v15, :cond_277

    aget-object v21, v6, v14

    .line 9549
    .local v21, "t":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentTransport:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_242

    const-string v25, "  * "

    :goto_159
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_174
    .catchall {:try_start_7 .. :try_end_174} :catchall_2dc

    .line 9551
    :try_start_174
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v22

    .line 9552
    .local v22, "transport":Lcom/android/internal/backup/IBackupTransport;
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, mBaseStateDir:Ljava/io/File;

    move-object/from16 v25, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9553
    .local v8, "dir":Ljava/io/File;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "       destination: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9554
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "       intent: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9555
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .local v7, "arr$":[Ljava/io/File;
    array-length v0, v7

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v13, 0x0

    .end local v14    # "i$":I
    .restart local v13    # "i$":I
    :goto_1e3
    move/from16 v0, v16

    if-ge v13, v0, :cond_272

    aget-object v11, v7, v13

    .line 9556
    .local v11, "f":Ljava/io/File;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "       "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, " - "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v28

    move-object/from16 v0, v25

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v27, " state bytes"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_22f
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_22f} :catch_246
    .catchall {:try_start_174 .. :try_end_22f} :catchall_2dc

    .line 9555
    add-int/lit8 v13, v13, 0x1

    goto :goto_1e3

    .line 9536
    .end local v7    # "arr$":[Ljava/io/File;
    .end local v8    # "dir":Ljava/io/File;
    .end local v11    # "f":Ljava/io/File;
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    .end local v21    # "t":Ljava/lang/String;
    .end local v22    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v23    # "transports":[Ljava/lang/String;
    :cond_232
    :try_start_232
    const-string v25, "disabled"

    goto/16 :goto_20

    :cond_236
    const-string v25, ""

    goto/16 :goto_3c

    :cond_23a
    const-string v25, ""

    goto/16 :goto_5d

    .line 9539
    :cond_23e
    const-string v25, "disabled"

    goto/16 :goto_94

    .line 9549
    .restart local v14    # "i$":I
    .restart local v21    # "t":Ljava/lang/String;
    .restart local v23    # "transports":[Ljava/lang/String;
    :cond_242
    const-string v25, "    "

    goto/16 :goto_159

    .line 9558
    .end local v14    # "i$":I
    :catch_246
    move-exception v9

    .line 9559
    .local v9, "e":Ljava/lang/Exception;
    const-string v25, "BackupManagerService"

    const-string v27, "Error in transport"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9560
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "        Error: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9548
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_272
    add-int/lit8 v13, v14, 0x1

    .restart local v13    # "i$":I
    move v14, v13

    .end local v13    # "i$":I
    .restart local v14    # "i$":I
    goto/16 :goto_13e

    .line 9565
    .end local v14    # "i$":I
    .end local v21    # "t":Ljava/lang/String;
    :cond_277
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Pending init: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, mPendingInits:Ljava/util/HashSet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->size()I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9566
    move-object/from16 v0, p0

    iget-object v0, v0, mPendingInits:Ljava/util/HashSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_2ad
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2df

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 9567
    .local v20, "s":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "    "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2ad

    .line 9616
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v20    # "s":Ljava/lang/String;
    .end local v23    # "transports":[Ljava/lang/String;
    :catchall_2dc
    move-exception v25

    monitor-exit v26
    :try_end_2de
    .catchall {:try_start_232 .. :try_end_2de} :catchall_2dc

    throw v25

    .line 9571
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v23    # "transports":[Ljava/lang/String;
    :cond_2df
    :try_start_2df
    move-object/from16 v0, p0

    iget-object v0, v0, mBackupTrace:Ljava/util/List;

    move-object/from16 v27, v0

    monitor-enter v27
    :try_end_2e6
    .catchall {:try_start_2df .. :try_end_2e6} :catchall_2dc

    .line 9572
    :try_start_2e6
    move-object/from16 v0, p0

    iget-object v0, v0, mBackupTrace:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_337

    .line 9573
    const-string v25, "Most recent backup trace:"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9574
    move-object/from16 v0, p0

    iget-object v0, v0, mBackupTrace:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_305
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_337

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 9575
    .restart local v20    # "s":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "   "

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_305

    .line 9578
    .end local v20    # "s":Ljava/lang/String;
    :catchall_334
    move-exception v25

    monitor-exit v27
    :try_end_336
    .catchall {:try_start_2e6 .. :try_end_336} :catchall_334

    :try_start_336
    throw v25
    :try_end_337
    .catchall {:try_start_336 .. :try_end_337} :catchall_2dc

    :cond_337
    :try_start_337
    monitor-exit v27
    :try_end_338
    .catchall {:try_start_337 .. :try_end_338} :catchall_334

    .line 9581
    :try_start_338
    move-object/from16 v0, p0

    iget-object v0, v0, mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 9582
    .local v4, "N":I
    const-string v25, "Participants:"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9583
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_34c
    if-ge v12, v4, :cond_3ac

    .line 9584
    move-object/from16 v0, p0

    iget-object v0, v0, mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v24

    .line 9585
    .local v24, "uid":I
    const-string v25, "  uid: "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9586
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 9587
    move-object/from16 v0, p0

    iget-object v0, v0, mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/HashSet;

    .line 9588
    .local v17, "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_37c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3a9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 9589
    .local v5, "app":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "    "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_37c

    .line 9583
    .end local v5    # "app":Ljava/lang/String;
    :cond_3a9
    add-int/lit8 v12, v12, 0x1

    goto :goto_34c

    .line 9593
    .end local v17    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24    # "uid":I
    :cond_3ac
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Ancestral packages: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, mAncestralPackages:Ljava/util/Set;

    move-object/from16 v25, v0

    if-nez v25, :cond_419

    const-string v25, "none"

    :goto_3c5
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9595
    move-object/from16 v0, p0

    iget-object v0, v0, mAncestralPackages:Ljava/util/Set;

    move-object/from16 v25, v0

    if-eqz v25, :cond_428

    .line 9596
    move-object/from16 v0, p0

    iget-object v0, v0, mAncestralPackages:Ljava/util/Set;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3ea
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_428

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 9597
    .local v18, "pkg":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "    "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3ea

    .line 9593
    .end local v18    # "pkg":Ljava/lang/String;
    :cond_419
    move-object/from16 v0, p0

    iget-object v0, v0, mAncestralPackages:Ljava/util/Set;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->size()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    goto :goto_3c5

    .line 9601
    :cond_428
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Ever backed up: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->size()I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9602
    move-object/from16 v0, p0

    iget-object v0, v0, mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_45e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_48d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 9603
    .restart local v18    # "pkg":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "    "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_45e

    .line 9606
    .end local v18    # "pkg":Ljava/lang/String;
    :cond_48d
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Pending key/value backup: "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, mPendingBackups:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9607
    move-object/from16 v0, p0

    iget-object v0, v0, mPendingBackups:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4c7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_4f6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    .line 9608
    .local v19, "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "    "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4c7

    .line 9611
    .end local v19    # "req":Lcom/android/server/backup/BackupManagerService$BackupRequest;
    :cond_4f6
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Full backup queue:"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, mFullBackupQueue:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9612
    move-object/from16 v0, p0

    iget-object v0, v0, mFullBackupQueue:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_52c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_561

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    .line 9613
    .local v10, "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    const-string v25, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v10, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 9614
    const-string v25, " : "

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_52c

    .line 9616
    .end local v10    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :cond_561
    monitor-exit v26
    :try_end_562
    .catchall {:try_start_338 .. :try_end_562} :catchall_2dc

    .line 9617
    return-void
.end method

.method static getInstance()Lcom/android/server/backup/BackupManagerService;
    .registers 1

    .prologue
    .line 356
    sget-object v0, sInstance:Lcom/android/server/backup/BackupManagerService;

    return-object v0
.end method

.method private getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .registers 7
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    .line 2146
    iget-object v2, p0, mTransports:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 2147
    :try_start_3
    iget-object v1, p0, mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/backup/IBackupTransport;

    .line 2148
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v0, :cond_25

    .line 2149
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested unavailable transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    :cond_25
    monitor-exit v2

    return-object v0

    .line 2152
    .end local v0    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method static hashSignature(Landroid/content/pm/Signature;)[B
    .registers 5
    .param p0, "sig"    # Landroid/content/pm/Signature;

    .prologue
    .line 6985
    :try_start_0
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 6986
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 6987
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_10
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v2

    .line 6991
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :goto_11
    return-object v2

    .line 6988
    :catch_12
    move-exception v1

    .line 6989
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "BackupManagerService"

    const-string v3, "No SHA-256 algorithm found!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6991
    const/4 v2, 0x0

    goto :goto_11
.end method

.method private hexToByteArray(Ljava/lang/String;)[B
    .registers 8
    .param p1, "digits"    # Ljava/lang/String;

    .prologue
    .line 1453
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 1454
    .local v0, "bytes":I
    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_16

    .line 1455
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Hex string must have an even number of digits"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1458
    :cond_16
    new-array v2, v0, [B

    .line 1459
    .local v2, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_33

    .line 1460
    div-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 1459
    add-int/lit8 v1, v1, 0x2

    goto :goto_19

    .line 1462
    :cond_33
    return-object v2
.end method

.method private initPackageTracking()V
    .registers 24

    .prologue
    .line 1201
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, mBaseStateDir:Ljava/io/File;

    move-object/from16 v21, v0

    const-string v22, "ancestral"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mTokenFile:Ljava/io/File;

    .line 1203
    :try_start_13
    new-instance v18, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, mTokenFile:Ljava/io/File;

    move-object/from16 v20, v0

    const-string/jumbo v21, "r"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1204
    .local v18, "tf":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v19

    .line 1205
    .local v19, "version":I
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6d

    .line 1206
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mAncestralToken:J

    .line 1207
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mCurrentToken:J

    .line 1209
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v11

    .line 1210
    .local v11, "numPackages":I
    if-ltz v11, :cond_6d

    .line 1211
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mAncestralPackages:Ljava/util/Set;

    .line 1212
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_59
    if-ge v7, v11, :cond_6d

    .line 1213
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v13

    .line 1214
    .local v13, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mAncestralPackages:Ljava/util/Set;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1212
    add-int/lit8 v7, v7, 0x1

    goto :goto_59

    .line 1218
    .end local v7    # "i":I
    .end local v11    # "numPackages":I
    .end local v13    # "pkgName":Ljava/lang/String;
    :cond_6d
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_70
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_70} :catch_f6
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_70} :catch_100

    .line 1229
    .end local v18    # "tf":Ljava/io/RandomAccessFile;
    .end local v19    # "version":I
    :goto_70
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, mBaseStateDir:Ljava/io/File;

    move-object/from16 v21, v0

    const-string/jumbo v22, "processed"

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mEverStored:Ljava/io/File;

    .line 1230
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, mBaseStateDir:Ljava/io/File;

    move-object/from16 v20, v0

    const-string/jumbo v21, "processed.new"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1235
    .local v17, "tempProcessedFile":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_a1

    .line 1236
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 1241
    :cond_a1
    move-object/from16 v0, p0

    iget-object v0, v0, mEverStored:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_155

    .line 1242
    const/4 v15, 0x0

    .line 1243
    .local v15, "temp":Ljava/io/RandomAccessFile;
    const/4 v8, 0x0

    .line 1246
    .local v8, "in":Ljava/io/RandomAccessFile;
    :try_start_af
    new-instance v16, Ljava/io/RandomAccessFile;

    const-string/jumbo v20, "rws"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_bd
    .catch Ljava/io/EOFException; {:try_start_af .. :try_end_bd} :catch_10e
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_bd} :catch_1bb
    .catchall {:try_start_af .. :try_end_bd} :catchall_1d4

    .line 1247
    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .local v16, "temp":Ljava/io/RandomAccessFile;
    :try_start_bd
    new-instance v9, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, mEverStored:Ljava/io/File;

    move-object/from16 v20, v0

    const-string/jumbo v21, "r"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v9, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_cf
    .catch Ljava/io/EOFException; {:try_start_bd .. :try_end_cf} :catch_1fe
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_cf} :catch_1f5
    .catchall {:try_start_bd .. :try_end_cf} :catchall_1ec

    .line 1251
    .end local v8    # "in":Ljava/io/RandomAccessFile;
    .local v9, "in":Ljava/io/RandomAccessFile;
    :goto_cf
    :try_start_cf
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;
    :try_end_d2
    .catch Ljava/io/EOFException; {:try_start_cf .. :try_end_d2} :catch_203
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_1f9
    .catchall {:try_start_cf .. :try_end_d2} :catchall_1f0

    move-result-object v12

    .line 1253
    .local v12, "pkg":Ljava/lang/String;
    :try_start_d3
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 1254
    .local v10, "info":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1255
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_f3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d3 .. :try_end_f3} :catch_f4
    .catch Ljava/io/EOFException; {:try_start_d3 .. :try_end_f3} :catch_203
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_f3} :catch_1f9
    .catchall {:try_start_d3 .. :try_end_f3} :catchall_1f0

    goto :goto_cf

    .line 1257
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    :catch_f4
    move-exception v20

    goto :goto_cf

    .line 1219
    .end local v9    # "in":Ljava/io/RandomAccessFile;
    .end local v12    # "pkg":Ljava/lang/String;
    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .end local v17    # "tempProcessedFile":Ljava/io/File;
    :catch_f6
    move-exception v6

    .line 1221
    .local v6, "fnf":Ljava/io/FileNotFoundException;
    const-string v20, "BackupManagerService"

    const-string v21, "No ancestral data"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_70

    .line 1222
    .end local v6    # "fnf":Ljava/io/FileNotFoundException;
    :catch_100
    move-exception v4

    .line 1223
    .local v4, "e":Ljava/io/IOException;
    const-string v20, "BackupManagerService"

    const-string v21, "Unable to read token file"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_70

    .line 1262
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v8    # "in":Ljava/io/RandomAccessFile;
    .restart local v15    # "temp":Ljava/io/RandomAccessFile;
    .restart local v17    # "tempProcessedFile":Ljava/io/File;
    :catch_10e
    move-exception v4

    .line 1265
    .local v4, "e":Ljava/io/EOFException;
    :goto_10f
    :try_start_10f
    move-object/from16 v0, p0

    iget-object v0, v0, mEverStored:Ljava/io/File;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v20

    if-nez v20, :cond_14b

    .line 1266
    const-string v20, "BackupManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error renaming "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, mEverStored:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14b
    .catchall {:try_start_10f .. :try_end_14b} :catchall_1d4

    .line 1271
    :cond_14b
    if-eqz v15, :cond_150

    :try_start_14d
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_150
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_150} :catch_1e0

    .line 1272
    :cond_150
    :goto_150
    if-eqz v8, :cond_155

    :try_start_152
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_155
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_155} :catch_1e3

    .line 1277
    .end local v4    # "e":Ljava/io/EOFException;
    .end local v8    # "in":Ljava/io/RandomAccessFile;
    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    :cond_155
    :goto_155
    invoke-direct/range {p0 .. p0}, readFullBackupSchedule()Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mFullBackupQueue:Ljava/util/ArrayList;

    .line 1281
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1282
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v20, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1283
    const-string v20, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1284
    const-string v20, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1285
    const-string/jumbo v20, "package"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1286
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1288
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 1289
    .local v14, "sdFilter":Landroid/content/IntentFilter;
    const-string v20, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1290
    const-string v20, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1292
    return-void

    .line 1268
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .end local v14    # "sdFilter":Landroid/content/IntentFilter;
    .restart local v8    # "in":Ljava/io/RandomAccessFile;
    .restart local v15    # "temp":Ljava/io/RandomAccessFile;
    :catch_1bb
    move-exception v4

    .line 1269
    .local v4, "e":Ljava/io/IOException;
    :goto_1bc
    :try_start_1bc
    const-string v20, "BackupManagerService"

    const-string v21, "Error in processed file"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c7
    .catchall {:try_start_1bc .. :try_end_1c7} :catchall_1d4

    .line 1271
    if-eqz v15, :cond_1cc

    :try_start_1c9
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1cc
    .catch Ljava/io/IOException; {:try_start_1c9 .. :try_end_1cc} :catch_1e6

    .line 1272
    :cond_1cc
    :goto_1cc
    if-eqz v8, :cond_155

    :try_start_1ce
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1d1
    .catch Ljava/io/IOException; {:try_start_1ce .. :try_end_1d1} :catch_1d2

    goto :goto_155

    :catch_1d2
    move-exception v20

    goto :goto_155

    .line 1271
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1d4
    move-exception v20

    :goto_1d5
    if-eqz v15, :cond_1da

    :try_start_1d7
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1da
    .catch Ljava/io/IOException; {:try_start_1d7 .. :try_end_1da} :catch_1e8

    .line 1272
    :cond_1da
    :goto_1da
    if-eqz v8, :cond_1df

    :try_start_1dc
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1df
    .catch Ljava/io/IOException; {:try_start_1dc .. :try_end_1df} :catch_1ea

    :cond_1df
    :goto_1df
    throw v20

    .line 1271
    .local v4, "e":Ljava/io/EOFException;
    :catch_1e0
    move-exception v20

    goto/16 :goto_150

    .line 1272
    :catch_1e3
    move-exception v20

    goto/16 :goto_155

    .line 1271
    .local v4, "e":Ljava/io/IOException;
    :catch_1e6
    move-exception v20

    goto :goto_1cc

    .end local v4    # "e":Ljava/io/IOException;
    :catch_1e8
    move-exception v21

    goto :goto_1da

    .line 1272
    :catch_1ea
    move-exception v21

    goto :goto_1df

    .line 1271
    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    :catchall_1ec
    move-exception v20

    move-object/from16 v15, v16

    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .restart local v15    # "temp":Ljava/io/RandomAccessFile;
    goto :goto_1d5

    .end local v8    # "in":Ljava/io/RandomAccessFile;
    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .restart local v9    # "in":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    :catchall_1f0
    move-exception v20

    move-object v8, v9

    .end local v9    # "in":Ljava/io/RandomAccessFile;
    .restart local v8    # "in":Ljava/io/RandomAccessFile;
    move-object/from16 v15, v16

    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .restart local v15    # "temp":Ljava/io/RandomAccessFile;
    goto :goto_1d5

    .line 1268
    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    :catch_1f5
    move-exception v4

    move-object/from16 v15, v16

    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .restart local v15    # "temp":Ljava/io/RandomAccessFile;
    goto :goto_1bc

    .end local v8    # "in":Ljava/io/RandomAccessFile;
    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .restart local v9    # "in":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    :catch_1f9
    move-exception v4

    move-object v8, v9

    .end local v9    # "in":Ljava/io/RandomAccessFile;
    .restart local v8    # "in":Ljava/io/RandomAccessFile;
    move-object/from16 v15, v16

    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .restart local v15    # "temp":Ljava/io/RandomAccessFile;
    goto :goto_1bc

    .line 1262
    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    :catch_1fe
    move-exception v4

    move-object/from16 v15, v16

    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .restart local v15    # "temp":Ljava/io/RandomAccessFile;
    goto/16 :goto_10f

    .end local v8    # "in":Ljava/io/RandomAccessFile;
    .end local v15    # "temp":Ljava/io/RandomAccessFile;
    .restart local v9    # "in":Ljava/io/RandomAccessFile;
    .restart local v16    # "temp":Ljava/io/RandomAccessFile;
    :catch_203
    move-exception v4

    move-object v8, v9

    .end local v9    # "in":Ljava/io/RandomAccessFile;
    .restart local v8    # "in":Ljava/io/RandomAccessFile;
    move-object/from16 v15, v16

    .end local v16    # "temp":Ljava/io/RandomAccessFile;
    .restart local v15    # "temp":Ljava/io/RandomAccessFile;
    goto/16 :goto_10f
.end method

.method private makeKeyChecksum(Ljava/lang/String;[B[BI)[B
    .registers 9
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "pwBytes"    # [B
    .param p3, "salt"    # [B
    .param p4, "rounds"    # I

    .prologue
    .line 1466
    array-length v3, p2

    new-array v2, v3, [C

    .line 1467
    .local v2, "mkAsChar":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v3, p2

    if-ge v1, v3, :cond_f

    .line 1468
    aget-byte v3, p2, v1

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 1467
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1471
    :cond_f
    invoke-direct {p0, p1, v2, p3, p4}, buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1472
    .local v0, "checksum":Ljava/security/Key;
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    return-object v3
.end method

.method private parseLeftoverJournals()V
    .registers 12

    .prologue
    .line 1392
    iget-object v8, p0, mJournalDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_8
    if-ge v3, v6, :cond_6f

    aget-object v2, v0, v3

    .line 1393
    .local v2, "f":Ljava/io/File;
    iget-object v8, p0, mJournal:Ljava/io/File;

    if-eqz v8, :cond_18

    iget-object v8, p0, mJournal:Ljava/io/File;

    invoke-virtual {v2, v8}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v8

    if-eqz v8, :cond_3a

    .line 1397
    :cond_18
    const/4 v4, 0x0

    .line 1399
    .local v4, "in":Ljava/io/RandomAccessFile;
    :try_start_19
    const-string v8, "BackupManagerService"

    const-string v9, "Found stale backup journal, scheduling"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string/jumbo v8, "r"

    invoke-direct {v5, v2, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/io/EOFException; {:try_start_19 .. :try_end_28} :catch_76
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_28} :catch_3d
    .catchall {:try_start_19 .. :try_end_28} :catchall_5f

    .line 1402
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .local v5, "in":Ljava/io/RandomAccessFile;
    :goto_28
    :try_start_28
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 1404
    .local v7, "packageName":Ljava/lang/String;
    invoke-direct {p0, v7}, dataChangedImpl(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/io/EOFException; {:try_start_28 .. :try_end_2f} :catch_30
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2f} :catch_73
    .catchall {:try_start_28 .. :try_end_2f} :catchall_70

    goto :goto_28

    .line 1406
    .end local v7    # "packageName":Ljava/lang/String;
    :catch_30
    move-exception v8

    move-object v4, v5

    .line 1412
    .end local v5    # "in":Ljava/io/RandomAccessFile;
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    :goto_32
    if-eqz v4, :cond_37

    :try_start_34
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_69

    .line 1413
    :cond_37
    :goto_37
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1392
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    :cond_3a
    :goto_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1408
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    :catch_3d
    move-exception v1

    .line 1409
    .local v1, "e":Ljava/lang/Exception;
    :goto_3e
    :try_start_3e
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t read "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_56
    .catchall {:try_start_3e .. :try_end_56} :catchall_5f

    .line 1412
    if-eqz v4, :cond_5b

    :try_start_58
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_6b

    .line 1413
    :cond_5b
    :goto_5b
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_3a

    .line 1412
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_5f
    move-exception v8

    :goto_60
    if-eqz v4, :cond_65

    :try_start_62
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_6d

    .line 1413
    :cond_65
    :goto_65
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v8

    .line 1412
    :catch_69
    move-exception v8

    goto :goto_37

    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_6b
    move-exception v8

    goto :goto_5b

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_6d
    move-exception v9

    goto :goto_65

    .line 1417
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    :cond_6f
    return-void

    .line 1412
    .restart local v2    # "f":Ljava/io/File;
    .restart local v5    # "in":Ljava/io/RandomAccessFile;
    :catchall_70
    move-exception v8

    move-object v4, v5

    .end local v5    # "in":Ljava/io/RandomAccessFile;
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    goto :goto_60

    .line 1408
    .end local v4    # "in":Ljava/io/RandomAccessFile;
    .restart local v5    # "in":Ljava/io/RandomAccessFile;
    :catch_73
    move-exception v1

    move-object v4, v5

    .end local v5    # "in":Ljava/io/RandomAccessFile;
    .restart local v4    # "in":Ljava/io/RandomAccessFile;
    goto :goto_3e

    .line 1406
    :catch_76
    move-exception v8

    goto :goto_32
.end method

.method private randomBytes(I)[B
    .registers 4
    .param p1, "bits"    # I

    .prologue
    .line 1477
    div-int/lit8 v1, p1, 0x8

    new-array v0, v1, [B

    .line 1478
    .local v0, "array":[B
    iget-object v1, p0, mRng:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1479
    return-object v0
.end method

.method private readFullBackupSchedule()Ljava/util/ArrayList;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$FullBackupEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1295
    const/16 v20, 0x0

    .line 1296
    .local v20, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mQueueLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 1297
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, mFullBackupScheduleFile:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_114

    move-result v23

    if-eqz v23, :cond_14c

    .line 1298
    const/4 v11, 0x0

    .line 1299
    .local v11, "fstream":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 1300
    .local v8, "bufStream":Ljava/io/BufferedInputStream;
    const/4 v14, 0x0

    .line 1302
    .local v14, "in":Ljava/io/DataInputStream;
    :try_start_18
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, mFullBackupScheduleFile:Ljava/io/File;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_25} :catch_e6
    .catchall {:try_start_18 .. :try_end_25} :catchall_109

    .line 1303
    .end local v11    # "fstream":Ljava/io/FileInputStream;
    .local v12, "fstream":Ljava/io/FileInputStream;
    :try_start_25
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-direct {v9, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2a} :catch_136
    .catchall {:try_start_25 .. :try_end_2a} :catchall_123

    .line 1304
    .end local v8    # "bufStream":Ljava/io/BufferedInputStream;
    .local v9, "bufStream":Ljava/io/BufferedInputStream;
    :try_start_2a
    new-instance v15, Ljava/io/DataInputStream;

    invoke-direct {v15, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2f} :catch_139
    .catchall {:try_start_2a .. :try_end_2f} :catchall_126

    .line 1306
    .end local v14    # "in":Ljava/io/DataInputStream;
    .local v15, "in":Ljava/io/DataInputStream;
    :try_start_2f
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    move-result v22

    .line 1307
    .local v22, "version":I
    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_68

    .line 1308
    const-string v23, "BackupManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unknown backup schedule version "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_5b} :catch_13d
    .catchall {:try_start_2f .. :try_end_5b} :catchall_12a

    .line 1309
    const/16 v23, 0x0

    .line 1325
    :try_start_5d
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1326
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1327
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v24
    :try_end_67
    .catchall {:try_start_5d .. :try_end_67} :catchall_114

    .line 1347
    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v12    # "fstream":Ljava/io/FileInputStream;
    .end local v15    # "in":Ljava/io/DataInputStream;
    .end local v22    # "version":I
    :goto_67
    return-object v23

    .line 1312
    .restart local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v12    # "fstream":Ljava/io/FileInputStream;
    .restart local v15    # "in":Ljava/io/DataInputStream;
    .restart local v22    # "version":I
    :cond_68
    :try_start_68
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 1313
    .local v6, "N":I
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_73} :catch_13d
    .catchall {:try_start_68 .. :try_end_73} :catchall_12a

    .line 1314
    .end local v20    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .local v21, "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_74
    if-ge v13, v6, :cond_95

    .line 1315
    :try_start_76
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v17

    .line 1316
    .local v17, "pkgName":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v18

    .line 1317
    .local v18, "lastBackup":J
    new-instance v23, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-wide/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1314
    add-int/lit8 v13, v13, 0x1

    goto :goto_74

    .line 1319
    .end local v17    # "pkgName":Ljava/lang/String;
    .end local v18    # "lastBackup":J
    :cond_95
    invoke-static/range {v21 .. v21}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_98} :catch_142
    .catchall {:try_start_76 .. :try_end_98} :catchall_12f

    .line 1325
    :try_start_98
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1326
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1327
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1331
    .end local v6    # "N":I
    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v12    # "fstream":Ljava/io/FileInputStream;
    .end local v13    # "i":I
    .end local v15    # "in":Ljava/io/DataInputStream;
    .end local v22    # "version":I
    :goto_a1
    if-nez v21, :cond_149

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v7

    .line 1336
    .local v7, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 1337
    .restart local v6    # "N":I
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_b8
    .catchall {:try_start_98 .. :try_end_b8} :catchall_11f

    .line 1338
    .end local v21    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v20    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_b9
    if-ge v13, v6, :cond_117

    .line 1339
    :try_start_bb
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/PackageInfo;

    .line 1340
    .local v16, "info":Landroid/content/pm/PackageInfo;
    invoke-static/range {v16 .. v16}, appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v23

    if-eqz v23, :cond_e3

    .line 1341
    new-instance v23, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    const-wide/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e3
    .catchall {:try_start_bb .. :try_end_e3} :catchall_114

    .line 1338
    :cond_e3
    add-int/lit8 v13, v13, 0x1

    goto :goto_b9

    .line 1320
    .end local v6    # "N":I
    .end local v7    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v13    # "i":I
    .end local v16    # "info":Landroid/content/pm/PackageInfo;
    .restart local v8    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v11    # "fstream":Ljava/io/FileInputStream;
    .restart local v14    # "in":Ljava/io/DataInputStream;
    :catch_e6
    move-exception v10

    .line 1321
    .local v10, "e":Ljava/lang/Exception;
    :goto_e7
    :try_start_e7
    const-string v23, "BackupManagerService"

    const-string v25, "Unable to read backup schedule"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, mFullBackupScheduleFile:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z
    :try_end_fb
    .catchall {:try_start_e7 .. :try_end_fb} :catchall_109

    .line 1323
    const/16 v20, 0x0

    .line 1325
    :try_start_fd
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1326
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1327
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v21, v20

    .line 1328
    .end local v20    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v21    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    goto :goto_a1

    .line 1325
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v21    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v20    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    :catchall_109
    move-exception v23

    :goto_10a
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1326
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1327
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v23

    .line 1346
    .end local v8    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v11    # "fstream":Ljava/io/FileInputStream;
    .end local v14    # "in":Ljava/io/DataInputStream;
    :catchall_114
    move-exception v23

    :goto_115
    monitor-exit v24
    :try_end_116
    .catchall {:try_start_fd .. :try_end_116} :catchall_114

    throw v23

    .line 1344
    .restart local v6    # "N":I
    .restart local v7    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v13    # "i":I
    :cond_117
    :try_start_117
    invoke-direct/range {p0 .. p0}, writeFullBackupScheduleAsync()V

    .line 1346
    .end local v6    # "N":I
    .end local v7    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v13    # "i":I
    :goto_11a
    monitor-exit v24
    :try_end_11b
    .catchall {:try_start_117 .. :try_end_11b} :catchall_114

    move-object/from16 v23, v20

    .line 1347
    goto/16 :goto_67

    .line 1346
    .end local v20    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v21    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    :catchall_11f
    move-exception v23

    move-object/from16 v20, v21

    .end local v21    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v20    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    goto :goto_115

    .line 1325
    .restart local v8    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v12    # "fstream":Ljava/io/FileInputStream;
    .restart local v14    # "in":Ljava/io/DataInputStream;
    :catchall_123
    move-exception v23

    move-object v11, v12

    .end local v12    # "fstream":Ljava/io/FileInputStream;
    .restart local v11    # "fstream":Ljava/io/FileInputStream;
    goto :goto_10a

    .end local v8    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v11    # "fstream":Ljava/io/FileInputStream;
    .restart local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v12    # "fstream":Ljava/io/FileInputStream;
    :catchall_126
    move-exception v23

    move-object v8, v9

    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "bufStream":Ljava/io/BufferedInputStream;
    move-object v11, v12

    .end local v12    # "fstream":Ljava/io/FileInputStream;
    .restart local v11    # "fstream":Ljava/io/FileInputStream;
    goto :goto_10a

    .end local v8    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v11    # "fstream":Ljava/io/FileInputStream;
    .end local v14    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v12    # "fstream":Ljava/io/FileInputStream;
    .restart local v15    # "in":Ljava/io/DataInputStream;
    :catchall_12a
    move-exception v23

    move-object v14, v15

    .end local v15    # "in":Ljava/io/DataInputStream;
    .restart local v14    # "in":Ljava/io/DataInputStream;
    move-object v8, v9

    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "bufStream":Ljava/io/BufferedInputStream;
    move-object v11, v12

    .end local v12    # "fstream":Ljava/io/FileInputStream;
    .restart local v11    # "fstream":Ljava/io/FileInputStream;
    goto :goto_10a

    .end local v8    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v11    # "fstream":Ljava/io/FileInputStream;
    .end local v14    # "in":Ljava/io/DataInputStream;
    .end local v20    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v6    # "N":I
    .restart local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v12    # "fstream":Ljava/io/FileInputStream;
    .restart local v13    # "i":I
    .restart local v15    # "in":Ljava/io/DataInputStream;
    .restart local v21    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v22    # "version":I
    :catchall_12f
    move-exception v23

    move-object v14, v15

    .end local v15    # "in":Ljava/io/DataInputStream;
    .restart local v14    # "in":Ljava/io/DataInputStream;
    move-object v8, v9

    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "bufStream":Ljava/io/BufferedInputStream;
    move-object v11, v12

    .end local v12    # "fstream":Ljava/io/FileInputStream;
    .restart local v11    # "fstream":Ljava/io/FileInputStream;
    move-object/from16 v20, v21

    .end local v21    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v20    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    goto :goto_10a

    .line 1320
    .end local v6    # "N":I
    .end local v11    # "fstream":Ljava/io/FileInputStream;
    .end local v13    # "i":I
    .end local v22    # "version":I
    .restart local v12    # "fstream":Ljava/io/FileInputStream;
    :catch_136
    move-exception v10

    move-object v11, v12

    .end local v12    # "fstream":Ljava/io/FileInputStream;
    .restart local v11    # "fstream":Ljava/io/FileInputStream;
    goto :goto_e7

    .end local v8    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v11    # "fstream":Ljava/io/FileInputStream;
    .restart local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v12    # "fstream":Ljava/io/FileInputStream;
    :catch_139
    move-exception v10

    move-object v8, v9

    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "bufStream":Ljava/io/BufferedInputStream;
    move-object v11, v12

    .end local v12    # "fstream":Ljava/io/FileInputStream;
    .restart local v11    # "fstream":Ljava/io/FileInputStream;
    goto :goto_e7

    .end local v8    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v11    # "fstream":Ljava/io/FileInputStream;
    .end local v14    # "in":Ljava/io/DataInputStream;
    .restart local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v12    # "fstream":Ljava/io/FileInputStream;
    .restart local v15    # "in":Ljava/io/DataInputStream;
    :catch_13d
    move-exception v10

    move-object v14, v15

    .end local v15    # "in":Ljava/io/DataInputStream;
    .restart local v14    # "in":Ljava/io/DataInputStream;
    move-object v8, v9

    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "bufStream":Ljava/io/BufferedInputStream;
    move-object v11, v12

    .end local v12    # "fstream":Ljava/io/FileInputStream;
    .restart local v11    # "fstream":Ljava/io/FileInputStream;
    goto :goto_e7

    .end local v8    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v11    # "fstream":Ljava/io/FileInputStream;
    .end local v14    # "in":Ljava/io/DataInputStream;
    .end local v20    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v6    # "N":I
    .restart local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v12    # "fstream":Ljava/io/FileInputStream;
    .restart local v13    # "i":I
    .restart local v15    # "in":Ljava/io/DataInputStream;
    .restart local v21    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v22    # "version":I
    :catch_142
    move-exception v10

    move-object v14, v15

    .end local v15    # "in":Ljava/io/DataInputStream;
    .restart local v14    # "in":Ljava/io/DataInputStream;
    move-object v8, v9

    .end local v9    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v8    # "bufStream":Ljava/io/BufferedInputStream;
    move-object v11, v12

    .end local v12    # "fstream":Ljava/io/FileInputStream;
    .restart local v11    # "fstream":Ljava/io/FileInputStream;
    move-object/from16 v20, v21

    .end local v21    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v20    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    goto :goto_e7

    .end local v6    # "N":I
    .end local v8    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v11    # "fstream":Ljava/io/FileInputStream;
    .end local v13    # "i":I
    .end local v14    # "in":Ljava/io/DataInputStream;
    .end local v20    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .end local v22    # "version":I
    .restart local v21    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    :cond_149
    move-object/from16 v20, v21

    .end local v21    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v20    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    goto :goto_11a

    :cond_14c
    move-object/from16 v21, v20

    .end local v20    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    .restart local v21    # "schedule":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/BackupManagerService$FullBackupEntry;>;"
    goto/16 :goto_a1
.end method

.method private registerTransport(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "component"    # Ljava/lang/String;
    .param p3, "transport"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    .line 1690
    iget-object v7, p0, mTransports:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 1691
    :try_start_3
    const-string v6, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Registering transport "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    if-eqz p3, :cond_71

    .line 1694
    iget-object v6, p0, mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1695
    iget-object v6, p0, mTransportNames:Landroid/util/ArrayMap;

    invoke-virtual {v6, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1702
    monitor-exit v7
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_83

    .line 1708
    :try_start_3c
    invoke-interface {p3}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v5

    .line 1709
    .local v5, "transportName":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, mBaseStateDir:Ljava/io/File;

    invoke-direct {v4, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1710
    .local v4, "stateDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1712
    new-instance v3, Ljava/io/File;

    const-string v6, "_need_init_"

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1713
    .local v3, "initSentinel":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_70

    .line 1714
    iget-object v7, p0, mQueueLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_5a} :catch_89

    .line 1715
    :try_start_5a
    iget-object v6, p0, mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1718
    const-wide/32 v0, 0xea60

    .line 1719
    .local v0, "delay":J
    iget-object v6, p0, mAlarmManager:Landroid/app/AlarmManager;

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long/2addr v10, v0

    iget-object v9, p0, mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v8, v10, v11, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1721
    monitor-exit v7
    :try_end_70
    .catchall {:try_start_5a .. :try_end_70} :catchall_86

    .line 1729
    .end local v0    # "delay":J
    .end local v3    # "initSentinel":Ljava/io/File;
    .end local v4    # "stateDir":Ljava/io/File;
    .end local v5    # "transportName":Ljava/lang/String;
    :cond_70
    :goto_70
    return-void

    .line 1697
    :cond_71
    :try_start_71
    iget-object v6, p0, mTransports:Landroid/util/ArrayMap;

    iget-object v8, p0, mTransportNames:Landroid/util/ArrayMap;

    invoke-virtual {v8, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    iget-object v6, p0, mTransportNames:Landroid/util/ArrayMap;

    invoke-virtual {v6, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    monitor-exit v7

    goto :goto_70

    .line 1702
    :catchall_83
    move-exception v6

    monitor-exit v7
    :try_end_85
    .catchall {:try_start_71 .. :try_end_85} :catchall_83

    throw v6

    .line 1721
    .restart local v3    # "initSentinel":Ljava/io/File;
    .restart local v4    # "stateDir":Ljava/io/File;
    .restart local v5    # "transportName":Ljava/lang/String;
    :catchall_86
    move-exception v6

    :try_start_87
    monitor-exit v7
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    :try_start_88
    throw v6
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_89} :catch_89

    .line 1723
    .end local v3    # "initSentinel":Ljava/io/File;
    .end local v4    # "stateDir":Ljava/io/File;
    .end local v5    # "transportName":Ljava/lang/String;
    :catch_89
    move-exception v2

    .line 1725
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to register transport as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    iget-object v6, p0, mTransportNames:Landroid/util/ArrayMap;

    invoke-virtual {v6, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1727
    iget-object v6, p0, mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_70
.end method

.method private removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V
    .registers 4
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2011
    .local p1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2019
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2020
    iget-object v0, p0, mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2022
    :cond_e
    return-void
.end method

.method private resetEdmBackupTags(I)V
    .registers 7
    .param p1, "error"    # I

    .prologue
    const/4 v4, 0x0

    .line 9621
    iput-boolean v4, p0, isEdmBackupRequest:Z

    .line 9622
    const/4 v1, 0x0

    iput-object v1, p0, mEdmBackupAppPkgName:Ljava/lang/String;

    .line 9623
    iput-boolean v4, p0, isEdmBackupFail:Z

    .line 9624
    new-instance v0, Landroid/content/Intent;

    const-string v1, "edm.intent.action.backup.result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9625
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "backupResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9626
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 9627
    iget-boolean v1, p0, needUpdateBackupAlarm:Z

    if-eqz v1, :cond_24

    .line 9628
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, startBackupAlarmsLocked(J)V

    .line 9629
    iput-boolean v4, p0, needUpdateBackupAlarm:Z

    .line 9631
    :cond_24
    iput v4, p0, mEdmUserId:I

    .line 9632
    return-void
.end method

.method private resetEdmRestoreTags(I)V
    .registers 7
    .param p1, "error"    # I

    .prologue
    const/4 v4, 0x0

    .line 9636
    iput-boolean v4, p0, isEdmRestoreRequest:Z

    .line 9637
    const/4 v1, 0x0

    iput-object v1, p0, mEdmRestoreAppPkgName:Ljava/lang/String;

    .line 9638
    iput-boolean v4, p0, isEdmRestoreFail:Z

    .line 9639
    new-instance v0, Landroid/content/Intent;

    const-string v1, "edm.intent.action.restore.result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9640
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "restoreResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9641
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 9642
    iget-boolean v1, p0, needUpdateBackupAlarm:Z

    if-eqz v1, :cond_25

    .line 9643
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, startBackupAlarmsLocked(J)V

    .line 9644
    iput-boolean v4, p0, needUpdateBackupAlarm:Z

    .line 9646
    :cond_25
    iput v4, p0, mEdmUserId:I

    .line 9647
    return-void
.end method

.method private routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .registers 11
    .param p1, "inPipe"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 3151
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3152
    .local v4, "raw":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3154
    .local v2, "in":Ljava/io/DataInputStream;
    const v6, 0x8000

    new-array v0, v6, [B

    .line 3156
    .local v0, "buffer":[B
    :cond_14
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .local v1, "chunkTotal":I
    if-lez v1, :cond_2b

    .line 3157
    :goto_1a
    if-lez v1, :cond_14

    .line 3158
    array-length v6, v0

    if-le v1, v6, :cond_29

    array-length v5, v0

    .line 3159
    .local v5, "toRead":I
    :goto_20
    invoke-virtual {v2, v0, v7, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    .line 3160
    .local v3, "nRead":I
    invoke-virtual {p2, v0, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 3161
    sub-int/2addr v1, v3

    .line 3162
    goto :goto_1a

    .end local v3    # "nRead":I
    .end local v5    # "toRead":I
    :cond_29
    move v5, v1

    .line 3158
    goto :goto_20

    .line 3164
    :cond_2b
    return-void
.end method

.method static signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;)Z
    .registers 14
    .param p1, "target"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;",
            "Landroid/content/pm/PackageInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "storedSigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 6925
    if-nez p1, :cond_6

    move v8, v9

    .line 6980
    :goto_5
    return v8

    .line 6934
    :cond_6
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_30

    .line 6935
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "System app "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " - skipping sig check"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v10

    .line 6936
    goto :goto_5

    .line 6941
    :cond_30
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 6944
    .local v1, "deviceSigs":[Landroid/content/pm/Signature;
    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_41

    :cond_3a
    if-eqz v1, :cond_3f

    array-length v8, v1

    if-nez v8, :cond_41

    :cond_3f
    move v8, v10

    .line 6946
    goto :goto_5

    .line 6948
    :cond_41
    if-eqz p0, :cond_45

    if-nez v1, :cond_47

    :cond_45
    move v8, v9

    .line 6949
    goto :goto_5

    .line 6955
    :cond_47
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 6956
    .local v6, "nStored":I
    array-length v5, v1

    .line 6959
    .local v5, "nDevice":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 6960
    .local v0, "deviceHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_52
    if-ge v2, v5, :cond_60

    .line 6961
    aget-object v8, v1, v2

    invoke-static {v8}, hashSignature(Landroid/content/pm/Signature;)[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6960
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 6965
    :cond_60
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_61
    if-ge v4, v6, :cond_84

    .line 6966
    const/4 v3, 0x0

    .line 6967
    .local v3, "match":Z
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 6968
    .local v7, "storedHash":[B
    const/4 v2, 0x0

    :goto_6b
    if-ge v2, v5, :cond_7a

    .line 6969
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 6970
    const/4 v3, 0x1

    .line 6975
    :cond_7a
    if-nez v3, :cond_81

    move v8, v9

    .line 6976
    goto :goto_5

    .line 6968
    :cond_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6b

    .line 6965
    :cond_81
    add-int/lit8 v4, v4, 0x1

    goto :goto_61

    .end local v3    # "match":Z
    .end local v7    # "storedHash":[B
    :cond_84
    move v8, v10

    .line 6980
    goto :goto_5
.end method

.method static signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    .registers 12
    .param p0, "storedSigs"    # [Landroid/content/pm/Signature;
    .param p1, "target"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6996
    if-nez p1, :cond_5

    .line 7041
    :cond_4
    :goto_4
    return v6

    .line 7005
    :cond_5
    iget-object v8, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2f

    .line 7006
    const-string v6, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "System app "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - skipping sig check"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 7007
    goto :goto_4

    .line 7012
    :cond_2f
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 7015
    .local v0, "deviceSigs":[Landroid/content/pm/Signature;
    if-eqz p0, :cond_36

    array-length v8, p0

    if-nez v8, :cond_3d

    :cond_36
    if-eqz v0, :cond_3b

    array-length v8, v0

    if-nez v8, :cond_3d

    :cond_3b
    move v6, v7

    .line 7017
    goto :goto_4

    .line 7019
    :cond_3d
    if-eqz p0, :cond_4

    if-eqz v0, :cond_4

    .line 7026
    array-length v5, p0

    .line 7027
    .local v5, "nStored":I
    array-length v4, v0

    .line 7029
    .local v4, "nDevice":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_44
    if-ge v1, v5, :cond_5d

    .line 7030
    const/4 v3, 0x0

    .line 7031
    .local v3, "match":Z
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_48
    if-ge v2, v4, :cond_55

    .line 7032
    aget-object v8, p0, v1

    aget-object v9, v0, v2

    invoke-virtual {v8, v9}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5a

    .line 7033
    const/4 v3, 0x1

    .line 7037
    :cond_55
    if-eqz v3, :cond_4

    .line 7029
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 7031
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .end local v2    # "j":I
    .end local v3    # "match":Z
    :cond_5d
    move v6, v7

    .line 7041
    goto :goto_4
.end method

.method private startBackupAlarmsLocked(J)V
    .registers 14
    .param p1, "delayBeforeFirstBackup"    # J

    .prologue
    const v6, 0x493e0

    .line 8822
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 8823
    .local v7, "random":Ljava/util/Random;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-virtual {v7, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-long v4, v4

    add-long v2, v0, v4

    .line 8825
    .local v2, "when":J
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_1f

    const-wide v2, 0x7fffffffffffffffL

    .line 8826
    :cond_1f
    iget-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    const-wide/32 v4, 0x36ee80

    invoke-virtual {v7, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-long v8, v6

    add-long/2addr v4, v8

    iget-object v6, p0, mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 8828
    iput-wide v2, p0, mNextBackupPass:J

    .line 8829
    return-void
.end method

.method private warnEdmAdminOperationCompleted()V
    .registers 3

    .prologue
    .line 9727
    new-instance v0, Landroid/content/Intent;

    const-string v1, "edm.intent.action.backup.service.available"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9728
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 9729
    return-void
.end method

.method private writeFullBackupScheduleAsync()V
    .registers 3

    .prologue
    .line 1387
    iget-object v0, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    iget-object v1, p0, mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1388
    iget-object v0, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    iget-object v1, p0, mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 1389
    return-void
.end method

.method private writeToJournalLocked(Ljava/lang/String;)V
    .registers 8
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 8305
    const/4 v1, 0x0

    .line 8307
    .local v1, "out":Ljava/io/RandomAccessFile;
    :try_start_1
    iget-object v3, p0, mJournal:Ljava/io/File;

    if-nez v3, :cond_10

    const-string v3, "journal"

    const/4 v4, 0x0

    iget-object v5, p0, mJournalDir:Ljava/io/File;

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, mJournal:Ljava/io/File;

    .line 8308
    :cond_10
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, mJournal:Ljava/io/File;

    const-string/jumbo v4, "rws"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1a} :catch_2e
    .catchall {:try_start_1 .. :try_end_1a} :catchall_58

    .line 8309
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .local v2, "out":Ljava/io/RandomAccessFile;
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 8310
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_24} :catch_64
    .catchall {:try_start_1a .. :try_end_24} :catchall_61

    .line 8315
    if-eqz v2, :cond_29

    :try_start_26
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2b

    :cond_29
    move-object v1, v2

    .line 8317
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    :cond_2a
    :goto_2a
    return-void

    .line 8315
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_2b
    move-exception v3

    move-object v1, v2

    .line 8316
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_2a

    .line 8311
    :catch_2e
    move-exception v0

    .line 8312
    .local v0, "e":Ljava/io/IOException;
    :goto_2f
    :try_start_2f
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to backup journal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8313
    const/4 v3, 0x0

    iput-object v3, p0, mJournal:Ljava/io/File;
    :try_end_50
    .catchall {:try_start_2f .. :try_end_50} :catchall_58

    .line 8315
    if-eqz v1, :cond_2a

    :try_start_52
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_2a

    :catch_56
    move-exception v3

    goto :goto_2a

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_58
    move-exception v3

    :goto_59
    if-eqz v1, :cond_5e

    :try_start_5b
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    :cond_5e
    :goto_5e
    throw v3

    :catch_5f
    move-exception v4

    goto :goto_5e

    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catchall_61
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_59

    .line 8311
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_64
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_2f
.end method


# virtual methods
.method public acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .registers 15
    .param p1, "token"    # I
    .param p2, "allow"    # Z
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "encPpassword"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;

    .prologue
    .line 8680
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "acknowledgeFullBackupOrRestore : token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " allow="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8685
    iget-boolean v5, p0, isEdmBackupRequest:Z

    if-nez v5, :cond_8a

    iget-boolean v5, p0, isEdmRestoreRequest:Z

    if-nez v5, :cond_8a

    .line 8687
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.BACKUP"

    const-string v7, "acknowledgeFullBackupOrRestore"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8692
    :goto_33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 8696
    .local v2, "oldId":J
    :try_start_37
    iget-object v6, p0, mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v6
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_a5

    .line 8697
    :try_start_3a
    iget-object v5, p0, mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/BackupManagerService$FullParams;

    .line 8698
    .local v1, "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    if-eqz v1, :cond_aa

    .line 8699
    iget-object v5, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v7, 0x9

    invoke-virtual {v5, v7, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    .line 8700
    iget-object v5, p0, mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 8702
    if-eqz p2, :cond_97

    .line 8703
    instance-of v5, v1, Lcom/android/server/backup/BackupManagerService$FullBackupParams;

    if-eqz v5, :cond_94

    const/4 v4, 0x2

    .line 8707
    .local v4, "verb":I
    :goto_57
    iput-object p5, v1, Lcom/android/server/backup/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 8708
    iput-object p3, v1, Lcom/android/server/backup/BackupManagerService$FullParams;->curPassword:Ljava/lang/String;

    .line 8710
    iput-object p4, v1, Lcom/android/server/backup/BackupManagerService$FullParams;->encryptPassword:Ljava/lang/String;

    .line 8712
    const-string v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending conf message with verb "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8713
    iget-object v5, p0, mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 8714
    iget-object v5, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v5, v4, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 8715
    .local v0, "msg":Landroid/os/Message;
    iget-object v5, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v5, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8724
    .end local v0    # "msg":Landroid/os/Message;
    .end local v4    # "verb":I
    :goto_85
    monitor-exit v6
    :try_end_86
    .catchall {:try_start_3a .. :try_end_86} :catchall_a2

    .line 8726
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8728
    return-void

    .line 8689
    .end local v1    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    .end local v2    # "oldId":J
    :cond_8a
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.BACKUP"

    const-string v7, "acknowledgeFullBackupOrRestore"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    .line 8703
    .restart local v1    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    .restart local v2    # "oldId":J
    :cond_94
    const/16 v4, 0xa

    goto :goto_57

    .line 8717
    :cond_97
    :try_start_97
    const-string v5, "BackupManagerService"

    const-string v7, "User rejected full backup/restore operation"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8719
    invoke-virtual {p0, v1}, signalFullBackupRestoreCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V

    goto :goto_85

    .line 8724
    .end local v1    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    :catchall_a2
    move-exception v5

    monitor-exit v6
    :try_end_a4
    .catchall {:try_start_97 .. :try_end_a4} :catchall_a2

    :try_start_a4
    throw v5
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a5

    .line 8726
    :catchall_a5
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 8722
    .restart local v1    # "params":Lcom/android/server/backup/BackupManagerService$FullParams;
    :cond_aa
    :try_start_aa
    const-string v5, "BackupManagerService"

    const-string v7, "Attempted to ack full backup/restore with invalid token"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catchall {:try_start_aa .. :try_end_b1} :catchall_a2

    goto :goto_85
.end method

.method addBackupTrace(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 955
    iget-object v1, p0, mBackupTrace:Ljava/util/List;

    monitor-enter v1

    .line 956
    :try_start_3
    iget-object v0, p0, mBackupTrace:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 957
    monitor-exit v1

    .line 959
    return-void

    .line 957
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method addPackageParticipantsLocked([Ljava/lang/String;)V
    .registers 8
    .param p1, "packageNames"    # [Ljava/lang/String;

    .prologue
    .line 1951
    invoke-virtual {p0}, allAgentPackages()Ljava/util/List;

    move-result-object v4

    .line 1952
    .local v4, "targetApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz p1, :cond_13

    .line 1954
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_9
    if-ge v1, v2, :cond_17

    aget-object v3, v0, v1

    .line 1955
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v3, v4}, addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1954
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1959
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_13
    const/4 v5, 0x0

    invoke-direct {p0, v5, v4}, addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1961
    :cond_17
    return-void
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agentBinder"    # Landroid/os/IBinder;

    .prologue
    .line 8981
    iget-object v2, p0, mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v2

    .line 8982
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_3d

    .line 8983
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "agentConnected pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " agent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8984
    invoke-static {p2}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v0

    .line 8985
    .local v0, "agent":Landroid/app/IBackupAgent;
    iput-object v0, p0, mConnectedAgent:Landroid/app/IBackupAgent;

    .line 8986
    const/4 v1, 0x0

    iput-boolean v1, p0, mConnecting:Z

    .line 8991
    .end local v0    # "agent":Landroid/app/IBackupAgent;
    :goto_36
    iget-object v1, p0, mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 8992
    monitor-exit v2

    .line 8993
    return-void

    .line 8988
    :cond_3d
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-system process uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " claiming agent connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 8992
    :catchall_60
    move-exception v1

    monitor-exit v2
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 9000
    iget-object v1, p0, mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9001
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_18

    .line 9002
    const/4 v0, 0x0

    iput-object v0, p0, mConnectedAgent:Landroid/app/IBackupAgent;

    .line 9003
    const/4 v0, 0x0

    iput-boolean v0, p0, mConnecting:Z

    .line 9008
    :goto_11
    iget-object v0, p0, mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 9009
    monitor-exit v1

    .line 9010
    return-void

    .line 9005
    :cond_18
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-system process uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " claiming agent disconnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 9009
    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method allAgentPackages()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2027
    const/16 v4, 0x40

    .line 2028
    .local v4, "flags":I
    iget-object v7, p0, mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 2029
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 2030
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "a":I
    :goto_e
    if-ltz v1, :cond_40

    .line 2031
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 2033
    .local v6, "pkg":Landroid/content/pm/PackageInfo;
    :try_start_16
    iget-object v2, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2034
    .local v2, "app":Landroid/content/pm/ApplicationInfo;
    iget v7, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const v8, 0x8000

    and-int/2addr v7, v8

    if-eqz v7, :cond_24

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v7, :cond_2a

    .line 2036
    :cond_24
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2030
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :goto_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 2042
    .restart local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_2a
    iget-object v7, p0, mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v9, 0x400

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 2044
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_3a} :catch_3b

    goto :goto_27

    .line 2046
    .end local v2    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_3b
    move-exception v3

    .line 2047
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_27

    .line 2050
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_40
    return-object v5
.end method

.method public backupNow()V
    .registers 7

    .prologue
    .line 8406
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "backupNow"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8408
    const-string v1, "BackupManagerService"

    const-string v2, "Scheduling immediate backup pass"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8409
    iget-object v2, p0, mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 8413
    const-wide/32 v4, 0x36ee80

    :try_start_16
    invoke-direct {p0, v4, v5}, startBackupAlarmsLocked(J)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_2a

    .line 8415
    :try_start_19
    iget-object v1, p0, mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_1e
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_19 .. :try_end_1e} :catch_20
    .catchall {:try_start_19 .. :try_end_1e} :catchall_2a

    .line 8420
    :goto_1e
    :try_start_1e
    monitor-exit v2

    .line 8421
    return-void

    .line 8416
    :catch_20
    move-exception v0

    .line 8418
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "BackupManagerService"

    const-string/jumbo v3, "run-backup intent cancelled!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 8420
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z
    .registers 19
    .param p1, "scheduledJob"    # Lcom/android/server/backup/FullBackupJob;

    .prologue
    .line 4264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 4265
    .local v12, "now":J
    const/4 v9, 0x0

    .line 4268
    .local v9, "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    const-string v2, "BackupManagerService"

    const-string v3, "Beginning scheduled full backup operation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4272
    move-object/from16 v0, p0

    iget-object v0, v0, mQueueLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 4273
    :try_start_13
    move-object/from16 v0, p0

    iget-object v2, v0, mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    if-eqz v2, :cond_23

    .line 4274
    const-string v2, "BackupManagerService"

    const-string v3, "Backup triggered but one already/still running!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4275
    const/4 v2, 0x0

    monitor-exit v16

    .line 4311
    :goto_22
    return v2

    .line 4278
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3a

    .line 4281
    const-string v2, "BackupManagerService"

    const-string v3, "Backup queue empty; doing nothing"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4283
    const/4 v2, 0x0

    monitor-exit v16

    goto :goto_22

    .line 4309
    :catchall_37
    move-exception v2

    monitor-exit v16
    :try_end_39
    .catchall {:try_start_13 .. :try_end_39} :catchall_37

    throw v2

    .line 4286
    :cond_3a
    :try_start_3a
    move-object/from16 v0, p0

    iget-object v2, v0, mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    move-object v9, v0

    .line 4287
    iget-wide v2, v9, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    sub-long v14, v12, v2

    .line 4288
    .local v14, "timeSinceRun":J
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v14, v2

    if-gez v2, :cond_68

    .line 4293
    const-wide/32 v2, 0x5265c00

    sub-long v10, v2, v14

    .line 4294
    .local v10, "latency":J
    move-object/from16 v0, p0

    iget-object v2, v0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    new-instance v3, Lcom/android/server/backup/BackupManagerService$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v10, v11}, Lcom/android/server/backup/BackupManagerService$4;-><init>(Lcom/android/server/backup/BackupManagerService;J)V

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 4299
    const/4 v2, 0x0

    monitor-exit v16

    goto :goto_22

    .line 4303
    .end local v10    # "latency":J
    :cond_68
    move-object/from16 v0, p0

    iget-object v2, v0, mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4304
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v8, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 4305
    .local v8, "latch":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v9, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    aput-object v3, v5, v2

    .line 4306
    .local v5, "pkg":[Ljava/lang/String;
    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    .line 4308
    new-instance v2, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v3, v0, mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 4309
    monitor-exit v16
    :try_end_9a
    .catchall {:try_start_3a .. :try_end_9a} :catchall_37

    .line 4311
    const/4 v2, 0x1

    goto :goto_22
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "transport"    # Ljava/lang/String;

    .prologue
    .line 9088
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginRestoreSession: pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " transport="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9091
    const/4 v1, 0x1

    .line 9092
    .local v1, "needPermission":Z
    if-nez p2, :cond_3c

    .line 9093
    iget-object p2, p0, mCurrentTransport:Ljava/lang/String;

    .line 9095
    if-eqz p1, :cond_3c

    .line 9096
    const/4 v0, 0x0

    .line 9098
    .local v0, "app":Landroid/content/pm/PackageInfo;
    :try_start_2a
    iget-object v3, p0, mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_30} :catch_6e

    move-result-object v0

    .line 9104
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-ne v3, v4, :cond_3c

    .line 9108
    const/4 v1, 0x0

    .line 9113
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    :cond_3c
    if-eqz v1, :cond_a6

    .line 9114
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.BACKUP"

    const-string v5, "beginRestoreSession"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9120
    :goto_47
    monitor-enter p0

    .line 9121
    :try_start_48
    iget-object v3, p0, mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    if-nez v3, :cond_64

    iget-boolean v3, p0, isEdmBackupRequest:Z

    if-eqz v3, :cond_58

    iget-object v3, p0, mEdmBackupAppPkgName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    :cond_58
    iget-boolean v3, p0, isEdmRestoreRequest:Z

    if-eqz v3, :cond_af

    iget-object v3, p0, mEdmRestoreAppPkgName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    .line 9124
    :cond_64
    const-string v3, "BackupManagerService"

    const-string v4, "Restore session requested but one already active"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9125
    const/4 v3, 0x0

    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_48 .. :try_end_6d} :catchall_c4

    .line 9130
    :goto_6d
    return-object v3

    .line 9099
    .restart local v0    # "app":Landroid/content/pm/PackageInfo;
    :catch_6e
    move-exception v2

    .line 9100
    .local v2, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asked to restore nonexistent pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9101
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 9117
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    .end local v2    # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_a6
    const-string v3, "BackupManagerService"

    const-string/jumbo v4, "restoring self on current transport; no permission needed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 9127
    :cond_af
    :try_start_af
    new-instance v3, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .line 9128
    iget-object v3, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v4, 0x8

    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 9129
    monitor-exit p0
    :try_end_c1
    .catchall {:try_start_af .. :try_end_c1} :catchall_c4

    .line 9130
    iget-object v3, p0, mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    goto :goto_6d

    .line 9129
    :catchall_c4
    move-exception v3

    :try_start_c5
    monitor-exit p0
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    throw v3
.end method

.method bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;
    .registers 14
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "mode"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 2157
    const/4 v0, 0x0

    .line 2158
    .local v0, "agent":Landroid/app/IBackupAgent;
    iget-object v5, p0, mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2159
    const/4 v6, 0x1

    :try_start_7
    iput-boolean v6, p0, mConnecting:Z

    .line 2160
    const/4 v6, 0x0

    iput-object v6, p0, mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_8f

    .line 2162
    :try_start_c
    iget-object v6, p0, mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v6, p1, p2}, Landroid/app/IActivityManager;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 2163
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "awaiting agent for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    add-long v2, v6, v8

    .line 2169
    .local v2, "timeoutMark":J
    :goto_34
    iget-boolean v6, p0, mConnecting:Z

    if-eqz v6, :cond_6c

    iget-object v6, p0, mConnectedAgent:Landroid/app/IBackupAgent;

    if-nez v6, :cond_6c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_3f} :catch_b1
    .catchall {:try_start_c .. :try_end_3f} :catchall_8f

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_6c

    .line 2171
    :try_start_44
    iget-object v6, p0, mAgentConnectLock:Ljava/lang/Object;

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_4b
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_4b} :catch_4c
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4b} :catch_b1
    .catchall {:try_start_44 .. :try_end_4b} :catchall_8f

    goto :goto_34

    .line 2172
    :catch_4c
    move-exception v1

    .line 2174
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_4d
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Interrupted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    iget-object v6, p0, mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v6}, Landroid/app/IActivityManager;->clearPendingBackup()V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_6a} :catch_b1
    .catchall {:try_start_4d .. :try_end_6a} :catchall_8f

    .line 2176
    :try_start_6a
    monitor-exit v5
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_8f

    .line 2193
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "timeoutMark":J
    :goto_6b
    return-object v4

    .line 2181
    .restart local v2    # "timeoutMark":J
    :cond_6c
    :try_start_6c
    iget-boolean v6, p0, mConnecting:Z

    if-ne v6, v10, :cond_92

    .line 2182
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Timeout waiting for agent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    iget-object v6, p0, mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v6}, Landroid/app/IActivityManager;->clearPendingBackup()V
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_8d} :catch_b1
    .catchall {:try_start_6c .. :try_end_8d} :catchall_8f

    .line 2184
    :try_start_8d
    monitor-exit v5

    goto :goto_6b

    .line 2192
    .end local v2    # "timeoutMark":J
    :catchall_8f
    move-exception v4

    monitor-exit v5
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_8f

    throw v4

    .line 2186
    .restart local v2    # "timeoutMark":J
    :cond_92
    :try_start_92
    const-string v4, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got agent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mConnectedAgent:Landroid/app/IBackupAgent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    iget-object v0, p0, mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_ae} :catch_b1
    .catchall {:try_start_92 .. :try_end_ae} :catchall_8f

    .line 2192
    .end local v2    # "timeoutMark":J
    :cond_ae
    :goto_ae
    :try_start_ae
    monitor-exit v5
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_8f

    move-object v4, v0

    .line 2193
    goto :goto_6b

    .line 2189
    :catch_b1
    move-exception v4

    goto :goto_ae
.end method

.method bindTransport(Landroid/content/pm/ServiceInfo;)Z
    .registers 8
    .param p1, "transport"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 1922
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    .local v2, "svcName":Landroid/content/ComponentName;
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binding to transport host "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, mTransportServiceIntent:Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1927
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1930
    iget-object v4, p0, mTransports:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 1931
    :try_start_2e
    iget-object v3, p0, mTransportConnections:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupManagerService$TransportConnection;

    .line 1932
    .local v0, "connection":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    if-nez v0, :cond_51

    .line 1933
    new-instance v0, Lcom/android/server/backup/BackupManagerService$TransportConnection;

    .end local v0    # "connection":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/BackupManagerService$TransportConnection;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/content/pm/ServiceInfo;)V

    .line 1934
    .restart local v0    # "connection":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    iget-object v3, p0, mTransportConnections:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1941
    :goto_46
    monitor-exit v4
    :try_end_47
    .catchall {:try_start_2e .. :try_end_47} :catchall_57

    .line 1942
    iget-object v3, p0, mContext:Landroid/content/Context;

    const/4 v4, 0x1

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v0, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    return v3

    .line 1939
    :cond_51
    :try_start_51
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_46

    .line 1941
    .end local v0    # "connection":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    :catchall_57
    move-exception v3

    monitor-exit v4
    :try_end_59
    .catchall {:try_start_51 .. :try_end_59} :catchall_57

    throw v3
.end method

.method checkForTransportAndBind(Landroid/content/pm/PackageInfo;)V
    .registers 10
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v7, 0x0

    .line 1890
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, mTransportServiceIntent:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 1892
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, p0, mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4, v7, v7}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 1894
    .local v1, "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_32

    .line 1895
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "result of query is null in checkForTransportAndBind, pkg : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    :cond_31
    return-void

    .line 1898
    :cond_32
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1899
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_37
    if-ge v2, v0, :cond_31

    .line 1900
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v3, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1901
    .local v3, "info":Landroid/content/pm/ServiceInfo;
    invoke-virtual {p0, v3}, tryBindTransport(Landroid/content/pm/ServiceInfo;)Z

    .line 1899
    add-int/lit8 v2, v2, 0x1

    goto :goto_37
.end method

.method clearApplicationDataSynchronous(Ljava/lang/String;)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2201
    :try_start_0
    iget-boolean v6, p0, isEdmRestoreRequest:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_2} :catch_1f

    if-eqz v6, :cond_3f

    .line 2204
    :try_start_4
    iget-object v6, p0, mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    const/4 v7, 0x0

    iget v8, p0, mEdmUserId:I

    invoke-interface {v6, p1, v7, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_c} :catch_1f

    move-result-object v2

    .line 2212
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :goto_d
    :try_start_d
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x40

    if-nez v6, :cond_47

    .line 2248
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :goto_15
    return-void

    .line 2205
    :catch_16
    move-exception v1

    .line 2206
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v6, "BackupManagerService"

    const-string v7, "Fail to obtain package info at clear application data synchrounous"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_1e} :catch_1f

    goto :goto_15

    .line 2217
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1f
    move-exception v0

    .line 2218
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Tried to clear data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 2210
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3f
    :try_start_3f
    iget-object v6, p0, mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_45
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3f .. :try_end_45} :catch_1f

    move-result-object v2

    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_d

    .line 2222
    :cond_47
    new-instance v3, Lcom/android/server/backup/BackupManagerService$ClearDataObserver;

    invoke-direct {v3, p0}, Lcom/android/server/backup/BackupManagerService$ClearDataObserver;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    .line 2224
    .local v3, "observer":Lcom/android/server/backup/BackupManagerService$ClearDataObserver;
    iget-object v7, p0, mClearDataLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2225
    const/4 v6, 0x1

    :try_start_50
    iput-boolean v6, p0, mClearingData:Z
    :try_end_52
    .catchall {:try_start_50 .. :try_end_52} :catchall_7e

    .line 2227
    :try_start_52
    iget-boolean v6, p0, isEdmRestoreRequest:Z

    if-eqz v6, :cond_81

    .line 2229
    iget-object v6, p0, mActivityManager:Landroid/app/IActivityManager;

    iget v8, p0, mEdmUserId:I

    invoke-interface {v6, p1, v3, v8}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_5d} :catch_88
    .catchall {:try_start_52 .. :try_end_5d} :catchall_7e

    .line 2238
    :goto_5d
    :try_start_5d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x2710

    add-long v4, v8, v10

    .line 2239
    .local v4, "timeoutMark":J
    :goto_65
    iget-boolean v6, p0, mClearingData:Z

    if-eqz v6, :cond_8a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_6c
    .catchall {:try_start_5d .. :try_end_6c} :catchall_7e

    move-result-wide v8

    cmp-long v6, v8, v4

    if-gez v6, :cond_8a

    .line 2241
    :try_start_71
    iget-object v6, p0, mClearDataLock:Ljava/lang/Object;

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_78
    .catch Ljava/lang/InterruptedException; {:try_start_71 .. :try_end_78} :catch_79
    .catchall {:try_start_71 .. :try_end_78} :catchall_7e

    goto :goto_65

    .line 2242
    :catch_79
    move-exception v0

    .line 2244
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v6, 0x0

    :try_start_7b
    iput-boolean v6, p0, mClearingData:Z

    goto :goto_65

    .line 2247
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "timeoutMark":J
    :catchall_7e
    move-exception v6

    monitor-exit v7
    :try_end_80
    .catchall {:try_start_7b .. :try_end_80} :catchall_7e

    throw v6

    .line 2231
    :cond_81
    :try_start_81
    iget-object v6, p0, mActivityManager:Landroid/app/IActivityManager;

    const/4 v8, 0x0

    invoke-interface {v6, p1, v3, v8}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_87} :catch_88
    .catchall {:try_start_81 .. :try_end_87} :catchall_7e

    goto :goto_5d

    .line 2233
    :catch_88
    move-exception v6

    goto :goto_5d

    .line 2247
    .restart local v4    # "timeoutMark":J
    :cond_8a
    :try_start_8a
    monitor-exit v7
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_7e

    goto :goto_15
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 8350
    const-string v12, "BackupManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "clearBackupData() of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " on "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8353
    :try_start_26
    move-object/from16 v0, p0

    iget-object v12, v0, mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v13, 0x40

    move-object/from16 v0, p2

    invoke-virtual {v12, v0, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_31} :catch_93

    move-result-object v6

    .line 8362
    .local v6, "info":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, mContext:Landroid/content/Context;

    const-string v13, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_b5

    .line 8364
    move-object/from16 v0, p0

    iget-object v12, v0, mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 8380
    .local v3, "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_55
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_92

    .line 8382
    const-string v12, "BackupManagerService"

    const-string v13, "Found the app - running clear process"

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8383
    move-object/from16 v0, p0

    iget-object v12, v0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v13, 0xc

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 8384
    move-object/from16 v0, p0

    iget-object v13, v0, mQueueLock:Ljava/lang/Object;

    monitor-enter v13

    .line 8385
    :try_start_72
    invoke-direct/range {p0 .. p1}, getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v11

    .line 8386
    .local v11, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v11, :cond_de

    .line 8388
    move-object/from16 v0, p0

    iget-object v12, v0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v14, 0xc

    new-instance v15, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;

    invoke-direct/range {v15 .. v18}, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 8390
    .local v7, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const-wide/32 v14, 0x36ee80

    invoke-virtual {v12, v7, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8391
    monitor-exit v13
    :try_end_92
    .catchall {:try_start_72 .. :try_end_92} :catchall_105

    .line 8401
    .end local v3    # "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v6    # "info":Landroid/content/pm/PackageInfo;
    .end local v7    # "msg":Landroid/os/Message;
    .end local v11    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_92
    :goto_92
    return-void

    .line 8354
    :catch_93
    move-exception v4

    .line 8355
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v12, "BackupManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No such package \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' - not clearing backup data"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    .line 8368
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6    # "info":Landroid/content/pm/PackageInfo;
    :cond_b5
    const-string v12, "BackupManagerService"

    const-string v13, "Privileged caller, allowing clear of other apps"

    invoke-static {v12, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8369
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 8370
    .restart local v3    # "apps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 8371
    .local v2, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_ca
    if-ge v5, v2, :cond_55

    .line 8372
    move-object/from16 v0, p0

    iget-object v12, v0, mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashSet;

    .line 8373
    .local v10, "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v10, :cond_db

    .line 8374
    invoke-virtual {v3, v10}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 8371
    :cond_db
    add-int/lit8 v5, v5, 0x1

    goto :goto_ca

    .line 8393
    .end local v2    # "N":I
    .end local v5    # "i":I
    .end local v10    # "s":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v11    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_de
    :try_start_de
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 8394
    .local v8, "oldId":J
    move-object/from16 v0, p0

    iget-object v12, v0, mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 8395
    move-object/from16 v0, p0

    iget-object v12, v0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v14, 0x4

    new-instance v15, Lcom/android/server/backup/BackupManagerService$ClearParams;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v11, v6}, Lcom/android/server/backup/BackupManagerService$ClearParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v12, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 8397
    .restart local v7    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v12, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 8398
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8399
    monitor-exit v13

    goto :goto_92

    .end local v7    # "msg":Landroid/os/Message;
    .end local v8    # "oldId":J
    .end local v11    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_105
    move-exception v12

    monitor-exit v13
    :try_end_107
    .catchall {:try_start_de .. :try_end_107} :catchall_105

    throw v12
.end method

.method clearBackupTrace()V
    .registers 3

    .prologue
    .line 963
    iget-object v1, p0, mBackupTrace:Ljava/util/List;

    monitor-enter v1

    .line 964
    :try_start_3
    iget-object v0, p0, mBackupTrace:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 965
    monitor-exit v1

    .line 967
    return-void

    .line 965
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method clearRestoreSession(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V
    .registers 4
    .param p1, "currentSession"    # Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .prologue
    .line 9134
    monitor-enter p0

    .line 9135
    :try_start_1
    iget-object v0, p0, mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    if-eq p1, v0, :cond_e

    .line 9136
    const-string v0, "BackupManagerService"

    const-string v1, "ending non-current restore session"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9145
    :goto_c
    monitor-exit p0

    .line 9146
    return-void

    .line 9138
    :cond_e
    const-string v0, "BackupManagerService"

    const-string v1, "Clearing restore session and halting timeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9139
    const/4 v0, 0x0

    iput-object v0, p0, mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .line 9141
    invoke-direct {p0}, warnEdmAdminOperationCompleted()V

    .line 9143
    iget-object v0, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    goto :goto_c

    .line 9145
    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public dataChanged(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 8322
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 8323
    .local v0, "callingUserHandle":I
    if-eqz v0, :cond_7

    .line 8346
    :goto_6
    return-void

    .line 8334
    :cond_7
    invoke-direct {p0, p1}, dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    .line 8335
    .local v1, "targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v1, :cond_3a

    .line 8336
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataChanged but no participant pkg=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 8341
    :cond_3a
    iget-object v2, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    new-instance v3, Lcom/android/server/backup/BackupManagerService$5;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/backup/BackupManagerService$5;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6
.end method

.method deviceIsEncrypted()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 3527
    :try_start_1
    iget-object v2, p0, mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v2}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v2

    if-eq v2, v1, :cond_12

    iget-object v2, p0, mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v2}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_14

    move-result v2

    if-eq v2, v1, :cond_12

    .line 3535
    :goto_11
    return v1

    .line 3527
    :cond_12
    const/4 v1, 0x0

    goto :goto_11

    .line 3531
    :catch_14
    move-exception v0

    .line 3534
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to communicate with mount service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method deviceIsProvisioned()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 8424
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 8425
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 9501
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    const-string v8, "BackupManagerService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9503
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 9505
    .local v4, "identityToken":J
    if-eqz p3, :cond_43

    .line 9506
    move-object v1, p3

    .local v1, "arr$":[Ljava/lang/String;
    :try_start_10
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_12
    if-ge v2, v3, :cond_43

    aget-object v0, v1, v2

    .line 9507
    .local v0, "arg":Ljava/lang/String;
    const-string v6, "-h"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 9508
    const-string v6, "\'dumpsys backup\' optional arguments:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9509
    const-string v6, "  -h       : this help text"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9510
    const-string v6, "  a[gents] : dump information about defined backup agents"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_4a

    .line 9520
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9522
    .end local v0    # "arg":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :goto_30
    return-void

    .line 9512
    .restart local v0    # "arg":Ljava/lang/String;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_31
    :try_start_31
    const-string v6, "agents"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 9513
    invoke-direct {p0, p2}, dumpAgents(Ljava/io/PrintWriter;)V
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_4a

    .line 9520
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_30

    .line 9506
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 9518
    .end local v0    # "arg":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_43
    :try_start_43
    invoke-direct {p0, p2}, dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_4a

    .line 9520
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_30

    :catchall_4a
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method endFullBackup()V
    .registers 4

    .prologue
    .line 4317
    iget-object v1, p0, mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4318
    :try_start_3
    iget-object v0, p0, mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    if-eqz v0, :cond_14

    .line 4320
    const-string v0, "BackupManagerService"

    const-string v2, "Telling running backup to stop"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4322
    iget-object v0, p0, mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->setRunning(Z)V

    .line 4324
    :cond_14
    monitor-exit v1

    .line 4325
    return-void

    .line 4324
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method enqueueFullBackup(Ljava/lang/String;J)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lastBackedUp"    # J

    .prologue
    .line 4220
    new-instance v4, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V

    .line 4221
    .local v4, "newEntry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    iget-object v7, p0, mQueueLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4222
    :try_start_8
    iget-object v6, p0, mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4226
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_10
    if-ltz v3, :cond_42

    .line 4227
    iget-object v6, p0, mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    .line 4228
    .local v1, "e":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    iget-object v6, v1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 4230
    const-string v6, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing schedule queue dupe of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4232
    iget-object v6, p0, mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4226
    :cond_3f
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    .line 4240
    .end local v1    # "e":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :cond_42
    iget-object v6, p0, mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "which":I
    :goto_4a
    if-ltz v5, :cond_61

    .line 4241
    iget-object v6, p0, mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    .line 4242
    .local v2, "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    iget-wide v8, v2, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    cmp-long v6, v8, p2

    if-gtz v6, :cond_6e

    .line 4243
    iget-object v6, p0, mFullBackupQueue:Ljava/util/ArrayList;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v6, v8, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4247
    .end local v2    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :cond_61
    if-gez v5, :cond_69

    .line 4249
    iget-object v6, p0, mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4251
    :cond_69
    monitor-exit v7
    :try_end_6a
    .catchall {:try_start_8 .. :try_end_6a} :catchall_71

    .line 4252
    invoke-direct {p0}, writeFullBackupScheduleAsync()V

    .line 4253
    return-void

    .line 4240
    .restart local v2    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    :cond_6e
    add-int/lit8 v5, v5, -0x1

    goto :goto_4a

    .line 4251
    .end local v0    # "N":I
    .end local v2    # "entry":Lcom/android/server/backup/BackupManagerService$FullBackupEntry;
    .end local v3    # "i":I
    .end local v5    # "which":I
    :catchall_71
    move-exception v6

    :try_start_72
    monitor-exit v7
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v6
.end method

.method public fullBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;)V
    .registers 26
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "includeApks"    # Z
    .param p3, "includeObbs"    # Z
    .param p4, "includeShared"    # Z
    .param p5, "doWidgets"    # Z
    .param p6, "doAllApps"    # Z
    .param p7, "includeSystem"    # Z
    .param p8, "compress"    # Z
    .param p9, "pkgList"    # [Ljava/lang/String;

    .prologue
    .line 8438
    move-object/from16 v0, p0

    iget-boolean v3, v0, isEdmBackupRequest:Z

    if-nez v3, :cond_1f

    .line 8440
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    const-string v5, "android.permission.BACKUP"

    const-string v6, "fullBackup"

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8445
    :goto_11
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    .line 8446
    .local v13, "callingUserHandle":I
    if-eqz v13, :cond_2b

    .line 8447
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Backup supported only for the device owner"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 8442
    .end local v13    # "callingUserHandle":I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    const-string v5, "android.permission.BACKUP"

    const-string v6, "fullBackup"

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 8451
    .restart local v13    # "callingUserHandle":I
    :cond_2b
    if-nez p6, :cond_3e

    .line 8452
    if-nez p4, :cond_3e

    .line 8456
    if-eqz p9, :cond_36

    move-object/from16 v0, p9

    array-length v3, v0

    if-nez v3, :cond_3e

    .line 8457
    :cond_36
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Backup requested but neither shared nor any apps named"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 8463
    :cond_3e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 8466
    .local v14, "oldId":J
    :try_start_42
    invoke-virtual/range {p0 .. p0}, deviceIsProvisioned()Z

    move-result v3

    if-nez v3, :cond_5d

    .line 8467
    const-string v3, "BackupManagerService"

    const-string v5, "Full backup not supported before setup"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_126

    .line 8514
    :try_start_4f
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_1af

    .line 8518
    :goto_52
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8519
    const-string v3, "BackupManagerService"

    const-string v5, "Full backup processing complete."

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8521
    :goto_5c
    return-void

    .line 8471
    :cond_5d
    :try_start_5d
    const-string v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting full backup: apks="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " obb="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " shared="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " all="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " system="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pkgs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8474
    const-string v3, "BackupManagerService"

    const-string v5, "Beginning full backup..."

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8476
    new-instance v2, Lcom/android/server/backup/BackupManagerService$FullBackupParams;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v2 .. v12}, Lcom/android/server/backup/BackupManagerService$FullBackupParams;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;ZZZZZZZ[Ljava/lang/String;)V

    .line 8478
    .local v2, "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    invoke-virtual/range {p0 .. p0}, generateToken()I

    move-result v4

    .line 8479
    .local v4, "token":I
    move-object/from16 v0, p0

    iget-object v5, v0, mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v5
    :try_end_dc
    .catchall {:try_start_5d .. :try_end_dc} :catchall_126

    .line 8480
    :try_start_dc
    move-object/from16 v0, p0

    iget-object v3, v0, mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8481
    monitor-exit v5
    :try_end_e4
    .catchall {:try_start_dc .. :try_end_e4} :catchall_123

    .line 8483
    :try_start_e4
    move-object/from16 v0, p0

    iget-boolean v3, v0, isEdmBackupRequest:Z

    if-eqz v3, :cond_15e

    .line 8485
    move-object/from16 v0, p0

    iget-object v3, v0, mEdmBackupAppPkgName:Ljava/lang/String;

    if-eqz v3, :cond_135

    move-object/from16 v0, p0

    iget-object v3, v0, mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    if-eqz v3, :cond_108

    move-object/from16 v0, p0

    iget-object v3, v0, mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    # getter for: Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->access$2500(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, mEdmBackupAppPkgName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10e

    :cond_108
    move-object/from16 v0, p0

    iget-boolean v3, v0, mBackupRunning:Z

    if-eqz v3, :cond_135

    .line 8489
    :cond_10e
    const/4 v3, -0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, resetEdmBackupTags(I)V
    :try_end_114
    .catchall {:try_start_e4 .. :try_end_114} :catchall_126

    .line 8514
    :try_start_114
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_117} :catch_1b2

    .line 8518
    :goto_117
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8519
    const-string v3, "BackupManagerService"

    const-string v5, "Full backup processing complete."

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c

    .line 8481
    :catchall_123
    move-exception v3

    :try_start_124
    monitor-exit v5
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_123

    :try_start_125
    throw v3
    :try_end_126
    .catchall {:try_start_125 .. :try_end_126} :catchall_126

    .line 8513
    .end local v2    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    .end local v4    # "token":I
    :catchall_126
    move-exception v3

    .line 8514
    :try_start_127
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12a
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_12a} :catch_1b9

    .line 8518
    :goto_12a
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8519
    const-string v5, "BackupManagerService"

    const-string v6, "Full backup processing complete."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v3

    .line 8492
    .restart local v2    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    .restart local v4    # "token":I
    :cond_135
    const/4 v5, 0x1

    :try_start_136
    const-string v6, ""

    const-string v7, ""

    move-object/from16 v0, p0

    iget-object v8, v0, mEdmFullObserver:Lcom/android/server/backup/BackupManagerService$EdmFullObserver;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 8510
    :goto_143
    const-string v3, "BackupManagerService"

    const-string v5, "Waiting for full backup completion..."

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8511
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, waitForCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    :try_end_14f
    .catchall {:try_start_136 .. :try_end_14f} :catchall_126

    .line 8514
    :try_start_14f
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_152
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_152} :catch_1b7

    .line 8518
    :goto_152
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8519
    const-string v3, "BackupManagerService"

    const-string v5, "Full backup processing complete."

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c

    .line 8495
    :cond_15e
    :try_start_15e
    const-string v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting backup confirmation UI, token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8496
    const-string v3, "fullback"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, startConfirmationUi(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19d

    .line 8497
    const-string v3, "BackupManagerService"

    const-string v5, "Unable to launch full backup confirmation"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8498
    move-object/from16 v0, p0

    iget-object v3, v0, mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V
    :try_end_18e
    .catchall {:try_start_15e .. :try_end_18e} :catchall_126

    .line 8514
    :try_start_18e
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_191
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_191} :catch_1b5

    .line 8518
    :goto_191
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8519
    const-string v3, "BackupManagerService"

    const-string v5, "Full backup processing complete."

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c

    .line 8503
    :cond_19d
    :try_start_19d
    move-object/from16 v0, p0

    iget-object v3, v0, mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v5, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 8506
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, startConfirmationTimeout(ILcom/android/server/backup/BackupManagerService$FullParams;)V
    :try_end_1ae
    .catchall {:try_start_19d .. :try_end_1ae} :catchall_126

    goto :goto_143

    .line 8515
    .end local v2    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    .end local v4    # "token":I
    :catch_1af
    move-exception v3

    goto/16 :goto_52

    .restart local v2    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    .restart local v4    # "token":I
    :catch_1b2
    move-exception v3

    goto/16 :goto_117

    :catch_1b5
    move-exception v3

    goto :goto_191

    :catch_1b7
    move-exception v3

    goto :goto_152

    .end local v2    # "params":Lcom/android/server/backup/BackupManagerService$FullBackupParams;
    .end local v4    # "token":I
    :catch_1b9
    move-exception v5

    goto/16 :goto_12a
.end method

.method public fullRestore(Landroid/os/ParcelFileDescriptor;)V
    .registers 13
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 8555
    iget-boolean v0, p0, isEdmRestoreRequest:Z

    if-nez v0, :cond_1b

    .line 8557
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "fullRestore"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8562
    :goto_d
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 8563
    .local v6, "callingUserHandle":I
    if-eqz v6, :cond_25

    .line 8564
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Restore supported only for the device owner"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8559
    .end local v6    # "callingUserHandle":I
    :cond_1b
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "fullRestore"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 8567
    .restart local v6    # "callingUserHandle":I
    :cond_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 8572
    .local v8, "oldId":J
    :try_start_29
    invoke-virtual {p0}, deviceIsProvisioned()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 8573
    const-string v0, "BackupManagerService"

    const-string v2, "Full restore not permitted before setup"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_b8

    .line 8618
    :try_start_36
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_44

    .line 8622
    :goto_39
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8623
    const-string v0, "BackupManagerService"

    const-string v2, "Full restore processing complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8625
    :goto_43
    return-void

    .line 8619
    :catch_44
    move-exception v7

    .line 8620
    .local v7, "e":Ljava/io/IOException;
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error trying to close fd after full restore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 8577
    .end local v7    # "e":Ljava/io/IOException;
    :cond_5e
    :try_start_5e
    const-string v0, "BackupManagerService"

    const-string v2, "Beginning full restore..."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8579
    new-instance v10, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;

    invoke-direct {v10, p0, p1}, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;)V

    .line 8580
    .local v10, "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    invoke-virtual {p0}, generateToken()I

    move-result v1

    .line 8581
    .local v1, "token":I
    iget-object v2, p0, mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_71
    .catchall {:try_start_5e .. :try_end_71} :catchall_b8

    .line 8582
    :try_start_71
    iget-object v0, p0, mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8583
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_b5

    .line 8585
    :try_start_77
    iget-boolean v0, p0, isEdmRestoreRequest:Z

    if-eqz v0, :cond_109

    .line 8587
    iget-object v2, p0, mQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7e
    .catchall {:try_start_77 .. :try_end_7e} :catchall_b8

    .line 8588
    :try_start_7e
    iget-object v0, p0, mEdmRestoreAppPkgName:Ljava/lang/String;

    if-eqz v0, :cond_e1

    iget-object v0, p0, mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    if-eqz v0, :cond_94

    iget-object v0, p0, mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    # getter for: Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->access$2500(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, mEdmRestoreAppPkgName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a2

    :cond_94
    iget-boolean v0, p0, mBackupRunning:Z

    if-eqz v0, :cond_e1

    iget-object v0, p0, mPendingBackups:Ljava/util/HashMap;

    iget-object v3, p0, mEdmRestoreAppPkgName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 8592
    :cond_a2
    const/4 v0, -0x3

    invoke-direct {p0, v0}, resetEdmRestoreTags(I)V

    .line 8593
    monitor-exit v2
    :try_end_a7
    .catchall {:try_start_7e .. :try_end_a7} :catchall_106

    .line 8618
    :try_start_a7
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_c7

    .line 8622
    :goto_aa
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8623
    const-string v0, "BackupManagerService"

    const-string v2, "Full restore processing complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 8583
    :catchall_b5
    move-exception v0

    :try_start_b6
    monitor-exit v2
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    :try_start_b7
    throw v0
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b8

    .line 8617
    .end local v1    # "token":I
    .end local v10    # "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    :catchall_b8
    move-exception v0

    .line 8618
    :try_start_b9
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_187

    .line 8622
    :goto_bc
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8623
    const-string v2, "BackupManagerService"

    const-string v3, "Full restore processing complete."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    .line 8619
    .restart local v1    # "token":I
    .restart local v10    # "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    :catch_c7
    move-exception v7

    .line 8620
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error trying to close fd after full restore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    .line 8595
    .end local v7    # "e":Ljava/io/IOException;
    :cond_e1
    :try_start_e1
    monitor-exit v2
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_106

    .line 8596
    const/4 v2, 0x1

    :try_start_e3
    const-string v3, ""

    const-string v4, ""

    iget-object v5, p0, mEdmFullObserver:Lcom/android/server/backup/BackupManagerService$EdmFullObserver;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 8614
    :goto_ed
    const-string v0, "BackupManagerService"

    const-string v2, "Waiting for full restore completion..."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8615
    invoke-virtual {p0, v10}, waitForCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    :try_end_f7
    .catchall {:try_start_e3 .. :try_end_f7} :catchall_b8

    .line 8618
    :try_start_f7
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fa} :catch_16c

    .line 8622
    :goto_fa
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8623
    const-string v0, "BackupManagerService"

    const-string v2, "Full restore processing complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_43

    .line 8595
    :catchall_106
    move-exception v0

    :try_start_107
    monitor-exit v2
    :try_end_108
    .catchall {:try_start_107 .. :try_end_108} :catchall_106

    :try_start_108
    throw v0

    .line 8599
    :cond_109
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting restore confirmation UI, token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8600
    const-string v0, "fullrest"

    invoke-virtual {p0, v1, v0}, startConfirmationUi(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15e

    .line 8601
    const-string v0, "BackupManagerService"

    const-string v2, "Unable to launch full restore confirmation"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8602
    iget-object v0, p0, mFullConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_135
    .catchall {:try_start_108 .. :try_end_135} :catchall_b8

    .line 8618
    :try_start_135
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_138} :catch_144

    .line 8622
    :goto_138
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8623
    const-string v0, "BackupManagerService"

    const-string v2, "Full restore processing complete."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_43

    .line 8619
    :catch_144
    move-exception v7

    .line 8620
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error trying to close fd after full restore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_138

    .line 8607
    .end local v7    # "e":Ljava/io/IOException;
    :cond_15e
    :try_start_15e
    iget-object v0, p0, mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 8610
    invoke-virtual {p0, v1, v10}, startConfirmationTimeout(ILcom/android/server/backup/BackupManagerService$FullParams;)V
    :try_end_16b
    .catchall {:try_start_15e .. :try_end_16b} :catchall_b8

    goto :goto_ed

    .line 8619
    :catch_16c
    move-exception v7

    .line 8620
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error trying to close fd after full restore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fa

    .line 8619
    .end local v1    # "token":I
    .end local v7    # "e":Ljava/io/IOException;
    .end local v10    # "params":Lcom/android/server/backup/BackupManagerService$FullRestoreParams;
    :catch_187
    move-exception v7

    .line 8620
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error trying to close fd after full restore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bc
.end method

.method public fullTransportBackup([Ljava/lang/String;)V
    .registers 10
    .param p1, "pkgNames"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 8525
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string v5, "fullTransportBackup"

    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8528
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 8529
    .local v7, "callingUserHandle":I
    if-eqz v7, :cond_19

    .line 8530
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Restore supported only for the device owner"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8534
    :cond_19
    const-string v1, "BackupManagerService"

    const-string v3, "fullTransportBackup()"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8537
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8538
    .local v6, "latch":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v0, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    move-object v1, p0

    move-object v3, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 8540
    .local v0, "task":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "full-transport-master"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 8541
    monitor-enter v6

    .line 8543
    :goto_38
    :try_start_38
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_43

    .line 8544
    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_41
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_41} :catch_42
    .catchall {:try_start_38 .. :try_end_41} :catchall_4c

    goto :goto_38

    .line 8546
    :catch_42
    move-exception v1

    .line 8547
    :cond_43
    :try_start_43
    monitor-exit v6
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_4c

    .line 8549
    const-string v1, "BackupManagerService"

    const-string v2, "Done with full transport backup."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8551
    return-void

    .line 8547
    :catchall_4c
    move-exception v1

    :try_start_4d
    monitor-exit v6
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v1
.end method

.method generateToken()I
    .registers 4

    .prologue
    .line 625
    :cond_0
    iget-object v2, p0, mTokenGenerator:Ljava/util/Random;

    monitor-enter v2

    .line 626
    :try_start_3
    iget-object v1, p0, mTokenGenerator:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v0

    .line 627
    .local v0, "token":I
    monitor-exit v2

    .line 628
    if-ltz v0, :cond_0

    .line 629
    return v0

    .line 627
    .end local v0    # "token":I
    :catchall_d
    move-exception v1

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method getAvailableRestoreToken(Ljava/lang/String;)J
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2262
    iget-wide v0, p0, mAncestralToken:J

    .line 2263
    .local v0, "token":J
    iget-object v3, p0, mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2264
    :try_start_5
    iget-object v2, p0, mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2265
    iget-wide v0, p0, mCurrentToken:J

    .line 2267
    :cond_f
    monitor-exit v3

    .line 2268
    return-wide v0

    .line 2267
    :catchall_11
    move-exception v2

    monitor-exit v3
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v2
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    .line 8889
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string v4, "getConfigurationIntent"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8892
    iget-object v3, p0, mTransports:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 8893
    :try_start_c
    iget-object v2, p0, mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/backup/IBackupTransport;
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_20

    .line 8894
    .local v1, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v1, :cond_1d

    .line 8896
    :try_start_16
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1c
    .catchall {:try_start_16 .. :try_end_19} :catchall_20

    move-result-object v0

    .line 8899
    .local v0, "intent":Landroid/content/Intent;
    :try_start_1a
    monitor-exit v3

    .line 8906
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1b
    return-object v0

    .line 8900
    :catch_1c
    move-exception v2

    .line 8904
    :cond_1d
    monitor-exit v3

    .line 8906
    const/4 v0, 0x0

    goto :goto_1b

    .line 8904
    .end local v1    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_20

    throw v2
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .registers 4

    .prologue
    .line 8839
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getCurrentTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8842
    iget-object v0, p0, mCurrentTransport:Ljava/lang/String;

    return-object v0
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    .line 8936
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string v4, "getDataManagementIntent"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8939
    iget-object v3, p0, mTransports:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 8940
    :try_start_c
    iget-object v2, p0, mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/backup/IBackupTransport;
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_20

    .line 8941
    .local v1, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v1, :cond_1d

    .line 8943
    :try_start_16
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->dataManagementIntent()Landroid/content/Intent;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1c
    .catchall {:try_start_16 .. :try_end_19} :catchall_20

    move-result-object v0

    .line 8946
    .local v0, "intent":Landroid/content/Intent;
    :try_start_1a
    monitor-exit v3

    .line 8953
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1b
    return-object v0

    .line 8947
    :catch_1c
    move-exception v2

    .line 8951
    :cond_1d
    monitor-exit v3

    .line 8953
    const/4 v0, 0x0

    goto :goto_1b

    .line 8951
    .end local v1    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_20

    throw v2
.end method

.method public getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    .line 8959
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string v4, "getDataManagementLabel"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8962
    iget-object v3, p0, mTransports:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 8963
    :try_start_c
    iget-object v2, p0, mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/backup/IBackupTransport;
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_20

    .line 8964
    .local v1, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v1, :cond_1d

    .line 8966
    :try_start_16
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->dataManagementLabel()Ljava/lang/String;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1c
    .catchall {:try_start_16 .. :try_end_19} :catchall_20

    move-result-object v0

    .line 8968
    .local v0, "text":Ljava/lang/String;
    :try_start_1a
    monitor-exit v3

    .line 8975
    .end local v0    # "text":Ljava/lang/String;
    :goto_1b
    return-object v0

    .line 8969
    :catch_1c
    move-exception v2

    .line 8973
    :cond_1d
    monitor-exit v3

    .line 8975
    const/4 v0, 0x0

    goto :goto_1b

    .line 8973
    .end local v1    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_20

    throw v2
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    .line 8915
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string v4, "getDestinationString"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8918
    iget-object v3, p0, mTransports:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 8919
    :try_start_c
    iget-object v2, p0, mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/backup/IBackupTransport;
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_20

    .line 8920
    .local v1, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v1, :cond_1d

    .line 8922
    :try_start_16
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1c
    .catchall {:try_start_16 .. :try_end_19} :catchall_20

    move-result-object v0

    .line 8924
    .local v0, "text":Ljava/lang/String;
    :try_start_1a
    monitor-exit v3

    .line 8931
    .end local v0    # "text":Ljava/lang/String;
    :goto_1b
    return-object v0

    .line 8925
    :catch_1c
    move-exception v2

    .line 8929
    :cond_1d
    monitor-exit v3

    .line 8931
    const/4 v0, 0x0

    goto :goto_1b

    .line 8929
    .end local v1    # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_20

    throw v2
.end method

.method handleTimeout(ILjava/lang/Object;)V
    .registers 10
    .param p1, "token"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, -0x1

    .line 2331
    const/4 v1, 0x0

    .line 2332
    .local v1, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    iget-object v4, p0, mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2333
    :try_start_5
    iget-object v3, p0, mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/backup/BackupManagerService$Operation;

    move-object v1, v0

    .line 2338
    if-eqz v1, :cond_13

    iget v2, v1, Lcom/android/server/backup/BackupManagerService$Operation;->state:I

    .line 2339
    .local v2, "state":I
    :cond_13
    if-nez v2, :cond_39

    .line 2340
    const-string v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TIMEOUT: token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    const/4 v3, -0x1

    iput v3, v1, Lcom/android/server/backup/BackupManagerService$Operation;->state:I

    .line 2342
    iget-object v3, p0, mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2344
    :cond_39
    iget-object v3, p0, mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 2345
    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_4b

    .line 2348
    if-eqz v1, :cond_4a

    iget-object v3, v1, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    if-eqz v3, :cond_4a

    .line 2349
    iget-object v3, v1, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    invoke-interface {v3}, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;->handleTimeout()V

    .line 2351
    :cond_4a
    return-void

    .line 2345
    .end local v2    # "state":I
    :catchall_4b
    move-exception v3

    :try_start_4c
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v3
.end method

.method public hasBackupPassword()Z
    .registers 4

    .prologue
    .line 1584
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "hasBackupPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    iget-object v0, p0, mPasswordHash:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, mPasswordHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public isBackupEnabled()Z
    .registers 4

    .prologue
    .line 8833
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "isBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8834
    iget-boolean v0, p0, mEnabled:Z

    return v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .registers 8

    .prologue
    .line 8847
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "android.permission.BACKUP"

    const-string v6, "listAllTransports"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8849
    const/4 v3, 0x0

    .line 8850
    .local v3, "list":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8851
    .local v2, "known":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 8852
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 8853
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 8857
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;>;"
    :cond_33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_42

    .line 8858
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 8859
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 8861
    :cond_42
    return-object v3
.end method

.method logBackupComplete(Ljava/lang/String;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2057
    const-string v3, "@pm@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2073
    :goto_8
    return-void

    .line 2059
    :cond_9
    iget-object v4, p0, mEverStoredApps:Ljava/util/HashSet;

    monitor-enter v4

    .line 2060
    :try_start_c
    iget-object v3, p0, mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    monitor-exit v4

    goto :goto_8

    .line 2072
    :catchall_16
    move-exception v3

    monitor-exit v4
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_16

    throw v3

    .line 2062
    :cond_19
    const/4 v1, 0x0

    .line 2064
    .local v1, "out":Ljava/io/RandomAccessFile;
    :try_start_1a
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, mEverStored:Ljava/io/File;

    const-string/jumbo v5, "rws"

    invoke-direct {v2, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_24} :catch_39
    .catchall {:try_start_1a .. :try_end_24} :catchall_66

    .line 2065
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .local v2, "out":Ljava/io/RandomAccessFile;
    :try_start_24
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2066
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2e} :catch_72
    .catchall {:try_start_24 .. :try_end_2e} :catchall_6f

    .line 2070
    if-eqz v2, :cond_33

    :try_start_30
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_36
    .catchall {:try_start_30 .. :try_end_33} :catchall_16

    :cond_33
    move-object v1, v2

    .line 2072
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    :cond_34
    :goto_34
    :try_start_34
    monitor-exit v4
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_16

    goto :goto_8

    .line 2070
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_36
    move-exception v3

    move-object v1, v2

    .line 2071
    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_34

    .line 2067
    :catch_39
    move-exception v0

    .line 2068
    .local v0, "e":Ljava/io/IOException;
    :goto_3a
    :try_start_3a
    const-string v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t log backup of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mEverStored:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_3a .. :try_end_5e} :catchall_66

    .line 2070
    if-eqz v1, :cond_34

    :try_start_60
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64
    .catchall {:try_start_60 .. :try_end_63} :catchall_16

    goto :goto_34

    :catch_64
    move-exception v3

    goto :goto_34

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_66
    move-exception v3

    :goto_67
    if-eqz v1, :cond_6c

    :try_start_69
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d
    .catchall {:try_start_69 .. :try_end_6c} :catchall_16

    :cond_6c
    :goto_6c
    :try_start_6c
    throw v3
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_16

    :catch_6d
    move-exception v5

    goto :goto_6c

    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catchall_6f
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_67

    .line 2067
    .end local v1    # "out":Ljava/io/RandomAccessFile;
    .restart local v2    # "out":Ljava/io/RandomAccessFile;
    :catch_72
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/RandomAccessFile;
    .restart local v1    # "out":Ljava/io/RandomAccessFile;
    goto :goto_3a
.end method

.method public opComplete(I)V
    .registers 8
    .param p1, "token"    # I

    .prologue
    .line 9153
    const/4 v2, 0x0

    .line 9154
    .local v2, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    iget-object v4, p0, mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 9155
    :try_start_4
    iget-object v3, p0, mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/backup/BackupManagerService$Operation;

    move-object v2, v0

    .line 9156
    if-eqz v2, :cond_13

    .line 9157
    const/4 v3, 0x1

    iput v3, v2, Lcom/android/server/backup/BackupManagerService$Operation;->state:I

    .line 9159
    :cond_13
    iget-object v3, p0, mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 9160
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_2f

    .line 9163
    if-eqz v2, :cond_2e

    iget-object v3, v2, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    if-eqz v3, :cond_2e

    .line 9164
    iget-object v3, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v4, 0x15

    iget-object v5, v2, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 9165
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 9167
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2e
    return-void

    .line 9160
    :catchall_2f
    move-exception v3

    :try_start_30
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v3
.end method

.method passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "candidatePw"    # Ljava/lang/String;
    .param p3, "rounds"    # I

    .prologue
    const/4 v1, 0x1

    .line 1483
    iget-object v2, p0, mPasswordHash:Ljava/lang/String;

    if-nez v2, :cond_10

    .line 1485
    if-eqz p2, :cond_f

    const-string v2, ""

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1498
    :cond_f
    :goto_f
    return v1

    .line 1490
    :cond_10
    if-eqz p2, :cond_26

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_26

    .line 1491
    iget-object v2, p0, mPasswordSalt:[B

    invoke-direct {p0, p1, p2, v2, p3}, buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    .line 1492
    .local v0, "currentPwHash":Ljava/lang/String;
    iget-object v2, p0, mPasswordHash:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1498
    .end local v0    # "currentPwHash":Ljava/lang/String;
    :cond_26
    const/4 v1, 0x0

    goto :goto_f
.end method

.method prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V
    .registers 11
    .param p1, "token"    # I
    .param p2, "interval"    # J
    .param p4, "callback"    # Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    .prologue
    .line 2288
    iget-object v2, p0, mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2289
    :try_start_3
    iget-object v1, p0, mCurrentOperations:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/backup/BackupManagerService$Operation;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, p4}, Lcom/android/server/backup/BackupManagerService$Operation;-><init>(Lcom/android/server/backup/BackupManagerService;ILcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2291
    iget-object v1, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4, p4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2292
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2293
    monitor-exit v2

    .line 2294
    return-void

    .line 2293
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method recordInitPendingLocked(ZLjava/lang/String;)V
    .registers 13
    .param p1, "isPending"    # Z
    .param p2, "transportName"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xb

    const/4 v5, 0x0

    .line 1606
    const-string v4, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "recordInitPendingLocked: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " on transport "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    iget-object v4, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v4, v8}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 1611
    :try_start_2b
    invoke-direct {p0, p2}, getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    .line 1612
    .local v2, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-eqz v2, :cond_5d

    .line 1613
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v3

    .line 1614
    .local v3, "transportDirName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, mBaseStateDir:Ljava/io/File;

    invoke-direct {v1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1615
    .local v1, "stateDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v4, "_need_init_"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1617
    .local v0, "initPendingFile":Ljava/io/File;
    if-eqz p1, :cond_53

    .line 1621
    iget-object v4, p0, mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_4a} :catch_5c

    .line 1623
    :try_start_4a
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_52} :catch_78
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_52} :catch_5c

    .line 1650
    .end local v0    # "initPendingFile":Ljava/io/File;
    .end local v1    # "stateDir":Ljava/io/File;
    .end local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v3    # "transportDirName":Ljava/lang/String;
    :cond_52
    :goto_52
    return-void

    .line 1629
    .restart local v0    # "initPendingFile":Ljava/io/File;
    .restart local v1    # "stateDir":Ljava/io/File;
    .restart local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v3    # "transportDirName":Ljava/lang/String;
    :cond_53
    :try_start_53
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1630
    iget-object v4, p0, mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_5b} :catch_5c

    goto :goto_52

    .line 1634
    .end local v0    # "initPendingFile":Ljava/io/File;
    .end local v1    # "stateDir":Ljava/io/File;
    .end local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v3    # "transportDirName":Ljava/lang/String;
    :catch_5c
    move-exception v4

    .line 1641
    :cond_5d
    if-eqz p1, :cond_52

    .line 1642
    iget-object v4, p0, mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1643
    iget-object v6, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    iget-object v7, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    if-eqz p1, :cond_76

    const/4 v4, 0x1

    :goto_6b
    invoke-virtual {v7, v8, v4, v5, p2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v8, 0x36ee80

    invoke-virtual {v6, v4, v8, v9}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_52

    :cond_76
    move v4, v5

    goto :goto_6b

    .line 1624
    .restart local v0    # "initPendingFile":Ljava/io/File;
    .restart local v1    # "stateDir":Ljava/io/File;
    .restart local v2    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v3    # "transportDirName":Ljava/lang/String;
    :catch_78
    move-exception v4

    goto :goto_52
.end method

.method removeEverBackedUp(Ljava/lang/String;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2077
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing backed-up knowledge of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    iget-object v7, p0, mEverStoredApps:Ljava/util/HashSet;

    monitor-enter v7

    .line 2084
    :try_start_1b
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, mBaseStateDir:Ljava/io/File;

    const-string/jumbo v8, "processed.new"

    invoke-direct {v5, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_bb

    .line 2085
    .local v5, "tempKnownFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 2087
    .local v2, "known":Ljava/io/RandomAccessFile;
    :try_start_26
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "rws"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2e} :catch_aa
    .catchall {:try_start_26 .. :try_end_2e} :catchall_b4

    .line 2088
    .end local v2    # "known":Ljava/io/RandomAccessFile;
    .local v3, "known":Ljava/io/RandomAccessFile;
    :try_start_2e
    iget-object v6, p0, mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2089
    iget-object v6, p0, mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2090
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_48} :catch_49
    .catchall {:try_start_2e .. :try_end_48} :catchall_c2

    goto :goto_39

    .line 2098
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "s":Ljava/lang/String;
    :catch_49
    move-exception v0

    move-object v2, v3

    .line 2103
    .end local v3    # "known":Ljava/io/RandomAccessFile;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "known":Ljava/io/RandomAccessFile;
    :goto_4b
    :try_start_4b
    const-string v6, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error rewriting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, mEverStored:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2104
    iget-object v6, p0, mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 2105
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 2106
    iget-object v6, p0, mEverStored:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_72
    .catchall {:try_start_4b .. :try_end_72} :catchall_b4

    .line 2108
    if-eqz v2, :cond_77

    :try_start_74
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_be
    .catchall {:try_start_74 .. :try_end_77} :catchall_bb

    .line 2110
    .end local v0    # "e":Ljava/io/IOException;
    :cond_77
    :goto_77
    :try_start_77
    monitor-exit v7
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_bb

    .line 2111
    return-void

    .line 2093
    .end local v2    # "known":Ljava/io/RandomAccessFile;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "known":Ljava/io/RandomAccessFile;
    :cond_79
    :try_start_79
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_49
    .catchall {:try_start_79 .. :try_end_7c} :catchall_c2

    .line 2094
    const/4 v2, 0x0

    .line 2095
    .end local v3    # "known":Ljava/io/RandomAccessFile;
    .restart local v2    # "known":Ljava/io/RandomAccessFile;
    :try_start_7d
    iget-object v6, p0, mEverStored:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_ac

    .line 2096
    new-instance v6, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t rename "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, mEverStored:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_aa} :catch_aa
    .catchall {:try_start_7d .. :try_end_aa} :catchall_b4

    .line 2098
    .end local v1    # "i$":Ljava/util/Iterator;
    :catch_aa
    move-exception v0

    goto :goto_4b

    .line 2108
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_ac
    if-eqz v2, :cond_77

    :try_start_ae
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b2
    .catchall {:try_start_ae .. :try_end_b1} :catchall_bb

    goto :goto_77

    :catch_b2
    move-exception v6

    goto :goto_77

    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_b4
    move-exception v6

    :goto_b5
    if-eqz v2, :cond_ba

    :try_start_b7
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_c0
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_bb

    :cond_ba
    :goto_ba
    :try_start_ba
    throw v6

    .line 2110
    .end local v2    # "known":Ljava/io/RandomAccessFile;
    .end local v5    # "tempKnownFile":Ljava/io/File;
    :catchall_bb
    move-exception v6

    monitor-exit v7
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_bb

    throw v6

    .line 2108
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "known":Ljava/io/RandomAccessFile;
    .restart local v5    # "tempKnownFile":Ljava/io/File;
    :catch_be
    move-exception v6

    goto :goto_77

    .end local v0    # "e":Ljava/io/IOException;
    :catch_c0
    move-exception v8

    goto :goto_ba

    .end local v2    # "known":Ljava/io/RandomAccessFile;
    .restart local v3    # "known":Ljava/io/RandomAccessFile;
    :catchall_c2
    move-exception v6

    move-object v2, v3

    .end local v3    # "known":Ljava/io/RandomAccessFile;
    .restart local v2    # "known":Ljava/io/RandomAccessFile;
    goto :goto_b5
.end method

.method removePackageParticipantsLocked([Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "oldUid"    # I

    .prologue
    .line 1989
    if-nez p1, :cond_b

    .line 1990
    const-string v5, "BackupManagerService"

    const-string/jumbo v6, "removePackageParticipants with null list"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    :cond_a
    return-void

    .line 1996
    :cond_b
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_e
    if-ge v1, v2, :cond_a

    aget-object v3, v0, v1

    .line 1998
    .local v3, "pkg":Ljava/lang/String;
    iget-object v5, p0, mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 1999
    .local v4, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v4, :cond_30

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 2000
    invoke-direct {p0, v4, v3}, removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V

    .line 2001
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_30

    .line 2003
    iget-object v5, p0, mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1996
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method resetBackupState(Ljava/io/File;)V
    .registers 14
    .param p1, "stateFileDir"    # Ljava/io/File;

    .prologue
    .line 1656
    iget-object v9, p0, mQueueLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1658
    :try_start_3
    iget-object v8, p0, mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    .line 1659
    iget-object v8, p0, mEverStored:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1661
    const-wide/16 v10, 0x0

    iput-wide v10, p0, mCurrentToken:J

    .line 1662
    invoke-virtual {p0}, writeRestoreTokens()V

    .line 1665
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .local v1, "arr$":[Ljava/io/File;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1a
    if-ge v3, v4, :cond_30

    aget-object v7, v1, v3

    .line 1667
    .local v7, "sf":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "_need_init_"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2d

    .line 1668
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1665
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 1671
    .end local v7    # "sf":Ljava/io/File;
    :cond_30
    monitor-exit v9
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_5e

    .line 1674
    iget-object v9, p0, mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v9

    .line 1675
    :try_start_34
    iget-object v8, p0, mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1676
    .local v0, "N":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .local v2, "i":I
    :goto_3b
    if-ge v2, v0, :cond_64

    .line 1677
    iget-object v8, p0, mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    .line 1678
    .local v6, "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v6, :cond_61

    .line 1679
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1680
    .local v5, "packageName":Ljava/lang/String;
    invoke-direct {p0, v5}, dataChangedImpl(Ljava/lang/String;)V

    goto :goto_4b

    .line 1684
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_5b
    move-exception v8

    monitor-exit v9
    :try_end_5d
    .catchall {:try_start_34 .. :try_end_5d} :catchall_5b

    throw v8

    .line 1671
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v4    # "len$":I
    :catchall_5e
    move-exception v8

    :try_start_5f
    monitor-exit v9
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v8

    .line 1676
    .restart local v0    # "N":I
    .restart local v1    # "arr$":[Ljava/io/File;
    .restart local v2    # "i":I
    .restart local v4    # "len$":I
    .restart local v6    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 1684
    .end local v6    # "participants":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_64
    :try_start_64
    monitor-exit v9
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_5b

    .line 1685
    return-void
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # I

    .prologue
    .line 9015
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_2b

    .line 9016
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-system process uid="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " attemping install-time restore"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9084
    :cond_2a
    :goto_2a
    return-void

    .line 9021
    :cond_2b
    const/4 v13, 0x0

    .line 9023
    .local v13, "skip":Z
    invoke-virtual/range {p0 .. p1}, getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v8

    .line 9024
    .local v8, "restoreSet":J
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreAtInstall pkg="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " token="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " restoreSet="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9027
    const-wide/16 v14, 0x0

    cmp-long v3, v8, v14

    if-nez v3, :cond_6e

    .line 9029
    const/4 v13, 0x1

    .line 9033
    :cond_6e
    move-object/from16 v0, p0

    iget-object v3, v0, mCurrentTransport:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v5

    .line 9034
    .local v5, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v5, :cond_82

    .line 9035
    const-string v3, "BackupManagerService"

    const-string v4, "No transport"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9036
    const/4 v13, 0x1

    .line 9039
    :cond_82
    move-object/from16 v0, p0

    iget-boolean v3, v0, mAutoRestore:Z

    if-nez v3, :cond_a5

    .line 9041
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-restorable state: auto="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v7, v0, mAutoRestore:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9043
    const/4 v13, 0x1

    .line 9046
    :cond_a5
    if-nez v13, :cond_d7

    .line 9053
    :try_start_a7
    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v6

    .line 9058
    .local v6, "dirName":Ljava/lang/String;
    new-instance v10, Landroid/content/pm/PackageInfo;

    invoke-direct {v10}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 9059
    .local v10, "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p1

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 9061
    move-object/from16 v0, p0

    iget-object v3, v0, mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9065
    move-object/from16 v0, p0

    iget-object v3, v0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 9066
    .local v12, "msg":Landroid/os/Message;
    new-instance v3, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move/from16 v11, p2

    invoke-direct/range {v3 .. v11}, Lcom/android/server/backup/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;I)V

    iput-object v3, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9068
    move-object/from16 v0, p0

    iget-object v3, v0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v3, v12}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_d7
    .catch Landroid/os/RemoteException; {:try_start_a7 .. :try_end_d7} :catch_ee

    .line 9076
    .end local v6    # "dirName":Ljava/lang/String;
    .end local v10    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v12    # "msg":Landroid/os/Message;
    :cond_d7
    :goto_d7
    if-eqz v13, :cond_2a

    .line 9079
    const-string v3, "BackupManagerService"

    const-string v4, "Finishing install immediately"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9081
    :try_start_e0
    move-object/from16 v0, p0

    iget-object v3, v0, mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_e9
    .catch Landroid/os/RemoteException; {:try_start_e0 .. :try_end_e9} :catch_eb

    goto/16 :goto_2a

    .line 9082
    :catch_eb
    move-exception v3

    goto/16 :goto_2a

    .line 9069
    :catch_ee
    move-exception v2

    .line 9071
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "BackupManagerService"

    const-string v4, "Unable to contact transport"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9072
    const/4 v13, 0x1

    goto :goto_d7
.end method

.method restoreWidgetData(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "widgetData"    # [B

    .prologue
    .line 7047
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/server/AppWidgetBackupBridge;->restoreWidgetState(Ljava/lang/String;[BI)V

    .line 7048
    return-void
.end method

.method scheduleNextFullBackupJob()V
    .registers 15

    .prologue
    const-wide/32 v12, 0x5265c00

    .line 4193
    iget-object v8, p0, mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    .line 4194
    :try_start_6
    iget-object v3, p0, mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_36

    .line 4198
    iget-object v3, p0, mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    iget-wide v6, v3, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    .line 4199
    .local v6, "upcomingLastBackup":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v4, v10, v6

    .line 4200
    .local v4, "timeSinceLast":J
    cmp-long v3, v4, v12

    if-gez v3, :cond_33

    sub-long v0, v12, v4

    .line 4202
    .local v0, "latency":J
    :goto_25
    new-instance v2, Lcom/android/server/backup/BackupManagerService$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/backup/BackupManagerService$3;-><init>(Lcom/android/server/backup/BackupManagerService;J)V

    .line 4207
    .local v2, "r":Ljava/lang/Runnable;
    iget-object v3, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const-wide/16 v10, 0x9c4

    invoke-virtual {v3, v2, v10, v11}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4213
    .end local v0    # "latency":J
    .end local v2    # "r":Ljava/lang/Runnable;
    .end local v4    # "timeSinceLast":J
    .end local v6    # "upcomingLastBackup":J
    :goto_31
    monitor-exit v8

    .line 4214
    return-void

    .line 4200
    .restart local v4    # "timeSinceLast":J
    .restart local v6    # "upcomingLastBackup":J
    :cond_33
    const-wide/16 v0, 0x0

    goto :goto_25

    .line 4210
    .end local v4    # "timeSinceLast":J
    .end local v6    # "upcomingLastBackup":J
    :cond_36
    const-string v3, "BackupManagerService"

    const-string v9, "Full backup queue empty; not scheduling"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 4213
    :catchall_3e
    move-exception v3

    monitor-exit v8
    :try_end_40
    .catchall {:try_start_6 .. :try_end_40} :catchall_3e

    throw v3
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "transport"    # Ljava/lang/String;

    .prologue
    .line 8866
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.BACKUP"

    const-string/jumbo v5, "selectBackupTransport"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8869
    iget-object v4, p0, mTransports:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 8870
    :try_start_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_4f

    move-result-wide v0

    .line 8872
    .local v0, "oldId":J
    :try_start_11
    iget-object v2, p0, mCurrentTransport:Ljava/lang/String;

    .line 8873
    .local v2, "prevTransport":Ljava/lang/String;
    iput-object p1, p0, mCurrentTransport:Ljava/lang/String;

    .line 8874
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "backup_transport"

    invoke-static {v3, v5, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 8876
    const-string v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "selectBackupTransport() set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mCurrentTransport:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returning "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_11 .. :try_end_45} :catchall_4a

    .line 8880
    :try_start_45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4

    return-object v2

    .end local v2    # "prevTransport":Ljava/lang/String;
    :catchall_4a
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 8882
    .end local v0    # "oldId":J
    :catchall_4f
    move-exception v3

    monitor-exit v4
    :try_end_51
    .catchall {:try_start_45 .. :try_end_51} :catchall_4f

    throw v3
.end method

.method public setAutoRestore(Z)V
    .registers 7
    .param p1, "doAutoRestore"    # Z

    .prologue
    .line 8791
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string/jumbo v4, "setAutoRestore"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8794
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Auto restore => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8796
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 8798
    .local v0, "oldId":J
    :try_start_26
    monitor-enter p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_41

    .line 8799
    :try_start_27
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "backup_auto_restore"

    if-eqz p1, :cond_3c

    const/4 v2, 0x1

    :goto_32
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8801
    iput-boolean p1, p0, mAutoRestore:Z

    .line 8802
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_3e

    .line 8804
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8806
    return-void

    .line 8799
    :cond_3c
    const/4 v2, 0x0

    goto :goto_32

    .line 8802
    :catchall_3e
    move-exception v2

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    :try_start_40
    throw v2
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    .line 8804
    :catchall_41
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setBackupEnabled(Z)V
    .registers 15
    .param p1, "enable"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 8734
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    .line 8735
    .local v1, "edm":Landroid/sec/enterprise/EnterpriseDeviceManager;
    if-eqz p1, :cond_1a

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/sec/enterprise/RestrictionPolicy;->isBackupAllowed(Z)Z

    move-result v9

    if-nez v9, :cond_1a

    .line 8736
    const-string v7, "BackupManagerService"

    const-string v8, "Backup is not allowed"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8787
    :goto_19
    return-void

    .line 8740
    :cond_1a
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string v10, "android.permission.BACKUP"

    const-string/jumbo v11, "setBackupEnabled"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8743
    const-string v9, "BackupManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Backup enabled => "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8745
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 8747
    .local v4, "oldId":J
    :try_start_40
    iget-boolean v6, p0, mEnabled:Z

    .line 8748
    .local v6, "wasEnabled":Z
    monitor-enter p0
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_71

    .line 8749
    :try_start_43
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "backup_enabled"

    if-eqz p1, :cond_6c

    :goto_4d
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8751
    iput-boolean p1, p0, mEnabled:Z

    .line 8752
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_6e

    .line 8754
    :try_start_53
    iget-object v8, p0, mQueueLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_71

    .line 8755
    if-eqz p1, :cond_76

    if-nez v6, :cond_76

    :try_start_5a
    iget-boolean v7, p0, mProvisioned:Z

    if-eqz v7, :cond_76

    .line 8757
    const-wide/32 v10, 0x36ee80

    invoke-direct {p0, v10, v11}, startBackupAlarmsLocked(J)V

    .line 8758
    invoke-virtual {p0}, scheduleNextFullBackupJob()V

    .line 8783
    :cond_67
    :goto_67
    monitor-exit v8
    :try_end_68
    .catchall {:try_start_5a .. :try_end_68} :catchall_b0

    .line 8785
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_19

    :cond_6c
    move v7, v8

    .line 8749
    goto :goto_4d

    .line 8752
    :catchall_6e
    move-exception v7

    :try_start_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    :try_start_70
    throw v7
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_71

    .line 8785
    .end local v6    # "wasEnabled":Z
    :catchall_71
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 8759
    .restart local v6    # "wasEnabled":Z
    :cond_76
    if-nez p1, :cond_67

    .line 8761
    :try_start_78
    const-string v7, "BackupManagerService"

    const-string v9, "Opting out of backup"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8763
    iget-object v7, p0, mAlarmManager:Landroid/app/AlarmManager;

    iget-object v9, p0, mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 8768
    if-eqz v6, :cond_67

    iget-boolean v7, p0, mProvisioned:Z

    if-eqz v7, :cond_67

    .line 8772
    iget-object v9, p0, mTransports:Landroid/util/ArrayMap;

    monitor-enter v9
    :try_end_8f
    .catchall {:try_start_78 .. :try_end_8f} :catchall_b0

    .line 8773
    :try_start_8f
    new-instance v0, Ljava/util/HashSet;

    iget-object v7, p0, mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 8774
    .local v0, "allTransports":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    monitor-exit v9
    :try_end_9b
    .catchall {:try_start_8f .. :try_end_9b} :catchall_b3

    .line 8776
    :try_start_9b
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_9f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8777
    .local v3, "transport":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {p0, v7, v3}, recordInitPendingLocked(ZLjava/lang/String;)V

    goto :goto_9f

    .line 8783
    .end local v0    # "allTransports":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "transport":Ljava/lang/String;
    :catchall_b0
    move-exception v7

    monitor-exit v8
    :try_end_b2
    .catchall {:try_start_9b .. :try_end_b2} :catchall_b0

    :try_start_b2
    throw v7
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_71

    .line 8774
    :catchall_b3
    move-exception v7

    :try_start_b4
    monitor-exit v9
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    :try_start_b5
    throw v7

    .line 8779
    .restart local v0    # "allTransports":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_b6
    iget-object v7, p0, mAlarmManager:Landroid/app/AlarmManager;

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v12, p0, mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_c2
    .catchall {:try_start_b5 .. :try_end_c2} :catchall_b0

    goto :goto_67
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 25
    .param p1, "currentPw"    # Ljava/lang/String;
    .param p2, "newPw"    # Ljava/lang/String;

    .prologue
    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "android.permission.BACKUP"

    const-string/jumbo v21, "setBackupPassword"

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    move-object/from16 v0, p0

    iget v0, v0, mPasswordVersion:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_46

    const/4 v11, 0x1

    .line 1511
    .local v11, "pbkdf2Fallback":Z
    :goto_1d
    const-string v19, "PBKDF2WithHmacSHA1"

    const/16 v20, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v19

    if-nez v19, :cond_48

    if-eqz v11, :cond_43

    const-string v19, "PBKDF2WithHmacSHA1And8bit"

    const/16 v20, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v19

    if-nez v19, :cond_48

    .line 1514
    :cond_43
    const/16 v19, 0x0

    .line 1579
    :cond_45
    :goto_45
    return v19

    .line 1507
    .end local v11    # "pbkdf2Fallback":Z
    :cond_46
    const/4 v11, 0x0

    goto :goto_1d

    .line 1518
    .restart local v11    # "pbkdf2Fallback":Z
    :cond_48
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, mPasswordVersion:I

    .line 1519
    const/4 v12, 0x0

    .line 1520
    .local v12, "pwFout":Ljava/io/FileOutputStream;
    const/4 v14, 0x0

    .line 1522
    .local v14, "pwOut":Ljava/io/DataOutputStream;
    :try_start_52
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, mPasswordVersionFile:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5f} :catch_ac
    .catchall {:try_start_52 .. :try_end_5f} :catchall_cb

    .line 1523
    .end local v12    # "pwFout":Ljava/io/FileOutputStream;
    .local v13, "pwFout":Ljava/io/FileOutputStream;
    :try_start_5f
    new-instance v15, Ljava/io/DataOutputStream;

    invoke-direct {v15, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_64} :catch_196
    .catchall {:try_start_5f .. :try_end_64} :catchall_18d

    .line 1524
    .end local v14    # "pwOut":Ljava/io/DataOutputStream;
    .local v15, "pwOut":Ljava/io/DataOutputStream;
    :try_start_64
    move-object/from16 v0, p0

    iget v0, v0, mPasswordVersion:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_6f} :catch_19a
    .catchall {:try_start_64 .. :try_end_6f} :catchall_191

    .line 1530
    if-eqz v15, :cond_74

    :try_start_71
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    .line 1531
    :cond_74
    if-eqz v13, :cond_79

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_79} :catch_a3

    .line 1538
    :cond_79
    :goto_79
    if-eqz p2, :cond_81

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_f4

    .line 1539
    :cond_81
    move-object/from16 v0, p0

    iget-object v0, v0, mPasswordHashFile:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_e0

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, mPasswordHashFile:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    move-result v19

    if-nez v19, :cond_e0

    .line 1542
    const-string v19, "BackupManagerService"

    const-string v20, "Unable to clear backup password"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    const/16 v19, 0x0

    goto :goto_45

    .line 1532
    :catch_a3
    move-exception v7

    .line 1533
    .local v7, "e":Ljava/io/IOException;
    const-string v19, "BackupManagerService"

    const-string v20, "Unable to close pw version record"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 1525
    .end local v7    # "e":Ljava/io/IOException;
    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .end local v15    # "pwOut":Ljava/io/DataOutputStream;
    .restart local v12    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v14    # "pwOut":Ljava/io/DataOutputStream;
    :catch_ac
    move-exception v7

    .line 1526
    .restart local v7    # "e":Ljava/io/IOException;
    :goto_ad
    :try_start_ad
    const-string v19, "BackupManagerService"

    const-string v20, "Unable to write backup pw version; password not changed"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catchall {:try_start_ad .. :try_end_b4} :catchall_cb

    .line 1527
    const/16 v19, 0x0

    .line 1530
    if-eqz v14, :cond_bb

    :try_start_b8
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V

    .line 1531
    :cond_bb
    if-eqz v12, :cond_45

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_c0} :catch_c1

    goto :goto_45

    .line 1532
    :catch_c1
    move-exception v7

    .line 1533
    const-string v20, "BackupManagerService"

    const-string v21, "Unable to close pw version record"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_45

    .line 1529
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_cb
    move-exception v19

    .line 1530
    :goto_cc
    if-eqz v14, :cond_d1

    :try_start_ce
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V

    .line 1531
    :cond_d1
    if-eqz v12, :cond_d6

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d6} :catch_d7

    .line 1534
    :cond_d6
    :goto_d6
    throw v19

    .line 1532
    :catch_d7
    move-exception v7

    .line 1533
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v20, "BackupManagerService"

    const-string v21, "Unable to close pw version record"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d6

    .line 1546
    .end local v7    # "e":Ljava/io/IOException;
    .end local v12    # "pwFout":Ljava/io/FileOutputStream;
    .end local v14    # "pwOut":Ljava/io/DataOutputStream;
    .restart local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v15    # "pwOut":Ljava/io/DataOutputStream;
    :cond_e0
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mPasswordHash:Ljava/lang/String;

    .line 1547
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, mPasswordSalt:[B

    .line 1548
    const/16 v19, 0x1

    goto/16 :goto_45

    .line 1553
    :cond_f4
    const/16 v19, 0x200

    :try_start_f6
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, randomBytes(I)[B

    move-result-object v18

    .line 1554
    .local v18, "salt":[B
    const-string v19, "PBKDF2WithHmacSHA1"

    const/16 v20, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;
    :try_end_10f
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_10f} :catch_161

    move-result-object v8

    .line 1556
    .local v8, "newPwHash":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "pwf":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 1557
    .local v5, "buffer":Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 1559
    .local v9, "out":Ljava/io/DataOutputStream;
    :try_start_114
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, mPasswordHashFile:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_123
    .catchall {:try_start_114 .. :try_end_123} :catchall_16d

    .line 1560
    .end local v16    # "pwf":Ljava/io/OutputStream;
    .local v17, "pwf":Ljava/io/OutputStream;
    :try_start_123
    new-instance v6, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12a
    .catchall {:try_start_123 .. :try_end_12a} :catchall_17e

    .line 1561
    .end local v5    # "buffer":Ljava/io/OutputStream;
    .local v6, "buffer":Ljava/io/OutputStream;
    :try_start_12a
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-direct {v10, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12f
    .catchall {:try_start_12a .. :try_end_12f} :catchall_182

    .line 1564
    .end local v9    # "out":Ljava/io/DataOutputStream;
    .local v10, "out":Ljava/io/DataOutputStream;
    :try_start_12f
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1565
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 1566
    invoke-virtual {v10, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1567
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 1568
    move-object/from16 v0, p0

    iput-object v8, v0, mPasswordHash:Ljava/lang/String;

    .line 1569
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mPasswordSalt:[B
    :try_end_14e
    .catchall {:try_start_12f .. :try_end_14e} :catchall_187

    .line 1570
    const/16 v19, 0x1

    .line 1572
    if-eqz v10, :cond_155

    :try_start_152
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    .line 1573
    :cond_155
    if-eqz v6, :cond_15a

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 1574
    :cond_15a
    if-eqz v17, :cond_45

    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_15f
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_15f} :catch_161

    goto/16 :goto_45

    .line 1576
    .end local v6    # "buffer":Ljava/io/OutputStream;
    .end local v8    # "newPwHash":Ljava/lang/String;
    .end local v10    # "out":Ljava/io/DataOutputStream;
    .end local v17    # "pwf":Ljava/io/OutputStream;
    .end local v18    # "salt":[B
    :catch_161
    move-exception v7

    .line 1577
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v19, "BackupManagerService"

    const-string v20, "Unable to set backup password"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    const/16 v19, 0x0

    goto/16 :goto_45

    .line 1572
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v5    # "buffer":Ljava/io/OutputStream;
    .restart local v8    # "newPwHash":Ljava/lang/String;
    .restart local v9    # "out":Ljava/io/DataOutputStream;
    .restart local v16    # "pwf":Ljava/io/OutputStream;
    .restart local v18    # "salt":[B
    :catchall_16d
    move-exception v19

    :goto_16e
    if-eqz v9, :cond_173

    :try_start_170
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 1573
    :cond_173
    if-eqz v5, :cond_178

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 1574
    :cond_178
    if-eqz v16, :cond_17d

    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    :cond_17d
    throw v19
    :try_end_17e
    .catch Ljava/io/IOException; {:try_start_170 .. :try_end_17e} :catch_161

    .line 1572
    .end local v16    # "pwf":Ljava/io/OutputStream;
    .restart local v17    # "pwf":Ljava/io/OutputStream;
    :catchall_17e
    move-exception v19

    move-object/from16 v16, v17

    .end local v17    # "pwf":Ljava/io/OutputStream;
    .restart local v16    # "pwf":Ljava/io/OutputStream;
    goto :goto_16e

    .end local v5    # "buffer":Ljava/io/OutputStream;
    .end local v16    # "pwf":Ljava/io/OutputStream;
    .restart local v6    # "buffer":Ljava/io/OutputStream;
    .restart local v17    # "pwf":Ljava/io/OutputStream;
    :catchall_182
    move-exception v19

    move-object v5, v6

    .end local v6    # "buffer":Ljava/io/OutputStream;
    .restart local v5    # "buffer":Ljava/io/OutputStream;
    move-object/from16 v16, v17

    .end local v17    # "pwf":Ljava/io/OutputStream;
    .restart local v16    # "pwf":Ljava/io/OutputStream;
    goto :goto_16e

    .end local v5    # "buffer":Ljava/io/OutputStream;
    .end local v9    # "out":Ljava/io/DataOutputStream;
    .end local v16    # "pwf":Ljava/io/OutputStream;
    .restart local v6    # "buffer":Ljava/io/OutputStream;
    .restart local v10    # "out":Ljava/io/DataOutputStream;
    .restart local v17    # "pwf":Ljava/io/OutputStream;
    :catchall_187
    move-exception v19

    move-object v9, v10

    .end local v10    # "out":Ljava/io/DataOutputStream;
    .restart local v9    # "out":Ljava/io/DataOutputStream;
    move-object v5, v6

    .end local v6    # "buffer":Ljava/io/OutputStream;
    .restart local v5    # "buffer":Ljava/io/OutputStream;
    move-object/from16 v16, v17

    .end local v17    # "pwf":Ljava/io/OutputStream;
    .restart local v16    # "pwf":Ljava/io/OutputStream;
    goto :goto_16e

    .line 1529
    .end local v5    # "buffer":Ljava/io/OutputStream;
    .end local v8    # "newPwHash":Ljava/lang/String;
    .end local v9    # "out":Ljava/io/DataOutputStream;
    .end local v15    # "pwOut":Ljava/io/DataOutputStream;
    .end local v16    # "pwf":Ljava/io/OutputStream;
    .end local v18    # "salt":[B
    .restart local v14    # "pwOut":Ljava/io/DataOutputStream;
    :catchall_18d
    move-exception v19

    move-object v12, v13

    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v12    # "pwFout":Ljava/io/FileOutputStream;
    goto/16 :goto_cc

    .end local v12    # "pwFout":Ljava/io/FileOutputStream;
    .end local v14    # "pwOut":Ljava/io/DataOutputStream;
    .restart local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v15    # "pwOut":Ljava/io/DataOutputStream;
    :catchall_191
    move-exception v19

    move-object v14, v15

    .end local v15    # "pwOut":Ljava/io/DataOutputStream;
    .restart local v14    # "pwOut":Ljava/io/DataOutputStream;
    move-object v12, v13

    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v12    # "pwFout":Ljava/io/FileOutputStream;
    goto/16 :goto_cc

    .line 1525
    .end local v12    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v13    # "pwFout":Ljava/io/FileOutputStream;
    :catch_196
    move-exception v7

    move-object v12, v13

    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v12    # "pwFout":Ljava/io/FileOutputStream;
    goto/16 :goto_ad

    .end local v12    # "pwFout":Ljava/io/FileOutputStream;
    .end local v14    # "pwOut":Ljava/io/DataOutputStream;
    .restart local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v15    # "pwOut":Ljava/io/DataOutputStream;
    :catch_19a
    move-exception v7

    move-object v14, v15

    .end local v15    # "pwOut":Ljava/io/DataOutputStream;
    .restart local v14    # "pwOut":Ljava/io/DataOutputStream;
    move-object v12, v13

    .end local v13    # "pwFout":Ljava/io/FileOutputStream;
    .restart local v12    # "pwFout":Ljava/io/FileOutputStream;
    goto/16 :goto_ad
.end method

.method public setBackupProvisioned(Z)V
    .registers 5
    .param p1, "available"    # Z

    .prologue
    .line 8810
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setBackupProvisioned"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8815
    return-void
.end method

.method public setupEdmBackupRestore(ZLjava/lang/String;I)Z
    .registers 7
    .param p1, "isBackup"    # Z
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v0, 0x1

    .line 9705
    if-eqz p2, :cond_13

    iget-object v1, p0, mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    if-eqz v1, :cond_13

    iget-object v1, p0, mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    # getter for: Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->access$2500(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    :cond_13
    iget-boolean v1, p0, mBackupRunning:Z

    if-eqz v1, :cond_20

    .line 9707
    :cond_17
    const-string v0, "BackupManagerService"

    const-string v1, "cannot procced with edm backup - backup manager service already running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9708
    const/4 v0, 0x0

    .line 9720
    :goto_1f
    return v0

    .line 9710
    :cond_20
    if-eqz p1, :cond_30

    .line 9711
    const-string v1, "BackupManagerService"

    const-string v2, "Running a EDM backup pass"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9712
    iput-boolean v0, p0, isEdmBackupRequest:Z

    .line 9713
    iput-object p2, p0, mEdmBackupAppPkgName:Ljava/lang/String;

    .line 9719
    :goto_2d
    iput p3, p0, mEdmUserId:I

    goto :goto_1f

    .line 9715
    :cond_30
    const-string v1, "BackupManagerService"

    const-string v2, "Running a EDM restore pass"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9716
    iput-boolean v0, p0, isEdmRestoreRequest:Z

    .line 9717
    iput-object p2, p0, mEdmRestoreAppPkgName:Ljava/lang/String;

    goto :goto_2d
.end method

.method signalFullBackupRestoreCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    .registers 6
    .param p1, "params"    # Lcom/android/server/backup/BackupManagerService$FullParams;

    .prologue
    const/4 v3, -0x2

    .line 8660
    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 8661
    :try_start_4
    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8662
    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 8663
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_1b

    .line 8666
    iget-boolean v0, p0, isEdmBackupRequest:Z

    if-eqz v0, :cond_1e

    .line 8667
    invoke-direct {p0, v3}, resetEdmBackupTags(I)V

    .line 8671
    :cond_17
    :goto_17
    invoke-direct {p0}, warnEdmAdminOperationCompleted()V

    .line 8673
    return-void

    .line 8663
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0

    .line 8668
    :cond_1e
    iget-boolean v0, p0, isEdmRestoreRequest:Z

    if-eqz v0, :cond_17

    .line 8669
    invoke-direct {p0, v3}, resetEdmRestoreTags(I)V

    goto :goto_17
.end method

.method startConfirmationTimeout(ILcom/android/server/backup/BackupManagerService$FullParams;)V
    .registers 7
    .param p1, "token"    # I
    .param p2, "params"    # Lcom/android/server/backup/BackupManagerService$FullParams;

    .prologue
    .line 8644
    iget-object v1, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 8646
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8647
    return-void
.end method

.method startConfirmationUi(ILjava/lang/String;)Z
    .registers 7
    .param p1, "token"    # I
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 8629
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8630
    .local v0, "confIntent":Landroid/content/Intent;
    const-string v2, "com.android.backupconfirm"

    const-string v3, "com.android.backupconfirm.BackupRestoreConfirmation"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8632
    const-string v2, "conftoken"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8633
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8634
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_1b} :catch_1d

    .line 8638
    const/4 v2, 0x1

    .end local v0    # "confIntent":Landroid/content/Intent;
    :goto_1c
    return v2

    .line 8635
    :catch_1d
    move-exception v1

    .line 8636
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method tryBindTransport(Landroid/content/pm/ServiceInfo;)Z
    .registers 8
    .param p1, "info"    # Landroid/content/pm/ServiceInfo;

    .prologue
    const/4 v2, 0x0

    .line 1908
    :try_start_1
    iget-object v3, p0, mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1909
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    if-eqz v3, :cond_18

    .line 1910
    invoke-virtual {p0, p1}, bindTransport(Landroid/content/pm/ServiceInfo;)Z

    move-result v2

    .line 1917
    .end local v1    # "packInfo":Landroid/content/pm/PackageInfo;
    :goto_17
    return v2

    .line 1912
    .restart local v1    # "packInfo":Landroid/content/pm/PackageInfo;
    :cond_18
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transport package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not privileged"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_38} :catch_39

    goto :goto_17

    .line 1914
    .end local v1    # "packInfo":Landroid/content/pm/PackageInfo;
    :catch_39
    move-exception v0

    .line 1915
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem resolving transport package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method waitForCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V
    .registers 4
    .param p1, "params"    # Lcom/android/server/backup/BackupManagerService$FullParams;

    .prologue
    .line 8650
    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 8651
    :goto_3
    :try_start_3
    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    move-result v0

    if-nez v0, :cond_13

    .line 8653
    :try_start_b
    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$FullParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_15

    goto :goto_3

    .line 8654
    :catch_11
    move-exception v0

    goto :goto_3

    .line 8656
    :cond_13
    :try_start_13
    monitor-exit v1

    .line 8657
    return-void

    .line 8656
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw v0
.end method

.method waitUntilOperationComplete(I)Z
    .registers 8
    .param p1, "token"    # I

    .prologue
    const/4 v4, 0x1

    .line 2300
    const/4 v1, 0x0

    .line 2301
    .local v1, "finalState":I
    const/4 v2, 0x0

    .line 2302
    .local v2, "op":Lcom/android/server/backup/BackupManagerService$Operation;
    iget-object v5, p0, mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2304
    :goto_6
    :try_start_6
    iget-object v3, p0, mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/backup/BackupManagerService$Operation;

    move-object v2, v0

    .line 2305
    if-nez v2, :cond_1d

    .line 2321
    :goto_12
    monitor-exit v5
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_2c

    .line 2323
    iget-object v3, p0, mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 2326
    if-ne v1, v4, :cond_2f

    move v3, v4

    :goto_1c
    return v3

    .line 2309
    :cond_1d
    :try_start_1d
    iget v3, v2, Lcom/android/server/backup/BackupManagerService$Operation;->state:I
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_2c

    if-nez v3, :cond_29

    .line 2311
    :try_start_21
    iget-object v3, p0, mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_26} :catch_27
    .catchall {:try_start_21 .. :try_end_26} :catchall_2c

    goto :goto_6

    .line 2312
    :catch_27
    move-exception v3

    goto :goto_6

    .line 2316
    :cond_29
    :try_start_29
    iget v1, v2, Lcom/android/server/backup/BackupManagerService$Operation;->state:I

    .line 2317
    goto :goto_12

    .line 2321
    :catchall_2c
    move-exception v3

    monitor-exit v5
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_2c

    throw v3

    .line 2326
    :cond_2f
    const/4 v3, 0x0

    goto :goto_1c
.end method

.method writeRestoreTokens()V
    .registers 8

    .prologue
    .line 2118
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v4, p0, mTokenFile:Ljava/io/File;

    const-string/jumbo v5, "rwd"

    invoke-direct {v0, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2121
    .local v0, "af":Ljava/io/RandomAccessFile;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 2124
    iget-wide v4, p0, mAncestralToken:J

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 2125
    iget-wide v4, p0, mCurrentToken:J

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 2128
    iget-object v4, p0, mAncestralPackages:Ljava/util/Set;

    if-nez v4, :cond_24

    .line 2129
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 2138
    :cond_20
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 2142
    .end local v0    # "af":Ljava/io/RandomAccessFile;
    :goto_23
    return-void

    .line 2131
    .restart local v0    # "af":Ljava/io/RandomAccessFile;
    :cond_24
    iget-object v4, p0, mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 2132
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ancestral packages:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mAncestralPackages:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    iget-object v4, p0, mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2134
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_60} :catch_61

    goto :goto_51

    .line 2139
    .end local v0    # "af":Ljava/io/RandomAccessFile;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pkgName":Ljava/lang/String;
    :catch_61
    move-exception v1

    .line 2140
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "Unable to write token file:"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23
.end method
