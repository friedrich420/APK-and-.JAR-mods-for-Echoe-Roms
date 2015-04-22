.class public Lcom/android/server/pm/UserManagerService;
.super Landroid/os/IUserManager$Stub;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    }
.end annotation


# static fields
.field private static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field private static final ATTR_FAILED_ATTEMPTS:Ljava/lang/String; = "failedAttempts"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GUEST_TO_REMOVE:Ljava/lang/String; = "guestToRemove"

.field private static final ATTR_ICON_PATH:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field private static final ATTR_LAST_RETRY_MS:Ljava/lang/String; = "lastAttemptMs"

.field private static final ATTR_MULTIPLE:Ljava/lang/String; = "m"

.field private static final ATTR_NEXT_SERIAL_NO:Ljava/lang/String; = "nextSerialNumber"

.field private static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field private static final ATTR_PIN_HASH:Ljava/lang/String; = "pinHash"

.field private static final ATTR_PROFILE_GROUP_ID:Ljava/lang/String; = "profileGroupId"

.field private static final ATTR_SALT:Ljava/lang/String; = "salt"

.field private static final ATTR_SERIAL_NO:Ljava/lang/String; = "serialNumber"

.field private static final ATTR_TYPE_BOOLEAN:Ljava/lang/String; = "b"

.field private static final ATTR_TYPE_INTEGER:Ljava/lang/String; = "i"

.field private static final ATTR_TYPE_STRING:Ljava/lang/String; = "s"

.field private static final ATTR_TYPE_STRING_ARRAY:Ljava/lang/String; = "sa"

.field private static final ATTR_USER_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VALUE_TYPE:Ljava/lang/String; = "type"

.field private static final BACKOFF_INC_INTERVAL:I = 0x5

.field private static final BACKOFF_TIMES:[I

.field private static final DBG:Z = true

.field private static final EPOCH_PLUS_30_YEARS:J = 0xdc46c32800L

.field private static final LOG_TAG:Ljava/lang/String; = "UserManagerService"

.field private static final MAX_MANAGED_PROFILES:I = 0x2

.field private static final MIN_USER_ID:I = 0xa

.field private static final RESTRICTIONS_FILE_PREFIX:Ljava/lang/String; = "res_"

.field private static final TAG_ENTRY:Ljava/lang/String; = "entry"

.field private static final TAG_GUEST_RESTRICTIONS:Ljava/lang/String; = "guestRestrictions"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_RESTRICTIONS:Ljava/lang/String; = "restrictions"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final TAG_VALUE:Ljava/lang/String; = "value"

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static final USER_LIST_FILENAME:Ljava/lang/String; = "userlist.xml"

.field private static final USER_PHOTO_FILENAME:Ljava/lang/String; = "photo.png"

.field private static final USER_VERSION:I = 0x5

.field private static final XML_SUFFIX:Ljava/lang/String; = ".xml"

.field private static sInstance:Lcom/android/server/pm/UserManagerService;


# instance fields
.field private final MAX_RETRY_READ:I

.field private mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mBaseUserPath:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private final mGuestRestrictions:Landroid/os/Bundle;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstallLock:Ljava/lang/Object;

.field private mNextSerialNumber:I

.field private final mPackagesLock:Ljava/lang/Object;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mRemovingUserIds:Landroid/util/SparseBooleanArray;

.field private final mRestrictionsPinStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/UserManagerService$RestrictionsPinState;",
            ">;"
        }
    .end annotation
.end field

.field private mUserIds:[I

.field private final mUserListFile:Ljava/io/File;

.field private final mUserRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mUserVersion:I

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersDir:Ljava/io/File;

.field private final sPersonaManager:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, USER_INFO_DIR:Ljava/lang/String;

    .line 149
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    sput-object v0, BACKOFF_TIMES:[I

    return-void

    :array_28
    .array-data 4
        0x0
        0x7530
        0xea60
        0x493e0
        0x1b7740
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/server/pm/PersonaManagerService;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "installLock"    # Ljava/lang/Object;
    .param p4, "packagesLock"    # Ljava/lang/Object;
    .param p5, "sPersonaManager"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 218
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;Lcom/android/server/pm/PersonaManagerService;)V

    .line 222
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;Lcom/android/server/pm/PersonaManagerService;)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "installLock"    # Ljava/lang/Object;
    .param p4, "packagesLock"    # Ljava/lang/Object;
    .param p5, "dataDir"    # Ljava/io/File;
    .param p6, "baseUserPath"    # Ljava/io/File;
    .param p7, "sPersonaManager"    # Lcom/android/server/pm/PersonaManagerService;

    .prologue
    .line 229
    invoke-direct {p0}, Landroid/os/IUserManager$Stub;-><init>()V

    .line 168
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, p0, mUsers:Landroid/util/SparseArray;

    .line 169
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, p0, mUserRestrictions:Landroid/util/SparseArray;

    .line 170
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, p0, mGuestRestrictions:Landroid/os/Bundle;

    .line 171
    const/4 v6, 0x3

    iput v6, p0, MAX_RETRY_READ:I

    .line 180
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, p0, mRestrictionsPinStates:Landroid/util/SparseArray;

    .line 188
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    .line 192
    const/4 v6, 0x0

    iput v6, p0, mUserVersion:I

    .line 231
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 232
    iput-object p2, p0, mPm:Lcom/android/server/pm/PackageManagerService;

    .line 234
    move-object/from16 v0, p7

    iput-object v0, p0, sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 236
    iput-object p3, p0, mInstallLock:Ljava/lang/Object;

    .line 237
    move-object/from16 v0, p4

    iput-object v0, p0, mPackagesLock:Ljava/lang/Object;

    .line 238
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, mHandler:Landroid/os/Handler;

    .line 239
    iget-object v7, p0, mInstallLock:Ljava/lang/Object;

    monitor-enter v7

    .line 240
    :try_start_44
    iget-object v8, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_12c

    .line 241
    :try_start_47
    new-instance v6, Ljava/io/File;

    sget-object v9, USER_INFO_DIR:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-direct {v6, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, p0, mUsersDir:Ljava/io/File;

    .line 242
    iget-object v6, p0, mUsersDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 244
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, mUsersDir:Ljava/io/File;

    const-string v9, "0"

    invoke-direct {v5, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 245
    .local v5, "userZeroDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 246
    move-object/from16 v0, p6

    iput-object v0, p0, mBaseUserPath:Ljava/io/File;

    .line 247
    iget-object v6, p0, mUsersDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x1fd

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-static {v6, v9, v10, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 251
    new-instance v6, Ljava/io/File;

    iget-object v9, p0, mUsersDir:Ljava/io/File;

    const-string/jumbo v10, "userlist.xml"

    invoke-direct {v6, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, p0, mUserListFile:Ljava/io/File;

    .line 252
    invoke-direct {p0}, readUserListLocked()V

    .line 261
    if-eqz p7, :cond_bf

    .line 262
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/pm/PersonaManagerService;->getFotaNewUsers()Landroid/util/SparseArray;

    move-result-object v2

    .line 263
    .local v2, "mFotaNewUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/UserInfo;>;"
    if-eqz v2, :cond_bf

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-eqz v6, :cond_bf

    .line 264
    const-string v6, "UserManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UserManagerService(): Knox FOTA upgrade case : mFotaNewUsers = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_aa
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_bc

    .line 266
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 267
    .local v4, "ui":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v4}, fotaCreateNewKnoxUserLocked(Landroid/content/pm/UserInfo;)V

    .line 265
    add-int/lit8 v1, v1, 0x1

    goto :goto_aa

    .line 272
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :cond_bc
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/pm/PersonaManagerService;->clearFotaNewUsers()V

    .line 279
    .end local v1    # "i":I
    .end local v2    # "mFotaNewUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/pm/UserInfo;>;"
    :cond_bf
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v3, "partials":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_c5
    iget-object v6, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_e5

    .line 281
    iget-object v6, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 282
    .restart local v4    # "ui":Landroid/content/pm/UserInfo;
    iget-boolean v6, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v6, :cond_dd

    iget-boolean v6, v4, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v6, :cond_e2

    :cond_dd
    if-eqz v1, :cond_e2

    .line 283
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_e2
    add-int/lit8 v1, v1, 0x1

    goto :goto_c5

    .line 286
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :cond_e5
    const/4 v1, 0x0

    :goto_e6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_124

    .line 287
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 288
    .restart local v4    # "ui":Landroid/content/pm/UserInfo;
    const-string v6, "UserManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Removing partially created user #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (name="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, removeUserStateLocked(I)V

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_e6

    .line 292
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    :cond_124
    sput-object p0, sInstance:Lcom/android/server/pm/UserManagerService;

    .line 293
    monitor-exit v8
    :try_end_127
    .catchall {:try_start_47 .. :try_end_127} :catchall_129

    .line 294
    :try_start_127
    monitor-exit v7
    :try_end_128
    .catchall {:try_start_127 .. :try_end_128} :catchall_12c

    .line 295
    return-void

    .line 293
    .end local v1    # "i":I
    .end local v3    # "partials":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "userZeroDir":Ljava/io/File;
    :catchall_129
    move-exception v6

    :try_start_12a
    monitor-exit v8
    :try_end_12b
    .catchall {:try_start_12a .. :try_end_12b} :catchall_129

    :try_start_12b
    throw v6

    .line 294
    :catchall_12c
    move-exception v6

    monitor-exit v7
    :try_end_12e
    .catchall {:try_start_12b .. :try_end_12e} :catchall_12c

    throw v6
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .registers 11
    .param p1, "dataDir"    # Ljava/io/File;
    .param p2, "baseUserPath"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 208
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v2, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, v1

    invoke-direct/range {v0 .. v7}, <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/io/File;Lcom/android/server/pm/PersonaManagerService;)V

    .line 209
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .prologue
    .line 90
    iget-object v0, p0, mInstallLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .prologue
    .line 90
    iget-object v0, p0, mPackagesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1}, removeUserStateLocked(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .prologue
    .line 90
    iget-object v0, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/UserManagerService;)Lcom/android/server/pm/PackageManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/UserManagerService;

    .prologue
    .line 90
    iget-object v0, p0, mPm:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method private static final checkManageUsersPermission(Ljava/lang/String;)V
    .registers 5
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 654
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 655
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2d

    if-eqz v0, :cond_2d

    const-string v1, "android.permission.MANAGE_USERS"

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-eqz v1, :cond_2d

    .line 659
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You need MANAGE_USERS permission to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 661
    :cond_2d
    return-void
.end method

.method private cleanAppRestrictions(I)V
    .registers 11
    .param p1, "userId"    # I

    .prologue
    .line 1263
    iget-object v8, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1264
    :try_start_3
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    .line 1265
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 1266
    .local v3, "files":[Ljava/lang/String;
    if-nez v3, :cond_f

    monitor-exit v8

    .line 1276
    :goto_e
    return-void

    .line 1267
    :cond_f
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_12
    if-ge v4, v5, :cond_30

    aget-object v2, v0, v4

    .line 1268
    .local v2, "fileName":Ljava/lang/String;
    const-string/jumbo v7, "res_"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 1269
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1270
    .local v6, "resFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 1271
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1267
    .end local v6    # "resFile":Ljava/io/File;
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 1275
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_30
    monitor-exit v8

    goto :goto_e

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "files":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catchall_32
    move-exception v7

    monitor-exit v8
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v7
.end method

.method private cleanAppRestrictionsForPackage(Ljava/lang/String;I)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1282
    iget-object v3, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1283
    :try_start_3
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 1284
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1285
    .local v1, "resFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1286
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1288
    :cond_19
    monitor-exit v3

    .line 1289
    return-void

    .line 1288
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "resFile":Ljava/io/File;
    :catchall_1b
    move-exception v2

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method private createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .registers 24
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "parentId"    # I

    .prologue
    .line 1313
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "no_add_user"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 1315
    const-string v14, "UserManagerService"

    const-string v15, "Cannot add user. DISALLOW_ADD_USER is enabled."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    const/4 v12, 0x0

    .line 1385
    :goto_1c
    return-object v12

    .line 1318
    :cond_1d
    and-int/lit8 v14, p2, 0x4

    if-eqz v14, :cond_4b

    const/4 v3, 0x1

    .line 1319
    .local v3, "isGuest":Z
    :goto_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1320
    .local v4, "ident":J
    const/4 v11, 0x0

    .line 1322
    .local v11, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_27
    move-object/from16 v0, p0

    iget-object v15, v0, mInstallLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_17a

    .line 1323
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v0, v0, mPackagesLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_177

    .line 1324
    const/4 v8, 0x0

    .line 1325
    .local v8, "parent":Landroid/content/pm/UserInfo;
    const/16 v14, -0x2710

    move/from16 v0, p3

    if-eq v0, v14, :cond_4d

    .line 1326
    :try_start_3a
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .line 1327
    if-nez v8, :cond_4d

    const/4 v12, 0x0

    monitor-exit v16
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_174

    :try_start_46
    monitor-exit v15
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_177

    .line 1383
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1c

    .line 1318
    .end local v3    # "isGuest":Z
    .end local v4    # "ident":J
    .end local v8    # "parent":Landroid/content/pm/UserInfo;
    .end local v11    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_4b
    const/4 v3, 0x0

    goto :goto_22

    .line 1331
    .restart local v3    # "isGuest":Z
    .restart local v4    # "ident":J
    .restart local v8    # "parent":Landroid/content/pm/UserInfo;
    .restart local v11    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_4d
    if-nez v3, :cond_5c

    :try_start_4f
    invoke-direct/range {p0 .. p0}, isUserLimitReachedLocked()Z

    move-result v14

    if-eqz v14, :cond_5c

    .line 1332
    const/4 v12, 0x0

    monitor-exit v16
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_174

    :try_start_57
    monitor-exit v15
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_177

    .line 1383
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1c

    .line 1335
    :cond_5c
    if-eqz v3, :cond_6b

    :try_start_5e
    invoke-direct/range {p0 .. p0}, findCurrentGuestUserLocked()Landroid/content/pm/UserInfo;

    move-result-object v14

    if-eqz v14, :cond_6b

    .line 1336
    const/4 v12, 0x0

    monitor-exit v16
    :try_end_66
    .catchall {:try_start_5e .. :try_end_66} :catchall_174

    :try_start_66
    monitor-exit v15
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_177

    .line 1383
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1c

    .line 1339
    :cond_6b
    and-int/lit8 v14, p2, 0x20

    if-eqz v14, :cond_88

    const/16 v14, 0x20

    const/16 v17, 0x1

    :try_start_73
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v14, v1}, numberOfUsersOfTypeLocked(IZ)I

    move-result v14

    const/16 v17, 0x2

    move/from16 v0, v17

    if-lt v14, v0, :cond_88

    .line 1342
    const/4 v12, 0x0

    monitor-exit v16
    :try_end_83
    .catchall {:try_start_73 .. :try_end_83} :catchall_174

    :try_start_83
    monitor-exit v15
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_177

    .line 1383
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1c

    .line 1344
    :cond_88
    const/4 v14, 0x0

    :try_start_89
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, getNextAvailableIdLocked(Z)I

    move-result v10

    .line 1345
    .local v10, "userId":I
    new-instance v12, Landroid/content/pm/UserInfo;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v12, v10, v0, v14, v1}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_99
    .catchall {:try_start_89 .. :try_end_99} :catchall_174

    .line 1346
    .end local v11    # "userInfo":Landroid/content/pm/UserInfo;
    .local v12, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_99
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, mBaseUserPath:Ljava/io/File;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v14, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1347
    .local v13, "userPath":Ljava/io/File;
    move-object/from16 v0, p0

    iget v14, v0, mNextSerialNumber:I

    add-int/lit8 v17, v14, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mNextSerialNumber:I

    iput v14, v12, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 1349
    move-object/from16 v0, p0

    iget v14, v0, mNextSerialNumber:I

    const/16 v17, 0x64

    move/from16 v0, v17

    if-lt v14, v0, :cond_d0

    move-object/from16 v0, p0

    iget v14, v0, mNextSerialNumber:I

    const/16 v17, 0xc8

    move/from16 v0, v17

    if-gt v14, v0, :cond_d0

    .line 1350
    const/16 v14, 0xc9

    move-object/from16 v0, p0

    iput v14, v0, mNextSerialNumber:I

    .line 1352
    :cond_d0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1353
    .local v6, "now":J
    const-wide v18, 0xdc46c32800L

    cmp-long v14, v6, v18

    if-lez v14, :cond_170

    .end local v6    # "now":J
    :goto_dd
    iput-wide v6, v12, Landroid/content/pm/UserInfo;->creationTime:J

    .line 1354
    const/4 v14, 0x1

    iput-boolean v14, v12, Landroid/content/pm/UserInfo;->partial:Z

    .line 1355
    iget v14, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v14}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    .line 1356
    move-object/from16 v0, p0

    iget-object v14, v0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v14, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1357
    invoke-direct/range {p0 .. p0}, writeUserListLocked()V

    .line 1358
    if-eqz v8, :cond_10c

    .line 1359
    iget v14, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_108

    .line 1360
    iget v14, v8, Landroid/content/pm/UserInfo;->id:I

    iput v14, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1361
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1363
    :cond_108
    iget v14, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    iput v14, v12, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1365
    :cond_10c
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1366
    move-object/from16 v0, p0

    iget-object v14, v0, mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v14, v10, v13}, Lcom/android/server/pm/PackageManagerService;->createNewUserLILPw(ILjava/io/File;)V

    .line 1367
    const/4 v14, 0x0

    iput-boolean v14, v12, Landroid/content/pm/UserInfo;->partial:Z

    .line 1368
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1369
    invoke-direct/range {p0 .. p0}, updateUserIdsLocked()V

    .line 1370
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1371
    .local v9, "restrictions":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v14, v0, mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v14, v10, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1372
    monitor-exit v16
    :try_end_130
    .catchall {:try_start_99 .. :try_end_130} :catchall_185

    .line 1373
    :try_start_130
    monitor-exit v15
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_182

    .line 1374
    if-eqz v12, :cond_16b

    .line 1375
    :try_start_133
    new-instance v2, Landroid/content/Intent;

    const-string v14, "android.intent.action.USER_ADDED"

    invoke-direct {v2, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1376
    .local v2, "addedIntent":Landroid/content/Intent;
    const/high16 v14, 0x10000000

    invoke-virtual {v2, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1377
    const-string v14, "android.intent.extra.user_handle"

    iget v15, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1378
    const-string v14, "UserManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[DBG_USER] broadcast intent: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v16, "android.permission.MANAGE_USERS"

    move-object/from16 v0, v16

    invoke-virtual {v14, v2, v15, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_16b
    .catchall {:try_start_133 .. :try_end_16b} :catchall_17f

    .line 1383
    .end local v2    # "addedIntent":Landroid/content/Intent;
    :cond_16b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1c

    .line 1353
    .end local v9    # "restrictions":Landroid/os/Bundle;
    .restart local v6    # "now":J
    :cond_170
    const-wide/16 v6, 0x0

    goto/16 :goto_dd

    .line 1372
    .end local v6    # "now":J
    .end local v10    # "userId":I
    .end local v12    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v13    # "userPath":Ljava/io/File;
    .restart local v11    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_174
    move-exception v14

    :goto_175
    :try_start_175
    monitor-exit v16
    :try_end_176
    .catchall {:try_start_175 .. :try_end_176} :catchall_174

    :try_start_176
    throw v14

    .line 1373
    .end local v8    # "parent":Landroid/content/pm/UserInfo;
    :catchall_177
    move-exception v14

    :goto_178
    monitor-exit v15
    :try_end_179
    .catchall {:try_start_176 .. :try_end_179} :catchall_177

    :try_start_179
    throw v14
    :try_end_17a
    .catchall {:try_start_179 .. :try_end_17a} :catchall_17a

    .line 1383
    :catchall_17a
    move-exception v14

    :goto_17b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14

    .end local v11    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v8    # "parent":Landroid/content/pm/UserInfo;
    .restart local v9    # "restrictions":Landroid/os/Bundle;
    .restart local v10    # "userId":I
    .restart local v12    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v13    # "userPath":Ljava/io/File;
    :catchall_17f
    move-exception v14

    move-object v11, v12

    .end local v12    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v11    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_17b

    .line 1373
    .end local v11    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v12    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_182
    move-exception v14

    move-object v11, v12

    .end local v12    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v11    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_178

    .line 1372
    .end local v9    # "restrictions":Landroid/os/Bundle;
    .end local v11    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v13    # "userPath":Ljava/io/File;
    .restart local v12    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_185
    move-exception v14

    move-object v11, v12

    .end local v12    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v11    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_175
.end method

.method private fallbackToSingleUserLocked()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 870
    new-instance v0, Landroid/content/pm/UserInfo;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104060e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x13

    invoke-direct {v0, v5, v2, v3, v4}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 873
    .local v0, "primary":Landroid/content/pm/UserInfo;
    iget-object v2, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 874
    const/16 v2, 0xa

    iput v2, p0, mNextSerialNumber:I

    .line 875
    const/4 v2, 0x5

    iput v2, p0, mUserVersion:I

    .line 877
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 878
    .local v1, "restrictions":Landroid/os/Bundle;
    iget-object v2, p0, mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 880
    invoke-direct {p0}, updateUserIdsLocked()V

    .line 881
    invoke-direct {p0}, initDefaultGuestRestrictions()V

    .line 883
    invoke-direct {p0}, writeUserListLocked()V

    .line 884
    invoke-direct {p0, v0}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 885
    return-void
.end method

.method private findCurrentGuestUserLocked()Landroid/content/pm/UserInfo;
    .registers 6

    .prologue
    .line 1464
    iget-object v3, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1465
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_29

    .line 1466
    iget-object v3, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1467
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_26

    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v3, :cond_26

    iget-object v3, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_26

    .line 1471
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :goto_25
    return-object v2

    .line 1465
    .restart local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1471
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_29
    const/4 v2, 0x0

    goto :goto_25
.end method

.method private fotaCreateNewKnoxUserLocked(Landroid/content/pm/UserInfo;)V
    .registers 7
    .param p1, "ui"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 301
    const-string v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fotaCreateNewKnoxUserLocked: ui = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v2, 0x0

    invoke-direct {p0, v2}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 304
    .local v0, "parent":Landroid/content/pm/UserInfo;
    iget-object v2, p0, mUsers:Landroid/util/SparseArray;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 305
    invoke-direct {p0}, writeUserListLocked()V

    .line 306
    if-eqz v0, :cond_39

    .line 307
    iget v2, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_35

    .line 308
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    iput v2, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 309
    invoke-direct {p0, v0}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 311
    :cond_35
    iget v2, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iput v2, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 313
    :cond_39
    invoke-direct {p0, p1}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 314
    invoke-direct {p0}, updateUserIdsLocked()V

    .line 315
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 316
    .local v1, "restrictions":Landroid/os/Bundle;
    iget-object v2, p0, mUserRestrictions:Landroid/util/SparseArray;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 317
    return-void
.end method

.method public static getInstance()Lcom/android/server/pm/UserManagerService;
    .registers 2

    .prologue
    .line 199
    const-class v1, Lcom/android/server/pm/UserManagerService;

    monitor-enter v1

    .line 200
    :try_start_3
    sget-object v0, sInstance:Lcom/android/server/pm/UserManagerService;

    monitor-exit v1

    return-object v0

    .line 201
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private getNextAvailableIdLocked(Z)I
    .registers 5
    .param p1, "isKnox"    # Z

    .prologue
    .line 2111
    iget-object v2, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2112
    const/16 v0, 0xa

    .line 2114
    .local v0, "i":I
    if-eqz p1, :cond_9

    const/16 v0, 0x64

    .line 2116
    :cond_9
    :goto_9
    const v1, 0x7fffffff

    if-ge v0, v1, :cond_2a

    .line 2123
    const/16 v1, 0x64

    if-lt v0, v1, :cond_1a

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_1a

    if-nez p1, :cond_1a

    .line 2124
    const/16 v0, 0xc9

    .line 2126
    :cond_1a
    :try_start_1a
    iget-object v1, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_2c

    iget-object v1, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 2131
    :cond_2a
    monitor-exit v2

    return v0

    .line 2129
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 2132
    :catchall_2f
    move-exception v1

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private getProfilesLocked(IZ)Ljava/util/List;
    .registers 9
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    invoke-direct {p0, p1}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 370
    .local v2, "user":Landroid/content/pm/UserInfo;
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 371
    .local v3, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    if-nez v2, :cond_12

    .line 388
    :cond_11
    return-object v3

    .line 375
    :cond_12
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    iget-object v4, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_11

    .line 376
    iget-object v4, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 377
    .local v1, "profile":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v2, v1}, isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 375
    :cond_29
    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 380
    :cond_2c
    if-eqz p2, :cond_34

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 383
    :cond_34
    iget-object v4, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_29

    .line 386
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29
.end method

.method private getRemainingTimeForPinAttempt(Lcom/android/server/pm/UserManagerService$RestrictionsPinState;)I
    .registers 8
    .param p1, "pinState"    # Lcom/android/server/pm/UserManagerService$RestrictionsPinState;

    .prologue
    .line 1808
    iget v2, p1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    div-int/lit8 v2, v2, 0x5

    sget-object v3, BACKOFF_TIMES:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1810
    .local v0, "backoffIndex":I
    iget v2, p1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    rem-int/lit8 v2, v2, 0x5

    if-nez v2, :cond_28

    sget-object v2, BACKOFF_TIMES:[I

    aget v1, v2, v0

    .line 1812
    .local v1, "backoffTime":I
    :goto_17
    int-to-long v2, v1

    iget-wide v4, p1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->lastAttemptTime:J

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    return v2

    .line 1810
    .end local v1    # "backoffTime":I
    :cond_28
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1912
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1914
    .local v0, "ident":J
    :try_start_4
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_12} :catch_16
    .catchall {:try_start_4 .. :try_end_12} :catchall_1c

    .line 1919
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_15
    return v3

    .line 1916
    :catch_16
    move-exception v2

    .line 1917
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, -0x1

    .line 1919
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_15

    .end local v2    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_1c
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getUserInfoLocked(I)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 447
    iget-object v1, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 449
    .local v0, "ui":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_2f

    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_2f

    iget-object v1, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 450
    const-string v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserInfo: unknown user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v0, 0x0

    .line 453
    .end local v0    # "ui":Landroid/content/pm/UserInfo;
    :cond_2f
    return-object v0
.end method

.method private hasRestrictionsPinLocked(I)Z
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 1825
    iget-object v1, p0, mRestrictionsPinStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;

    .line 1826
    .local v0, "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    if-eqz v0, :cond_16

    iget-wide v2, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->pinHash:Ljava/lang/String;

    if-nez v1, :cond_18

    .line 1827
    :cond_16
    const/4 v1, 0x0

    .line 1829
    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x1

    goto :goto_17
.end method

.method private initDefaultGuestRestrictions()V
    .registers 4

    .prologue
    .line 556
    iget-object v0, p0, mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 557
    iget-object v0, p0, mGuestRestrictions:Landroid/os/Bundle;

    const-string v1, "no_outgoing_calls"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 558
    invoke-direct {p0}, writeUserListLocked()V

    .line 560
    :cond_13
    return-void
.end method

.method private isPackageInstalled(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1249
    iget-object v1, p0, mPm:Lcom/android/server/pm/PackageManagerService;

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1252
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_11

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-nez v1, :cond_13

    .line 1253
    :cond_11
    const/4 v1, 0x0

    .line 1255
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x1

    goto :goto_12
.end method

.method private isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .registers 6
    .param p1, "user"    # Landroid/content/pm/UserInfo;
    .param p2, "profile"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v0, 0x0

    .line 410
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 411
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    iget v2, p2, Landroid/content/pm/UserInfo;->id:I

    if-eq v1, v2, :cond_17

    iget v1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    iget v1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v2, p2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v1, v2, :cond_5

    :cond_17
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private isUserLimitReachedLocked()Z
    .registers 7

    .prologue
    .line 632
    const/4 v0, 0x0

    .line 633
    .local v0, "aliveUserCount":I
    iget-object v4, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 635
    .local v2, "totalUserCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v2, :cond_2b

    .line 636
    iget-object v4, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 637
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget-object v4, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_28

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    if-nez v4, :cond_28

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v4, :cond_28

    .line 639
    add-int/lit8 v0, v0, 0x1

    .line 635
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 642
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :cond_2b
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v4

    if-lt v0, v4, :cond_33

    const/4 v4, 0x1

    :goto_32
    return v4

    :cond_33
    const/4 v4, 0x0

    goto :goto_32
.end method

.method private numberOfUsersOfTypeLocked(IZ)I
    .registers 8
    .param p1, "flags"    # I
    .param p2, "excludeDying"    # Z

    .prologue
    .line 1445
    const/4 v0, 0x0

    .line 1446
    .local v0, "count":I
    iget-object v3, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_29

    .line 1447
    iget-object v3, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1448
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-eqz p2, :cond_1f

    iget-object v3, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_26

    .line 1449
    :cond_1f
    iget v3, v2, Landroid/content/pm/UserInfo;->flags:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_26

    .line 1450
    add-int/lit8 v0, v0, 0x1

    .line 1446
    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1454
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_29
    return v0
.end method

.method private packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private passwordToHash(Ljava/lang/String;J)Ljava/lang/String;
    .registers 14
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "salt"    # J

    .prologue
    .line 1885
    if-nez p1, :cond_4

    .line 1886
    const/4 v2, 0x0

    .line 1898
    :goto_3
    return-object v2

    .line 1888
    :cond_4
    const/4 v0, 0x0

    .line 1889
    .local v0, "algo":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1891
    .local v2, "hashed":Ljava/lang/String;
    :try_start_16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1892
    .local v4, "saltedPassword":[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 1893
    .local v5, "sha1":[B
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 1894
    .local v3, "md5":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_57
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_57} :catch_59

    move-result-object v2

    goto :goto_3

    .line 1895
    .end local v3    # "md5":[B
    .end local v4    # "saltedPassword":[B
    .end local v5    # "sha1":[B
    :catch_59
    move-exception v1

    .line 1896
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v6, "UserManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private readApplicationRestrictionsLocked(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1925
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1926
    .local v5, "restrictions":Landroid/os/Bundle;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1928
    .local v11, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1930
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_b
    new-instance v6, Landroid/util/XmlMoreAtomicFile;

    new-instance v12, Ljava/io/File;

    invoke-static/range {p2 .. p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v13

    invoke-direct/range {p0 .. p1}, packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v12}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;)V

    .line 1933
    .local v6, "restrictionsFile":Landroid/util/XmlMoreAtomicFile;
    invoke-virtual {v6}, Landroid/util/XmlMoreAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 1934
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1935
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    invoke-interface {v4, v1, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1938
    :cond_29
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v12, 0x2

    if-eq v7, v12, :cond_33

    const/4 v12, 0x1

    if-ne v7, v12, :cond_29

    .line 1942
    :cond_33
    const/4 v12, 0x2

    if-eq v7, v12, :cond_64

    .line 1943
    const-string v12, "UserManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to read restrictions file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Landroid/util/XmlMoreAtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_52} :catch_d8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_52} :catch_f4
    .catchall {:try_start_b .. :try_end_52} :catchall_104

    .line 1981
    if-eqz v1, :cond_57

    .line 1983
    :try_start_54
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_115

    .line 1988
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "restrictionsFile":Landroid/util/XmlMoreAtomicFile;
    .end local v7    # "type":I
    :cond_57
    :goto_57
    return-object v5

    .line 1963
    .local v0, "count":I
    .local v2, "key":Ljava/lang/String;
    .local v3, "multiple":Ljava/lang/String;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "restrictionsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v7    # "type":I
    .local v8, "valType":Ljava/lang/String;
    :cond_58
    :try_start_58
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v10, v12, [Ljava/lang/String;

    .line 1964
    .local v10, "valueStrings":[Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1965
    invoke-virtual {v5, v2, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1948
    .end local v0    # "count":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "multiple":Ljava/lang/String;
    .end local v8    # "valType":Ljava/lang/String;
    .end local v10    # "valueStrings":[Ljava/lang/String;
    :cond_64
    :goto_64
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v12, 0x1

    if-eq v7, v12, :cond_10b

    .line 1949
    const/4 v12, 0x2

    if-ne v7, v12, :cond_64

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "entry"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_64

    .line 1950
    const/4 v12, 0x0

    const-string v13, "key"

    invoke-interface {v4, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1951
    .restart local v2    # "key":Ljava/lang/String;
    const/4 v12, 0x0

    const-string/jumbo v13, "type"

    invoke-interface {v4, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1952
    .restart local v8    # "valType":Ljava/lang/String;
    const/4 v12, 0x0

    const-string v13, "m"

    invoke-interface {v4, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1953
    .restart local v3    # "multiple":Ljava/lang/String;
    if-eqz v3, :cond_c0

    .line 1954
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1955
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1956
    .restart local v0    # "count":I
    :cond_99
    :goto_99
    if-lez v0, :cond_58

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v12, 0x1

    if-eq v7, v12, :cond_58

    .line 1957
    const/4 v12, 0x2

    if-ne v7, v12, :cond_99

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "value"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_99

    .line 1959
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1960
    add-int/lit8 v0, v0, -0x1

    goto :goto_99

    .line 1967
    .end local v0    # "count":I
    :cond_c0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 1968
    .local v9, "value":Ljava/lang/String;
    const-string v12, "b"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e3

    .line 1969
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v5, v2, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_d7} :catch_d8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_58 .. :try_end_d7} :catch_f4
    .catchall {:try_start_58 .. :try_end_d7} :catchall_104

    goto :goto_64

    .line 1978
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "multiple":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "restrictionsFile":Landroid/util/XmlMoreAtomicFile;
    .end local v7    # "type":I
    .end local v8    # "valType":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :catch_d8
    move-exception v12

    .line 1981
    if-eqz v1, :cond_57

    .line 1983
    :try_start_db
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_e0

    goto/16 :goto_57

    .line 1984
    :catch_e0
    move-exception v12

    goto/16 :goto_57

    .line 1970
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "multiple":Ljava/lang/String;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "restrictionsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v7    # "type":I
    .restart local v8    # "valType":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_e3
    :try_start_e3
    const-string v12, "i"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ff

    .line 1971
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v5, v2, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_f2} :catch_d8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e3 .. :try_end_f2} :catch_f4
    .catchall {:try_start_e3 .. :try_end_f2} :catchall_104

    goto/16 :goto_64

    .line 1979
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "multiple":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "restrictionsFile":Landroid/util/XmlMoreAtomicFile;
    .end local v7    # "type":I
    .end local v8    # "valType":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :catch_f4
    move-exception v12

    .line 1981
    if-eqz v1, :cond_57

    .line 1983
    :try_start_f7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fa} :catch_fc

    goto/16 :goto_57

    .line 1984
    :catch_fc
    move-exception v12

    goto/16 :goto_57

    .line 1973
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "multiple":Ljava/lang/String;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "restrictionsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v7    # "type":I
    .restart local v8    # "valType":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_ff
    :try_start_ff
    invoke-virtual {v5, v2, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_102} :catch_d8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ff .. :try_end_102} :catch_f4
    .catchall {:try_start_ff .. :try_end_102} :catchall_104

    goto/16 :goto_64

    .line 1981
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "multiple":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "restrictionsFile":Landroid/util/XmlMoreAtomicFile;
    .end local v7    # "type":I
    .end local v8    # "valType":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :catchall_104
    move-exception v12

    if-eqz v1, :cond_10a

    .line 1983
    :try_start_107
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_10a} :catch_118

    .line 1985
    :cond_10a
    :goto_10a
    throw v12

    .line 1981
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "restrictionsFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v7    # "type":I
    :cond_10b
    if-eqz v1, :cond_57

    .line 1983
    :try_start_10d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_110} :catch_112

    goto/16 :goto_57

    .line 1984
    :catch_112
    move-exception v12

    goto/16 :goto_57

    :catch_115
    move-exception v12

    goto/16 :goto_57

    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "restrictionsFile":Landroid/util/XmlMoreAtomicFile;
    .end local v7    # "type":I
    :catch_118
    move-exception v13

    goto :goto_10a
.end method

.method private readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "restrictionKey"    # Ljava/lang/String;

    .prologue
    .line 1214
    const/4 v1, 0x0

    invoke-interface {p1, v1, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1215
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_e

    .line 1216
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1218
    :cond_e
    return-void
.end method

.method private readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 1229
    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1230
    .local v1, "valueString":Ljava/lang/String;
    if-nez v1, :cond_8

    .line 1234
    .end local p3    # "defaultValue":I
    :goto_7
    return p3

    .line 1232
    .restart local p3    # "defaultValue":I
    :cond_8
    :try_start_8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result p3

    goto :goto_7

    .line 1233
    :catch_d
    move-exception v0

    .line 1234
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_7
.end method

.method private readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "defaultValue"    # J

    .prologue
    .line 1239
    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1240
    .local v1, "valueString":Ljava/lang/String;
    if-nez v1, :cond_8

    .line 1244
    .end local p3    # "defaultValue":J
    :goto_7
    return-wide p3

    .line 1242
    .restart local p3    # "defaultValue":J
    :cond_8
    :try_start_8
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-wide p3

    goto :goto_7

    .line 1243
    :catch_d
    move-exception v0

    .line 1244
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_7
.end method

.method private readRestrictionsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1181
    const-string v0, "no_config_wifi"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1182
    const-string v0, "no_modify_accounts"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1183
    const-string v0, "no_install_apps"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1184
    const-string v0, "no_uninstall_apps"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1185
    const-string v0, "no_share_location"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1186
    const-string v0, "no_install_unknown_sources"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1188
    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1189
    const-string v0, "no_usb_file_transfer"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1190
    const-string v0, "no_config_credentials"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1191
    const-string v0, "no_remove_user"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1192
    const-string v0, "no_debugging_features"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1193
    const-string v0, "no_config_vpn"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1194
    const-string v0, "no_config_tethering"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1195
    const-string v0, "no_factory_reset"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1196
    const-string v0, "no_add_user"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1197
    const-string v0, "ensure_verify_apps"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1198
    const-string v0, "no_config_cell_broadcasts"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1199
    const-string v0, "no_config_mobile_networks"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1200
    const-string v0, "no_control_apps"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1201
    const-string v0, "no_physical_media"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1203
    const-string v0, "no_unmute_microphone"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1204
    const-string v0, "no_adjust_volume"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1205
    const-string v0, "no_outgoing_calls"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1206
    const-string v0, "no_sms"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1207
    const-string v0, "no_create_windows"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1208
    const-string v0, "no_cross_profile_copy_paste"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1209
    const-string v0, "no_outgoing_beam"

    invoke-direct {p0, p1, p2, v0}, readBoolean(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1210
    return-void
.end method

.method private readUserListLocked()V
    .registers 15

    .prologue
    .line 736
    iget-object v11, p0, mUserListFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_c

    .line 737
    invoke-direct {p0}, fallbackToSingleUserLocked()V

    .line 822
    :cond_b
    :goto_b
    return-void

    .line 740
    :cond_c
    const/4 v0, 0x0

    .line 741
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v9, Landroid/util/XmlMoreAtomicFile;

    iget-object v11, p0, mUserListFile:Ljava/io/File;

    invoke-direct {v9, v11}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;)V

    .line 743
    .local v9, "userListFile":Landroid/util/XmlMoreAtomicFile;
    :try_start_14
    invoke-virtual {v9}, Landroid/util/XmlMoreAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 744
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 745
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v5, v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 748
    :cond_20
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v11, 0x2

    if-eq v7, v11, :cond_2a

    const/4 v11, 0x1

    if-ne v7, v11, :cond_20

    .line 752
    :cond_2a
    const/4 v11, 0x2

    if-eq v7, v11, :cond_41

    .line 753
    invoke-virtual {v9}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 754
    const/4 v11, 0x6

    const-string v12, "Unable to read user list"

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 755
    invoke-direct {p0}, fallbackToSingleUserLocked()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_39} :catch_c6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_39} :catch_100
    .catchall {:try_start_14 .. :try_end_39} :catchall_12e

    .line 815
    if-eqz v0, :cond_b

    .line 817
    :try_start_3b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_b

    .line 818
    :catch_3f
    move-exception v11

    goto :goto_b

    .line 759
    :cond_41
    const/4 v11, -0x1

    :try_start_42
    iput v11, p0, mNextSerialNumber:I

    .line 760
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "users"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_70

    .line 761
    const/4 v11, 0x0

    const-string v12, "nextSerialNumber"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 762
    .local v3, "lastSerialNumber":Ljava/lang/String;
    if-eqz v3, :cond_60

    .line 763
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, mNextSerialNumber:I

    .line 765
    :cond_60
    const/4 v11, 0x0

    const-string/jumbo v12, "version"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 766
    .local v10, "versionNumber":Ljava/lang/String;
    if-eqz v10, :cond_70

    .line 767
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, mUserVersion:I

    .line 771
    .end local v3    # "lastSerialNumber":Ljava/lang/String;
    .end local v10    # "versionNumber":Ljava/lang/String;
    :cond_70
    :goto_70
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v11, 0x1

    if-eq v7, v11, :cond_135

    .line 772
    const/4 v11, 0x2

    if-ne v7, v11, :cond_70

    .line 773
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 774
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v11, "user"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11a

    .line 775
    const/4 v11, 0x0

    const-string v12, "id"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {p0, v11}, readUserLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .line 778
    .local v8, "user":Landroid/content/pm/UserInfo;
    if-eqz v8, :cond_e0

    .line 779
    iget-object v11, p0, mUsers:Landroid/util/SparseArray;

    iget v12, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v12, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 780
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v11

    if-nez v11, :cond_70

    iget v11, p0, mNextSerialNumber:I

    if-ltz v11, :cond_af

    iget v11, p0, mNextSerialNumber:I

    iget v12, v8, Landroid/content/pm/UserInfo;->id:I

    if-gt v11, v12, :cond_70

    .line 781
    :cond_af
    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, mNextSerialNumber:I

    .line 783
    iget v11, p0, mNextSerialNumber:I

    const/16 v12, 0x64

    if-lt v11, v12, :cond_70

    iget v11, p0, mNextSerialNumber:I

    const/16 v12, 0xc8

    if-gt v11, v12, :cond_70

    .line 784
    const/16 v11, 0xc9

    iput v11, p0, mNextSerialNumber:I
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_c5} :catch_c6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42 .. :try_end_c5} :catch_100
    .catchall {:try_start_42 .. :try_end_c5} :catchall_12e

    goto :goto_70

    .line 804
    .end local v1    # "id":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    :catch_c6
    move-exception v2

    .line 805
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_c7
    invoke-virtual {v9}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 806
    const/4 v11, 0x6

    const-string v12, "IOException during readUserListLocked"

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 807
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 808
    invoke-direct {p0}, fallbackToSingleUserLocked()V
    :try_end_d6
    .catchall {:try_start_c7 .. :try_end_d6} :catchall_12e

    .line 815
    if-eqz v0, :cond_b

    .line 817
    :try_start_d8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_db} :catch_dd

    goto/16 :goto_b

    .line 818
    :catch_dd
    move-exception v11

    goto/16 :goto_b

    .line 788
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    .restart local v8    # "user":Landroid/content/pm/UserInfo;
    :cond_e0
    const/4 v11, 0x6

    :try_start_e1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " might be broken"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_fe} :catch_c6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e1 .. :try_end_fe} :catch_100
    .catchall {:try_start_e1 .. :try_end_fe} :catchall_12e

    goto/16 :goto_70

    .line 809
    .end local v1    # "id":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    .end local v8    # "user":Landroid/content/pm/UserInfo;
    :catch_100
    move-exception v6

    .line 810
    .local v6, "pe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_101
    invoke-virtual {v9}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 811
    const/4 v11, 0x6

    const-string v12, "XmlPullParserException during readUserListLocked"

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 812
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 813
    invoke-direct {p0}, fallbackToSingleUserLocked()V
    :try_end_110
    .catchall {:try_start_101 .. :try_end_110} :catchall_12e

    .line 815
    if-eqz v0, :cond_b

    .line 817
    :try_start_112
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_115} :catch_117

    goto/16 :goto_b

    .line 818
    :catch_117
    move-exception v11

    goto/16 :goto_b

    .line 790
    .end local v6    # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    :cond_11a
    :try_start_11a
    const-string v11, "guestRestrictions"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_70

    .line 791
    iget-object v11, p0, mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v11}, Landroid/os/Bundle;->clear()V

    .line 792
    iget-object v11, p0, mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {p0, v5, v11}, readRestrictionsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_12c} :catch_c6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11a .. :try_end_12c} :catch_100
    .catchall {:try_start_11a .. :try_end_12c} :catchall_12e

    goto/16 :goto_70

    .line 815
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :catchall_12e
    move-exception v11

    if-eqz v0, :cond_134

    .line 817
    :try_start_131
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_134
    .catch Ljava/io/IOException; {:try_start_131 .. :try_end_134} :catch_15c

    .line 819
    :cond_134
    :goto_134
    throw v11

    .line 796
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    :cond_135
    :try_start_135
    iget-object v11, p0, mUsers:Landroid/util/SparseArray;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_155

    .line 797
    invoke-virtual {v9}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 798
    const/4 v11, 0x6

    const-string/jumbo v12, "there isn\'t owner user, fallback to single user"

    invoke-static {v11, v12}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 799
    invoke-direct {p0}, fallbackToSingleUserLocked()V
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_14b} :catch_c6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_135 .. :try_end_14b} :catch_100
    .catchall {:try_start_135 .. :try_end_14b} :catchall_12e

    .line 815
    :goto_14b
    if-eqz v0, :cond_b

    .line 817
    :try_start_14d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_150
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_150} :catch_152

    goto/16 :goto_b

    .line 818
    :catch_152
    move-exception v11

    goto/16 :goto_b

    .line 801
    :cond_155
    :try_start_155
    invoke-direct {p0}, updateUserIdsLocked()V

    .line 802
    invoke-direct {p0}, upgradeIfNecessaryLocked()V
    :try_end_15b
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_15b} :catch_c6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_155 .. :try_end_15b} :catch_100
    .catchall {:try_start_155 .. :try_end_15b} :catchall_12e

    goto :goto_14b

    .line 818
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    :catch_15c
    move-exception v12

    goto :goto_134
.end method

.method private readUserLocked(I)Landroid/content/pm/UserInfo;
    .registers 46
    .param p1, "id"    # I

    .prologue
    .line 1040
    const/16 v28, 0x0

    .line 1041
    .local v28, "retry":I
    const/16 v36, 0x0

    .line 1042
    .local v36, "userFile":Landroid/util/XmlMoreAtomicFile;
    const/4 v10, 0x0

    .local v10, "fis":Ljava/io/FileInputStream;
    move-object/from16 v37, v36

    .end local v36    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .local v37, "userFile":Landroid/util/XmlMoreAtomicFile;
    move/from16 v29, v28

    .line 1045
    .end local v28    # "retry":I
    .local v29, "retry":I
    :goto_9
    add-int/lit8 v28, v29, 0x1

    .end local v29    # "retry":I
    .restart local v28    # "retry":I
    const/16 v40, 0x3

    move/from16 v0, v29

    move/from16 v1, v40

    if-ge v0, v1, :cond_371

    .line 1046
    const/4 v11, 0x0

    .line 1047
    .local v11, "flags":I
    move/from16 v32, p1

    .line 1048
    .local v32, "serialNumber":I
    const/4 v15, 0x0

    .line 1049
    .local v15, "name":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1050
    .local v13, "iconPath":Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 1051
    .local v6, "creationTime":J
    const-wide/16 v18, 0x0

    .line 1052
    .local v18, "lastLoggedInTime":J
    const-wide/16 v30, 0x0

    .line 1053
    .local v30, "salt":J
    const/16 v24, 0x0

    .line 1054
    .local v24, "pinHash":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1055
    .local v9, "failedAttempts":I
    const/16 v26, -0x1

    .line 1056
    .local v26, "profileGroupId":I
    const-wide/16 v16, 0x0

    .line 1057
    .local v16, "lastAttemptTime":J
    const/16 v22, 0x0

    .line 1058
    .local v22, "partial":Z
    const/4 v12, 0x0

    .line 1059
    .local v12, "guestToRemove":Z
    new-instance v27, Landroid/os/Bundle;

    invoke-direct/range {v27 .. v27}, Landroid/os/Bundle;-><init>()V

    .line 1061
    .local v27, "restrictions":Landroid/os/Bundle;
    if-eqz v10, :cond_33

    .line 1062
    :try_start_2f
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_b5

    const/4 v10, 0x0

    .line 1067
    :cond_33
    :goto_33
    :try_start_33
    new-instance v36, Landroid/util/XmlMoreAtomicFile;

    new-instance v40, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, mUsersDir:Ljava/io/File;

    move-object/from16 v41, v0

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ".xml"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-direct/range {v40 .. v42}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;)V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_5e} :catch_3a3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33 .. :try_end_5e} :catch_339
    .catchall {:try_start_33 .. :try_end_5e} :catchall_368

    .line 1069
    .end local v37    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v36    # "userFile":Landroid/util/XmlMoreAtomicFile;
    :try_start_5e
    invoke-virtual/range {v36 .. v36}, Landroid/util/XmlMoreAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v10

    .line 1070
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v21

    .line 1071
    .local v21, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v40, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-interface {v0, v10, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1074
    :cond_6f
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v35

    .local v35, "type":I
    const/16 v40, 0x2

    move/from16 v0, v35

    move/from16 v1, v40

    if-eq v0, v1, :cond_83

    const/16 v40, 0x1

    move/from16 v0, v35

    move/from16 v1, v40

    if-ne v0, v1, :cond_6f

    .line 1078
    :cond_83
    const/16 v40, 0x2

    move/from16 v0, v35

    move/from16 v1, v40

    if-eq v0, v1, :cond_c2

    .line 1079
    invoke-virtual/range {v36 .. v36}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 1080
    const/16 v40, 0x6

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Unable to read user "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_aa} :catch_287
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5e .. :try_end_aa} :catch_3a1
    .catchall {:try_start_5e .. :try_end_aa} :catchall_39f

    .line 1167
    if-eqz v10, :cond_3a8

    .line 1169
    :try_start_ac
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_bb

    move-object/from16 v37, v36

    .end local v36    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v37    # "userFile":Landroid/util/XmlMoreAtomicFile;
    move/from16 v29, v28

    .line 1171
    .end local v28    # "retry":I
    .restart local v29    # "retry":I
    goto/16 :goto_9

    .line 1062
    .end local v21    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v29    # "retry":I
    .end local v35    # "type":I
    .restart local v28    # "retry":I
    :catch_b5
    move-exception v8

    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_33

    .line 1170
    .end local v8    # "e":Ljava/io/IOException;
    .end local v37    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v21    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v35    # "type":I
    .restart local v36    # "userFile":Landroid/util/XmlMoreAtomicFile;
    :catch_bb
    move-exception v40

    move-object/from16 v37, v36

    .end local v36    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v37    # "userFile":Landroid/util/XmlMoreAtomicFile;
    move/from16 v29, v28

    .line 1171
    .end local v28    # "retry":I
    .restart local v29    # "retry":I
    goto/16 :goto_9

    .line 1085
    .end local v29    # "retry":I
    .end local v37    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v28    # "retry":I
    .restart local v36    # "userFile":Landroid/util/XmlMoreAtomicFile;
    :cond_c2
    const/16 v40, 0x2

    move/from16 v0, v35

    move/from16 v1, v40

    if-ne v0, v1, :cond_2b5

    :try_start_ca
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v40

    const-string/jumbo v41, "user"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_2b5

    .line 1086
    const-string v40, "id"

    const/16 v41, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v40

    move/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v33

    .line 1087
    .local v33, "storedId":I
    move/from16 v0, v33

    move/from16 v1, p1

    if-eq v0, v1, :cond_12c

    .line 1088
    invoke-virtual/range {v36 .. v36}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 1089
    const/16 v40, 0x6

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Unable id "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " does not match the file name "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_11a} :catch_287
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ca .. :try_end_11a} :catch_3a1
    .catchall {:try_start_ca .. :try_end_11a} :catchall_39f

    .line 1167
    if-eqz v10, :cond_3a8

    .line 1169
    :try_start_11c
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_11f} :catch_125

    move-object/from16 v37, v36

    .end local v36    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v37    # "userFile":Landroid/util/XmlMoreAtomicFile;
    move/from16 v29, v28

    .line 1171
    .end local v28    # "retry":I
    .restart local v29    # "retry":I
    goto/16 :goto_9

    .line 1170
    .end local v29    # "retry":I
    .end local v37    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v28    # "retry":I
    .restart local v36    # "userFile":Landroid/util/XmlMoreAtomicFile;
    :catch_125
    move-exception v40

    move-object/from16 v37, v36

    .end local v36    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v37    # "userFile":Landroid/util/XmlMoreAtomicFile;
    move/from16 v29, v28

    .line 1171
    .end local v28    # "retry":I
    .restart local v29    # "retry":I
    goto/16 :goto_9

    .line 1093
    .end local v29    # "retry":I
    .end local v37    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v28    # "retry":I
    .restart local v36    # "userFile":Landroid/util/XmlMoreAtomicFile;
    :cond_12c
    :try_start_12c
    const-string/jumbo v40, "serialNumber"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v40

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v32

    .line 1094
    const-string v40, "flags"

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v40

    move/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v11

    .line 1095
    const/16 v40, 0x0

    const-string v41, "icon"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1096
    const-string v40, "created"

    const-wide/16 v42, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v40

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    .line 1097
    const-string v40, "lastLoggedIn"

    const-wide/16 v42, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v40

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v18

    .line 1098
    const-string/jumbo v40, "salt"

    const-wide/16 v42, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v40

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v30

    .line 1099
    const/16 v40, 0x0

    const-string/jumbo v41, "pinHash"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1100
    const-string v40, "failedAttempts"

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v40

    move/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 1101
    const-string v40, "lastAttemptMs"

    const-wide/16 v42, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v40

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    .line 1102
    const-string/jumbo v40, "profileGroupId"

    const/16 v41, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v40

    move/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v26

    .line 1104
    const/16 v40, -0x1

    move/from16 v0, v26

    move/from16 v1, v40

    if-ne v0, v1, :cond_1e3

    .line 1107
    const-string/jumbo v40, "relatedGroupId"

    const/16 v41, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v40

    move/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v26

    .line 1110
    :cond_1e3
    const/16 v40, 0x0

    const-string/jumbo v41, "partial"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1111
    .local v39, "valueString":Ljava/lang/String;
    const-string/jumbo v40, "true"

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_201

    .line 1112
    const/16 v22, 0x1

    .line 1114
    :cond_201
    const/16 v40, 0x0

    const-string v41, "guestToRemove"

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1115
    const-string/jumbo v40, "true"

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_21d

    .line 1116
    const/4 v12, 0x1

    .line 1119
    :cond_21d
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v20

    .line 1121
    .local v20, "outerDepth":I
    :cond_221
    :goto_221
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v35

    const/16 v40, 0x1

    move/from16 v0, v35

    move/from16 v1, v40

    if-eq v0, v1, :cond_2b5

    const/16 v40, 0x3

    move/from16 v0, v35

    move/from16 v1, v40

    if-ne v0, v1, :cond_23f

    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v40

    move/from16 v0, v40

    move/from16 v1, v20

    if-le v0, v1, :cond_2b5

    .line 1122
    :cond_23f
    const/16 v40, 0x3

    move/from16 v0, v35

    move/from16 v1, v40

    if-eq v0, v1, :cond_221

    const/16 v40, 0x4

    move/from16 v0, v35

    move/from16 v1, v40

    if-eq v0, v1, :cond_221

    .line 1125
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v34

    .line 1126
    .local v34, "tag":Ljava/lang/String;
    const-string v40, "name"

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_270

    .line 1127
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v35

    .line 1128
    const/16 v40, 0x4

    move/from16 v0, v35

    move/from16 v1, v40

    if-ne v0, v1, :cond_221

    .line 1129
    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    goto :goto_221

    .line 1131
    :cond_270
    const-string/jumbo v40, "restrictions"

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_221

    .line 1132
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, readRestrictionsLocked(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_286
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_286} :catch_287
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12c .. :try_end_286} :catch_3a1
    .catchall {:try_start_12c .. :try_end_286} :catchall_39f

    goto :goto_221

    .line 1158
    .end local v20    # "outerDepth":I
    .end local v21    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v33    # "storedId":I
    .end local v34    # "tag":Ljava/lang/String;
    .end local v35    # "type":I
    .end local v39    # "valueString":Ljava/lang/String;
    :catch_287
    move-exception v14

    .line 1159
    .local v14, "ioe":Ljava/io/IOException;
    :goto_288
    :try_start_288
    invoke-virtual/range {v36 .. v36}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 1160
    const/16 v40, 0x6

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "IOException during readUserLocked for id "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1161
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2aa
    .catchall {:try_start_288 .. :try_end_2aa} :catchall_39f

    .line 1167
    if-eqz v10, :cond_2af

    .line 1169
    :try_start_2ac
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2af
    .catch Ljava/io/IOException; {:try_start_2ac .. :try_end_2af} :catch_39a

    .end local v14    # "ioe":Ljava/io/IOException;
    :cond_2af
    :goto_2af
    move-object/from16 v37, v36

    .end local v36    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v37    # "userFile":Landroid/util/XmlMoreAtomicFile;
    move/from16 v29, v28

    .line 1174
    .end local v28    # "retry":I
    .restart local v29    # "retry":I
    goto/16 :goto_9

    .line 1138
    .end local v29    # "retry":I
    .end local v37    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v21    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v28    # "retry":I
    .restart local v35    # "type":I
    .restart local v36    # "userFile":Landroid/util/XmlMoreAtomicFile;
    :cond_2b5
    :try_start_2b5
    new-instance v38, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v38

    move/from16 v1, p1

    invoke-direct {v0, v1, v15, v13, v11}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 1139
    .local v38, "userInfo":Landroid/content/pm/UserInfo;
    move/from16 v0, v32

    move-object/from16 v1, v38

    iput v0, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 1140
    move-object/from16 v0, v38

    iput-wide v6, v0, Landroid/content/pm/UserInfo;->creationTime:J

    .line 1141
    move-wide/from16 v0, v18

    move-object/from16 v2, v38

    iput-wide v0, v2, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 1142
    move/from16 v0, v22

    move-object/from16 v1, v38

    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->partial:Z

    .line 1143
    move-object/from16 v0, v38

    iput-boolean v12, v0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 1144
    move/from16 v0, v26

    move-object/from16 v1, v38

    iput v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, mUserRestrictions:Landroid/util/SparseArray;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, p1

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1146
    const-wide/16 v40, 0x0

    cmp-long v40, v30, v40

    if-eqz v40, :cond_333

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, mRestrictionsPinStates:Landroid/util/SparseArray;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;

    .line 1148
    .local v25, "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    if-nez v25, :cond_31d

    .line 1149
    new-instance v25, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;

    .end local v25    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 1150
    .restart local v25    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    move-object/from16 v0, p0

    iget-object v0, v0, mRestrictionsPinStates:Landroid/util/SparseArray;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, p1

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1152
    :cond_31d
    move-wide/from16 v0, v30

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J

    .line 1153
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->pinHash:Ljava/lang/String;

    .line 1154
    move-object/from16 v0, v25

    iput v9, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    .line 1155
    move-wide/from16 v0, v16

    move-object/from16 v2, v25

    iput-wide v0, v2, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->lastAttemptTime:J
    :try_end_333
    .catch Ljava/io/IOException; {:try_start_2b5 .. :try_end_333} :catch_287
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b5 .. :try_end_333} :catch_3a1
    .catchall {:try_start_2b5 .. :try_end_333} :catchall_39f

    .line 1167
    .end local v25    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    :cond_333
    if-eqz v10, :cond_338

    .line 1169
    :try_start_335
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_338
    .catch Ljava/io/IOException; {:try_start_335 .. :try_end_338} :catch_398

    .line 1176
    .end local v6    # "creationTime":J
    .end local v9    # "failedAttempts":I
    .end local v11    # "flags":I
    .end local v12    # "guestToRemove":Z
    .end local v13    # "iconPath":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "lastAttemptTime":J
    .end local v18    # "lastLoggedInTime":J
    .end local v21    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v22    # "partial":Z
    .end local v24    # "pinHash":Ljava/lang/String;
    .end local v26    # "profileGroupId":I
    .end local v27    # "restrictions":Landroid/os/Bundle;
    .end local v30    # "salt":J
    .end local v32    # "serialNumber":I
    .end local v35    # "type":I
    .end local v38    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_338
    :goto_338
    return-object v38

    .line 1162
    .end local v36    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v6    # "creationTime":J
    .restart local v9    # "failedAttempts":I
    .restart local v11    # "flags":I
    .restart local v12    # "guestToRemove":Z
    .restart local v13    # "iconPath":Ljava/lang/String;
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v16    # "lastAttemptTime":J
    .restart local v18    # "lastLoggedInTime":J
    .restart local v22    # "partial":Z
    .restart local v24    # "pinHash":Ljava/lang/String;
    .restart local v26    # "profileGroupId":I
    .restart local v27    # "restrictions":Landroid/os/Bundle;
    .restart local v30    # "salt":J
    .restart local v32    # "serialNumber":I
    .restart local v37    # "userFile":Landroid/util/XmlMoreAtomicFile;
    :catch_339
    move-exception v23

    move-object/from16 v36, v37

    .line 1163
    .end local v37    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .local v23, "pe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v36    # "userFile":Landroid/util/XmlMoreAtomicFile;
    :goto_33c
    :try_start_33c
    invoke-virtual/range {v36 .. v36}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 1164
    const/16 v40, 0x6

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "XmlPullParserException during readUserLocked for id "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1165
    invoke-virtual/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_35e
    .catchall {:try_start_33c .. :try_end_35e} :catchall_39f

    .line 1167
    if-eqz v10, :cond_2af

    .line 1169
    :try_start_360
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_363
    .catch Ljava/io/IOException; {:try_start_360 .. :try_end_363} :catch_365

    goto/16 :goto_2af

    .line 1170
    :catch_365
    move-exception v40

    goto/16 :goto_2af

    .line 1167
    .end local v23    # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v36    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v37    # "userFile":Landroid/util/XmlMoreAtomicFile;
    :catchall_368
    move-exception v40

    move-object/from16 v36, v37

    .end local v37    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v36    # "userFile":Landroid/util/XmlMoreAtomicFile;
    :goto_36b
    if-eqz v10, :cond_370

    .line 1169
    :try_start_36d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_370
    .catch Ljava/io/IOException; {:try_start_36d .. :try_end_370} :catch_39d

    .line 1171
    :cond_370
    :goto_370
    throw v40

    .line 1175
    .end local v6    # "creationTime":J
    .end local v9    # "failedAttempts":I
    .end local v11    # "flags":I
    .end local v12    # "guestToRemove":Z
    .end local v13    # "iconPath":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "lastAttemptTime":J
    .end local v18    # "lastLoggedInTime":J
    .end local v22    # "partial":Z
    .end local v24    # "pinHash":Ljava/lang/String;
    .end local v26    # "profileGroupId":I
    .end local v27    # "restrictions":Landroid/os/Bundle;
    .end local v30    # "salt":J
    .end local v32    # "serialNumber":I
    .end local v36    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v37    # "userFile":Landroid/util/XmlMoreAtomicFile;
    :cond_371
    const/16 v40, 0x6

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "failed to read user "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ", giving up"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1176
    const/16 v38, 0x0

    move-object/from16 v36, v37

    .end local v37    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v36    # "userFile":Landroid/util/XmlMoreAtomicFile;
    goto :goto_338

    .line 1170
    .restart local v6    # "creationTime":J
    .restart local v9    # "failedAttempts":I
    .restart local v11    # "flags":I
    .restart local v12    # "guestToRemove":Z
    .restart local v13    # "iconPath":Ljava/lang/String;
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v16    # "lastAttemptTime":J
    .restart local v18    # "lastLoggedInTime":J
    .restart local v21    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v22    # "partial":Z
    .restart local v24    # "pinHash":Ljava/lang/String;
    .restart local v26    # "profileGroupId":I
    .restart local v27    # "restrictions":Landroid/os/Bundle;
    .restart local v30    # "salt":J
    .restart local v32    # "serialNumber":I
    .restart local v35    # "type":I
    .restart local v38    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_398
    move-exception v40

    goto :goto_338

    .end local v21    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v35    # "type":I
    .end local v38    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v14    # "ioe":Ljava/io/IOException;
    :catch_39a
    move-exception v40

    goto/16 :goto_2af

    .end local v14    # "ioe":Ljava/io/IOException;
    :catch_39d
    move-exception v41

    goto :goto_370

    .line 1167
    :catchall_39f
    move-exception v40

    goto :goto_36b

    .line 1162
    :catch_3a1
    move-exception v23

    goto :goto_33c

    .line 1158
    .end local v36    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v37    # "userFile":Landroid/util/XmlMoreAtomicFile;
    :catch_3a3
    move-exception v14

    move-object/from16 v36, v37

    .end local v37    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v36    # "userFile":Landroid/util/XmlMoreAtomicFile;
    goto/16 :goto_288

    .restart local v21    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v35    # "type":I
    :cond_3a8
    move-object/from16 v37, v36

    .end local v36    # "userFile":Landroid/util/XmlMoreAtomicFile;
    .restart local v37    # "userFile":Landroid/util/XmlMoreAtomicFile;
    move/from16 v29, v28

    .end local v28    # "retry":I
    .restart local v29    # "retry":I
    goto/16 :goto_9
.end method

.method private removeDirectoryRecursive(Ljava/io/File;)V
    .registers 9
    .param p1, "parent"    # Ljava/io/File;

    .prologue
    .line 1674
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1675
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 1676
    .local v3, "files":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_d
    if-ge v4, v5, :cond_1c

    aget-object v2, v0, v4

    .line 1677
    .local v2, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1678
    .local v1, "child":Ljava/io/File;
    invoke-direct {p0, v1}, removeDirectoryRecursive(Ljava/io/File;)V

    .line 1676
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1681
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "files":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1c
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1682
    return-void
.end method

.method private removeRestrictionsForUser(IZ)V
    .registers 5
    .param p1, "userHandle"    # I
    .param p2, "unhideApps"    # Z

    .prologue
    .line 1840
    iget-object v1, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1842
    :try_start_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, p1}, setUserRestrictions(Landroid/os/Bundle;I)V

    .line 1844
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setRestrictionsChallenge(Ljava/lang/String;)Z

    .line 1846
    invoke-direct {p0, p1}, cleanAppRestrictions(I)V

    .line 1847
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_19

    .line 1848
    if-eqz p2, :cond_18

    .line 1849
    invoke-direct {p0, p1}, unhideAllInstalledAppsForUser(I)V

    .line 1851
    :cond_18
    return-void

    .line 1847
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private removeUserStateLocked(I)V
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    .line 1644
    iget-object v2, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 1645
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1646
    iget-object v2, p0, mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p0, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUserLILPw(Lcom/android/server/pm/UserManagerService;I)V

    .line 1649
    :cond_15
    iget-object v2, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1654
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/UserManagerService$4;

    invoke-direct {v3, p0, p1}, Lcom/android/server/pm/UserManagerService$4;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1663
    iget-object v2, p0, mRestrictionsPinStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1665
    new-instance v1, Landroid/util/XmlMoreAtomicFile;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, mUsersDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;)V

    .line 1666
    .local v1, "userFile":Landroid/util/XmlMoreAtomicFile;
    invoke-virtual {v1}, Landroid/util/XmlMoreAtomicFile;->delete()V

    .line 1668
    invoke-direct {p0}, writeUserListLocked()V

    .line 1669
    invoke-direct {p0}, updateUserIdsLocked()V

    .line 1670
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2}, removeDirectoryRecursive(Ljava/io/File;)V

    .line 1671
    return-void
.end method

.method private restrictionsFileNameToPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2140
    const-string/jumbo v0, "res_"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ".xml"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendProfileRemovedBroadcast(II)V
    .registers 7
    .param p1, "parentUserId"    # I
    .param p2, "removedUserId"    # I

    .prologue
    .line 1685
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1686
    .local v0, "managedProfileIntent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1688
    const-string v1, "android.intent.extra.USER"

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1689
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1690
    return-void
.end method

.method private sendUserInfoChangedBroadcast(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 508
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 509
    .local v0, "changedIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 510
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 511
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 512
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 513
    const-string v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DBG_USER] broadcast intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return-void
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 7
    .param p0, "ary"    # [B

    .prologue
    .line 1902
    const-string v0, "0123456789ABCDEF"

    .line 1903
    .local v0, "hex":Ljava/lang/String;
    const-string v2, ""

    .line 1904
    .local v2, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v3, p0

    if-ge v1, v3, :cond_43

    .line 1905
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1906
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1904
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1908
    :cond_43
    return-object v2
.end method

.method private unhideAllInstalledAppsForUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 1854
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/UserManagerService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/UserManagerService$5;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1874
    return-void
.end method

.method private updateUserIdsLocked()V
    .registers 7

    .prologue
    .line 2069
    const/4 v4, 0x0

    .line 2070
    .local v4, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v5, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_1b

    .line 2071
    iget-object v5, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget-boolean v5, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_18

    .line 2072
    add-int/lit8 v4, v4, 0x1

    .line 2070
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2075
    :cond_1b
    new-array v3, v4, [I

    .line 2076
    .local v3, "newUsers":[I
    const/4 v1, 0x0

    .line 2077
    .local v1, "n":I
    const/4 v0, 0x0

    :goto_1f
    iget-object v5, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_41

    .line 2078
    iget-object v5, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget-boolean v5, v5, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_3e

    .line 2079
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "n":I
    .local v2, "n":I
    iget-object v5, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v3, v1

    move v1, v2

    .line 2077
    .end local v2    # "n":I
    .restart local v1    # "n":I
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 2082
    :cond_41
    iput-object v3, p0, mUserIds:[I

    .line 2083
    return-void
.end method

.method private upgradeIfNecessaryLocked()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 828
    iget v1, p0, mUserVersion:I

    .line 829
    .local v1, "userVersion":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_2c

    .line 831
    iget-object v2, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 832
    .local v0, "user":Landroid/content/pm/UserInfo;
    const-string v2, "Primary"

    iget-object v3, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 833
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104060e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 834
    invoke-direct {p0, v0}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 836
    :cond_2b
    const/4 v1, 0x1

    .line 839
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_2c
    const/4 v2, 0x2

    if-ge v1, v2, :cond_47

    .line 841
    iget-object v2, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 842
    .restart local v0    # "user":Landroid/content/pm/UserInfo;
    iget v2, v0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_46

    .line 843
    iget v2, v0, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 844
    invoke-direct {p0, v0}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 846
    :cond_46
    const/4 v1, 0x2

    .line 850
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_47
    const/4 v2, 0x4

    if-ge v1, v2, :cond_4b

    .line 851
    const/4 v1, 0x4

    .line 854
    :cond_4b
    if-ge v1, v5, :cond_51

    .line 855
    invoke-direct {p0}, initDefaultGuestRestrictions()V

    .line 856
    const/4 v1, 0x5

    .line 859
    :cond_51
    if-ge v1, v5, :cond_78

    .line 860
    const-string v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, mUserVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " didn\'t upgrade as expected to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :goto_77
    return-void

    .line 863
    :cond_78
    iput v1, p0, mUserVersion:I

    .line 864
    invoke-direct {p0}, writeUserListLocked()V

    goto :goto_77
.end method

.method private writeApplicationRestrictionsLocked(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .prologue
    .line 1993
    const/4 v5, 0x0

    .line 1994
    .local v5, "fos":Ljava/io/FileOutputStream;
    new-instance v10, Landroid/util/XmlMoreAtomicFile;

    new-instance v14, Ljava/io/File;

    invoke-static/range {p3 .. p3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v15

    invoke-direct/range {p0 .. p1}, packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v10, v14}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;)V

    .line 1998
    .local v10, "restrictionsFile":Landroid/util/XmlMoreAtomicFile;
    :try_start_13
    invoke-virtual {v10}, Landroid/util/XmlMoreAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    .line 1999
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2002
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    new-instance v11, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v11}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2003
    .local v11, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v14, "utf-8"

    invoke-interface {v11, v2, v14}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2004
    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-interface {v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2005
    const-string v14, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v15, 0x1

    invoke-interface {v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2007
    const/4 v14, 0x0

    const-string/jumbo v15, "restrictions"

    invoke-interface {v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2009
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_45
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_101

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2010
    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 2011
    .local v12, "value":Ljava/lang/Object;
    const/4 v14, 0x0

    const-string v15, "entry"

    invoke-interface {v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2012
    const/4 v14, 0x0

    const-string v15, "key"

    invoke-interface {v11, v14, v15, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2014
    instance-of v14, v12, Ljava/lang/Boolean;

    if-eqz v14, :cond_8c

    .line 2015
    const/4 v14, 0x0

    const-string/jumbo v15, "type"

    const-string v16, "b"

    move-object/from16 v0, v16

    invoke-interface {v11, v14, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2016
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v14}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2033
    .end local v12    # "value":Ljava/lang/Object;
    :cond_79
    :goto_79
    const/4 v14, 0x0

    const-string v15, "entry"

    invoke-interface {v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_7f} :catch_80

    goto :goto_45

    .line 2040
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v8    # "key":Ljava/lang/String;
    .end local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_80
    move-exception v4

    .line 2041
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v10, v5}, Landroid/util/XmlMoreAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2042
    const-string v14, "UserManagerService"

    const-string v15, "Error writing application restrictions list"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_8b
    return-void

    .line 2017
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_8c
    :try_start_8c
    instance-of v14, v12, Ljava/lang/Integer;

    if-eqz v14, :cond_a3

    .line 2018
    const/4 v14, 0x0

    const-string/jumbo v15, "type"

    const-string v16, "i"

    move-object/from16 v0, v16

    invoke-interface {v11, v14, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2019
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v14}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_79

    .line 2020
    :cond_a3
    if-eqz v12, :cond_a9

    instance-of v14, v12, Ljava/lang/String;

    if-eqz v14, :cond_c0

    .line 2021
    :cond_a9
    const/4 v14, 0x0

    const-string/jumbo v15, "type"

    const-string/jumbo v16, "s"

    move-object/from16 v0, v16

    invoke-interface {v11, v14, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2022
    if-eqz v12, :cond_bd

    check-cast v12, Ljava/lang/String;

    .end local v12    # "value":Ljava/lang/Object;
    :goto_b9
    invoke-interface {v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_79

    .restart local v12    # "value":Ljava/lang/Object;
    :cond_bd
    const-string v12, ""

    goto :goto_b9

    .line 2024
    :cond_c0
    const/4 v14, 0x0

    const-string/jumbo v15, "type"

    const-string/jumbo v16, "sa"

    move-object/from16 v0, v16

    invoke-interface {v11, v14, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2025
    check-cast v12, [Ljava/lang/String;

    .end local v12    # "value":Ljava/lang/Object;
    move-object v0, v12

    check-cast v0, [Ljava/lang/String;

    move-object v13, v0

    .line 2026
    .local v13, "values":[Ljava/lang/String;
    const/4 v14, 0x0

    const-string v15, "m"

    array-length v0, v13

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v11, v14, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2027
    move-object v1, v13

    .local v1, "arr$":[Ljava/lang/String;
    array-length v9, v1

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_e4
    if-ge v7, v9, :cond_79

    aget-object v3, v1, v7

    .line 2028
    .local v3, "choice":Ljava/lang/String;
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2029
    if-eqz v3, :cond_fe

    .end local v3    # "choice":Ljava/lang/String;
    :goto_f1
    invoke-interface {v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2030
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2027
    add-int/lit8 v7, v7, 0x1

    goto :goto_e4

    .line 2029
    .restart local v3    # "choice":Ljava/lang/String;
    :cond_fe
    const-string v3, ""

    goto :goto_f1

    .line 2036
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "choice":Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "len$":I
    .end local v13    # "values":[Ljava/lang/String;
    :cond_101
    const/4 v14, 0x0

    const-string/jumbo v15, "restrictions"

    invoke-interface {v11, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2038
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2039
    invoke-virtual {v10, v5}, Landroid/util/XmlMoreAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_10e} :catch_80

    goto/16 :goto_8b
.end method

.method private writeBitmapLocked(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .registers 11
    .param p1, "info"    # Landroid/content/pm/UserInfo;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 665
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, mUsersDir:Ljava/io/File;

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 666
    .local v0, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "photo.png"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 667
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_29

    .line 668
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 669
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f9

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 675
    :cond_29
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v3, "os":Ljava/io/FileOutputStream;
    invoke-virtual {p2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 676
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_3e} :catch_42

    .line 679
    :cond_3e
    :try_start_3e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_41} :catch_42

    .line 686
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "os":Ljava/io/FileOutputStream;
    :goto_41
    return-void

    .line 683
    :catch_42
    move-exception v1

    .line 684
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v4, "UserManagerService"

    const-string v5, "Error setting photo for user "

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41

    .line 680
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_4b
    move-exception v4

    goto :goto_41
.end method

.method private writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 6
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "restrictionKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1222
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1223
    const/4 v0, 0x0

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, p3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1226
    :cond_12
    return-void
.end method

.method private writeRestrictionsLocked(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1007
    const-string/jumbo v0, "restrictions"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1008
    const-string v0, "no_config_wifi"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1009
    const-string v0, "no_modify_accounts"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1010
    const-string v0, "no_install_apps"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1011
    const-string v0, "no_uninstall_apps"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1012
    const-string v0, "no_share_location"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1013
    const-string v0, "no_install_unknown_sources"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1015
    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1016
    const-string v0, "no_usb_file_transfer"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1017
    const-string v0, "no_config_credentials"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1018
    const-string v0, "no_remove_user"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1019
    const-string v0, "no_debugging_features"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1020
    const-string v0, "no_config_vpn"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1021
    const-string v0, "no_config_tethering"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1022
    const-string v0, "no_factory_reset"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1023
    const-string v0, "no_add_user"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1024
    const-string v0, "ensure_verify_apps"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1025
    const-string v0, "no_config_cell_broadcasts"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1026
    const-string v0, "no_config_mobile_networks"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1027
    const-string v0, "no_control_apps"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1028
    const-string v0, "no_physical_media"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1029
    const-string v0, "no_unmute_microphone"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1030
    const-string v0, "no_adjust_volume"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1031
    const-string v0, "no_outgoing_calls"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1032
    const-string v0, "no_sms"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1033
    const-string v0, "no_create_windows"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1034
    const-string v0, "no_cross_profile_copy_paste"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1035
    const-string v0, "no_outgoing_beam"

    invoke-direct {p0, p1, p2, v0}, writeBoolean(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1036
    const-string/jumbo v0, "restrictions"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1037
    return-void
.end method

.method private writeUserListLocked()V
    .registers 11

    .prologue
    .line 969
    const/4 v2, 0x0

    .line 970
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v6, Landroid/util/XmlMoreAtomicFile;

    iget-object v7, p0, mUserListFile:Ljava/io/File;

    invoke-direct {v6, v7}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;)V

    .line 972
    .local v6, "userListFile":Landroid/util/XmlMoreAtomicFile;
    :try_start_8
    invoke-virtual {v6}, Landroid/util/XmlMoreAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 973
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 976
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 977
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v7, "utf-8"

    invoke-interface {v4, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 978
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 979
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 981
    const/4 v7, 0x0

    const-string/jumbo v8, "users"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 982
    const/4 v7, 0x0

    const-string v8, "nextSerialNumber"

    iget v9, p0, mNextSerialNumber:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 983
    const/4 v7, 0x0

    const-string/jumbo v8, "version"

    iget v9, p0, mUserVersion:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 985
    const/4 v7, 0x0

    const-string v8, "guestRestrictions"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 986
    iget-object v7, p0, mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {p0, v4, v7}, writeRestrictionsLocked(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V

    .line 987
    const/4 v7, 0x0

    const-string v8, "guestRestrictions"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 988
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5d
    iget-object v7, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_8a

    .line 989
    iget-object v7, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 990
    .local v5, "user":Landroid/content/pm/UserInfo;
    const/4 v7, 0x0

    const-string/jumbo v8, "user"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 991
    const/4 v7, 0x0

    const-string v8, "id"

    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 992
    const/4 v7, 0x0

    const-string/jumbo v8, "user"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 988
    add-int/lit8 v3, v3, 0x1

    goto :goto_5d

    .line 995
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_8a
    const/4 v7, 0x0

    const-string/jumbo v8, "users"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 997
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 998
    invoke-virtual {v6, v2}, Landroid/util/XmlMoreAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_97} :catch_98

    .line 1003
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "i":I
    .end local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_97
    return-void

    .line 999
    :catch_98
    move-exception v1

    .line 1000
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v6, v2}, Landroid/util/XmlMoreAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1001
    const-string v7, "UserManagerService"

    const-string v8, "Error writing user list"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97
.end method

.method private writeUserLocked(Landroid/content/pm/UserInfo;)V
    .registers 14
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 895
    const/4 v1, 0x0

    .line 896
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v6, Landroid/util/XmlMoreAtomicFile;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, mUsersDir:Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;)V

    .line 898
    .local v6, "userFile":Landroid/util/XmlMoreAtomicFile;
    :try_start_22
    invoke-virtual {v6}, Landroid/util/XmlMoreAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 899
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 902
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 903
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v7, "utf-8"

    invoke-interface {v5, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 904
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 905
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 907
    const/4 v7, 0x0

    const-string/jumbo v8, "user"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 908
    const/4 v7, 0x0

    const-string v8, "id"

    iget v9, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 909
    const/4 v7, 0x0

    const-string/jumbo v8, "serialNumber"

    iget v9, p1, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 910
    const/4 v7, 0x0

    const-string v8, "flags"

    iget v9, p1, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 911
    const/4 v7, 0x0

    const-string v8, "created"

    iget-wide v10, p1, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 912
    const/4 v7, 0x0

    const-string v8, "lastLoggedIn"

    iget-wide v10, p1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 914
    iget-object v7, p0, mRestrictionsPinStates:Landroid/util/SparseArray;

    iget v8, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;

    .line 915
    .local v3, "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    if-eqz v3, :cond_d3

    .line 916
    iget-wide v8, v3, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_aa

    .line 917
    const/4 v7, 0x0

    const-string/jumbo v8, "salt"

    iget-wide v10, v3, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 919
    :cond_aa
    iget-object v7, v3, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->pinHash:Ljava/lang/String;

    if-eqz v7, :cond_b7

    .line 920
    const/4 v7, 0x0

    const-string/jumbo v8, "pinHash"

    iget-object v9, v3, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->pinHash:Ljava/lang/String;

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 922
    :cond_b7
    iget v7, v3, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    if-eqz v7, :cond_d3

    .line 923
    const/4 v7, 0x0

    const-string v8, "failedAttempts"

    iget v9, v3, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 925
    const/4 v7, 0x0

    const-string v8, "lastAttemptMs"

    iget-wide v10, v3, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->lastAttemptTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 929
    :cond_d3
    iget-object v7, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v7, :cond_df

    .line 930
    const/4 v7, 0x0

    const-string v8, "icon"

    iget-object v9, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 932
    :cond_df
    iget-boolean v7, p1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v7, :cond_ed

    .line 933
    const/4 v7, 0x0

    const-string/jumbo v8, "partial"

    const-string/jumbo v9, "true"

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 935
    :cond_ed
    iget-boolean v7, p1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v7, :cond_fa

    .line 936
    const/4 v7, 0x0

    const-string v8, "guestToRemove"

    const-string/jumbo v9, "true"

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 938
    :cond_fa
    iget v7, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_10c

    .line 939
    const/4 v7, 0x0

    const-string/jumbo v8, "profileGroupId"

    iget v9, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 943
    :cond_10c
    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 944
    iget-object v7, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 945
    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 946
    iget-object v7, p0, mUserRestrictions:Landroid/util/SparseArray;

    iget v8, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 947
    .local v4, "restrictions":Landroid/os/Bundle;
    if-eqz v4, :cond_12c

    .line 948
    invoke-direct {p0, v5, v4}, writeRestrictionsLocked(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;)V

    .line 950
    :cond_12c
    const/4 v7, 0x0

    const-string/jumbo v8, "user"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 952
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 953
    invoke-virtual {v6, v1}, Landroid/util/XmlMoreAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_139} :catch_13a

    .line 958
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v3    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    .end local v4    # "restrictions":Landroid/os/Bundle;
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_139
    return-void

    .line 954
    :catch_13a
    move-exception v2

    .line 955
    .local v2, "ioe":Ljava/lang/Exception;
    const-string v7, "UserManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error writing user info "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    invoke-virtual {v6, v1}, Landroid/util/XmlMoreAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_139
.end method


# virtual methods
.method public checkRestrictionsChallenge(Ljava/lang/String;)I
    .registers 12
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 1775
    const-string v3, "Only system can verify the restrictions pin"

    invoke-static {v3}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 1776
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1777
    .local v1, "userId":I
    iget-object v4, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1778
    :try_start_c
    iget-object v3, p0, mRestrictionsPinStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;

    .line 1780
    .local v0, "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    if-eqz v0, :cond_22

    iget-wide v6, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_22

    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->pinHash:Ljava/lang/String;

    if-nez v3, :cond_25

    .line 1781
    :cond_22
    const/4 v2, -0x2

    monitor-exit v4

    .line 1801
    :goto_24
    return v2

    .line 1782
    :cond_25
    if-nez p1, :cond_48

    .line 1784
    invoke-direct {p0, v0}, getRemainingTimeForPinAttempt(Lcom/android/server/pm/UserManagerService$RestrictionsPinState;)I

    move-result v2

    .line 1785
    .local v2, "waitTime":I
    const-string v3, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remaining waittime peek="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    monitor-exit v4

    goto :goto_24

    .line 1804
    .end local v0    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    .end local v2    # "waitTime":I
    :catchall_45
    move-exception v3

    monitor-exit v4
    :try_end_47
    .catchall {:try_start_c .. :try_end_47} :catchall_45

    throw v3

    .line 1788
    .restart local v0    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    :cond_48
    :try_start_48
    invoke-direct {p0, v0}, getRemainingTimeForPinAttempt(Lcom/android/server/pm/UserManagerService$RestrictionsPinState;)I

    move-result v2

    .line 1789
    .restart local v2    # "waitTime":I
    const-string v3, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remaining waittime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    if-lez v2, :cond_68

    .line 1791
    monitor-exit v4

    goto :goto_24

    .line 1793
    :cond_68
    iget-wide v6, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J

    invoke-direct {p0, p1, v6, v7}, passwordToHash(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->pinHash:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 1794
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    .line 1795
    iget-object v3, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v3}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1796
    const/4 v2, -0x1

    monitor-exit v4

    goto :goto_24

    .line 1798
    :cond_87
    iget v3, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    .line 1799
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->lastAttemptTime:J

    .line 1800
    iget-object v3, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v3}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1801
    monitor-exit v4
    :try_end_9f
    .catchall {:try_start_48 .. :try_end_9f} :catchall_45

    goto :goto_24
.end method

.method public createKnoxContainer(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 21
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parentId"    # I

    .prologue
    .line 1389
    const-string v13, "Only the system can create users"

    invoke-static {v13}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 1390
    if-eqz p2, :cond_10

    .line 1391
    const-string v13, "UserManagerService"

    const-string v14, "Only user owner can have profiles"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    const/4 v11, 0x0

    .line 1441
    :goto_f
    return-object v11

    .line 1394
    :cond_10
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v13

    const-string v14, "no_add_user"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_2c

    .line 1396
    const-string v13, "UserManagerService"

    const-string v14, "Cannot add user. DISALLOW_ADD_USER is enabled."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    const/4 v11, 0x0

    goto :goto_f

    .line 1399
    :cond_2c
    const/16 v2, 0xe0

    .line 1400
    .local v2, "flags":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1401
    .local v4, "ident":J
    const/4 v10, 0x0

    .line 1403
    .local v10, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_33
    move-object/from16 v0, p0

    iget-object v14, v0, mInstallLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_e6

    .line 1404
    :try_start_38
    move-object/from16 v0, p0

    iget-object v15, v0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_e3

    .line 1405
    const/4 v3, 0x0

    .line 1406
    .local v3, "parent":Landroid/content/pm/UserInfo;
    const/16 v13, -0x2710

    move/from16 v0, p2

    if-eq v0, v13, :cond_5e

    .line 1407
    :try_start_44
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 1408
    if-nez v3, :cond_5e

    .line 1409
    const-string v13, "UserManagerService"

    const-string v16, "UserInfo for parent is null, hence exiting container creation!"

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    const/4 v11, 0x0

    monitor-exit v15
    :try_end_59
    .catchall {:try_start_44 .. :try_end_59} :catchall_e0

    :try_start_59
    monitor-exit v14
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_e3

    .line 1439
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_f

    .line 1413
    :cond_5e
    const/4 v13, 0x1

    :try_start_5f
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, getNextAvailableIdLocked(Z)I

    move-result v9

    .line 1414
    .local v9, "userId":I
    new-instance v11, Landroid/content/pm/UserInfo;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-direct {v11, v9, v0, v13, v2}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_6d
    .catchall {:try_start_5f .. :try_end_6d} :catchall_e0

    .line 1415
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    .local v11, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_6d
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, mBaseUserPath:Ljava/io/File;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v12, v13, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1416
    .local v12, "userPath":Ljava/io/File;
    iput v9, v11, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 1417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1418
    .local v6, "now":J
    const-wide v16, 0xdc46c32800L

    cmp-long v13, v6, v16

    if-lez v13, :cond_dd

    .end local v6    # "now":J
    :goto_8b
    iput-wide v6, v11, Landroid/content/pm/UserInfo;->creationTime:J

    .line 1419
    const/4 v13, 0x1

    iput-boolean v13, v11, Landroid/content/pm/UserInfo;->partial:Z

    .line 1420
    iget v13, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v13}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 1421
    move-object/from16 v0, p0

    iget-object v13, v0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v13, v9, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1422
    invoke-direct/range {p0 .. p0}, writeUserListLocked()V

    .line 1423
    if-eqz v3, :cond_ba

    .line 1424
    iget v13, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v13, v0, :cond_b6

    .line 1425
    iget v13, v3, Landroid/content/pm/UserInfo;->id:I

    iput v13, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1426
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1428
    :cond_b6
    iget v13, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    iput v13, v11, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 1430
    :cond_ba
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1431
    const/4 v13, 0x0

    iput-boolean v13, v11, Landroid/content/pm/UserInfo;->partial:Z

    .line 1432
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1433
    invoke-direct/range {p0 .. p0}, updateUserIdsLocked()V

    .line 1434
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1435
    .local v8, "restrictions":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v13, v0, mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v13, v9, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1436
    monitor-exit v15
    :try_end_d7
    .catchall {:try_start_6d .. :try_end_d7} :catchall_ee

    .line 1437
    :try_start_d7
    monitor-exit v14
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_eb

    .line 1439
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_f

    .line 1418
    .end local v8    # "restrictions":Landroid/os/Bundle;
    .restart local v6    # "now":J
    :cond_dd
    const-wide/16 v6, 0x0

    goto :goto_8b

    .line 1436
    .end local v6    # "now":J
    .end local v9    # "userId":I
    .end local v11    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v12    # "userPath":Ljava/io/File;
    .restart local v10    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_e0
    move-exception v13

    :goto_e1
    :try_start_e1
    monitor-exit v15
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_e0

    :try_start_e2
    throw v13

    .line 1437
    .end local v3    # "parent":Landroid/content/pm/UserInfo;
    :catchall_e3
    move-exception v13

    :goto_e4
    monitor-exit v14
    :try_end_e5
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_e3

    :try_start_e5
    throw v13
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e6

    .line 1439
    :catchall_e6
    move-exception v13

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13

    .line 1437
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v3    # "parent":Landroid/content/pm/UserInfo;
    .restart local v8    # "restrictions":Landroid/os/Bundle;
    .restart local v9    # "userId":I
    .restart local v11    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v12    # "userPath":Ljava/io/File;
    :catchall_eb
    move-exception v13

    move-object v10, v11

    .end local v11    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v10    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_e4

    .line 1436
    .end local v8    # "restrictions":Landroid/os/Bundle;
    .end local v10    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v12    # "userPath":Ljava/io/File;
    .restart local v11    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_ee
    move-exception v13

    move-object v10, v11

    .end local v11    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v10    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_e1
.end method

.method public createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 1293
    const-string v0, "Only the system can create users"

    invoke-static {v0}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 1294
    if-eqz p3, :cond_10

    .line 1295
    const-string v0, "UserManagerService"

    const-string v1, "Only user owner can have profiles"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    const/4 v0, 0x0

    .line 1298
    :goto_f
    return-object v0

    :cond_10
    invoke-direct {p0, p1, p2, p3}, createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v0

    goto :goto_f
.end method

.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 1303
    const-string v0, "Only the system can create users"

    invoke-static {v0}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 1305
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/multiuser/MultiUserManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/multiuser/MultiUserManager;->isUserCreationAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1306
    const/4 v0, 0x0

    .line 1309
    :goto_13
    return-object v0

    :cond_14
    const/16 v0, -0x2710

    invoke-direct {p0, p1, p2, v0}, createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v0

    goto :goto_13
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    .line 2146
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_41

    .line 2148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump UserManager from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " without permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2187
    :goto_40
    return-void

    .line 2156
    :cond_41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2157
    .local v2, "now":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2158
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2159
    :try_start_4d
    const-string v5, "Users:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_53
    iget-object v5, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_e5

    .line 2161
    iget-object v5, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 2162
    .local v4, "user":Landroid/content/pm/UserInfo;
    if-nez v4, :cond_68

    .line 2160
    :goto_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 2163
    :cond_68
    const-string v5, "  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v5, " serialNo="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2164
    iget-object v5, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget-object v7, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_8d

    const-string v5, " <removing> "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2165
    :cond_8d
    iget-boolean v5, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v5, :cond_96

    const-string v5, " <partial>"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2166
    :cond_96
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2167
    const-string v5, "    Created: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2168
    iget-wide v8, v4, Landroid/content/pm/UserInfo;->creationTime:J

    cmp-long v5, v8, v10

    if-nez v5, :cond_bd

    .line 2169
    const-string v5, "<unknown>"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2176
    :goto_a9
    const-string v5, "    Last logged in: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2177
    iget-wide v8, v4, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    cmp-long v5, v8, v10

    if-nez v5, :cond_d1

    .line 2178
    const-string v5, "<unknown>"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_65

    .line 2186
    .end local v0    # "i":I
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :catchall_ba
    move-exception v5

    monitor-exit v6
    :try_end_bc
    .catchall {:try_start_4d .. :try_end_bc} :catchall_ba

    throw v5

    .line 2171
    .restart local v0    # "i":I
    .restart local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_bd
    const/4 v5, 0x0

    :try_start_be
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2172
    iget-wide v8, v4, Landroid/content/pm/UserInfo;->creationTime:J

    sub-long v8, v2, v8

    invoke-static {v8, v9, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2173
    const-string v5, " ago"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2174
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_a9

    .line 2180
    :cond_d1
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2181
    iget-wide v8, v4, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    sub-long v8, v2, v8

    invoke-static {v8, v9, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2182
    const-string v5, " ago"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2183
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_65

    .line 2186
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_e5
    monitor-exit v6
    :try_end_e6
    .catchall {:try_start_be .. :try_end_e6} :catchall_ba

    goto/16 :goto_40
.end method

.method public exists(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 457
    iget-object v1, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 458
    :try_start_3
    iget-object v0, p0, mUserIds:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 459
    const-string v0, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not exists!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v0, 0x0

    monitor-exit v1

    .line 462
    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_2b

    .line 463
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method finishRemoveUser(I)V
    .registers 14
    .param p1, "userHandle"    # I

    .prologue
    .line 1603
    const-string v0, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishRemoveUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1608
    .local v10, "ident":J
    :try_start_1c
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1609
    .local v1, "addedIntent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1610
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1611
    const-string v0, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DBG_USER] broadcast intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    iget-object v0, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.MANAGE_USERS"

    new-instance v4, Lcom/android/server/pm/UserManagerService$3;

    invoke-direct {v4, p0, p1}, Lcom/android/server/pm/UserManagerService$3;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_57
    .catchall {:try_start_1c .. :try_end_57} :catchall_5b

    .line 1637
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1639
    return-void

    .line 1637
    .end local v1    # "addedIntent":Landroid/content/Intent;
    :catchall_5b
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1694
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1699
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-ne v1, p2, :cond_14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, p1}, getUidForPackage(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_19

    .line 1701
    :cond_14
    const-string v1, "Only system can get restrictions for other users/apps"

    invoke-static {v1}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 1703
    :cond_19
    iget-object v2, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1705
    :try_start_1c
    invoke-direct {p0, p2}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1706
    .local v0, "ui":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1707
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    monitor-exit v2

    .line 1711
    :goto_2b
    return-object v1

    :cond_2c
    invoke-direct {p0, p1, p2}, readApplicationRestrictionsLocked(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v2

    goto :goto_2b

    .line 1712
    .end local v0    # "ui":Landroid/content/pm/UserInfo;
    :catchall_32
    move-exception v1

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_1c .. :try_end_34} :catchall_32

    throw v1
.end method

.method public getDefaultGuestRestrictions()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 564
    const-string v0, "getDefaultGuestRestrictions"

    invoke-static {v0}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 565
    iget-object v1, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 566
    :try_start_8
    new-instance v0, Landroid/os/Bundle;

    iget-object v2, p0, mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit v1

    return-object v0

    .line 567
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 8
    .param p1, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    .line 393
    const-string v3, "get the profile parent"

    invoke-static {v3}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 394
    iget-object v3, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 395
    :try_start_9
    invoke-direct {p0, p1}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 396
    .local v1, "profile":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_19

    .line 397
    const-string v4, "UserManagerService"

    const-string/jumbo v5, "profile is null"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    monitor-exit v3

    .line 404
    :goto_18
    return-object v2

    .line 400
    :cond_19
    iget v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 401
    .local v0, "parentUserId":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_23

    .line 402
    monitor-exit v3

    goto :goto_18

    .line 406
    .end local v0    # "parentUserId":I
    .end local v1    # "profile":Landroid/content/pm/UserInfo;
    :catchall_20
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_20

    throw v2

    .line 404
    .restart local v0    # "parentUserId":I
    .restart local v1    # "profile":Landroid/content/pm/UserInfo;
    :cond_23
    :try_start_23
    invoke-direct {p0, v0}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_20

    goto :goto_18
.end method

.method public getProfiles(IZ)Ljava/util/List;
    .registers 7
    .param p1, "userId"    # I
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 354
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-eq p1, v2, :cond_1c

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getting profiles related to user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 357
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 359
    .local v0, "ident":J
    :try_start_20
    iget-object v3, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_2f

    .line 360
    :try_start_23
    invoke-direct {p0, p1, p2}, getProfilesLocked(IZ)Ljava/util/List;

    move-result-object v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_2c

    .line 363
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    .line 361
    :catchall_2c
    move-exception v2

    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    .line 363
    :catchall_2f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getUserHandle(I)I
    .registers 8
    .param p1, "userSerialNumber"    # I

    .prologue
    .line 2056
    iget-object v5, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2057
    :try_start_3
    iget-object v0, p0, mUserIds:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v2, :cond_18

    aget v3, v0, v1

    .line 2058
    .local v3, "userId":I
    invoke-direct {p0, v3}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/UserInfo;->serialNumber:I

    if-ne v4, p1, :cond_15

    monitor-exit v5

    .line 2061
    .end local v3    # "userId":I
    :goto_14
    return v3

    .line 2057
    .restart local v3    # "userId":I
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2061
    .end local v3    # "userId":I
    :cond_18
    const/4 v3, -0x1

    monitor-exit v5

    goto :goto_14

    .line 2062
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_1b
    move-exception v4

    monitor-exit v5
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v4
.end method

.method public getUserIcon(I)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 518
    iget-object v4, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 519
    :try_start_4
    iget-object v2, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 520
    .local v1, "info":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_12

    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_2d

    .line 521
    :cond_12
    const-string v2, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUserIcon: unknown user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    monitor-exit v4

    move-object v2, v3

    .line 532
    :goto_2c
    return-object v2

    .line 524
    :cond_2d
    iget-object v2, p0, mUsers:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v0, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 525
    .local v0, "callingGroupId":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_42

    iget v2, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v0, v2, :cond_47

    .line 527
    :cond_42
    const-string v2, "get the icon of a user who is not related"

    invoke-static {v2}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 529
    :cond_47
    iget-object v2, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-nez v2, :cond_4e

    .line 530
    monitor-exit v4

    move-object v2, v3

    goto :goto_2c

    .line 532
    :cond_4e
    iget-object v2, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    monitor-exit v4

    goto :goto_2c

    .line 533
    .end local v0    # "callingGroupId":I
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    :catchall_56
    move-exception v2

    monitor-exit v4
    :try_end_58
    .catchall {:try_start_4 .. :try_end_58} :catchall_56

    throw v2
.end method

.method public getUserIds()[I
    .registers 3

    .prologue
    .line 694
    iget-object v1, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 695
    :try_start_3
    iget-object v0, p0, mUserIds:[I

    monitor-exit v1

    return-object v0

    .line 696
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getUserIds(Z)[I
    .registers 15
    .param p1, "excludeDying"    # Z

    .prologue
    .line 702
    if-nez p1, :cond_7

    .line 703
    invoke-virtual {p0}, getUserIds()[I

    move-result-object v8

    .line 726
    :cond_6
    return-object v8

    .line 705
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 706
    .local v0, "finalUserList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v10, p0, sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v10, :cond_32

    .line 707
    iget-object v10, p0, sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v7

    .line 708
    .local v7, "pList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaInfo;

    .line 709
    .local v6, "pInfo":Landroid/content/pm/PersonaInfo;
    new-instance v10, Ljava/lang/Integer;

    iget v11, v6, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 712
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v7    # "pList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_32
    iget-object v11, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v11

    .line 713
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_36
    :try_start_36
    iget-object v10, p0, mUserIds:[I

    array-length v10, v10

    if-ge v1, v10, :cond_5a

    .line 714
    iget-object v10, p0, mUserIds:[I

    aget v9, v10, v1

    .line 716
    .local v9, "userId":I
    const/16 v10, 0x64

    if-lt v9, v10, :cond_4a

    const/16 v10, 0xc8

    if-gt v9, v10, :cond_4a

    .line 713
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 718
    :cond_4a
    new-instance v10, Ljava/lang/Integer;

    iget-object v12, p0, mUserIds:[I

    aget v12, v12, v1

    invoke-direct {v10, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 720
    .end local v9    # "userId":I
    :catchall_57
    move-exception v10

    monitor-exit v11
    :try_end_59
    .catchall {:try_start_36 .. :try_end_59} :catchall_57

    throw v10

    :cond_5a
    :try_start_5a
    monitor-exit v11
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_57

    .line 721
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    new-array v8, v10, [I

    .line 722
    .local v8, "uIds":[I
    const/4 v4, 0x0

    .line 723
    .local v4, "index":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_66
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 724
    .local v3, "id":Ljava/lang/Integer;
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v8, v4

    move v4, v5

    .line 725
    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_66
.end method

.method getUserIdsLPr()[I
    .registers 2

    .prologue
    .line 732
    iget-object v0, p0, mUserIds:[I

    return-object v0
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 430
    const-string/jumbo v0, "query user"

    invoke-static {v0}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 432
    :try_start_9
    invoke-direct {p0, p1}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 433
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public getUserRestrictions(I)Landroid/os/Bundle;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 592
    invoke-direct {p0, p1}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 593
    .local v1, "ui":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 594
    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 599
    :goto_e
    return-object v2

    .line 597
    :cond_f
    iget-object v3, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 598
    :try_start_12
    iget-object v2, p0, mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 599
    .local v0, "restrictions":Landroid/os/Bundle;
    if-eqz v0, :cond_26

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_21
    monitor-exit v3

    goto :goto_e

    .line 600
    .end local v0    # "restrictions":Landroid/os/Bundle;
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_23

    throw v2

    .line 599
    .restart local v0    # "restrictions":Landroid/os/Bundle;
    :cond_26
    :try_start_26
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_23

    goto :goto_21
.end method

.method public getUserSerialNumber(I)I
    .registers 4
    .param p1, "userHandle"    # I

    .prologue
    .line 2048
    iget-object v1, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2049
    :try_start_3
    invoke-virtual {p0, p1}, exists(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, -0x1

    monitor-exit v1

    .line 2050
    :goto_b
    return v0

    :cond_c
    invoke-direct {p0, p1}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    monitor-exit v1

    goto :goto_b

    .line 2051
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getUsers(Z)Ljava/util/List;
    .registers 8
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    const-string/jumbo v3, "query users"

    invoke-static {v3}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 337
    iget-object v4, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 338
    :try_start_9
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 339
    .local v2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    iget-object v3, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3f

    .line 340
    iget-object v3, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 341
    .local v1, "ui":Landroid/content/pm/UserInfo;
    iget-boolean v3, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_2c

    .line 339
    :cond_29
    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 344
    :cond_2c
    if-eqz p1, :cond_38

    iget-object v3, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_29

    .line 345
    :cond_38
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 349
    .end local v0    # "i":I
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    .end local v2    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :catchall_3c
    move-exception v3

    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_3c

    throw v3

    .line 348
    .restart local v0    # "i":I
    .restart local v2    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    :cond_3f
    :try_start_3f
    monitor-exit v4
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3c

    return-object v2
.end method

.method public hasRestrictionsChallenge()Z
    .registers 4

    .prologue
    .line 1818
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1819
    .local v0, "userId":I
    iget-object v2, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1820
    :try_start_7
    invoke-direct {p0, v0}, hasRestrictionsPinLocked(I)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 1821
    :catchall_d
    move-exception v1

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "restrictionKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 582
    iget-object v2, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 583
    :try_start_3
    iget-object v1, p0, mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 584
    .local v0, "restrictions":Landroid/os/Bundle;
    if-eqz v0, :cond_13

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_11
    monitor-exit v2

    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_11

    .line 585
    .end local v0    # "restrictions":Landroid/os/Bundle;
    :catchall_15
    move-exception v1

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public isRestricted()Z
    .registers 3

    .prologue
    .line 438
    iget-object v1, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 439
    :try_start_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 440
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public makeInitialized(I)V
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 537
    const-string v1, "makeInitialized"

    invoke-static {v1}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 538
    iget-object v2, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 539
    :try_start_8
    iget-object v1, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 540
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_16

    iget-boolean v1, v0, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_30

    .line 541
    :cond_16
    const-string v1, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeInitialized: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    monitor-exit v2

    .line 549
    :goto_2f
    return-void

    .line 544
    :cond_30
    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_3f

    .line 545
    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 546
    invoke-direct {p0, v0}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 548
    :cond_3f
    monitor-exit v2

    goto :goto_2f

    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :catchall_41
    move-exception v1

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public markGuestForDeletion(I)Z
    .registers 9
    .param p1, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1481
    const-string v5, "Only the system can remove users"

    invoke-static {v5}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 1482
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {p0, v5}, getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "no_remove_user"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1484
    const-string v4, "UserManagerService"

    const-string v5, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :goto_1e
    return v3

    .line 1488
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1491
    .local v0, "ident":J
    :try_start_23
    iget-object v5, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_5f

    .line 1492
    :try_start_26
    iget-object v6, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1493
    .local v2, "user":Landroid/content/pm/UserInfo;
    if-eqz p1, :cond_3a

    if-eqz v2, :cond_3a

    iget-object v6, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 1494
    :cond_3a
    monitor-exit v5
    :try_end_3b
    .catchall {:try_start_26 .. :try_end_3b} :catchall_5c

    .line 1511
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .line 1496
    :cond_3f
    :try_start_3f
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v6

    if-nez v6, :cond_4a

    .line 1497
    monitor-exit v5
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_5c

    .line 1511
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .line 1504
    :cond_4a
    const/4 v3, 0x1

    :try_start_4b
    iput-boolean v3, v2, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 1507
    iget v3, v2, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 1508
    invoke-direct {p0, v2}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1509
    monitor-exit v5
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_5c

    .line 1511
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v4

    .line 1513
    goto :goto_1e

    .line 1509
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_5c
    move-exception v3

    :try_start_5d
    monitor-exit v5
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    :try_start_5e
    throw v3
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5f

    .line 1511
    :catchall_5f
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public removeRestrictions()V
    .registers 3

    .prologue
    .line 1834
    const-string v1, "Only system can remove restrictions"

    invoke-static {v1}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 1835
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1836
    .local v0, "userHandle":I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, removeRestrictionsForUser(IZ)V

    .line 1837
    return-void
.end method

.method public removeUser(I)Z
    .registers 12
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1522
    const-string v7, "Only the system can remove users"

    invoke-static {v7}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 1523
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {p0, v7}, getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "no_remove_user"

    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 1525
    const-string v5, "UserManagerService"

    const-string v7, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    :goto_1e
    return v6

    .line 1529
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1532
    .local v2, "ident":J
    :try_start_23
    iget-object v7, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_a0

    .line 1533
    :try_start_26
    iget-object v8, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1534
    .local v4, "user":Landroid/content/pm/UserInfo;
    if-eqz p1, :cond_3a

    if-eqz v4, :cond_3a

    iget-object v8, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 1535
    :cond_3a
    monitor-exit v7
    :try_end_3b
    .catchall {:try_start_26 .. :try_end_3b} :catchall_9d

    .line 1598
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .line 1539
    :cond_3f
    :try_start_3f
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    if-nez v8, :cond_57

    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/app/enterprise/multiuser/MultiUserManager;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/multiuser/MultiUserManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/enterprise/multiuser/MultiUserManager;->isUserRemovalAllowed(Z)Z

    move-result v8

    if-nez v8, :cond_57

    .line 1541
    monitor-exit v7
    :try_end_53
    .catchall {:try_start_3f .. :try_end_53} :catchall_9d

    .line 1598
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .line 1544
    :cond_57
    :try_start_57
    iget-object v8, p0, mRemovingUserIds:Landroid/util/SparseBooleanArray;

    const/4 v9, 0x1

    invoke-virtual {v8, p1, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_9d

    .line 1546
    :try_start_5d
    iget-object v8, p0, mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v8, p1}, Lcom/android/internal/app/IAppOpsService;->removeUser(I)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_62} :catch_94
    .catchall {:try_start_5d .. :try_end_62} :catchall_9d

    .line 1553
    :goto_62
    const/4 v8, 0x1

    :try_start_63
    iput-boolean v8, v4, Landroid/content/pm/UserInfo;->partial:Z

    .line 1556
    iget v8, v4, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v8, v8, 0x40

    iput v8, v4, Landroid/content/pm/UserInfo;->flags:I

    .line 1557
    invoke-direct {p0, v4}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1558
    monitor-exit v7
    :try_end_6f
    .catchall {:try_start_63 .. :try_end_6f} :catchall_9d

    .line 1560
    :try_start_6f
    iget v7, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_81

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_81

    .line 1564
    iget v7, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7, v8}, sendProfileRemovedBroadcast(II)V

    .line 1567
    :cond_81
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-eqz v7, :cond_a5

    .line 1568
    new-instance v6, Lcom/android/server/pm/UserManagerService$1;

    invoke-direct {v6, p0, p1}, Lcom/android/server/pm/UserManagerService$1;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    invoke-virtual {v6}, Lcom/android/server/pm/UserManagerService$1;->start()V
    :try_end_8f
    .catchall {:try_start_6f .. :try_end_8f} :catchall_a0

    .line 1598
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v5

    goto :goto_1e

    .line 1547
    :catch_94
    move-exception v0

    .line 1548
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_95
    const-string v8, "UserManagerService"

    const-string v9, "Unable to notify AppOpsService of removing user"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_62

    .line 1558
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :catchall_9d
    move-exception v5

    monitor-exit v7
    :try_end_9f
    .catchall {:try_start_95 .. :try_end_9f} :catchall_9d

    :try_start_9f
    throw v5
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_a0

    .line 1598
    :catchall_a0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1580
    .restart local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_a5
    :try_start_a5
    const-string v7, "UserManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Stopping user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_a5 .. :try_end_bd} :catchall_a0

    .line 1583
    :try_start_bd
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    new-instance v8, Lcom/android/server/pm/UserManagerService$2;

    invoke-direct {v8, p0}, Lcom/android/server/pm/UserManagerService$2;-><init>(Lcom/android/server/pm/UserManagerService;)V

    invoke-interface {v7, p1, v8}, Landroid/app/IActivityManager;->stopUser(ILandroid/app/IStopUserCallback;)I
    :try_end_c9
    .catch Landroid/os/RemoteException; {:try_start_bd .. :try_end_c9} :catch_d2
    .catchall {:try_start_bd .. :try_end_c9} :catchall_a0

    move-result v1

    .line 1596
    .local v1, "res":I
    if-nez v1, :cond_d8

    .line 1598
    :goto_cc
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v5

    goto/16 :goto_1e

    .line 1593
    .end local v1    # "res":I
    :catch_d2
    move-exception v0

    .line 1598
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1e

    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "res":I
    :cond_d8
    move v5, v6

    .line 1596
    goto :goto_cc
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restrictions"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .prologue
    .line 1718
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-ne v2, p3, :cond_14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, p1}, getUidForPackage(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1720
    :cond_14
    const-string v2, "Only system can set restrictions for other users/apps"

    invoke-static {v2}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 1722
    :cond_19
    iget-object v3, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1723
    if-eqz p2, :cond_24

    :try_start_1e
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1724
    :cond_24
    invoke-direct {p0, p1, p3}, cleanAppRestrictionsForPackage(Ljava/lang/String;I)V

    .line 1735
    :goto_27
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_56

    .line 1737
    invoke-direct {p0, p1, p3}, isPackageInstalled(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1739
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1740
    .local v0, "changeIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1741
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1742
    iget-object v2, p0, mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1744
    .end local v0    # "changeIntent":Landroid/content/Intent;
    :cond_47
    :goto_47
    return-void

    .line 1727
    :cond_48
    :try_start_48
    invoke-direct {p0, p3}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1728
    .local v1, "ui":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_59

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 1729
    monitor-exit v3

    goto :goto_47

    .line 1735
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    :catchall_56
    move-exception v2

    monitor-exit v3
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_56

    throw v2

    .line 1733
    .restart local v1    # "ui":Landroid/content/pm/UserInfo;
    :cond_59
    :try_start_59
    invoke-direct {p0, p1, p2, p3}, writeApplicationRestrictionsLocked(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_56

    goto :goto_27
.end method

.method public setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "restrictions"    # Landroid/os/Bundle;

    .prologue
    .line 572
    const-string/jumbo v0, "setDefaultGuestRestrictions"

    invoke-static {v0}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 573
    iget-object v1, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 574
    :try_start_9
    iget-object v0, p0, mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 575
    iget-object v0, p0, mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 576
    invoke-direct {p0}, writeUserListLocked()V

    .line 577
    monitor-exit v1

    .line 578
    return-void

    .line 577
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public setRestrictionsChallenge(Ljava/lang/String;)Z
    .registers 12
    .param p1, "newPin"    # Ljava/lang/String;

    .prologue
    .line 1748
    const-string v3, "Only system can modify the restrictions pin"

    invoke-static {v3}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 1749
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 1750
    .local v2, "userId":I
    iget-object v4, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1751
    :try_start_c
    iget-object v3, p0, mRestrictionsPinStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;

    .line 1752
    .local v1, "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    if-nez v1, :cond_1b

    .line 1753
    new-instance v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;

    .end local v1    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 1755
    .restart local v1    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    :cond_1b
    if-nez p1, :cond_37

    .line 1756
    const-wide/16 v6, 0x0

    iput-wide v6, v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J

    .line 1757
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->pinHash:Ljava/lang/String;

    .line 1767
    :goto_24
    iget-object v3, p0, mRestrictionsPinStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1768
    iget-object v3, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v3}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 1769
    monitor-exit v4
    :try_end_35
    .catchall {:try_start_c .. :try_end_35} :catchall_4f

    .line 1770
    const/4 v3, 0x1

    return v3

    .line 1760
    :cond_37
    :try_start_37
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J
    :try_end_43
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_37 .. :try_end_43} :catch_52
    .catchall {:try_start_37 .. :try_end_43} :catchall_4f

    .line 1764
    :goto_43
    :try_start_43
    iget-wide v6, v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J

    invoke-direct {p0, p1, v6, v7}, passwordToHash(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->pinHash:Ljava/lang/String;

    .line 1765
    const/4 v3, 0x0

    iput v3, v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->failedAttempts:I

    goto :goto_24

    .line 1769
    .end local v1    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    :catchall_4f
    move-exception v3

    monitor-exit v4
    :try_end_51
    .catchall {:try_start_43 .. :try_end_51} :catchall_4f

    throw v3

    .line 1761
    .restart local v1    # "pinState":Lcom/android/server/pm/UserManagerService$RestrictionsPinState;
    :catch_52
    move-exception v0

    .line 1762
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_53
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x43e0000000000000L    # 9.223372036854776E18

    mul-double/2addr v6, v8

    double-to-long v6, v6

    iput-wide v6, v1, Lcom/android/server/pm/UserManagerService$RestrictionsPinState;->salt:J
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_4f

    goto :goto_43
.end method

.method public setUserEnabled(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 418
    const-string v1, "enable user"

    invoke-static {v1}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 419
    iget-object v2, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 420
    :try_start_8
    invoke-direct {p0, p1}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 421
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 422
    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/content/pm/UserInfo;->flags:I

    .line 423
    invoke-direct {p0, v0}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 425
    :cond_1d
    monitor-exit v2

    .line 426
    return-void

    .line 425
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 489
    const-string/jumbo v3, "update users"

    invoke-static {v3}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 490
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 492
    .local v0, "ident":J
    :try_start_a
    iget-object v4, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_4a

    .line 493
    :try_start_d
    iget-object v3, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 494
    .local v2, "info":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_1b

    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_39

    .line 495
    :cond_1b
    const-string v3, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUserIcon: unknown user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    monitor-exit v4
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_47

    .line 503
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 505
    :goto_38
    return-void

    .line 498
    :cond_39
    :try_start_39
    invoke-direct {p0, v2, p2}, writeBitmapLocked(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    .line 499
    invoke-direct {p0, v2}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 500
    monitor-exit v4
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_47

    .line 501
    :try_start_40
    invoke-direct {p0, p1}, sendUserInfoChangedBroadcast(I)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_4a

    .line 503
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_38

    .line 500
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    :catchall_47
    move-exception v3

    :try_start_48
    monitor-exit v4
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    :try_start_49
    throw v3
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4a

    .line 503
    :catchall_4a
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setUserName(ILjava/lang/String;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 468
    const-string/jumbo v2, "rename users"

    invoke-static {v2}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 469
    const/4 v0, 0x0

    .line 470
    .local v0, "changed":Z
    iget-object v3, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 471
    :try_start_a
    iget-object v2, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 472
    .local v1, "info":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_18

    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_33

    .line 473
    :cond_18
    const-string v2, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUserName: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    monitor-exit v3

    .line 485
    :cond_32
    :goto_32
    return-void

    .line 476
    :cond_33
    if-eqz p2, :cond_43

    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 477
    iput-object p2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 478
    invoke-direct {p0, v1}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 479
    const/4 v0, 0x1

    .line 481
    :cond_43
    monitor-exit v3
    :try_end_44
    .catchall {:try_start_a .. :try_end_44} :catchall_4a

    .line 482
    if-eqz v0, :cond_32

    .line 483
    invoke-direct {p0, p1}, sendUserInfoChangedBroadcast(I)V

    goto :goto_32

    .line 481
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    :catchall_4a
    move-exception v2

    :try_start_4b
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v2
.end method

.method public setUserRestrictions(Landroid/os/Bundle;I)V
    .registers 10
    .param p1, "restrictions"    # Landroid/os/Bundle;
    .param p2, "userId"    # I

    .prologue
    .line 605
    const-string/jumbo v4, "setUserRestrictions"

    invoke-static {v4}, checkManageUsersPermission(Ljava/lang/String;)V

    .line 606
    if-nez p1, :cond_9

    .line 626
    :cond_8
    :goto_8
    return-void

    .line 608
    :cond_9
    invoke-direct {p0, p2}, getUserInfoLocked(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 609
    .local v1, "ui":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v4

    if-nez v4, :cond_8

    .line 613
    :cond_15
    iget-object v5, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 614
    :try_start_18
    iget-object v4, p0, mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    .line 615
    iget-object v4, p0, mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v4, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 616
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_31
    .catchall {:try_start_18 .. :try_end_31} :catchall_4f

    move-result-wide v2

    .line 618
    .local v2, "token":J
    :try_start_32
    iget-object v6, p0, mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v4, p0, mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-interface {v6, v4, p2}, Lcom/android/internal/app/IAppOpsService;->setUserRestrictions(Landroid/os/Bundle;I)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3f} :catch_52
    .catchall {:try_start_32 .. :try_end_3f} :catchall_5e

    .line 622
    :try_start_3f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 624
    :goto_42
    iget-object v4, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v4}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 625
    monitor-exit v5

    goto :goto_8

    .end local v2    # "token":J
    :catchall_4f
    move-exception v4

    monitor-exit v5
    :try_end_51
    .catchall {:try_start_3f .. :try_end_51} :catchall_4f

    throw v4

    .line 619
    .restart local v2    # "token":J
    :catch_52
    move-exception v0

    .line 620
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_53
    const-string v4, "UserManagerService"

    const-string v6, "Unable to notify AppOpsService of UserRestrictions"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_5e

    .line 622
    :try_start_5a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_42

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_5e
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_63
    .catchall {:try_start_5a .. :try_end_63} :catchall_4f
.end method

.method systemReady()V
    .registers 6

    .prologue
    .line 322
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, userForeground(I)V

    .line 323
    const-string v2, "appops"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    iput-object v2, p0, mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 325
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    iget-object v2, p0, mUserIds:[I

    array-length v2, v2

    if-ge v1, v2, :cond_37

    .line 327
    :try_start_16
    iget-object v3, p0, mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, mUserRestrictions:Landroid/util/SparseArray;

    iget-object v4, p0, mUserIds:[I

    aget v4, v4, v1

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    iget-object v4, p0, mUserIds:[I

    aget v4, v4, v1

    invoke-interface {v3, v2, v4}, Lcom/android/internal/app/IAppOpsService;->setUserRestrictions(Landroid/os/Bundle;I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2b} :catch_2e

    .line 325
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 328
    :catch_2e
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "UserManagerService"

    const-string v3, "Unable to notify AppOpsService of UserRestrictions"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 332
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_37
    return-void
.end method

.method public userForeground(I)V
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 2090
    iget-object v4, p0, mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2091
    :try_start_3
    iget-object v3, p0, mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2092
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2093
    .local v0, "now":J
    if-eqz v2, :cond_15

    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_30

    .line 2094
    :cond_15
    const-string v3, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "userForeground: unknown user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    monitor-exit v4

    .line 2102
    :goto_2f
    return-void

    .line 2097
    :cond_30
    const-wide v6, 0xdc46c32800L

    cmp-long v3, v0, v6

    if-lez v3, :cond_3e

    .line 2098
    iput-wide v0, v2, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    .line 2099
    invoke-direct {p0, v2}, writeUserLocked(Landroid/content/pm/UserInfo;)V

    .line 2101
    :cond_3e
    monitor-exit v4

    goto :goto_2f

    .end local v0    # "now":J
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :catchall_40
    move-exception v3

    monitor-exit v4
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v3
.end method
