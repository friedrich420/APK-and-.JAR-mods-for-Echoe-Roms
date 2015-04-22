.class public Lcom/android/server/SEAMService;
.super Lcom/sec/enterprise/knox/seams/ISEAMS$Stub;
.source "SEAMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SEAMService$DrsHandler;,
        Lcom/android/server/SEAMService$SpdHandler;,
        Lcom/android/server/SEAMService$BrHandler;
    }
.end annotation


# static fields
.field private static final BUILD_FINGERPRINT:Ljava/lang/String; = "ro.build.date"

.field private static final CONTEXT_FILE:Ljava/lang/String; = "file_contexts"

.field private static final DECRYPT_CHECK_PROPERTY:Ljava/lang/String; = "vold.decrypt"

.field private static final DRS_SAVED_BUILD_FINGERPRINT:Ljava/lang/String; = "persist.sys.drs.date"

.field private static final DRS_SYSTEM_PROPERTY:Ljava/lang/String; = "persist.sys.drs.enforce"

.field private static final ERROR:I = -0x1

.field public static final GOOD_CONTAINER:I = 0x1

.field private static final GSD_CATEGORY:I = 0x66

.field private static final HEX:[C

.field private static final LABELDONE:Ljava/lang/String; = "LABELDONE"

.field private static final MACPERMISSIONS_FILE:Ljava/lang/String; = "mac_permissions.xml"

.field private static MAC_POLICY_FILE:Ljava/io/File; = null

.field private static MAX_BYTE_ARRAY_SIZE:I = 0x0

.field private static final MDM_POLICY_UPDATE:Ljava/lang/String; = "persist.sys.mdm.auto"

.field private static final MDM_SEANDROID_DUMPSTATE_PROPERTY:Ljava/lang/String; = "persist.security.mdm.SElogs"

.field public static final MYCONTAINER:I = 0x2

.field public static final NON_CONTAINER_TYPE:I = 0x0

.field private static final NeedBadge:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final ONELABEL:Ljava/lang/String; = "ONELABEL"

.field private static final PERSONA_LOWER_BOUNDARY:I = 0x64

.field private static final PERSONA_UPPER_BOUNDARY:I = 0xc7

.field private static final POLICY_FILE:Ljava/lang/String; = "sepolicy"

.field private static final PROPERTY_FILE:Ljava/lang/String; = "property_contexts"

.field private static final RELABEL_APP_DIR:I = 0x4

.field private static final RELABEL_DATA_DIR:I = 0x2

.field private static final RESTORECONALL:Ljava/lang/String; = "RESTORECONALL"

.field private static final SEAMS_PERMS:[Ljava/lang/String;

.field private static final SEAMS_Version:Ljava/lang/String; = "2.1"

.field private static final SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/"

.field private static final SECONTEXT_FILE:Ljava/lang/String; = "seapp_contexts"

.field private static final SECURED_APPTYPE:I = 0x1

.field public static SELF_PID:I = 0x0

.field private static final SPD_COMPLETE_INTENT:Ljava/lang/String; = "com.samsung.spdsuccess"

.field private static final SPD_SBARELOAD_PERMISSION:Ljava/lang/String; = "com.samsung.spd.SBA_RELOAD"

.field private static final SPD_SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/spota/"

.field private static final SPOTA_PACKAGE:Ljava/lang/String; = "com.sec.android.app.spota"

.field private static final TAG:Ljava/lang/String; = "SEAMService"

.field private static final TRUSTED_APPTYPE:I = 0x2

.field private static final UNCRYPT_CHECK_PROPERTY:Ljava/lang/String; = "ro.crypto.state"

.field private static bootCompleted:Z = false

.field private static final containerStrings:[Ljava/lang/String;

.field private static instance:[Lcom/android/server/SEAMSContainer; = null

.field private static mBootReceiver:Landroid/content/BroadcastReceiver; = null

.field static mDrsHandler:Lcom/android/server/SEAMService$DrsHandler; = null

.field static mDrsHandlerThread:Landroid/os/HandlerThread; = null

.field private static mSKLog:Lcom/android/server/SKLogger; = null

.field private static mSPDCompleteReceiver:Landroid/content/BroadcastReceiver; = null

.field private static final mSetPolicy:Ljava/lang/Object;

.field private static policyDataBytes:[B = null

.field private static policyDataBytesPosition:I = 0x0

.field private static policyFileSize:I = 0x0

.field private static policyHash:Ljava/lang/String; = null

.field private static final supportedContainers:I = 0x5


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mHandler:Lcom/android/server/SEAMService$BrHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field final mLock:Ljava/lang/Object;

.field private mPMS:Lcom/android/server/pm/PackageManagerService;

.field mPersona:Landroid/os/PersonaManager;

.field private final sHandler:Lcom/android/server/SEAMService$SpdHandler;

.field private final sHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 142
    sput v4, SELF_PID:I

    .line 156
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/SEAMSContainer;

    sput-object v0, instance:[Lcom/android/server/SEAMSContainer;

    .line 157
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, mSKLog:Lcom/android/server/SKLogger;

    .line 160
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "good"

    aput-object v1, v0, v4

    const-string v1, "fixmo"

    aput-object v1, v0, v6

    const-string v1, "container"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "mycontainer"

    aput-object v2, v0, v1

    sput-object v0, containerStrings:[Ljava/lang/String;

    .line 162
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_68

    sput-object v0, HEX:[C

    .line 164
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "com.sec.enterprise.knox.permission.KNOX_SEAMS"

    aput-object v1, v0, v4

    const-string v1, "com.sec.enterprise.knox.permission.KNOX_SEAMS_SEPOLICY"

    aput-object v1, v0, v6

    sput-object v0, SEAMS_PERMS:[Ljava/lang/String;

    .line 191
    sput-object v3, mDrsHandlerThread:Landroid/os/HandlerThread;

    .line 192
    sput-object v3, mDrsHandler:Lcom/android/server/SEAMService$DrsHandler;

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, NeedBadge:Ljava/util/HashMap;

    .line 214
    sput-object v3, policyDataBytes:[B

    .line 215
    sput v5, policyDataBytesPosition:I

    .line 216
    sput-object v3, policyHash:Ljava/lang/String;

    .line 217
    sput v5, policyFileSize:I

    .line 229
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/security/mac_permissions.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, MAC_POLICY_FILE:Ljava/io/File;

    .line 232
    const/high16 v0, 0x3200000

    sput v0, MAX_BYTE_ARRAY_SIZE:I

    .line 237
    new-array v0, v4, [Ljava/lang/Object;

    sput-object v0, mSetPolicy:Ljava/lang/Object;

    .line 238
    sput-object v3, mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 239
    sput-object v3, mSPDCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 240
    sput-boolean v4, bootCompleted:Z

    return-void

    .line 162
    :array_68
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/sec/enterprise/knox/seams/ISEAMS$Stub;-><init>()V

    .line 194
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, p0, mLock:Ljava/lang/Object;

    .line 241
    const/4 v4, 0x0

    iput-object v4, p0, mPersona:Landroid/os/PersonaManager;

    .line 252
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 253
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "SEAMService"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 254
    iget-object v4, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 255
    new-instance v4, Lcom/android/server/SEAMService$BrHandler;

    iget-object v5, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/SEAMService$BrHandler;-><init>(Lcom/android/server/SEAMService;Landroid/os/Looper;)V

    iput-object v4, p0, mHandler:Lcom/android/server/SEAMService$BrHandler;

    .line 256
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "SPD"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, sHandlerThread:Landroid/os/HandlerThread;

    .line 257
    iget-object v4, p0, sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 258
    new-instance v4, Lcom/android/server/SEAMService$SpdHandler;

    iget-object v5, p0, sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/SEAMService$SpdHandler;-><init>(Lcom/android/server/SEAMService;Landroid/os/Looper;)V

    iput-object v4, p0, sHandler:Lcom/android/server/SEAMService$SpdHandler;

    .line 259
    invoke-direct {p0}, registerBootReceiver()V

    .line 260
    invoke-direct {p0}, registerSPDCompleteReceiver()V

    .line 261
    invoke-static {}, Lcom/android/server/ServiceKeeper;->getServiceKeeper()Lcom/android/server/ServiceKeeper;

    move-result-object v2

    .line 262
    .local v2, "serviceKeeper":Lcom/android/server/ServiceKeeper;
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    move-result v1

    .line 263
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    sput v4, SELF_PID:I

    .line 264
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 268
    invoke-direct {p0}, checkFingerprintAndRelabelIfNeeded()V

    .line 275
    :try_start_63
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/security/spota/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    .local v3, "spdDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7d

    .line 278
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 279
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 280
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_7d} :catch_7e

    .line 286
    .end local v3    # "spdDir":Ljava/io/File;
    :cond_7d
    :goto_7d
    return-void

    .line 282
    :catch_7e
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string v6, "Issue with SPD directory"

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7d
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 139
    sput-boolean p0, bootCompleted:Z

    return p0
.end method

.method static synthetic access$100()Lcom/android/server/SKLogger;
    .registers 1

    .prologue
    .line 139
    sget-object v0, mSKLog:Lcom/android/server/SKLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SEAMService;)Lcom/android/server/pm/PackageManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SEAMService;

    .prologue
    .line 139
    iget-object v0, p0, mPMS:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/SEAMService;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SEAMService;
    .param p1, "x1"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 139
    iput-object p1, p0, mPMS:Lcom/android/server/pm/PackageManagerService;

    return-object p1
.end method

.method private checkFingerprintAndRelabelIfNeeded()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 609
    const-string/jumbo v4, "ro.build.date"

    const-string v5, "NONE"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "curbld":Ljava/lang/String;
    const-string/jumbo v4, "persist.sys.drs.date"

    const-string v5, "NONE"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 617
    .local v2, "oldbld":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eq v4, v6, :cond_86

    .line 626
    const/4 v3, 0x0

    .line 627
    .local v3, "val":Ljava/lang/String;
    const-string/jumbo v4, "persist.security.good.enable"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 628
    if-eqz v3, :cond_43

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 629
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v6, v4}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v1

    .line 630
    .local v1, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v1, :cond_43

    .line 631
    invoke-virtual {v1}, Lcom/android/server/SEAMSContainer;->addAgentEntryAfterFotaAndReload()I

    move-result v4

    if-nez v4, :cond_43

    .line 633
    const-string/jumbo v4, "persist.security.good.enable"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    .end local v1    # "instanceCon":Lcom/android/server/SEAMSContainer;
    :cond_43
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, relabelData(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    if-ne v4, v6, :cond_86

    .line 641
    const-string/jumbo v4, "ro.crypto.state"

    const-string v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "unencrypted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_80

    const-string/jumbo v4, "vold.decrypt"

    const-string v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "trigger_restart_framework"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_80

    const-string/jumbo v4, "vold.decrypt"

    const-string v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "trigger_reset_main"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 643
    :cond_80
    const-string/jumbo v4, "persist.sys.drs.date"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    .end local v3    # "val":Ljava/lang/String;
    :cond_86
    return-void
.end method

.method private checkSEAMSPermission(IILjava/lang/String;Z)Z
    .registers 12
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "perm"    # Ljava/lang/String;
    .param p4, "ownerOnly"    # Z

    .prologue
    .line 389
    const/4 v3, 0x0

    .line 393
    .local v3, "ret":Z
    const/16 v4, 0x3e8

    if-ne p1, v4, :cond_b

    sget v4, SELF_PID:I

    if-ne p2, v4, :cond_b

    .line 395
    const/4 v4, 0x1

    .line 418
    :goto_a
    return v4

    .line 399
    :cond_b
    :try_start_b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 400
    .local v1, "mPM":Landroid/content/pm/IPackageManager;
    const/4 v2, 0x0

    .line 401
    .local v2, "packageName":Ljava/lang/String;
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4, p2, p1}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 404
    invoke-interface {v1, p3, v2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_30

    .line 406
    if-eqz p4, :cond_2f

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-eqz v4, :cond_2f

    .line 407
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string/jumbo v6, "ownerOnly condition not met for global scope api"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2e} :catch_32

    .line 408
    const/4 v3, 0x0

    .line 410
    :cond_2f
    const/4 v3, 0x1

    .end local v1    # "mPM":Landroid/content/pm/IPackageManager;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_30
    :goto_30
    move v4, v3

    .line 418
    goto :goto_a

    .line 414
    :catch_32
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string v6, "expection in check SEAMS permissions"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30
.end method

.method private checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "perm"    # Ljava/lang/String;
    .param p3, "ownerOnly"    # Z

    .prologue
    const/4 v2, 0x1

    .line 366
    if-eqz p3, :cond_c

    .line 367
    :try_start_3
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 384
    :goto_b
    return v2

    .line 373
    :cond_c
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_24

    move-result-object p1

    .line 375
    goto :goto_b

    .line 377
    :catch_15
    move-exception v1

    .line 378
    .local v1, "se":Ljava/lang/SecurityException;
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string v4, "checkSEAMSPermissionByContext, SecurityException, return false"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 384
    .end local v1    # "se":Ljava/lang/SecurityException;
    :goto_22
    const/4 v2, 0x0

    goto :goto_b

    .line 380
    :catch_24
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string v4, "checkSEAMSPermissionByContext, Exception, return false"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22
.end method

.method private constructLabelEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p1, "dataDir"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    const/16 v1, 0x2c

    .line 701
    if-eqz p1, :cond_27

    if-eqz p2, :cond_27

    if-eqz p3, :cond_27

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 703
    .local v0, "msg":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 705
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 709
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 711
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 713
    .end local v0    # "msg":Ljava/lang/StringBuilder;
    :goto_26
    return-object v1

    :cond_27
    const/4 v1, 0x0

    goto :goto_26
.end method

.method private copyFiles(Ljava/lang/String;[B)Z
    .registers 12
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 726
    const/4 v4, 0x0

    .line 728
    .local v4, "ret":Z
    if-eqz p2, :cond_19

    .line 729
    const/4 v1, 0x0

    .line 731
    .local v1, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_4
    new-instance v3, Ljava/io/File;

    const-string v5, "/data/security/"

    invoke-direct {v3, v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    .local v3, "mFileDest":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_10} :catch_25
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_10} :catch_41
    .catchall {:try_start_4 .. :try_end_10} :catchall_5d

    .line 733
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .local v2, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_10
    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_13} :catch_75
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_72
    .catchall {:try_start_10 .. :try_end_13} :catchall_6f

    .line 734
    const/4 v4, 0x1

    .line 743
    if-eqz v2, :cond_19

    .line 744
    :try_start_16
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 750
    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v3    # "mFileDest":Ljava/io/File;
    :cond_19
    :goto_19
    return v4

    .line 745
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v3    # "mFileDest":Ljava/io/File;
    :catch_1a
    move-exception v0

    .line 746
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    const-string v7, "Error closing OutputStream"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 735
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v3    # "mFileDest":Ljava/io/File;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_25
    move-exception v0

    .line 736
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_26
    :try_start_26
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    const-string v7, "File Not Found"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_5d

    .line 737
    const/4 v4, 0x0

    .line 743
    if-eqz v1, :cond_19

    .line 744
    :try_start_32
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_19

    .line 745
    :catch_36
    move-exception v0

    .line 746
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    const-string v7, "Error closing OutputStream"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 738
    .end local v0    # "e":Ljava/io/IOException;
    :catch_41
    move-exception v0

    .line 739
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_42
    :try_start_42
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    const-string v7, "copyFile failed "

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_5d

    .line 740
    const/4 v4, 0x0

    .line 743
    if-eqz v1, :cond_19

    .line 744
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_19

    .line 745
    :catch_52
    move-exception v0

    .line 746
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    const-string v7, "Error closing OutputStream"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 742
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_5d
    move-exception v5

    .line 743
    :goto_5e
    if-eqz v1, :cond_63

    .line 744
    :try_start_60
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    .line 747
    :cond_63
    :goto_63
    throw v5

    .line 745
    :catch_64
    move-exception v0

    .line 746
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    const-string v8, "Error closing OutputStream"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_63

    .line 742
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v3    # "mFileDest":Ljava/io/File;
    :catchall_6f
    move-exception v5

    move-object v1, v2

    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    goto :goto_5e

    .line 738
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_72
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    goto :goto_42

    .line 735
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_75
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    goto :goto_26
.end method

.method private createDrsHandlerThreadIfNeeded()V
    .registers 4

    .prologue
    .line 596
    sget-object v0, mDrsHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_e

    sget-object v0, mDrsHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_2b

    .line 598
    :cond_e
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DrsService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, mDrsHandlerThread:Landroid/os/HandlerThread;

    .line 601
    sget-object v0, mDrsHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 602
    new-instance v0, Lcom/android/server/SEAMService$DrsHandler;

    sget-object v1, mDrsHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/SEAMService$DrsHandler;-><init>(Lcom/android/server/SEAMService;Landroid/os/Looper;)V

    sput-object v0, mDrsHandler:Lcom/android/server/SEAMService$DrsHandler;

    .line 604
    :cond_2b
    return-void
.end method

.method private encodeBase16([B)Ljava/lang/String;
    .registers 8
    .param p1, "byteArray"    # [B

    .prologue
    .line 791
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 792
    .local v0, "hexBuffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v3, p1

    if-ge v1, v3, :cond_23

    .line 793
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_d
    if-ltz v2, :cond_20

    .line 794
    sget-object v3, HEX:[C

    aget-byte v4, p1, v1

    mul-int/lit8 v5, v2, 0x4

    shr-int/2addr v4, v5

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 793
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 792
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 795
    .end local v2    # "j":I
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getAVCDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;Ljava/lang/StringBuilder;)V
    .registers 12
    .param p1, "refContainerString"    # Ljava/lang/String;
    .param p2, "scannedLine"    # Ljava/lang/String;
    .param p3, "lineSeparator"    # Ljava/lang/String;
    .param p4, "scanner"    # Ljava/util/Scanner;
    .param p5, "fileContents"    # Ljava/lang/StringBuilder;

    .prologue
    .line 449
    :goto_0
    :try_start_0
    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 452
    .local v1, "tempString":Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_20

    .line 453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .end local v1    # "tempString":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    :goto_1f
    return-void

    .line 456
    .restart local v1    # "tempString":Ljava/lang/String;
    .restart local v2    # "tokens":[Ljava/lang/String;
    :cond_20
    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 457
    const-string v3, "cwd"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    :cond_3f
    :goto_3f
    invoke-virtual {p4}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object p2

    .line 469
    goto :goto_0

    .line 460
    :cond_44
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-string v4, "avc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7d} :catch_7e

    goto :goto_3f

    .line 470
    .end local v1    # "tempString":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    :catch_7e
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string v5, "In getAVCDetails [Exception]"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 465
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "tempString":Ljava/lang/String;
    .restart local v2    # "tokens":[Ljava/lang/String;
    :cond_89
    :try_start_89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_9d} :catch_7e

    goto :goto_3f
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 310
    iget-object v0, p0, mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 311
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 313
    :cond_10
    iget-object v0, p0, mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private static getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    .registers 4
    .param p0, "Container_Type"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 423
    sget-object v0, instance:[Lcom/android/server/SEAMSContainer;

    aget-object v0, v0, p0

    if-nez v0, :cond_14

    .line 424
    packed-switch p0, :pswitch_data_24

    .line 432
    const/4 v0, 0x0

    .line 435
    :goto_a
    return-object v0

    .line 426
    :pswitch_b
    sget-object v0, instance:[Lcom/android/server/SEAMSContainer;

    new-instance v1, Lcom/android/server/GoodContainer;

    invoke-direct {v1, p1}, Lcom/android/server/GoodContainer;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p0

    .line 435
    :cond_14
    :goto_14
    sget-object v0, instance:[Lcom/android/server/SEAMSContainer;

    aget-object v0, v0, p0

    goto :goto_a

    .line 429
    :pswitch_19
    sget-object v0, instance:[Lcom/android/server/SEAMSContainer;

    new-instance v1, Lcom/android/server/MyContainer;

    invoke-direct {v1, p1}, Lcom/android/server/MyContainer;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p0

    goto :goto_14

    .line 424
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_b
        :pswitch_19
    .end packed-switch
.end method

.method private getMdmProperties(I)I
    .registers 5
    .param p1, "property"    # I

    .prologue
    const/4 v1, 0x0

    .line 814
    const-string/jumbo v2, "persist.sys.mdm.auto"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 816
    .local v0, "result":I
    and-int/lit8 v0, v0, -0x1

    .line 817
    and-int v2, v0, p1

    if-nez v2, :cond_f

    .line 819
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x1

    goto :goto_e
.end method

.method private getOtherContainerStrings(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p1, "refContainerString"    # Ljava/lang/String;

    .prologue
    .line 497
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    .line 498
    .local v3, "otherContainers":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 499
    .local v1, "j":I
    const-string v4, "all"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 500
    const/4 v3, 0x0

    .line 505
    .end local v3    # "otherContainers":[Ljava/lang/String;
    :cond_d
    return-object v3

    .line 501
    .restart local v3    # "otherContainers":[Ljava/lang/String;
    :cond_e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    sget-object v4, containerStrings:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_d

    .line 502
    sget-object v4, containerStrings:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 503
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .local v2, "j":I
    sget-object v4, containerStrings:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v1

    move v1, v2

    .line 501
    .end local v2    # "j":I
    .restart local v1    # "j":I
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method private getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2736
    invoke-static {p1}, Lcom/android/server/ResourceManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    .line 2737
    .local v0, "instance":Lcom/android/server/ResourceManager;
    return-object v0
.end method

.method private static hashset_to_int_array(Ljava/util/HashSet;)[I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 1925
    .local p0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_a

    .line 1929
    :cond_8
    const/4 v0, 0x0

    .line 1937
    :cond_9
    return-object v0

    .line 1931
    :cond_a
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v0, v4, [I

    .line 1932
    .local v0, "array":[I
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1933
    .local v3, "itr":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 1934
    .local v1, "i":I
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1935
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_15
.end method

.method public static isBootComplete()Z
    .registers 1

    .prologue
    .line 2299
    sget-boolean v0, bootCompleted:Z

    return v0
.end method

.method private isPersona(I)Z
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 662
    const/16 v0, 0x64

    if-gt v0, p1, :cond_a

    const/16 v0, 0xc7

    if-gt p1, v0, :cond_a

    .line 663
    const/4 v0, 0x1

    .line 664
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private processAVCLine(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V
    .registers 13
    .param p1, "refContainerString"    # Ljava/lang/String;
    .param p2, "otherContainerStrings"    # [Ljava/lang/String;
    .param p3, "fileContents"    # Ljava/lang/StringBuilder;
    .param p4, "scannedLine"    # Ljava/lang/String;
    .param p5, "lineSeparator"    # Ljava/lang/String;
    .param p6, "scanner"    # Ljava/util/Scanner;

    .prologue
    .line 478
    const-string v0, "all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p3

    .line 479
    invoke-direct/range {v0 .. v5}, getAVCDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;Ljava/lang/StringBuilder;)V

    .line 493
    :cond_11
    :goto_11
    return-void

    .line 483
    :cond_12
    invoke-virtual {p4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p3

    .line 484
    invoke-direct/range {v0 .. v5}, getAVCDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;Ljava/lang/StringBuilder;)V

    goto :goto_11

    .line 487
    :cond_22
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p3

    .line 490
    invoke-direct/range {v0 .. v5}, getAVCDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;Ljava/lang/StringBuilder;)V

    goto :goto_11
.end method

.method private processAllowedLine(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "refContainerString"    # Ljava/lang/String;
    .param p2, "otherContainerStrings"    # [Ljava/lang/String;
    .param p3, "fileContents"    # Ljava/lang/StringBuilder;
    .param p4, "scannedLine"    # Ljava/lang/String;
    .param p5, "lineSeparator"    # Ljava/lang/String;

    .prologue
    .line 511
    const-string v0, "all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    :cond_1c
    :goto_1c
    return-void

    .line 515
    :cond_1d
    invoke-virtual {p4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 518
    :cond_38
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x2

    aget-object v0, p2, v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c
.end method

.method private static processDeniedLine(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V
    .registers 7
    .param p0, "refContainerString"    # Ljava/lang/String;
    .param p1, "otherContainerStrings"    # [Ljava/lang/String;
    .param p2, "fileContents"    # Ljava/lang/StringBuilder;
    .param p3, "scannedLine"    # Ljava/lang/String;
    .param p4, "lineSeparator"    # Ljava/lang/String;
    .param p5, "scanner"    # Ljava/util/Scanner;

    .prologue
    .line 529
    const-string v0, "all"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 531
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {p5}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object p3

    .line 533
    const-string v0, "----- end"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 552
    :cond_28
    :goto_28
    return-void

    .line 536
    :cond_29
    invoke-virtual {p3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 538
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {p5}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object p3

    .line 540
    const-string v0, "----- end"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_28

    .line 542
    :cond_50
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 547
    :cond_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-virtual {p5}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object p3

    .line 549
    const-string v0, "----- end"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6b

    goto :goto_28
.end method

.method private registerBootReceiver()V
    .registers 7

    .prologue
    .line 322
    :try_start_0
    sget-object v2, mBootReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1c

    .line 323
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 324
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    new-instance v2, Lcom/android/server/SEAMService$1;

    invoke-direct {v2, p0}, Lcom/android/server/SEAMService$1;-><init>(Lcom/android/server/SEAMService;)V

    sput-object v2, mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 330
    iget-object v2, p0, mContext:Landroid/content/Context;

    sget-object v3, mBootReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, mHandler:Lcom/android/server/SEAMService$BrHandler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 337
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1c
    :goto_1c
    return-void

    .line 334
    :catch_1d
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string v4, "Cannot register mBootReceiver"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method private registerSPDCompleteReceiver()V
    .registers 7

    .prologue
    .line 344
    :try_start_0
    sget-object v2, mSPDCompleteReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_26

    .line 345
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string v4, "Entered registerSPDCompleteReceiver"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.spdsuccess"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 347
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    new-instance v2, Lcom/android/server/SEAMService$2;

    invoke-direct {v2, p0}, Lcom/android/server/SEAMService$2;-><init>(Lcom/android/server/SEAMService;)V

    sput-object v2, mSPDCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 355
    iget-object v2, p0, mContext:Landroid/content/Context;

    sget-object v3, mSPDCompleteReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.samsung.spd.SBA_RELOAD"

    iget-object v5, p0, sHandler:Lcom/android/server/SEAMService$SpdHandler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    .line 361
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_26
    :goto_26
    return-void

    .line 358
    :catch_27
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string v4, "Cannot register mSPDCompleteReceiver"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method

.method private relabelAppDir(Landroid/content/pm/ApplicationInfo;)I
    .registers 8
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v1, 0x0

    .line 683
    if-eqz p1, :cond_19

    .line 684
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v2, v3, v4, v5}, constructLabelEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 686
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 687
    const/4 v2, 0x4

    invoke-direct {p0, v2, v0}, relabelDataLocked(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 688
    const/4 v1, 0x1

    .line 696
    .end local v0    # "msg":Ljava/lang/String;
    :cond_19
    return v1
.end method

.method private relabelDataLocked(ILjava/lang/Object;)Z
    .registers 5
    .param p1, "cmd"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 650
    invoke-direct {p0}, createDrsHandlerThreadIfNeeded()V

    .line 652
    sget-object v1, mDrsHandler:Lcom/android/server/SEAMService$DrsHandler;

    invoke-virtual {v1}, Lcom/android/server/SEAMService$DrsHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 653
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 654
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 655
    sget-object v1, mDrsHandler:Lcom/android/server/SEAMService$DrsHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/SEAMService$DrsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 658
    const/4 v1, 0x1

    return v1
.end method

.method private removePolicyFiles()Z
    .registers 13

    .prologue
    .line 760
    const/4 v8, 0x0

    .line 762
    .local v8, "ret":Z
    :try_start_1
    new-instance v4, Ljava/io/File;

    const-string v9, "/data/security/"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 764
    .local v4, "fileFolder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 765
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, "allFiles":[Ljava/lang/String;
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_15
    if-ge v6, v7, :cond_3e

    aget-object v5, v1, v6

    .line 767
    .local v5, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v9, "/data/security/"

    invoke-direct {v3, v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_29

    .line 766
    :goto_26
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 769
    :cond_29
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2d

    goto :goto_26

    .line 777
    .end local v0    # "allFiles":[Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileFolder":Ljava/io/File;
    .end local v5    # "filename":Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catch_2d
    move-exception v2

    .line 778
    .local v2, "e":Ljava/lang/Exception;
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string v11, "Exception during removePolicyFiles"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    const/4 v8, 0x0

    .line 782
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_38
    if-eqz v8, :cond_3a

    :cond_3a
    move v9, v8

    .line 787
    :goto_3b
    return v9

    .line 773
    .restart local v4    # "fileFolder":Ljava/io/File;
    :cond_3c
    const/4 v9, 0x0

    goto :goto_3b

    .line 775
    .restart local v0    # "allFiles":[Ljava/lang/String;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    :cond_3e
    :try_start_3e
    const-string/jumbo v9, "selinux.reload_policy"

    const-string v10, "1"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_46} :catch_2d

    .line 776
    const/4 v8, 0x1

    goto :goto_38
.end method

.method private resetPolicyAssets()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 439
    sput v0, policyFileSize:I

    .line 440
    sput-object v1, policyDataBytes:[B

    .line 441
    sput-object v1, policyHash:Ljava/lang/String;

    .line 442
    sput v0, policyDataBytesPosition:I

    .line 443
    return-void
.end method

.method private setMdmPropertiesLocked(II)V
    .registers 8
    .param p1, "property"    # I
    .param p2, "value"    # I

    .prologue
    .line 799
    const-string/jumbo v2, "persist.sys.mdm.auto"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 801
    .local v0, "result":I
    and-int/lit8 v1, p1, -0x1

    .line 802
    .local v1, "setValue":I
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1d

    .line 803
    or-int/2addr v0, v1

    .line 808
    :cond_e
    :goto_e
    sget-object v3, mSetPolicy:Ljava/lang/Object;

    monitor-enter v3

    .line 809
    :try_start_11
    const-string/jumbo v2, "persist.sys.mdm.auto"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    monitor-exit v3

    .line 811
    return-void

    .line 804
    :cond_1d
    if-nez p2, :cond_e

    .line 805
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr v0, v2

    goto :goto_e

    .line 810
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_23

    throw v2
.end method

.method private setPolicyUpdateProperty(Z)I
    .registers 7
    .param p1, "status"    # Z

    .prologue
    .line 823
    const/4 v1, -0x1

    .line 826
    .local v1, "ret":I
    if-eqz p1, :cond_20

    .line 827
    :try_start_3
    sget-object v3, mSetPolicy:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_14

    .line 828
    :try_start_6
    const-string/jumbo v2, "persist.sys.mdm.auto"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    monitor-exit v3

    .line 830
    const/4 v1, 0x0

    .line 841
    :goto_10
    return v1

    .line 829
    :catchall_11
    move-exception v2

    monitor-exit v3
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    :try_start_13
    throw v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_14} :catch_14

    .line 837
    :catch_14
    move-exception v0

    .line 838
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string v4, "Exception in method: setPolicyUpdateProperty"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const/4 v1, -0x1

    goto :goto_10

    .line 832
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_20
    :try_start_20
    sget-object v3, mSetPolicy:Ljava/lang/Object;

    monitor-enter v3
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_14

    .line 833
    :try_start_23
    const-string/jumbo v2, "persist.sys.mdm.auto"

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    monitor-exit v3

    .line 835
    const/4 v1, 0x0

    goto :goto_10

    .line 834
    :catchall_2e
    move-exception v2

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_2e

    :try_start_30
    throw v2
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_31} :catch_14
.end method


# virtual methods
.method public activateDomain()I
    .registers 11

    .prologue
    const/4 v6, -0x2

    .line 871
    const-class v7, Lcom/android/server/SEAMService$1Local;

    invoke-virtual {v7}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 873
    .local v3, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 874
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 877
    .local v4, "pid":I
    sget-object v7, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    invoke-direct {p0, v5, v4, v7, v8}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_20

    .line 900
    :cond_1f
    :goto_1f
    return v6

    .line 884
    :cond_20
    :try_start_20
    const-string v7, "SEAMS"

    invoke-virtual {p0, v4, v5, v7, v3}, isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 888
    .local v0, "containerType":I
    if-ltz v0, :cond_1f

    .line 892
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v0, v6}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 893
    .local v2, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v2, :cond_53

    .line 894
    invoke-virtual {v2, v5}, Lcom/android/server/SEAMSContainer;->activateDomain(I)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_33} :catch_35

    move-result v6

    goto :goto_1f

    .line 896
    .end local v0    # "containerType":I
    .end local v2    # "instanceCon":Lcom/android/server/SEAMSContainer;
    :catch_35
    move-exception v1

    .line 897
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in method:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 900
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_53
    const/4 v6, -0x1

    goto :goto_1f
.end method

.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 950
    const-class v13, Lcom/android/server/SEAMService$2Local;

    invoke-virtual {v13}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    .line 952
    .local v9, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 953
    .local v12, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 954
    .local v10, "pid":I
    const/4 v11, 0x0

    .line 955
    .local v11, "ret":I
    const-wide/16 v6, 0x0

    .line 956
    .local v6, "ident":J
    const/4 v8, 0x0

    .line 959
    .local v8, "instanceCon":Lcom/android/server/SEAMSContainer;
    sget-object v13, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10, v13, v14}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_26

    .line 961
    const/4 v13, -0x2

    .line 1000
    :goto_25
    return v13

    .line 978
    :cond_26
    :try_start_26
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v13

    if-eqz v13, :cond_45

    .line 979
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-static {v13, v14}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    .line 980
    if-eqz v8, :cond_87

    .line 981
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v11

    move v13, v11

    .line 982
    goto :goto_25

    .line 985
    :cond_45
    const-string v13, "SEAMS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12, v13, v9}, isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 986
    .local v4, "containerType":I
    if-gez v4, :cond_51

    .line 988
    const/4 v13, -0x2

    goto :goto_25

    .line 990
    :cond_51
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    invoke-static {v4, v13}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    .line 991
    if-eqz v8, :cond_87

    .line 992
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_66} :catch_69

    move-result v11

    move v13, v11

    .line 993
    goto :goto_25

    .line 996
    .end local v4    # "containerType":I
    :catch_69
    move-exception v5

    .line 997
    .local v5, "e":Ljava/lang/Exception;
    sget-object v13, mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception in method"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1000
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_87
    const/4 v13, -0x1

    goto :goto_25
.end method

.method public addAppToSBABlacklist(ILjava/lang/String;[Ljava/lang/String;I)I
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "certificate"    # [Ljava/lang/String;
    .param p4, "resourceType"    # I

    .prologue
    .line 2809
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/ResourceManager;->addAppToSBABlacklist(ILjava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public addAppToWhitelist(ILjava/lang/String;[Ljava/lang/String;I)I
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "certificate"    # [Ljava/lang/String;
    .param p4, "resourceType"    # I

    .prologue
    .line 2764
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/ResourceManager;->addAppToWhitelist(ILjava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public clearSBABlacklist(II)I
    .registers 4
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    .line 2827
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ResourceManager;->clearSBABlacklist(II)I

    move-result v0

    return v0
.end method

.method public clearWhitelist(II)I
    .registers 4
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    .line 2782
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ResourceManager;->clearWhitelist(II)I

    move-result v0

    return v0
.end method

.method public createSEContainer()I
    .registers 8

    .prologue
    .line 1033
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1034
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1037
    .local v2, "pid":I
    sget-object v4, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    invoke-direct {p0, v3, v2, v4, v5}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_16

    .line 1039
    const/4 v4, -0x2

    .line 1051
    :goto_15
    return v4

    .line 1043
    :cond_16
    const/4 v4, 0x2

    :try_start_17
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v4, v5}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v1

    .line 1044
    .local v1, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v1, :cond_31

    .line 1045
    invoke-virtual {v1, v3, v2}, Lcom/android/server/SEAMSContainer;->createSEContainer(II)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_22} :catch_24

    move-result v4

    goto :goto_15

    .line 1047
    .end local v1    # "instanceCon":Lcom/android/server/SEAMSContainer;
    :catch_24
    move-exception v0

    .line 1048
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string v6, "Exception in createSEContainer"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1051
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_31
    const/4 v4, -0x1

    goto :goto_15
.end method

.method public deActivateDomain()I
    .registers 11

    .prologue
    const/4 v6, -0x2

    .line 1079
    const-class v7, Lcom/android/server/SEAMService$3Local;

    invoke-virtual {v7}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1080
    .local v3, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1081
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1084
    .local v4, "pid":I
    sget-object v7, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    invoke-direct {p0, v5, v4, v7, v8}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_20

    .line 1103
    :cond_1f
    :goto_1f
    return v6

    .line 1091
    :cond_20
    :try_start_20
    const-string v7, "SEAMS"

    invoke-virtual {p0, v4, v5, v7, v3}, isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1092
    .local v0, "containerType":I
    if-ltz v0, :cond_1f

    .line 1096
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v0, v6}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 1097
    .local v2, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v2, :cond_53

    .line 1098
    invoke-virtual {v2, v5}, Lcom/android/server/SEAMSContainer;->deActivateDomain(I)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_33} :catch_35

    move-result v6

    goto :goto_1f

    .line 1099
    .end local v0    # "containerType":I
    .end local v2    # "instanceCon":Lcom/android/server/SEAMSContainer;
    :catch_35
    move-exception v1

    .line 1100
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in method:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1103
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_53
    const/4 v6, -0x1

    goto :goto_1f
.end method

.method public getAMSLog(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1216
    const/4 v10, 0x0

    .line 1217
    .local v10, "amslog":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1218
    .local v3, "refContainerString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1222
    .local v4, "otherContainerStrings":[Ljava/lang/String;
    const-class v2, Lcom/android/server/SEAMService$5Local;

    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1226
    .local v13, "method":Ljava/lang/String;
    sget-object v2, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v2, v2, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v14}, checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1228
    const/4 v2, 0x0

    .line 1276
    :goto_1e
    return-object v2

    .line 1245
    :cond_1f
    const-string v3, "all"

    .line 1250
    :try_start_21
    const-string v9, "/data/misc/audit/ams.log"

    .line 1251
    .local v9, "ams_logfile":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1252
    .local v12, "file":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v2, v14

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1254
    .local v5, "fileContents":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/util/Scanner;

    invoke-direct {v8, v12}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 1255
    .local v8, "scanner":Ljava/util/Scanner;
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1256
    .local v7, "lineSeparator":Ljava/lang/String;
    :cond_3d
    :goto_3d
    invoke-virtual {v8}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 1257
    invoke-virtual {v8}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v6

    .line 1258
    .local v6, "scannedLine":Ljava/lang/String;
    const-string v2, "Allowed"

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_75

    move-object/from16 v2, p0

    .line 1259
    invoke-direct/range {v2 .. v7}, processAllowedLine(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_54} :catch_55

    goto :goto_3d

    .line 1271
    .end local v5    # "fileContents":Ljava/lang/StringBuilder;
    .end local v6    # "scannedLine":Ljava/lang/String;
    .end local v7    # "lineSeparator":Ljava/lang/String;
    .end local v8    # "scanner":Ljava/util/Scanner;
    .end local v9    # "ams_logfile":Ljava/lang/String;
    .end local v12    # "file":Ljava/io/File;
    :catch_55
    move-exception v11

    .line 1272
    .local v11, "e":Ljava/io/FileNotFoundException;
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception in method:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v11    # "e":Ljava/io/FileNotFoundException;
    :goto_73
    move-object v2, v10

    .line 1276
    goto :goto_1e

    .line 1262
    .restart local v5    # "fileContents":Ljava/lang/StringBuilder;
    .restart local v6    # "scannedLine":Ljava/lang/String;
    .restart local v7    # "lineSeparator":Ljava/lang/String;
    .restart local v8    # "scanner":Ljava/util/Scanner;
    .restart local v9    # "ams_logfile":Ljava/lang/String;
    .restart local v12    # "file":Ljava/io/File;
    :cond_75
    :try_start_75
    const-string v2, "Denied"

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1263
    invoke-static/range {v3 .. v8}, processDeniedLine(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V

    goto :goto_3d

    .line 1269
    .end local v6    # "scannedLine":Ljava/lang/String;
    :cond_81
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1270
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V
    :try_end_88
    .catch Ljava/io/FileNotFoundException; {:try_start_75 .. :try_end_88} :catch_55

    goto :goto_73
.end method

.method public getAMSLogLevel(Landroid/app/enterprise/ContextInfo;)I
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1296
    const-class v4, Lcom/android/server/SEAMService$6Local;

    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1300
    .local v2, "method":Ljava/lang/String;
    sget-object v4, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_18

    .line 1302
    const/4 v0, -0x2

    .line 1318
    :cond_17
    :goto_17
    return v0

    .line 1306
    :cond_18
    const/4 v0, -0x1

    .line 1308
    .local v0, "amsLogLevel":I
    const/4 v3, 0x0

    .line 1309
    .local v3, "val":Ljava/lang/String;
    :try_start_1a
    const-string/jumbo v4, "persist.security.ams.verbose"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1310
    if-eqz v3, :cond_17

    .line 1311
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_28} :catch_2a

    move-result v0

    goto :goto_17

    .line 1314
    :catch_2a
    move-exception v1

    .line 1315
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method

.method public getAMSMode(Landroid/app/enterprise/ContextInfo;)I
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1336
    const-class v5, Lcom/android/server/SEAMService$7Local;

    invoke-virtual {v5}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1340
    .local v1, "method":Ljava/lang/String;
    sget-object v5, SEAMS_PERMS:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, p1, v5, v3}, checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_18

    .line 1342
    const/4 v3, -0x2

    .line 1355
    :cond_17
    :goto_17
    return v3

    .line 1346
    :cond_18
    const/4 v2, 0x0

    .line 1347
    .local v2, "val":Ljava/lang/String;
    :try_start_19
    const-string/jumbo v5, "persist.security.ams.enforcing"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1348
    if-eqz v2, :cond_2c

    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_29} :catch_2e

    move-result v5

    if-nez v5, :cond_17

    :cond_2c
    :goto_2c
    move v3, v4

    .line 1355
    goto :goto_17

    .line 1351
    :catch_2e
    move-exception v0

    .line 1352
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in method:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c
.end method

.method public getAVCLog(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1370
    const/4 v3, 0x0

    .line 1371
    .local v3, "refContainerString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1375
    .local v4, "otherContainerStrings":[Ljava/lang/String;
    const-class v2, Lcom/android/server/SEAMService$8Local;

    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1379
    .local v13, "method":Ljava/lang/String;
    sget-object v2, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v2, v2, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v14}, checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1381
    const/4 v10, 0x0

    .line 1422
    :goto_1d
    return-object v10

    .line 1397
    :cond_1e
    const-string v3, "all"

    .line 1398
    const/4 v10, 0x0

    .line 1402
    .local v10, "avclog":Ljava/lang/String;
    :try_start_21
    const-string v9, "/data/misc/audit/audit.log"

    .line 1403
    .local v9, "avc_logfile":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1404
    .local v12, "file":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v2, v14

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1406
    .local v5, "fileContents":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/util/Scanner;

    invoke-direct {v8, v12}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 1407
    .local v8, "scanner":Ljava/util/Scanner;
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1408
    .local v7, "lineSeparator":Ljava/lang/String;
    :cond_3d
    :goto_3d
    invoke-virtual {v8}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 1409
    invoke-virtual {v8}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v6

    .line 1410
    .local v6, "scannedLine":Ljava/lang/String;
    const-string v2, "avc"

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3d

    move-object/from16 v2, p0

    .line 1411
    invoke-direct/range {v2 .. v8}, processAVCLine(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_54} :catch_55

    goto :goto_3d

    .line 1417
    .end local v5    # "fileContents":Ljava/lang/StringBuilder;
    .end local v6    # "scannedLine":Ljava/lang/String;
    .end local v7    # "lineSeparator":Ljava/lang/String;
    .end local v8    # "scanner":Ljava/util/Scanner;
    .end local v9    # "avc_logfile":Ljava/lang/String;
    .end local v12    # "file":Ljava/io/File;
    :catch_55
    move-exception v11

    .line 1418
    .local v11, "e":Ljava/io/FileNotFoundException;
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception in method:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1d

    .line 1415
    .end local v11    # "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "fileContents":Ljava/lang/StringBuilder;
    .restart local v7    # "lineSeparator":Ljava/lang/String;
    .restart local v8    # "scanner":Ljava/util/Scanner;
    .restart local v9    # "avc_logfile":Ljava/lang/String;
    .restart local v12    # "file":Ljava/io/File;
    :cond_74
    :try_start_74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1416
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V
    :try_end_7b
    .catch Ljava/io/FileNotFoundException; {:try_start_74 .. :try_end_7b} :catch_55

    goto :goto_1d
.end method

.method public getActivationStatus()I
    .registers 11

    .prologue
    const/4 v6, -0x2

    .line 1175
    const-class v7, Lcom/android/server/SEAMService$4Local;

    invoke-virtual {v7}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1176
    .local v3, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1177
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1180
    .local v4, "pid":I
    sget-object v7, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    invoke-direct {p0, v5, v4, v7, v8}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_20

    .line 1200
    :cond_1f
    :goto_1f
    return v6

    .line 1187
    :cond_20
    :try_start_20
    const-string v7, "SEAMS"

    invoke-virtual {p0, v4, v5, v7, v3}, isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1189
    .local v0, "containerType":I
    if-ltz v0, :cond_1f

    .line 1193
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v0, v6}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 1194
    .local v2, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v2, :cond_53

    .line 1195
    invoke-virtual {v2}, Lcom/android/server/SEAMSContainer;->getActivationStatus()I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_33} :catch_35

    move-result v6

    goto :goto_1f

    .line 1196
    .end local v0    # "containerType":I
    .end local v2    # "instanceCon":Lcom/android/server/SEAMSContainer;
    :catch_35
    move-exception v1

    .line 1197
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Exception in method:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1200
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_53
    const/4 v6, -0x1

    goto :goto_1f
.end method

.method public getDataType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 1653
    const-class v8, Lcom/android/server/SEAMService$12Local;

    invoke-virtual {v8}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1657
    .local v6, "method":Ljava/lang/String;
    sget-object v8, SEAMS_PERMS:[Ljava/lang/String;

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-direct {p0, p1, v8, v9}, checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_19

    move-object v1, v7

    .line 1689
    :goto_18
    return-object v1

    .line 1661
    :cond_19
    const/4 v1, 0x0

    .line 1662
    .local v1, "datatype":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1664
    .local v4, "ident":J
    if-gez p3, :cond_22

    move-object v1, v7

    .line 1666
    goto :goto_18

    .line 1670
    :cond_22
    :try_start_22
    invoke-direct {p0, p3}, isPersona(I)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 1671
    const-string v1, "container_app_data_file"

    goto :goto_18

    .line 1674
    :cond_2b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 1675
    .local v3, "mPM":Landroid/content/pm/IPackageManager;
    const/16 v8, 0x80

    invoke-interface {v3, p2, v8, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1677
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_39

    move-object v1, v7

    .line 1678
    goto :goto_18

    .line 1680
    :cond_39
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, p2, v9}, Landroid/os/SELinux;->getFileType(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_41} :catch_46

    move-result-object v1

    .line 1688
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "mPM":Landroid/content/pm/IPackageManager;
    :goto_42
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_18

    .line 1684
    :catch_46
    move-exception v2

    .line 1685
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    const/4 v1, 0x0

    goto :goto_42
.end method

.method public getDomain(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 1711
    const-class v8, Lcom/android/server/SEAMService$13Local;

    invoke-virtual {v8}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1715
    .local v6, "method":Ljava/lang/String;
    sget-object v8, SEAMS_PERMS:[Ljava/lang/String;

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-direct {p0, p1, v8, v9}, checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_19

    move-object v1, v7

    .line 1747
    :goto_18
    return-object v1

    .line 1720
    :cond_19
    const/4 v1, 0x0

    .line 1721
    .local v1, "domain":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1724
    .local v4, "ident":J
    if-gez p3, :cond_22

    move-object v1, v7

    .line 1726
    goto :goto_18

    .line 1730
    :cond_22
    :try_start_22
    invoke-direct {p0, p3}, isPersona(I)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 1731
    const-string v1, "container_app"

    goto :goto_18

    .line 1733
    :cond_2b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 1734
    .local v3, "mPM":Landroid/content/pm/IPackageManager;
    const/16 v8, 0x80

    invoke-interface {v3, p2, v8, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1736
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_39

    move-object v1, v7

    .line 1737
    goto :goto_18

    .line 1739
    :cond_39
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, p2, v9}, Landroid/os/SELinux;->getDomain(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_41} :catch_46

    move-result-object v1

    .line 1746
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "mPM":Landroid/content/pm/IPackageManager;
    :goto_42
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_18

    .line 1742
    :catch_46
    move-exception v2

    .line 1743
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    const/4 v1, 0x0

    goto :goto_42
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .registers 14
    .param p1, "containerID"    # I
    .param p2, "appType"    # I

    .prologue
    const/4 v6, 0x0

    .line 1826
    const-class v7, Lcom/android/server/SEAMService$14Local;

    invoke-virtual {v7}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1827
    .local v3, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1828
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1830
    .local v4, "pid":I
    sget-object v7, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    invoke-direct {p0, v5, v4, v7, v8}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_20

    .line 1854
    :cond_1f
    :goto_1f
    return-object v6

    .line 1836
    :cond_20
    const/16 v7, 0x66

    if-ne p1, v7, :cond_39

    .line 1837
    :try_start_24
    const-string v7, "SEAMS"

    invoke-virtual {p0, v4, v5, v7, v3}, isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1838
    .local v0, "containerType":I
    if-lez v0, :cond_1f

    .line 1839
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v0, v7}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 1840
    .local v2, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v2, :cond_1f

    .line 1841
    invoke-virtual {v2, p1, p2}, Lcom/android/server/SEAMSContainer;->getPackageNamesFromSEContainer(II)[Ljava/lang/String;

    move-result-object v6

    goto :goto_1f

    .line 1845
    .end local v0    # "containerType":I
    .end local v2    # "instanceCon":Lcom/android/server/SEAMSContainer;
    :cond_39
    const/4 v7, 0x2

    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-static {v7, v8}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 1846
    .restart local v2    # "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v2, :cond_1f

    .line 1847
    invoke-virtual {v2, p1, p2}, Lcom/android/server/SEAMSContainer;->getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_45} :catch_47

    move-result-object v6

    goto :goto_1f

    .line 1850
    .end local v2    # "instanceCon":Lcom/android/server/SEAMSContainer;
    :catch_47
    move-exception v1

    .line 1851
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in method:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method public getPackagesFromSBABlacklist(II)[Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    .line 2836
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ResourceManager;->getPackagesFromSBABlacklist(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromSBAList(I)[Ljava/lang/String;
    .registers 3
    .param p1, "resourceType"    # I

    .prologue
    .line 2791
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/ResourceManager;->getPackagesFromSBAList(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromWhitelist(II)[Ljava/lang/String;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    .line 2746
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ResourceManager;->getPackagesFromWhitelist(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSEAMSLog(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1439
    const/4 v8, 0x0

    .line 1444
    .local v8, "sklog":Ljava/lang/String;
    const-class v9, Lcom/android/server/SEAMService$9Local;

    invoke-virtual {v9}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1445
    .local v4, "method":Ljava/lang/String;
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_begin"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    sget-object v9, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x1

    invoke-direct {p0, p1, v9, v10}, checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_33

    .line 1450
    const/4 v9, 0x0

    .line 1469
    :goto_32
    return-object v9

    .line 1453
    :cond_33
    :try_start_33
    const-string v7, "/data/misc/audit/sk.log"

    .line 1454
    .local v7, "sk_logfile":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1455
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v9, v10

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1456
    .local v2, "fileContents":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/util/Scanner;

    invoke-direct {v6, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 1457
    .local v6, "scanner":Ljava/util/Scanner;
    const-string v9, "line.separator"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1458
    .local v3, "lineSeparator":Ljava/lang/String;
    :goto_4f
    invoke-virtual {v6}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v9

    if-eqz v9, :cond_97

    .line 1459
    invoke-virtual {v6}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v5

    .line 1460
    .local v5, "scannedLine":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6d
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_6d} :catch_6e

    goto :goto_4f

    .line 1464
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileContents":Ljava/lang/StringBuilder;
    .end local v3    # "lineSeparator":Ljava/lang/String;
    .end local v5    # "scannedLine":Ljava/lang/String;
    .end local v6    # "scanner":Ljava/util/Scanner;
    .end local v7    # "sk_logfile":Ljava/lang/String;
    :catch_6e
    move-exception v0

    .line 1465
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in method:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1468
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_8c
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string v11, "Returning SEAMS Log."

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v8

    .line 1469
    goto :goto_32

    .line 1462
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fileContents":Ljava/lang/StringBuilder;
    .restart local v3    # "lineSeparator":Ljava/lang/String;
    .restart local v6    # "scanner":Ljava/util/Scanner;
    .restart local v7    # "sk_logfile":Ljava/lang/String;
    :cond_97
    :try_start_97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1463
    invoke-virtual {v6}, Ljava/util/Scanner;->close()V
    :try_end_9e
    .catch Ljava/io/FileNotFoundException; {:try_start_97 .. :try_end_9e} :catch_6e

    goto :goto_8c
.end method

.method public getSEContainerIDs()[I
    .registers 13

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 1886
    const-class v9, Lcom/android/server/SEAMService$15Local;

    invoke-virtual {v9}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1887
    .local v5, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1888
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1891
    .local v6, "pid":I
    sget-object v9, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-direct {p0, v7, v6, v9, v11}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_20

    .line 1918
    :goto_1f
    return-object v8

    .line 1895
    :cond_20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1897
    .local v0, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v9, 0x2

    :try_start_26
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v9, v10}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v4

    .line 1898
    .local v4, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v4, :cond_73

    .line 1899
    invoke-virtual {v4}, Lcom/android/server/SEAMSContainer;->getSEContainerIDs()Ljava/util/HashSet;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_31} :catch_5e

    move-result-object v0

    move-object v1, v0

    .line 1901
    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .local v1, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_33
    :try_start_33
    const-string v9, "SEAMS"

    invoke-virtual {p0, v6, v7, v9, v5}, isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1902
    .local v2, "containerType":I
    if-lez v2, :cond_71

    .line 1903
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-static {v2, v9}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v4

    .line 1904
    if-eqz v4, :cond_71

    .line 1905
    invoke-virtual {v4}, Lcom/android/server/SEAMSContainer;->getActivationStatus()I

    move-result v9

    if-ne v9, v11, :cond_71

    .line 1906
    if-nez v1, :cond_6f

    .line 1907
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_50} :catch_6c

    .line 1909
    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_50
    const/16 v9, 0x66

    :try_start_52
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1913
    :goto_59
    invoke-static {v0}, hashset_to_int_array(Ljava/util/HashSet;)[I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5c} :catch_5e

    move-result-object v8

    goto :goto_1f

    .line 1914
    .end local v2    # "containerType":I
    .end local v4    # "instanceCon":Lcom/android/server/SEAMSContainer;
    :catch_5e
    move-exception v3

    .line 1915
    .local v3, "e":Ljava/lang/Exception;
    :goto_5f
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string v11, "Exception in getSEContainerIDs:"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f

    .line 1914
    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v4    # "instanceCon":Lcom/android/server/SEAMSContainer;
    :catch_6c
    move-exception v3

    move-object v0, v1

    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_5f

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v2    # "containerType":I
    :cond_6f
    move-object v0, v1

    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_50

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_71
    move-object v0, v1

    .end local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_59

    .end local v2    # "containerType":I
    :cond_73
    move-object v1, v0

    .end local v0    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v1    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_33
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appType"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1506
    const-class v7, Lcom/android/server/SEAMService$10Local;

    invoke-virtual {v7}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1507
    .local v3, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1508
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1510
    .local v4, "pid":I
    sget-object v7, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-direct {p0, v5, v4, v7, v9}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_21

    .line 1534
    :cond_20
    :goto_20
    return-object v6

    .line 1516
    :cond_21
    if-eq p2, v9, :cond_25

    if-ne p2, v10, :cond_3a

    .line 1517
    :cond_25
    :try_start_25
    const-string v7, "SEAMS"

    invoke-virtual {p0, v4, v5, v7, v3}, isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1518
    .local v0, "containerType":I
    if-lez v0, :cond_20

    .line 1519
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v0, v7}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 1520
    .local v2, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v2, :cond_20

    .line 1521
    invoke-virtual {v2, p1, p2}, Lcom/android/server/SEAMSContainer;->getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I

    move-result-object v6

    goto :goto_20

    .line 1525
    .end local v0    # "containerType":I
    .end local v2    # "instanceCon":Lcom/android/server/SEAMSContainer;
    :cond_3a
    const/4 v7, 0x2

    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-static {v7, v8}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 1526
    .restart local v2    # "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v2, :cond_20

    .line 1527
    invoke-virtual {v2, p1, p2}, Lcom/android/server/SEAMSContainer;->getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_46} :catch_48

    move-result-object v6

    goto :goto_20

    .line 1530
    .end local v2    # "instanceCon":Lcom/android/server/SEAMSContainer;
    :catch_48
    move-exception v1

    .line 1531
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in method:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method

.method public getSELinuxMode(Landroid/app/enterprise/ContextInfo;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2022
    const-class v2, Lcom/android/server/SEAMService$17Local;

    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2025
    .local v1, "method":Ljava/lang/String;
    :try_start_a
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_12

    move-result v2

    if-eqz v2, :cond_30

    .line 2026
    const/4 v2, 0x1

    .line 2031
    :goto_11
    return v2

    .line 2027
    :catch_12
    move-exception v0

    .line 2028
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in method:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2031
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_30
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public getSepolicyVersion(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2045
    const-class v3, Lcom/android/server/SEAMService$18Local;

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2048
    .local v1, "method":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2050
    .local v2, "sepolicyVersion":Ljava/lang/String;
    :try_start_b
    invoke-static {}, Landroid/os/SELinux;->getSEPolicyVersion()Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_11

    move-result-object v2

    move-object v3, v2

    .line 2055
    :goto_10
    return-object v3

    .line 2053
    :catch_11
    move-exception v0

    .line 2054
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in method:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    const/4 v3, 0x0

    goto :goto_10
.end method

.method public getSignatureFromCertificate([B)Ljava/lang/String;
    .registers 12
    .param p1, "certificate"    # [B

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 2079
    const-class v7, Lcom/android/server/SEAMService$19Local;

    invoke-virtual {v7}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2082
    .local v1, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2083
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2085
    .local v2, "pid":I
    sget-object v7, SEAMS_PERMS:[Ljava/lang/String;

    aget-object v7, v7, v8

    const/4 v8, 0x1

    invoke-direct {p0, v5, v2, v7, v8}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_20

    .line 2103
    :goto_1f
    return-object v6

    .line 2092
    :cond_20
    :try_start_20
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    .line 2093
    .local v4, "signatureString":Ljava/lang/String;
    const-string v7, "-----BEGIN CERTIFICATE-----"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "-----END CERTIFICATE-----"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2097
    const/4 v7, 0x0

    invoke-static {v4, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 2099
    .local v3, "signatureBytes":[B
    invoke-direct {p0, v3}, encodeBase16([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_41} :catch_43

    move-result-object v6

    goto :goto_1f

    .line 2100
    .end local v3    # "signatureBytes":[B
    .end local v4    # "signatureString":Ljava/lang/String;
    :catch_43
    move-exception v0

    .line 2101
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string v9, "Exception in byte array operations when getting signature."

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public getSignatureFromPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2126
    const-class v10, Lcom/android/server/SEAMService$20Local;

    invoke-virtual {v10}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2128
    .local v2, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2129
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2131
    .local v4, "pid":I
    sget-object v10, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x1

    invoke-direct {p0, v8, v4, v10, v11}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_20

    .line 2133
    const/4 v6, 0x0

    .line 2164
    :goto_1f
    return-object v6

    .line 2135
    :cond_20
    if-nez p1, :cond_24

    .line 2137
    const/4 v6, 0x0

    goto :goto_1f

    .line 2139
    :cond_24
    const/4 v9, 0x0

    .line 2141
    .local v9, "valid":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 2142
    .local v5, "pm":Landroid/content/pm/IPackageManager;
    const/4 v3, 0x0

    .line 2144
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_74

    .line 2145
    const/16 v10, 0x40

    :try_start_2e
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    invoke-interface {v5, p1, v10, v11}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 2148
    if-eqz v3, :cond_74

    .line 2149
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 2150
    .local v7, "s":[Landroid/content/pm/Signature;
    const/4 v6, 0x0

    .line 2151
    .local v6, "returnSignature":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3c
    array-length v10, v7

    if-ge v1, v10, :cond_74

    .line 2152
    aget-object v10, v7, v1

    invoke-virtual {v10}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_53

    .line 2153
    aget-object v10, v7, v1

    invoke-virtual {v10}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_51} :catch_56

    move-result-object v6

    .line 2155
    goto :goto_1f

    .line 2151
    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 2160
    .end local v1    # "i":I
    .end local v6    # "returnSignature":Ljava/lang/String;
    .end local v7    # "s":[Landroid/content/pm/Signature;
    :catch_56
    move-exception v0

    .line 2161
    .local v0, "e1":Ljava/lang/Exception;
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in method:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2164
    .end local v0    # "e1":Ljava/lang/Exception;
    :cond_74
    const/4 v6, 0x0

    goto :goto_1f
.end method

.method public hasKnoxContainers()I
    .registers 8

    .prologue
    .line 2193
    const/4 v1, 0x0

    .line 2194
    .local v1, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2197
    .local v2, "ident":J
    :try_start_5
    iget-object v4, p0, mPersona:Landroid/os/PersonaManager;

    if-nez v4, :cond_18

    .line 2199
    iget-object v4, p0, mContext:Landroid/content/Context;

    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaManager;

    iput-object v4, p0, mPersona:Landroid/os/PersonaManager;

    .line 2202
    :cond_18
    iget-object v4, p0, mPersona:Landroid/os/PersonaManager;

    if-eqz v4, :cond_33

    .line 2204
    iget-object v4, p0, mPersona:Landroid/os/PersonaManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_33

    iget-object v4, p0, mPersona:Landroid/os/PersonaManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2f} :catch_37

    move-result v4

    if-nez v4, :cond_33

    .line 2206
    const/4 v1, 0x1

    .line 2216
    :cond_33
    :goto_33
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2217
    return v1

    .line 2212
    :catch_37
    move-exception v0

    .line 2213
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string v6, "hasKnoxContainers - Exception"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33
.end method

.method public hasSEContainers()I
    .registers 7

    .prologue
    .line 2246
    const/4 v1, 0x0

    .line 2248
    .local v1, "result":I
    :try_start_1
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->hasSEContainers()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2249
    const/4 v1, 0x1

    .line 2251
    :cond_8
    const/4 v2, 0x0

    .line 2252
    .local v2, "val":Ljava/lang/String;
    const-string/jumbo v3, "persist.security.good.enable"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2253
    if-eqz v2, :cond_1d

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1e

    move-result v3

    if-eqz v3, :cond_1d

    .line 2254
    const/4 v1, 0x1

    .line 2261
    .end local v2    # "val":Ljava/lang/String;
    :cond_1d
    :goto_1d
    return v1

    .line 2256
    :catch_1e
    move-exception v0

    .line 2257
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string v5, "hasSEContainers - Exception"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    const/4 v1, -0x1

    goto :goto_1d
.end method

.method public isAuthorized(IILjava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "service"    # Ljava/lang/String;
    .param p4, "method"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2280
    sget-boolean v2, bootCompleted:Z

    if-nez v2, :cond_a

    sget v2, SELF_PID:I

    if-ne v2, p1, :cond_a

    .line 2292
    :cond_9
    :goto_9
    return v0

    .line 2284
    :cond_a
    invoke-static {}, Lcom/android/server/ServiceKeeper;->getServiceKeeper()Lcom/android/server/ServiceKeeper;

    move-result-object v1

    .line 2285
    .local v1, "sk":Lcom/android/server/ServiceKeeper;
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v2

    if-nez v2, :cond_18

    sget v2, SELF_PID:I

    if-eq v2, p1, :cond_9

    .line 2289
    :cond_18
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2292
    .local v0, "result":I
    goto :goto_9
.end method

.method public isSBAApp(Ljava/lang/String;I)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resourceType"    # I

    .prologue
    .line 2800
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ResourceManager;->isSBAApp(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isSEAndroidLogDumpStateInclude(Landroid/app/enterprise/ContextInfo;)I
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1992
    const-class v5, Lcom/android/server/SEAMService$16Local;

    invoke-virtual {v5}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1995
    .local v1, "method":Ljava/lang/String;
    sget-object v5, SEAMS_PERMS:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, p1, v5, v3}, checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_18

    .line 1997
    const/4 v3, -0x2

    .line 2008
    :cond_17
    :goto_17
    return v3

    .line 2001
    :cond_18
    :try_start_18
    const-string/jumbo v5, "persist.security.mdm.SElogs"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2002
    .local v2, "val":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_26} :catch_2b

    move-result v5

    if-nez v5, :cond_17

    .end local v2    # "val":Ljava/lang/String;
    :goto_29
    move v3, v4

    .line 2008
    goto :goto_17

    .line 2004
    :catch_2b
    move-exception v0

    .line 2005
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in method:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2006
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method public isSEPolicyAutoUpdateEnabled(Landroid/app/enterprise/ContextInfo;)I
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 1554
    const/4 v6, -0x1

    .line 1559
    .local v6, "ret":I
    const-class v8, Lcom/android/server/SEAMService$11Local;

    invoke-virtual {v8}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1563
    .local v1, "method":Ljava/lang/String;
    sget-object v8, SEAMS_PERMS:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-direct {p0, p1, v8, v7}, checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_19

    .line 1565
    const/4 v7, -0x2

    .line 1589
    :goto_18
    return v7

    .line 1567
    :cond_19
    const-wide/16 v2, 0x0

    .line 1570
    .local v2, "ident":J
    :try_start_1b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1571
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    const-string v9, "android"

    const-string v10, "com.sec.android.app.msa"

    invoke-interface {v8, v9, v10}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_2e

    move v4, v7

    .line 1574
    .local v4, "msaInstalled":Z
    :cond_2e
    invoke-virtual {p0, p1}, getSELinuxMode(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    if-ne v8, v7, :cond_47

    .line 1575
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "security_update_db"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_41} :catch_57
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_41} :catch_75

    move-result v6

    .line 1588
    .end local v4    # "msaInstalled":Z
    :cond_42
    :goto_42
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v6

    .line 1589
    goto :goto_18

    .line 1577
    .restart local v4    # "msaInstalled":Z
    :cond_47
    if-eqz v4, :cond_42

    .line 1578
    :try_start_49
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "cr_msa_auto_update"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_55} :catch_57
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_55} :catch_75

    move-result v6

    goto :goto_42

    .line 1581
    .end local v4    # "msaInstalled":Z
    :catch_57
    move-exception v5

    .line 1582
    .local v5, "re":Landroid/os/RemoteException;
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "remote exception in method:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1583
    const/4 v6, -0x1

    .line 1587
    goto :goto_42

    .line 1584
    .end local v5    # "re":Landroid/os/RemoteException;
    :catch_75
    move-exception v0

    .line 1585
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in method:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1586
    const/4 v6, -0x1

    goto :goto_42
.end method

.method public isWhitelistApp(ILjava/lang/String;I)I
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceType"    # I

    .prologue
    .line 2755
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/ResourceManager;->isWhitelistApp(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public loadContainerSetting(Ljava/lang/String;)I
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2325
    const-class v7, Lcom/android/server/SEAMService$21Local;

    invoke-virtual {v7}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2326
    .local v4, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2327
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 2329
    .local v5, "pid":I
    sget-object v7, SEAMS_PERMS:[Ljava/lang/String;

    aget-object v7, v7, v8

    invoke-direct {p0, v6, v5, v7, v9}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_20

    .line 2331
    const/4 v7, -0x2

    .line 2351
    :goto_1f
    return v7

    .line 2336
    :cond_20
    const/4 v7, 0x1

    :try_start_21
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-static {v7, v8}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 2337
    .local v2, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v2, :cond_65

    .line 2338
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 2339
    .local v3, "mPM":Landroid/content/pm/IPackageManager;
    const/16 v7, 0x80

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-interface {v3, p1, v7, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2341
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_40

    .line 2342
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, p1, v7, v8}, Lcom/android/server/SEAMSContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v7

    goto :goto_1f

    .line 2344
    :cond_40
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v2, p1, v7, v8}, Lcom/android/server/SEAMSContainer;->loadContainerSetting(Ljava/lang/String;IZ)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_45} :catch_47

    move-result v7

    goto :goto_1f

    .line 2347
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "instanceCon":Lcom/android/server/SEAMSContainer;
    .end local v3    # "mPM":Landroid/content/pm/IPackageManager;
    :catch_47
    move-exception v1

    .line 2348
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in method:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2351
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_65
    const/4 v7, -0x1

    goto :goto_1f
.end method

.method public relabelAppDir(Ljava/lang/String;)I
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2378
    const-class v11, Lcom/android/server/SEAMService$22Local;

    invoke-virtual {v11}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2380
    .local v7, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 2381
    .local v10, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 2384
    .local v9, "pid":I
    sget-object v11, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x1

    invoke-direct {p0, v10, v9, v11, v12}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_20

    .line 2386
    const/4 v11, -0x2

    .line 2426
    :goto_1f
    return v11

    .line 2389
    :cond_20
    const/4 v2, 0x0

    .line 2390
    .local v2, "domain":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2392
    .local v4, "hasApp":Z
    if-nez p1, :cond_26

    .line 2394
    const/4 v11, 0x0

    goto :goto_1f

    .line 2397
    :cond_26
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2400
    .local v1, "currentUid":I
    invoke-direct {p0, v1}, isPersona(I)Z

    move-result v11

    if-eqz v11, :cond_35

    .line 2402
    const/4 v11, 0x0

    goto :goto_1f

    .line 2406
    :cond_35
    :try_start_35
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 2407
    .local v6, "mPM":Landroid/content/pm/IPackageManager;
    const/16 v11, 0x80

    invoke-interface {v6, v11, v1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v8

    .line 2409
    .local v8, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_47
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 2410
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const-string v11, "/data/system"

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_47

    .line 2412
    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_47

    .line 2413
    const/4 v4, 0x1

    .line 2414
    invoke-direct {p0, v0}, relabelAppDir(Landroid/content/pm/ApplicationInfo;)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_69} :catch_6f

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_47

    .line 2415
    const/4 v11, 0x0

    goto :goto_1f

    .line 2419
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "mPM":Landroid/content/pm/IPackageManager;
    .end local v8    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catch_6f
    move-exception v3

    .line 2420
    .local v3, "e":Ljava/lang/Exception;
    sget-object v11, mSKLog:Lcom/android/server/SKLogger;

    const-string v12, "SEAMService"

    const-string/jumbo v13, "relabelAppDir cannot get app list"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2421
    const/4 v11, 0x0

    goto :goto_1f

    .line 2423
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "mPM":Landroid/content/pm/IPackageManager;
    .restart local v8    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_7c
    if-eqz v4, :cond_80

    .line 2424
    const/4 v11, 0x1

    goto :goto_1f

    .line 2426
    :cond_80
    const/4 v11, 0x0

    goto :goto_1f
.end method

.method public relabelData(Landroid/app/enterprise/ContextInfo;)I
    .registers 30
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2441
    const/16 v18, 0x1

    .line 2447
    .local v18, "needPersonaSync":Z
    const-class v23, Lcom/android/server/SEAMService$23Local;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v16

    .line 2451
    .local v16, "method":Ljava/lang/String;
    sget-object v23, SEAMS_PERMS:[Ljava/lang/String;

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v23

    if-nez v23, :cond_25

    .line 2453
    const/16 v23, -0x2

    .line 2562
    :goto_24
    return v23

    .line 2456
    :cond_25
    const/4 v9, 0x0

    .line 2457
    .local v9, "domain":Ljava/lang/String;
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 2460
    .local v8, "data":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 2465
    .local v7, "currentUid":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, isPersona(I)Z

    move-result v23

    if-eqz v23, :cond_3d

    .line 2466
    const/16 v23, 0x0

    goto :goto_24

    .line 2470
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, mLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 2471
    :try_start_44
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_120

    move-result-wide v14

    .line 2473
    .local v14, "ident":J
    :try_start_48
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string/jumbo v25, "user"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/UserManager;

    invoke-virtual/range {v23 .. v23}, Landroid/os/UserManager;->getUsers()Ljava/util/List;
    :try_end_5e
    .catchall {:try_start_48 .. :try_end_5e} :catchall_11b

    move-result-object v22

    .line 2476
    .local v22, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_5f
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2478
    monitor-exit v24
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_120

    .line 2483
    if-nez v7, :cond_6c

    .line 2484
    const-string v23, "RESTORECONALL"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2488
    :cond_6c
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_70
    :goto_70
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_219

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/UserInfo;

    .line 2489
    .local v21, "ui":Landroid/content/pm/UserInfo;
    if-eqz v21, :cond_70

    .line 2494
    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, isPersona(I)Z

    move-result v23

    if-eqz v23, :cond_b5

    .line 2495
    if-eqz v18, :cond_70

    const/16 v23, 0x63

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_70

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    const/16 v24, 0xbe

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_70

    .line 2496
    sget-object v23, mSKLog:Lcom/android/server/SKLogger;

    const-string v24, "SEAMService"

    const-string v25, "need to restorecon with pkgdir and category"

    invoke-virtual/range {v23 .. v25}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2504
    :cond_b5
    :try_start_b5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    .line 2505
    .local v13, "mPM":Landroid/content/pm/IPackageManager;
    const/16 v23, 0x80

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v13, v0, v1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v19

    .line 2508
    .local v19, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_d1
    :goto_d1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_123

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 2509
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    const-string v23, "/data/system"

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_d1

    .line 2511
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v25, v0

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, constructLabelEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 2513
    .local v17, "msg":Ljava/lang/String;
    if-eqz v17, :cond_d1

    .line 2514
    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_10e} :catch_10f

    goto :goto_d1

    .line 2544
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "mPM":Landroid/content/pm/IPackageManager;
    .end local v17    # "msg":Ljava/lang/String;
    .end local v19    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catch_10f
    move-exception v10

    .line 2545
    .local v10, "e":Ljava/lang/Exception;
    sget-object v23, mSKLog:Lcom/android/server/SKLogger;

    const-string v24, "SEAMService"

    const-string v25, "Cannot get app list"

    invoke-virtual/range {v23 .. v25}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_70

    .line 2476
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v21    # "ui":Landroid/content/pm/UserInfo;
    .end local v22    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_11b
    move-exception v23

    :try_start_11c
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v23

    .line 2478
    .end local v14    # "ident":J
    :catchall_120
    move-exception v23

    monitor-exit v24
    :try_end_122
    .catchall {:try_start_11c .. :try_end_122} :catchall_120

    throw v23

    .line 2518
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "mPM":Landroid/content/pm/IPackageManager;
    .restart local v14    # "ident":J
    .restart local v19    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v21    # "ui":Landroid/content/pm/UserInfo;
    .restart local v22    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_123
    if-eqz v18, :cond_70

    const/16 v23, 0x63

    :try_start_127
    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_70

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v23, v0

    const/16 v24, 0xbe

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_70

    .line 2519
    const/16 v23, 0x80

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v13, v0, v1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v19

    .line 2522
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_155
    :goto_155
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1d3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 2523
    .restart local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    const-string v23, "/data/system"

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_155

    .line 2526
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "^/data/data/"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "/data/user/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2528
    .local v20, "targetDir":Ljava/lang/String;
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_155

    .line 2532
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v24, v0

    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v25, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v26, v0

    const v27, 0x186a0

    mul-int v26, v26, v27

    add-int v25, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, constructLabelEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 2534
    .restart local v17    # "msg":Ljava/lang/String;
    if-eqz v17, :cond_155

    .line 2535
    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_155

    .line 2540
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v17    # "msg":Ljava/lang/String;
    .end local v20    # "targetDir":Ljava/lang/String;
    :cond_1d3
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "/data/user/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Landroid/os/SELinux;->setfilecon_with_category(Ljava/lang/String;I)Z

    .line 2541
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "/data/knox/sdcard/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Landroid/os/SELinux;->setfilecon_with_category(Ljava/lang/String;I)Z
    :try_end_217
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_217} :catch_10f

    goto/16 :goto_70

    .line 2550
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "mPM":Landroid/content/pm/IPackageManager;
    .end local v19    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v21    # "ui":Landroid/content/pm/UserInfo;
    :cond_219
    const-string v23, "LABELDONE"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2554
    const/16 v23, 0x2

    :try_start_222
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1, v8}, relabelDataLocked(ILjava/lang/Object;)Z
    :try_end_229
    .catch Ljava/lang/Exception; {:try_start_222 .. :try_end_229} :catch_230

    move-result v23

    if-eqz v23, :cond_23e

    .line 2555
    const/16 v23, 0x1

    goto/16 :goto_24

    .line 2557
    :catch_230
    move-exception v10

    .line 2558
    .restart local v10    # "e":Ljava/lang/Exception;
    sget-object v23, mSKLog:Lcom/android/server/SKLogger;

    const-string v24, "SEAMService"

    const-string v25, "Cannot relabel /data"

    invoke-virtual/range {v23 .. v25}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2559
    const/16 v23, 0x0

    goto/16 :goto_24

    .line 2562
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_23e
    const/16 v23, 0x0

    goto/16 :goto_24
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 2606
    const-class v13, Lcom/android/server/SEAMService$24Local;

    invoke-virtual {v13}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    .line 2607
    .local v9, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 2608
    .local v12, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 2609
    .local v10, "pid":I
    const-wide/16 v6, 0x0

    .line 2612
    .local v6, "ident":J
    sget-object v13, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10, v13, v14}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_24

    .line 2614
    const/4 v11, -0x2

    .line 2654
    :goto_23
    return v11

    .line 2627
    :cond_24
    const/4 v8, 0x0

    .line 2630
    .local v8, "instanceCon":Lcom/android/server/SEAMSContainer;
    const/4 v11, 0x0

    .line 2631
    .local v11, "ret":I
    :try_start_26
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v13

    if-nez v13, :cond_4f

    .line 2632
    const-string v13, "SEAMS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12, v13, v9}, isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2633
    .local v4, "containerType":I
    if-gez v4, :cond_38

    .line 2636
    const/4 v11, -0x2

    goto :goto_23

    .line 2638
    :cond_38
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    invoke-static {v4, v13}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    .line 2639
    if-eqz v8, :cond_85

    .line 2640
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v11

    .line 2641
    goto :goto_23

    .line 2644
    .end local v4    # "containerType":I
    :cond_4f
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-static {v13, v14}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    .line 2645
    if-eqz v8, :cond_85

    .line 2646
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_65} :catch_67

    move-result v11

    .line 2647
    goto :goto_23

    .line 2650
    :catch_67
    move-exception v5

    .line 2651
    .local v5, "e":Ljava/lang/Exception;
    sget-object v13, mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception in method:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2652
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 2654
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_85
    const/4 v11, -0x1

    goto :goto_23
.end method

.method public removeAppFromSBABlacklist(ILjava/lang/String;I)I
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceType"    # I

    .prologue
    .line 2818
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/ResourceManager;->removeAppFromSBABlacklist(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public removeAppFromWhitelist(ILjava/lang/String;I)I
    .registers 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceType"    # I

    .prologue
    .line 2773
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/ResourceManager;->removeAppFromWhitelist(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public removeSEContainer(I)I
    .registers 9
    .param p1, "containerID"    # I

    .prologue
    .line 1137
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1138
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1141
    .local v2, "pid":I
    sget-object v4, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    invoke-direct {p0, v3, v2, v4, v5}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_16

    .line 1143
    const/4 v4, -0x2

    .line 1155
    :goto_15
    return v4

    .line 1147
    :cond_16
    const/4 v4, 0x2

    :try_start_17
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v4, v5}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v1

    .line 1148
    .local v1, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v1, :cond_31

    .line 1149
    invoke-virtual {v1, v3, v2, p1}, Lcom/android/server/SEAMSContainer;->removeSEContainer(III)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_22} :catch_24

    move-result v4

    goto :goto_15

    .line 1151
    .end local v1    # "instanceCon":Lcom/android/server/SEAMSContainer;
    :catch_24
    move-exception v0

    .line 1152
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string v6, "Exception in removeSEContainer:"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1155
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_31
    const/4 v4, -0x1

    goto :goto_15
.end method

.method public setAMSLogLevel(Landroid/app/enterprise/ContextInfo;I)I
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "FLAG"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 2676
    :try_start_2
    const-class v4, Lcom/android/server/SEAMService$25Local;

    invoke-virtual {v4}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2680
    .local v1, "method":Ljava/lang/String;
    sget-object v4, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 2682
    const/4 v2, -0x2

    .line 2697
    .end local v1    # "method":Ljava/lang/String;
    :goto_19
    return v2

    .line 2685
    .restart local v1    # "method":Ljava/lang/String;
    :cond_1a
    if-ltz p2, :cond_1f

    const/4 v4, 0x2

    if-le p2, v4, :cond_21

    :cond_1f
    move v2, v3

    .line 2687
    goto :goto_19

    .line 2692
    :cond_21
    const-string/jumbo v4, "persist.security.ams.verbose"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_2c

    goto :goto_19

    .line 2696
    .end local v1    # "method":Ljava/lang/String;
    :catch_2c
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v2, v3

    .line 2697
    goto :goto_19
.end method

.method public setSEAndroidLogDumpStateInclude(Landroid/app/enterprise/ContextInfo;Z)I
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "include"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2715
    const-class v3, Lcom/android/server/SEAMService$26Local;

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2717
    .local v1, "method":Ljava/lang/String;
    sget-object v3, SEAMS_PERMS:[Ljava/lang/String;

    aget-object v3, v3, v2

    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, v4}, checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_18

    .line 2719
    const/4 v2, -0x2

    .line 2732
    :goto_17
    return v2

    .line 2723
    :cond_18
    if-eqz p2, :cond_43

    .line 2724
    :try_start_1a
    const-string/jumbo v3, "persist.security.mdm.SElogs"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_22} :catch_23

    goto :goto_17

    .line 2728
    :catch_23
    move-exception v0

    .line 2729
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in method:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2732
    const/4 v2, -0x1

    goto :goto_17

    .line 2726
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_43
    :try_start_43
    const-string/jumbo v3, "persist.security.mdm.SElogs"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4b} :catch_23

    goto :goto_17
.end method
