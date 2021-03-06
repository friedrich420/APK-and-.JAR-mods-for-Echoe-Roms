.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.super Lcom/sec/enterprise/knox/container/IKnoxContainerManager$Stub;
.source "KnoxMUMContainerPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;,
        Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;
    }
.end annotation


# static fields
.field private static final ADMIN_ALL:I = 0x0

.field private static final APK_PATH:Ljava/lang/String; = "/system/container/"

.field private static final CREATETIME_INSTALL_LIST:[Ljava/lang/String;

.field private static final CREATION_PARAMS:Ljava/lang/String; = "creation_params"

.field private static final DEBUG:Z

.field private static final FLAG_BASE:I = 0x1

.field private static final FLAG_MIGRATION:I = 0x100

.field private static final FOTA_DEBUG:Z = false

.field private static FOTA_DEBUG_TIME:J = 0x0L

.field private static final HANDLER_APK:Ljava/lang/String; = "KnoxSecureHandler/KnoxSecureHandler.apk"

.field private static final INTENT_B2B_PERSONA_CREATED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.created.b2b"

.field private static final INTENT_B2B_PERSONA_REMOVED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.removed.b2b"

.field private static final INTENT_B2C_PERSONA_CREATED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.created.b2c"

.field private static final INTENT_B2C_PERSONA_REMOVED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.removed.b2c"

.field private static final INTENT_CONTAINER_ADMIN_CHANGED_ACTION:Ljava/lang/String; = "enterprise.container.admin.changed"

.field private static final INTENT_KNOX_SETUPWIZARD_DIED:Ljava/lang/String; = "com.sec.knox.died.SETUP_WIZARD"

.field private static final INTENT_PERSONA_MDM_LOCKED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.mdmlocked"

.field private static final INTENT_PERSONA_MDM_UNLOCKED_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.mdmunlocked"

.field private static final INTENT_START_MIGRATION_WIZARD_ACTION:Ljava/lang/String; = "com.sec.knox.start.MIGRATION_WIZARD"

.field private static final INTENT_START_SETUP_WIZARD_ACTION:Ljava/lang/String; = "com.sec.knox.start.SETUP_WIZARD"

.field private static final INTENT_VALIDATE_LICENSE_KEY_STATUS_ACTION:Ljava/lang/String; = "com.sec.knox.containeragent.klms.licensekey.status"

.field private static final LWC_FOLDERHEADERICON_HEIGHT:I = 0x11

.field private static final LWC_FOLDERHEADERICON_WIDTH:I = 0x5a

.field private static final MAX_LENGTH:I = 0x20

.field private static final MIGRATION_WIZARD_CLIENT_NAME:Ljava/lang/String; = "com.sec.knox.containeragent"

.field private static final SEAMS_RESOURCE_TYPE_SDCARD:I = 0x0

.field private static final SETUP_WIZARD_CLIENT_NAME:Ljava/lang/String; = "com.sec.knox.knoxsetupwizardclient"

.field private static TAG:Ljava/lang/String; = null

.field private static final TIMA_STORE_INDEX:I = 0x0

.field private static TYPE_FILE_PATH:Ljava/lang/String; = null

.field private static final VALID_KLMS_LICENSE_CODE:I = 0x5a

.field private static final WIZARD_APK:Ljava/lang/String; = "ContainerAgent2/ContainerAgent2.apk"

.field private static final isEngMode:Z

.field private static mContext:Landroid/content/Context; = null

.field private static mDefaultPkgList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback; = null

.field private static final tileListForKiosk:Ljava/lang/String; = "Wifi;Location;SilentMode;AutoRotate;Bluetooth;SmartStay;PowerSaving;AirplaneMode;"


# instance fields
.field private final DEFAULT_KNOX_ICON_PATH:Ljava/lang/String;

.field final LAUNCHER_FOR_COM_ACTIVITY:Ljava/lang/String;

.field final LAUNCHER_FOR_COM_PACKAGE:Ljava/lang/String;

.field private final SECOND_KNOX_ICON_PATH:Ljava/lang/String;

.field private containerAdminFwdedIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

.field private final mContainerReceiver:Landroid/content/BroadcastReceiver;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mFirmwareVersion:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mIsFotaRequired:Z

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mParamsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/knox/container/ContainerCreationParams;",
            ">;"
        }
    .end annotation
.end field

.field mParser:Lorg/xmlpull/v1/XmlPullParser;

.field mPersona:Landroid/os/PersonaManager;

.field private mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

.field private mRIdGenerator:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

.field private mSEAMS:Lcom/android/server/SEAMService;

.field private mSetupWizardUid:I

.field private mTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation
.end field

.field mUms:Landroid/os/UserManager;

.field private mWms:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 207
    const-string v0, "KnoxMUMContainerPolicy"

    sput-object v0, TAG:Ljava/lang/String;

    .line 208
    const-string v0, "/data/system/container/"

    sput-object v0, TYPE_FILE_PATH:Ljava/lang/String;

    .line 211
    const-string v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, DEBUG:Z

    .line 240
    const-string v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, isEngMode:Z

    .line 245
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.gm"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.android.widgetapp.digitalclock"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.samsung.android.app.memo"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.sec.android.widgetapp.diotek.smemo"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.sec.android.app.music"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.sec.android.app.videoplayer"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sec.android.app.sbrowser"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sec.android.app.sbrowsertry"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.samsung.android.snote"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.hancom.androidpc.appwidget"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.google.android.marvin.talkback"

    aput-object v2, v0, v1

    sput-object v0, CREATETIME_INSTALL_LIST:[Ljava/lang/String;

    .line 260
    const/4 v0, 0x0

    sput-object v0, mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, mDefaultPkgList:Ljava/util/List;

    .line 283
    const-wide/16 v0, 0x0

    sput-wide v0, FOTA_DEBUG_TIME:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 305
    invoke-direct {p0}, Lcom/sec/enterprise/knox/container/IKnoxContainerManager$Stub;-><init>()V

    .line 233
    const-string v0, "/system/container/resources/knox_icon.png"

    iput-object v0, p0, DEFAULT_KNOX_ICON_PATH:Ljava/lang/String;

    .line 234
    const-string v0, "/system/container/resources/knox_icon2.png"

    iput-object v0, p0, SECOND_KNOX_ICON_PATH:Ljava/lang/String;

    .line 236
    iput-object v4, p0, containerAdminFwdedIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    .line 262
    iput-object v4, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 263
    iput-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mTypeList:Ljava/util/List;

    .line 267
    iput-object v4, p0, mPersona:Landroid/os/PersonaManager;

    .line 268
    iput-object v4, p0, mUms:Landroid/os/UserManager;

    .line 269
    iput-object v4, p0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 270
    iput-object v4, p0, mRIdGenerator:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mParamsList:Ljava/util/List;

    .line 273
    iput-object v4, p0, mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    .line 275
    iput-object v4, p0, mSEAMS:Lcom/android/server/SEAMService;

    .line 279
    const/4 v0, -0x1

    iput v0, p0, mSetupWizardUid:I

    .line 280
    iput-object v4, p0, mActivityManager:Landroid/app/ActivityManager;

    .line 281
    iput-object v4, p0, mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    .line 282
    iput-object v4, p0, mFirmwareVersion:Ljava/lang/String;

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsFotaRequired:Z

    .line 285
    iput-object v4, p0, mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 299
    const-string v0, "com.sec.knox.bridge"

    iput-object v0, p0, LAUNCHER_FOR_COM_PACKAGE:Ljava/lang/String;

    .line 300
    const-string v0, "com.sec.knox.bridge.activity.klms.UserHomeReplaceCOMActivity"

    iput-object v0, p0, LAUNCHER_FOR_COM_ACTIVITY:Ljava/lang/String;

    .line 628
    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$1;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    iput-object v0, p0, mContainerReceiver:Landroid/content/BroadcastReceiver;

    .line 653
    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$2;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    iput-object v0, p0, mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 306
    sput-object p1, mContext:Landroid/content/Context;

    .line 307
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    sget-object v1, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 308
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 309
    .local v7, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    new-instance v6, Ljava/io/File;

    sget-object v0, TYPE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 317
    invoke-direct {p0}, prepareEnterprisePolicyData()V

    .line 321
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 322
    .local v8, "filter1":Landroid/content/IntentFilter;
    const-string v0, "com.sec.knox.containeragent.klms.licensekey.status"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    sget-object v0, mContext:Landroid/content/Context;

    iget-object v1, p0, mContainerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 326
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 327
    .local v3, "filter2":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 330
    sget-object v0, mContext:Landroid/content/Context;

    iget-object v1, p0, mPackageReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 332
    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    iput-object v0, p0, mRIdGenerator:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

    .line 333
    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    iput-object v0, p0, mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    .line 334
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 335
    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    iput-object v0, p0, mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    .line 336
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 203
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    .line 203
    iget-object v0, p0, mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 203
    invoke-direct/range {p0 .. p5}, sendContainerCreationIntentBC(Ljava/lang/String;IIII)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    .line 203
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/PersonaManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    .line 203
    invoke-direct {p0}, getService()Landroid/os/PersonaManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;IZ)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 203
    invoke-direct {p0, p1, p2}, removeContainer(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-direct {p0, p1}, packageInstalledForExternalStorage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-direct {p0, p1}, packageRemovedForExternalStorage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-direct {p0, p1, p2}, sendIntentBroadcastForContainer(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)Lcom/sec/knox/container/ContainerCreationParams;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 203
    invoke-direct {p0, p1}, getCreationParams(I)Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/sec/knox/container/ContainerCreationParams;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Lcom/sec/knox/container/ContainerCreationParams;
    .param p2, "x2"    # I

    .prologue
    .line 203
    invoke-direct {p0, p1, p2}, processCreationParams(Lcom/sec/knox/container/ContainerCreationParams;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/sec/knox/container/ContainerCreationParams;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Lcom/sec/knox/container/ContainerCreationParams;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 203
    invoke-direct {p0, p1, p2, p3}, updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/app/ActivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    .line 203
    iget-object v0, p0, mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/content/pm/PersonaState;)I
    .registers 2
    .param p0, "x0"    # Landroid/content/pm/PersonaState;

    .prologue
    .line 203
    invoke-static {p0}, translateStatus(Landroid/content/pm/PersonaState;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 203
    invoke-direct/range {p0 .. p5}, sendContainerStateChangeIntent(Ljava/lang/String;IIII)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 203
    invoke-direct {p0, p1, p2, p3}, sendContainerAdminLockIntent(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    .line 203
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Ljava/lang/String;)Z
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-static {p0}, isSystemApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500()Z
    .registers 1

    .prologue
    .line 203
    invoke-static {}, isTvzwProject()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600()Ljava/util/List;
    .registers 1

    .prologue
    .line 203
    sget-object v0, mDefaultPkgList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2602(Ljava/util/List;)Ljava/util/List;
    .registers 1
    .param p0, "x0"    # Ljava/util/List;

    .prologue
    .line 203
    sput-object p0, mDefaultPkgList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2700()Ljava/lang/String;
    .registers 1

    .prologue
    .line 203
    sget-object v0, TYPE_FILE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    .line 203
    iget-object v0, p0, mParamsList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/sec/knox/container/ContainerCreationParams;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    .line 203
    invoke-direct {p0, p1}, removeCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .prologue
    .line 203
    iget-object v0, p0, mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    return-object v0
.end method

.method static synthetic access$600()Landroid/content/Context;
    .registers 1

    .prologue
    .line 203
    sget-object v0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700()Z
    .registers 1

    .prologue
    .line 203
    sget-boolean v0, DEBUG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 203
    invoke-direct/range {p0 .. p5}, sendContainerCreationIntent(Ljava/lang/String;IIII)V

    return-void
.end method

.method static synthetic access$900()Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .registers 1

    .prologue
    .line 203
    sget-object v0, mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;
    .registers 1
    .param p0, "x0"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .prologue
    .line 203
    sput-object p0, mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    return-object p0
.end method

.method private addConfigurationTypeToList(ILcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "type"    # Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 3171
    invoke-direct {p0, p1, p2}, processNewTypeObject(ILcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z

    move-result v0

    .line 3172
    .local v0, "ret":Z
    if-ne v0, v1, :cond_10

    .line 3173
    iget-object v2, p0, mTypeList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3174
    invoke-direct {p0}, updateConfigurationXml()V

    .line 3177
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private addContainerOwnerRelationship(II)Z
    .registers 8
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 2156
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "Add Container owner relationship."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    const/4 v1, 0x0

    .line 2159
    .local v1, "result":Z
    :try_start_8
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->addMUMContainer(II)Z

    move-result v1

    .line 2160
    if-eqz v1, :cond_29

    .line 2161
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Container Added to DB: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    :goto_28
    return v1

    .line 2170
    :cond_29
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add container to DB: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_41} :catch_42

    goto :goto_28

    .line 2172
    :catch_42
    move-exception v0

    .line 2173
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "Failed at addContainerToDB "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28
.end method

.method private addPackageToExternalStorageSBABlackListInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[Landroid/content/pm/Signature;)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "signatures"    # [Landroid/content/pm/Signature;

    .prologue
    .line 4126
    const-string v4, ""

    .line 4127
    .local v4, "sig":Ljava/lang/String;
    if-eqz p3, :cond_1f

    array-length v7, p3

    if-lez v7, :cond_1f

    .line 4128
    array-length v7, p3

    new-array v5, v7, [Ljava/lang/String;

    .line 4129
    .local v5, "sigStrins":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    array-length v7, p3

    if-ge v2, v7, :cond_19

    .line 4130
    aget-object v7, p3, v2

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    .line 4129
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 4132
    :cond_19
    const-string v7, ","

    invoke-static {v7, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 4134
    .end local v2    # "i":I
    .end local v5    # "sigStrins":[Ljava/lang/String;
    :cond_1f
    const/4 v3, 0x0

    .line 4135
    .local v3, "result":Z
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 4136
    .local v6, "where":Landroid/content/ContentValues;
    const-string v7, "adminUid"

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4137
    const-string/jumbo v7, "packageName"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4139
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KnoxExternalStorageSBABlacklist"

    invoke-virtual {v7, v8, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 4140
    .local v0, "count":I
    if-lez v0, :cond_5e

    .line 4142
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4143
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v7, "signatures"

    invoke-virtual {v1, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4144
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KnoxExternalStorageSBABlacklist"

    invoke-virtual {v7, v8, v1, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    .line 4151
    .end local v1    # "cv":Landroid/content/ContentValues;
    :goto_53
    if-eqz v3, :cond_6d

    .line 4152
    sget-object v7, TAG:Ljava/lang/String;

    const-string v8, "addPackageToExternalStorageSBABlackListInternal policy passed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4153
    const/4 v7, 0x1

    .line 4155
    :goto_5d
    return v7

    .line 4147
    :cond_5e
    const-string/jumbo v7, "signatures"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4148
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KnoxExternalStorageSBABlacklist"

    invoke-virtual {v7, v8, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    goto :goto_53

    .line 4155
    :cond_6d
    const/4 v7, 0x0

    goto :goto_5d
.end method

.method private addPackageToExternalStorageWhiteListInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[Landroid/content/pm/Signature;)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "signatures"    # [Landroid/content/pm/Signature;

    .prologue
    .line 3846
    const-string v4, ""

    .line 3847
    .local v4, "sig":Ljava/lang/String;
    if-eqz p3, :cond_1f

    array-length v7, p3

    if-lez v7, :cond_1f

    .line 3848
    array-length v7, p3

    new-array v5, v7, [Ljava/lang/String;

    .line 3849
    .local v5, "sigStrins":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    array-length v7, p3

    if-ge v2, v7, :cond_19

    .line 3850
    aget-object v7, p3, v2

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    .line 3849
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 3852
    :cond_19
    const-string v7, ","

    invoke-static {v7, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 3854
    .end local v2    # "i":I
    .end local v5    # "sigStrins":[Ljava/lang/String;
    :cond_1f
    const/4 v3, 0x0

    .line 3855
    .local v3, "result":Z
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 3856
    .local v6, "where":Landroid/content/ContentValues;
    const-string v7, "adminUid"

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3857
    const-string/jumbo v7, "packageName"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3859
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KnoxExternalStorageWhitelist"

    invoke-virtual {v7, v8, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 3860
    .local v0, "count":I
    if-lez v0, :cond_5e

    .line 3862
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3863
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v7, "signatures"

    invoke-virtual {v1, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3864
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KnoxExternalStorageWhitelist"

    invoke-virtual {v7, v8, v1, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    .line 3871
    .end local v1    # "cv":Landroid/content/ContentValues;
    :goto_53
    if-eqz v3, :cond_6d

    .line 3872
    sget-object v7, TAG:Ljava/lang/String;

    const-string v8, "addPackageToExternalStorageWhiteList policy passed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3873
    const/4 v7, 0x1

    .line 3875
    :goto_5d
    return v7

    .line 3867
    :cond_5e
    const-string/jumbo v7, "signatures"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3868
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KnoxExternalStorageWhitelist"

    invoke-virtual {v7, v8, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    goto :goto_53

    .line 3875
    :cond_6d
    const/4 v7, 0x0

    goto :goto_5d
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 6
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 617
    const-string v1, "KnoxMUMContainerPolicy"

    .line 618
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5e

    .line 620
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 621
    .local v0, "e":Ljava/lang/SecurityException;
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_5d

    .line 622
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 623
    :cond_5d
    throw v0

    .line 625
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_5e
    const/4 v2, 0x0

    return v2
.end method

.method private checkForFOTA()V
    .registers 12

    .prologue
    .line 416
    iget-boolean v7, p0, mIsFotaRequired:Z

    if-eqz v7, :cond_51

    .line 417
    invoke-direct {p0}, doUpgradeForExistingConfigurationTypes()V

    .line 418
    const/4 v4, 0x0

    .line 421
    .local v4, "lTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :try_start_8
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "reading from xml resource for fota"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    sget-object v7, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1110006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    iput-object v7, p0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 425
    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    iget-object v7, p0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v1, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 426
    .local v1, "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    .line 427
    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v4

    .line 429
    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getFotaCloneInstallApps()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7}, updateInstallPackagesForCloneTypes(Ljava/util/List;)V

    .line 430
    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getFotaCloneRemoveApps()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7}, updateRemovePackagesForCloneTypes(Ljava/util/List;)V

    .line 431
    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getFotaCloneDisableApps()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7}, updateDisablePackagesForCloneTypes(Ljava/util/List;)V

    .line 432
    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getFotaCloneReenableApps()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7}, updateReenablePackagesForCloneTypes(Ljava/util/List;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_49} :catch_52

    .line 445
    if-eqz v4, :cond_51

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_77

    .line 475
    .end local v1    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v4    # "lTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :cond_51
    :goto_51
    return-void

    .line 439
    .restart local v4    # "lTypeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :catch_52
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, TAG:Ljava/lang/String;

    const-string v8, "Failed to open file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    sget-boolean v7, DEBUG:Z

    if-eqz v7, :cond_51

    .line 442
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 448
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    :cond_77
    iget-object v8, p0, mTypeList:Ljava/util/List;

    monitor-enter v8

    .line 450
    :try_start_7a
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_7e
    :goto_7e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 451
    .local v3, "l":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v3, :cond_7e

    .line 454
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Upgrading type object:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v9}, filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v5

    .line 457
    .local v5, "m":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Knox config found existing:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    if-eqz v5, :cond_e7

    .line 459
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v6

    .line 460
    .local v6, "personas":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v3, v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setPersonaList(Ljava/util/List;)V

    .line 461
    invoke-direct {p0}, getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    .line 463
    iget-object v7, p0, mTypeList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 464
    iget-object v7, p0, mTypeList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 471
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "l":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v5    # "m":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v6    # "personas":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_e4
    move-exception v7

    monitor-exit v8
    :try_end_e6
    .catchall {:try_start_7a .. :try_end_e6} :catchall_e4

    throw v7

    .line 466
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "l":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v5    # "m":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_e7
    :try_start_e7
    invoke-direct {p0}, getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    .line 467
    iget-object v7, p0, mTypeList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    .line 470
    .end local v3    # "l":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v5    # "m":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_f4
    invoke-direct {p0}, updateConfigurationXml()V

    .line 471
    monitor-exit v8
    :try_end_f8
    .catchall {:try_start_e7 .. :try_end_f8} :catchall_e4

    goto/16 :goto_51
.end method

.method private static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .registers 12
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .prologue
    const/4 v6, 0x0

    .line 3823
    if-eqz p0, :cond_5

    if-nez p1, :cond_28

    .line 3824
    :cond_5
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Signature one is null :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3842
    :goto_27
    return v6

    .line 3828
    :cond_28
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 3829
    .local v3, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p0

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_30
    if-ge v1, v2, :cond_3a

    aget-object v5, v0, v1

    .line 3830
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3829
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 3832
    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_3a
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 3833
    .local v4, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_42
    if-ge v1, v2, :cond_4c

    aget-object v5, v0, v1

    .line 3834
    .restart local v5    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3833
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 3837
    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_4c
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 3838
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "Signature match"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3839
    const/4 v6, 0x1

    goto :goto_27

    .line 3841
    :cond_5b
    sget-object v7, TAG:Ljava/lang/String;

    const-string v8, "Signature doesn\'t match"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x22

    .line 6159
    if-nez p0, :cond_6

    .line 6160
    const/4 p0, 0x0

    .line 6166
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "length":I
    :cond_5
    :goto_5
    return-object p0

    .line 6162
    .end local v0    # "length":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 6163
    .restart local v0    # "length":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_1c

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1c

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_5

    .line 6166
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5
.end method

.method private disableCover(Z)V
    .registers 4
    .param p1, "state"    # Z

    .prologue
    .line 1308
    iget-object v0, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-nez v0, :cond_d

    .line 1309
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    sget-object v1, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 1311
    :cond_d
    iget-object v0, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_16

    .line 1312
    iget-object v0, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/CoverManager;->disableCoverManager(Z)V

    .line 1314
    :cond_16
    return-void
.end method

.method private disableOwnerLaunchersforCOM(I)Z
    .registers 19
    .param p1, "userId"    # I

    .prologue
    .line 6869
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, getEnabledLaunchers(I)Ljava/util/List;

    move-result-object v8

    .line 6870
    .local v8, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const/4 v12, 0x0

    .line 6873
    .local v12, "result":Z
    if-eqz v8, :cond_c0

    .line 6874
    :try_start_a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6875
    .local v5, "disabledPackage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    .line 6876
    .local v10, "ipm":Landroid/content/pm/IPackageManager;
    const/4 v14, 0x1

    new-array v2, v14, [Landroid/content/ComponentName;

    .line 6877
    .local v2, "components":[Landroid/content/ComponentName;
    new-instance v3, Landroid/content/ComponentName;

    const-string v14, "com.sec.knox.bridge"

    const-string v15, "com.sec.knox.bridge.activity.klms.UserHomeReplaceCOMActivity"

    invoke-direct {v3, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6878
    .local v3, "defaultComponent":Landroid/content/ComponentName;
    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v10, v3, v14, v15, v0}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    .line 6882
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2c
    :goto_2c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 6883
    .local v4, "disableComponent":Landroid/content/ComponentName;
    const-string v14, "com.sec.knox.bridge"

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2c

    .line 6886
    sget-boolean v14, DEBUG:Z

    if-eqz v14, :cond_72

    sget-object v14, TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "package name="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "userid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6887
    :cond_72
    invoke-virtual/range {p0 .. p0}, getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v14

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/pm/PersonaManagerService;->setOwnerPackageSettingInstalled(Ljava/lang/String;Z)Z

    .line 6889
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 6890
    .local v11, "ownerLauncher":Ljava/lang/String;
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6891
    sget-object v14, TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " disableOwnerLaunchersforCOM successfull processed for package-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_b9} :catch_bb

    goto/16 :goto_2c

    .line 6918
    .end local v2    # "components":[Landroid/content/ComponentName;
    .end local v3    # "defaultComponent":Landroid/content/ComponentName;
    .end local v4    # "disableComponent":Landroid/content/ComponentName;
    .end local v5    # "disabledPackage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v11    # "ownerLauncher":Ljava/lang/String;
    :catch_bb
    move-exception v6

    .line 6919
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 6920
    const/4 v12, 0x0

    .line 6922
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_c0
    :goto_c0
    return v12

    .line 6894
    .restart local v2    # "components":[Landroid/content/ComponentName;
    .restart local v3    # "defaultComponent":Landroid/content/ComponentName;
    .restart local v5    # "disabledPackage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v10    # "ipm":Landroid/content/pm/IPackageManager;
    :cond_c1
    :try_start_c1
    const-string v14, "activity"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    .line 6895
    .local v1, "ams":Lcom/android/server/am/ActivityManagerService;
    if-eqz v1, :cond_d5

    .line 6896
    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Lcom/android/server/am/ActivityManagerService;->clearRecentTasks(I)Z

    .line 6897
    const-string v14, "com.sec.android.app.launcher"

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 6900
    :cond_d5
    const/4 v14, 0x0

    aput-object v3, v2, v14

    .line 6901
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, setupDefaultOwnerLauncher([Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 6903
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 6904
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {v9, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6905
    sget-object v14, mContext:Landroid/content/Context;

    new-instance v15, Landroid/os/UserHandle;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v14, v9, v15}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6907
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_c0

    .line 6908
    const-string/jumbo v14, "persona"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PersonaManagerService;

    .line 6909
    .local v13, "service":Lcom/android/server/pm/PersonaManagerService;
    sget-object v14, Landroid/os/PersonaManager$AppType;->COM_DISABLED_OWNER_LAUNCHERS:Landroid/os/PersonaManager$AppType;

    invoke-virtual {v14}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v13, v14, v5, v0}, Lcom/android/server/pm/PersonaManagerService;->addAppListForPersona(Ljava/lang/String;Ljava/util/List;I)V

    .line 6910
    sget-object v14, TAG:Ljava/lang/String;

    const-string v15, " disableOwnerLaunchersforCOM Saved disabled launchers...."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_112} :catch_bb

    .line 6914
    const/4 v12, 0x1

    goto :goto_c0
.end method

.method private doUpgradeForExistingConfigurationTypes()V
    .registers 6

    .prologue
    .line 406
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "doUpgradeForExistingConfigurationTypes:upgrading existing types"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v2, p0, mTypeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 408
    .local v0, "eType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v0, :cond_d

    .line 409
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doUpgradeForExistingConfigurationTypes:type name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-direct {p0}, getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    goto :goto_d

    .line 413
    .end local v0    # "eType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_3f
    return-void
.end method

.method private dumpAsString()V
    .registers 4

    .prologue
    .line 1787
    iget-object v2, p0, mParamsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/ContainerCreationParams;

    .line 1788
    .local v1, "param":Lcom/sec/knox/container/ContainerCreationParams;
    invoke-virtual {v1}, Lcom/sec/knox/container/ContainerCreationParams;->describeContents()I

    goto :goto_6

    .line 1790
    .end local v1    # "param":Lcom/sec/knox/container/ContainerCreationParams;
    :cond_16
    return-void
.end method

.method private dumpConfigurationForPersona(ILjava/io/PrintWriter;)V
    .registers 6
    .param p1, "personaId"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 6567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persona:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6568
    invoke-direct {p0, p1}, filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v0

    .line 6569
    .local v0, "ltype":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v0, :cond_351

    .line 6570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Object dump :{ mName :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mVersion :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPasswordMinimumNonLetters :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumNonLetters()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPasswordMinimumLetters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLetters()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPasswordMinimumNumeric : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumNumeric()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPasswordMinimumUpperCase : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumUpperCase()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPasswordMinimumLowerCase : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLowerCase()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPasswordMinimumSymbols : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumSymbols()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPasswordQuality : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMaximumFailedPasswordsForWipe : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumFailedPasswordsForWipe()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mManagedType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getManagedType()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMaximumTimeToLock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumTimeToLock()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCustomBadgeIcon : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCustomHomeScreenWallpaper : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCustomLockScreenWallpaper : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCustomStatusLabel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCustomStatusIcon : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mAppInstallationList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mForbiddenStrings : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getForbiddenStrings()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mProtectedList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mGoogleAppsList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMaximumCharacterOccurences : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumCharacterOccurences()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMaximumCharacterSequenceLength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumCharacterSequenceLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMaximumNumericSequenceLength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumNumericSequenceLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPasswordMinimumLength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSimplePasswordEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getSimplePasswordEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMultifactorAuthEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isMultifactorAuthenticationEnforced()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPasswordPattern : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getRequiredPwdPatternRestrictions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mAllowMultiwindowMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isMultiwindowModeAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mAllowTaskManager : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isTaskManagerAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6600
    const-string v1, " RCP Data sync settings : "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6601
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, p2, v1}, dumpRCPSettings(Ljava/io/PrintWriter;Ljava/util/HashMap;)V

    .line 6602
    const-string v1, " RCP Allow User change Data sync settings : "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6603
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAllowChangeDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, p2, v1}, dumpRCPSettings(Ljava/io/PrintWriter;Ljava/util/HashMap;)V

    .line 6604
    const-string v1, " RCP Notification sync settings : "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6605
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getNotificationSyncPolicy()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, p2, v1}, dumpRCPSettings(Ljava/io/PrintWriter;Ljava/util/HashMap;)V

    .line 6606
    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6608
    :cond_351
    return-void
.end method

.method private dumpRCPSettings(Ljava/io/PrintWriter;Ljava/util/HashMap;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 6611
    .local p2, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 6612
    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_85

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_85

    .line 6613
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_85

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6614
    .local v2, "key":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 6615
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 6616
    .local v5, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v5, :cond_7f

    .line 6617
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 6618
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  ( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_44

    .line 6621
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7f
    const-string v6, " }"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_10

    .line 6624
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_85
    return-void
.end method

.method private enableOwnerLaunchersForCOM(I)Z
    .registers 23
    .param p1, "userId"    # I

    .prologue
    .line 6931
    sget-object v18, TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " enableOwnerLauncher is called for user -"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6932
    invoke-direct/range {p0 .. p0}, getService()Landroid/os/PersonaManager;

    move-result-object v18

    sget-object v19, Landroid/os/PersonaManager$AppType;->COM_DISABLED_OWNER_LAUNCHERS:Landroid/os/PersonaManager$AppType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersonaManager;->getAppListForPersona(Landroid/os/PersonaManager$AppType;I)Ljava/util/List;

    move-result-object v10

    .line 6933
    .local v10, "disabledPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v18, mContext:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "com_default_owner_launcher"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 6934
    .local v8, "defaultLauncher":Ljava/lang/String;
    if-eqz v8, :cond_51

    const-string v18, "-"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 6935
    .local v5, "defaulltLauncherInfo":[Ljava/lang/String;
    :goto_44
    const/16 v17, 0x0

    .line 6937
    .local v17, "result":Z
    if-eqz v10, :cond_4e

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_53

    :cond_4e
    move/from16 v18, v17

    .line 6979
    :goto_50
    return v18

    .line 6934
    .end local v5    # "defaulltLauncherInfo":[Ljava/lang/String;
    .end local v17    # "result":Z
    :cond_51
    const/4 v5, 0x0

    goto :goto_44

    .line 6941
    .restart local v5    # "defaulltLauncherInfo":[Ljava/lang/String;
    .restart local v17    # "result":Z
    :cond_53
    sget-object v18, TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " enableOwnerLauncher defaultLauncher-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " enabled launchers count "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6942
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v15

    .line 6944
    .local v15, "ipm":Landroid/content/pm/IPackageManager;
    :try_start_7f
    new-instance v3, Landroid/content/ComponentName;

    const-string v18, "com.sec.knox.bridge"

    const-string v19, "com.sec.knox.bridge.activity.klms.UserHomeReplaceCOMActivity"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6945
    .local v3, "bridgeComponent":Landroid/content/ComponentName;
    const/16 v18, 0x2

    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v15, v3, v0, v1, v2}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_9b} :catch_13d

    .line 6949
    .end local v3    # "bridgeComponent":Landroid/content/ComponentName;
    :goto_9b
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v4, v0, [Landroid/content/ComponentName;

    .line 6950
    .local v4, "components":[Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 6951
    .local v6, "defaultComponent":Landroid/content/ComponentName;
    const/4 v12, 0x0

    .line 6954
    .local v12, "i":I
    :try_start_a5
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_a9
    :goto_a9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_143

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 6955
    .local v14, "info":Ljava/lang/String;
    const-string v18, "-"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 6956
    .local v16, "launcherInfo":[Ljava/lang/String;
    sget-object v18, TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " enableOwnerLauncher package name "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, v16, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " and Activity name -"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v16, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6957
    new-instance v9, Landroid/content/ComponentName;

    const/16 v18, 0x0

    aget-object v18, v16, v18

    const/16 v19, 0x1

    aget-object v19, v16, v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v9, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6958
    .local v9, "disableComponent":Landroid/content/ComponentName;
    if-eqz v9, :cond_a9

    .line 6959
    invoke-virtual/range {p0 .. p0}, getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v16, v19

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/android/server/pm/PersonaManagerService;->setOwnerPackageSettingInstalled(Ljava/lang/String;Z)Z

    .line 6961
    sget-object v18, TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " enableOwnerLauncher is successfull for package-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, v16, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", name -"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v16, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " and user 0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6962
    aput-object v9, v4, v12
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_139} :catch_182

    .line 6963
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_a9

    .line 6946
    .end local v4    # "components":[Landroid/content/ComponentName;
    .end local v6    # "defaultComponent":Landroid/content/ComponentName;
    .end local v9    # "disableComponent":Landroid/content/ComponentName;
    .end local v12    # "i":I
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "info":Ljava/lang/String;
    .end local v16    # "launcherInfo":[Ljava/lang/String;
    :catch_13d
    move-exception v11

    .line 6947
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9b

    .line 6967
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v4    # "components":[Landroid/content/ComponentName;
    .restart local v6    # "defaultComponent":Landroid/content/ComponentName;
    .restart local v12    # "i":I
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_143
    if-eqz v5, :cond_17a

    :try_start_145
    array-length v0, v5

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_17a

    .line 6968
    new-instance v7, Landroid/content/ComponentName;

    const/16 v18, 0x0

    aget-object v18, v5, v18

    const/16 v19, 0x1

    aget-object v19, v5, v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v7, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6    # "defaultComponent":Landroid/content/ComponentName;
    .local v7, "defaultComponent":Landroid/content/ComponentName;
    move-object v6, v7

    .line 6972
    .end local v7    # "defaultComponent":Landroid/content/ComponentName;
    .restart local v6    # "defaultComponent":Landroid/content/ComponentName;
    :goto_162
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, setupDefaultOwnerLauncher([Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 6973
    invoke-direct/range {p0 .. p0}, getService()Landroid/os/PersonaManager;

    move-result-object v18

    sget-object v19, Landroid/os/PersonaManager$AppType;->COM_DISABLED_OWNER_LAUNCHERS:Landroid/os/PersonaManager$AppType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersonaManager;->clearAppListForPersona(Landroid/os/PersonaManager$AppType;I)V

    .end local v13    # "i$":Ljava/util/Iterator;
    :goto_176
    move/from16 v18, v17

    .line 6979
    goto/16 :goto_50

    .line 6970
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_17a
    sget-object v18, TAG:Ljava/lang/String;

    const-string v19, " default launcher info not valid"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_181} :catch_182

    goto :goto_162

    .line 6975
    .end local v13    # "i$":Ljava/util/Iterator;
    :catch_182
    move-exception v11

    .line 6976
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 6977
    const/16 v17, 0x0

    goto :goto_176
.end method

.method private enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 1360
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1380
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_WIFI"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .registers 6
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1317
    iget-object v2, p0, mTypeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 1318
    .local v1, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 1322
    .end local v1    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :goto_22
    return-object v1

    :cond_23
    const/4 v1, 0x0

    goto :goto_22
.end method

.method private filterType(I)Ljava/util/ArrayList;
    .registers 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1326
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1327
    .local v2, "typeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    iget-object v3, p0, mTypeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 1328
    .local v1, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v3

    if-ne v3, p1, :cond_b

    .line 1329
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1332
    .end local v1    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_21
    return-object v2
.end method

.method private filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .registers 8
    .param p1, "containerId"    # I

    .prologue
    .line 1336
    iget-object v5, p0, mTypeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 1337
    .local v3, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v4

    .line 1338
    .local v4, "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1339
    .local v0, "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_1a

    .line 1344
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v4    # "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_2c
    return-object v3

    :cond_2d
    const/4 v3, 0x0

    goto :goto_2c
.end method

.method private findMatchingComponent(II)Landroid/content/ComponentName;
    .registers 18
    .param p1, "userId"    # I
    .param p2, "adminUid"    # I

    .prologue
    .line 2197
    sget-object v12, TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "adminPackageUid parameter: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    new-instance v7, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v12, mContext:Landroid/content/Context;

    invoke-direct {v7, v12}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 2199
    .local v7, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    sget-object v12, mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v14, 0x8080

    move/from16 v0, p1

    invoke-virtual {v12, v13, v14, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 2203
    .local v3, "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_3f

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_48

    .line 2204
    :cond_3f
    sget-object v12, TAG:Ljava/lang/String;

    const-string v13, "No admins found."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    const/4 v12, 0x0

    .line 2230
    :goto_47
    return-object v12

    .line 2207
    :cond_48
    sget-object v12, mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v10

    .line 2208
    .local v10, "packages":[Ljava/lang/String;
    if-eqz v10, :cond_c0

    array-length v12, v10

    if-lez v12, :cond_c0

    .line 2209
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "count":I
    :goto_5e
    if-ge v8, v4, :cond_c0

    .line 2211
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 2212
    .local v11, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2213
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2214
    .local v9, "packageName":Ljava/lang/String;
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2215
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v9, :cond_bd

    .line 2216
    sget-object v12, TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "packageName: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    invoke-direct {p0, v10, v9}, matchPackages([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_bd

    .line 2220
    :try_start_8d
    new-instance v5, Landroid/app/admin/DeviceAdminInfo;

    sget-object v12, mContext:Landroid/content/Context;

    invoke-direct {v5, v12, v11}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 2221
    .local v5, "dpi":Landroid/app/admin/DeviceAdminInfo;
    sget-object v12, TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Admin match returning component: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_b3} :catch_b5

    move-result-object v12

    goto :goto_47

    .line 2223
    .end local v5    # "dpi":Landroid/app/admin/DeviceAdminInfo;
    :catch_b5
    move-exception v6

    .line 2224
    .local v6, "e":Ljava/lang/Exception;
    sget-object v12, TAG:Ljava/lang/String;

    const-string v13, "Exception throw during creating  DeviceAdminInfo "

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_bd
    add-int/lit8 v8, v8, 0x1

    goto :goto_5e

    .line 2230
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "count":I
    .end local v8    # "i":I
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v11    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_c0
    const/4 v12, 0x0

    goto :goto_47
.end method

.method private getAdminComponentName(II)Landroid/content/ComponentName;
    .registers 16
    .param p1, "id"    # I
    .param p2, "uid"    # I

    .prologue
    const/4 v10, -0x1

    .line 6434
    const/4 v3, 0x0

    .line 6435
    .local v3, "componentName":Landroid/content/ComponentName;
    if-eq p2, v10, :cond_b8

    .line 6436
    const/4 v2, 0x0

    .line 6437
    .local v2, "adminAppInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v9, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 6438
    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v4

    .line 6440
    .local v4, "dpm":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    invoke-virtual {v4, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 6442
    .local v0, "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_93

    .line 6443
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_93

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 6444
    .local v1, "admin":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 6445
    .local v7, "pName":Ljava/lang/String;
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Current admin loop :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6447
    if-eqz v7, :cond_d6

    if-eqz v8, :cond_d6

    .line 6449
    const/4 v9, 0x0

    :try_start_48
    invoke-virtual {v8, v7, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_48 .. :try_end_4b} :catch_b9

    move-result-object v2

    .line 6454
    :goto_4c
    sget-object v11, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "adminAppInfo Uid :"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v2, :cond_d4

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_5d
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6455
    if-eqz v2, :cond_d6

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v9, p2, :cond_d6

    .line 6456
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Admin found :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Uid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6458
    move-object v3, v1

    .line 6465
    .end local v1    # "admin":Landroid/content/ComponentName;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "pName":Ljava/lang/String;
    :cond_93
    if-nez v3, :cond_b8

    .line 6467
    invoke-direct {p0, p1, p2}, findMatchingComponent(II)Landroid/content/ComponentName;

    move-result-object v3

    .line 6468
    if-eqz v3, :cond_b8

    .line 6469
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "packageName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6474
    .end local v0    # "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v2    # "adminAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "dpm":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_b8
    return-object v3

    .line 6450
    .restart local v0    # "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v1    # "admin":Landroid/content/ComponentName;
    .restart local v2    # "adminAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "dpm":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "pName":Ljava/lang/String;
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    :catch_b9
    move-exception v5

    .line 6451
    .local v5, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getting app info failed. package Name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4c

    .end local v5    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_d4
    move v9, v10

    .line 6454
    goto :goto_5d

    .line 6462
    :cond_d6
    const/4 v2, 0x0

    .line 6463
    goto/16 :goto_1b
.end method

.method private getAdminId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 6401
    const/4 v0, -0x1

    .line 6402
    .local v0, "adminUid":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 6403
    .local v6, "userId":I
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "User Id : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6404
    sget-object v7, mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p2, v8, v6}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 6406
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_96

    .line 6407
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v5

    .line 6409
    .local v5, "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v7, -0x2710

    invoke-virtual {v5, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdminsInfo(I)Ljava/util/List;

    move-result-object v4

    .line 6411
    .local v4, "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_95

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 6412
    .local v3, "pdai":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "packages Info : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6413
    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 6414
    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 6415
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Admin id : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6423
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pdai":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v4    # "pdaiList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    .end local v5    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :cond_95
    :goto_95
    return v0

    .line 6420
    :cond_96
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App Info : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6421
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_95
.end method

.method private getAvailableInternalMemory()J
    .registers 14

    .prologue
    .line 1843
    const-wide/16 v4, 0x0

    .line 1844
    .local v4, "blockSize":J
    const-wide/16 v0, 0x0

    .line 1845
    .local v0, "availableBlocks":J
    const-wide/16 v8, 0x0

    .line 1846
    .local v8, "mAvailSize":J
    const-wide/16 v2, 0x0

    .line 1848
    .local v2, "availableMemoryInMB":J
    :try_start_8
    new-instance v7, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1849
    .local v7, "stat":Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v4, v10

    .line 1850
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v0, v10

    .line 1851
    mul-long v8, v0, v4

    .line 1852
    const-wide/32 v10, 0x100000

    div-long v2, v8, v10

    .line 1853
    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " Available internal memory "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, mContext:Landroid/content/Context;

    invoke-static {v12, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " and availableMemoryInMB : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_4e} :catch_4f

    .line 1857
    .end local v7    # "stat":Landroid/os/StatFs;
    :goto_4e
    return-wide v2

    .line 1854
    :catch_4f
    move-exception v6

    .line 1855
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4e
.end method

.method private getContainers(I)Ljava/util/List;
    .registers 13
    .param p1, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2878
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getContainers: admin uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2881
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2883
    .local v6, "token":J
    :try_start_21
    invoke-direct {p0}, getService()Landroid/os/PersonaManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v5

    .line 2884
    .local v5, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v5, :cond_a3

    .line 2885
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_30
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PersonaInfo;

    .line 2886
    .local v4, "pInfo":Landroid/content/pm/PersonaInfo;
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v9, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v3

    .line 2887
    .local v3, "ownerUid":I
    sget-boolean v8, DEBUG:Z

    if-eqz v8, :cond_76

    .line 2888
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Persona found with id , creator uid, passed uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    :cond_76
    if-ne v3, p1, :cond_30

    .line 2890
    iget v8, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_81} :catch_82
    .catchall {:try_start_21 .. :try_end_81} :catchall_a7

    goto :goto_30

    .line 2894
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "ownerUid":I
    .end local v4    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v5    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catch_82
    move-exception v0

    .line 2895
    .local v0, "e":Ljava/lang/Exception;
    :try_start_83
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getContainers exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catchall {:try_start_83 .. :try_end_9f} :catchall_a7

    .line 2897
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2899
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a2
    return-object v2

    .line 2897
    .restart local v5    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_a3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a2

    .end local v5    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catchall_a7
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method private getCreationParams(I)Lcom/sec/knox/container/ContainerCreationParams;
    .registers 8
    .param p1, "personaId"    # I

    .prologue
    .line 1715
    const/4 v3, 0x0

    .line 1716
    .local v3, "params":Lcom/sec/knox/container/ContainerCreationParams;
    const/4 v1, 0x0

    .line 1717
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, mParamsList:Ljava/util/List;

    monitor-enter v5

    .line 1718
    :try_start_5
    iget-object v4, p0, mParamsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_39

    .line 1719
    iget-object v4, p0, mParamsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/knox/container/ContainerCreationParams;

    .line 1720
    .local v2, "item":Lcom/sec/knox/container/ContainerCreationParams;
    invoke-virtual {v2}, Lcom/sec/knox/container/ContainerCreationParams;->getConfigurationType()Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 1721
    invoke-virtual {v2}, Lcom/sec/knox/container/ContainerCreationParams;->getConfigurationType()Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v1

    .line 1722
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1723
    move-object v3, v2

    goto :goto_13

    .line 1728
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/sec/knox/container/ContainerCreationParams;
    :cond_39
    monitor-exit v5

    .line 1729
    return-object v3

    .line 1728
    :catchall_3b
    move-exception v4

    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_3b

    throw v4
.end method

.method private getDefaultLauncher(I)Ljava/lang/String;
    .registers 11
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 6847
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6848
    .local v2, "homeIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6849
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 6851
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/4 v6, 0x0

    const/high16 v7, 0x10000

    :try_start_14
    invoke-interface {v3, v2, v6, v7, p1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 6852
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_5a

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_5a

    .line 6853
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6854
    .local v0, "currentLauncher":Ljava/lang/String;
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " getDefaultLauncher currentLauncher -"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_55} :catch_56

    .line 6860
    .end local v0    # "currentLauncher":Ljava/lang/String;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_55
    return-object v0

    .line 6857
    :catch_56
    move-exception v1

    .line 6858
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5a
    move-object v0, v5

    .line 6860
    goto :goto_55
.end method

.method private getDefaultTypeObj(Z)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .registers 7
    .param p1, "isUserManaged"    # Z

    .prologue
    .line 3181
    invoke-virtual {p0}, getDefaultConfigurationTypes()Ljava/util/List;

    move-result-object v2

    .line 3182
    .local v2, "defaultTypes":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 3183
    :cond_c
    const/4 v0, 0x0

    .line 3191
    :cond_d
    return-object v0

    .line 3185
    :cond_e
    const/4 v0, 0x0

    .line 3186
    .local v0, "defaultType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 3187
    .local v1, "defaultTypeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isUserManaged()Z

    move-result v4

    if-ne v4, p1, :cond_13

    .line 3188
    move-object v0, v1

    goto :goto_13
.end method

.method private getDeviceFirmwareVersion()Ljava/lang/String;
    .registers 5

    .prologue
    .line 5979
    iget-object v1, p0, mFirmwareVersion:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 5980
    iget-object v0, p0, mFirmwareVersion:Ljava/lang/String;

    .line 5990
    :goto_6
    return-object v0

    .line 5982
    :cond_7
    const-string/jumbo v1, "ro.build.PDA"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5983
    .local v0, "pdaVersion":Ljava/lang/String;
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1. pdaVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5984
    invoke-direct {p0, v0}, trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5985
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2. pdaVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5989
    iput-object v0, p0, mFirmwareVersion:Ljava/lang/String;

    goto :goto_6
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 1348
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 1349
    sget-object v0, mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1352
    :cond_10
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEnabledLaunchers(I)Ljava/util/List;
    .registers 13
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6816
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6818
    .local v4, "launcherList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_5
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6819
    .local v2, "homeIntent":Landroid/content/Intent;
    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6820
    sget-object v8, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 6821
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const v8, 0x10040

    invoke-virtual {v5, v2, v8, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 6823
    .local v6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_9c

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9c

    .line 6824
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2a
    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 6825
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_2a

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v8, :cond_2a

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_2a

    .line 6826
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getEnabledLaunchers: packageName "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " and  name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6827
    new-instance v0, Landroid/content/ComponentName;

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6828
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_2a

    .line 6829
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_82} :catch_83

    goto :goto_2a

    .line 6834
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "homeIntent":Landroid/content/Intent;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_83
    move-exception v1

    .line 6835
    .local v1, "e":Ljava/lang/Exception;
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in getEnabledLaunchers "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6837
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9c
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getEnabledLaunchers: launcherList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6838
    return-object v4
.end method

.method private getMyKnoxAminUid()I
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 2244
    new-instance v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v3, mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 2245
    .local v1, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v1, :cond_19

    .line 2247
    :try_start_a
    sget-object v3, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMyKnoxAdmin()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_1a

    move-result v2

    .line 2252
    :cond_19
    :goto_19
    return v2

    .line 2248
    :catch_1a
    move-exception v0

    .line 2249
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in getMyKnoxAminUid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method private getResolveInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ResolveInfo;
    .registers 9
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "uid"    # I

    .prologue
    .line 6484
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 6485
    .local v2, "resolveIntent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6486
    sget-object v3, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 6490
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_30

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_30

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    move-object v1, v3

    .line 6492
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_28
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "getResolveInfo "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6493
    return-object v1

    .line 6490
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_30
    const/4 v1, 0x0

    goto :goto_28
.end method

.method private getSEAMSService()Lcom/android/server/SEAMService;
    .registers 2

    .prologue
    .line 4486
    iget-object v0, p0, mSEAMS:Lcom/android/server/SEAMService;

    if-nez v0, :cond_e

    .line 4487
    const-string v0, "SEAMService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/SEAMService;

    iput-object v0, p0, mSEAMS:Lcom/android/server/SEAMService;

    .line 4489
    :cond_e
    iget-object v0, p0, mSEAMS:Lcom/android/server/SEAMService;

    return-object v0
.end method

.method private getSSID(I)Ljava/util/Set;
    .registers 12
    .param p1, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6133
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "ContainerOnly_wifiAP"

    const-string/jumbo v9, "wifiSSIDforKNOX"

    invoke-virtual {v7, p1, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6135
    .local v6, "var":Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 6136
    .local v3, "l":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_2b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2b

    .line 6137
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 6138
    .local v1, "array":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_21
    if-ge v2, v4, :cond_2b

    aget-object v5, v0, v2

    .line 6139
    .local v5, "s":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6138
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 6142
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "array":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "s":Ljava/lang/String;
    :cond_2b
    return-object v3
.end method

.method private getService()Landroid/os/PersonaManager;
    .registers 3

    .prologue
    .line 1177
    iget-object v0, p0, mPersona:Landroid/os/PersonaManager;

    if-nez v0, :cond_11

    .line 1178
    sget-object v0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, mPersona:Landroid/os/PersonaManager;

    .line 1180
    :cond_11
    iget-object v0, p0, mPersona:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private getSignatureFromExternalStorageWhiteListInternal(Ljava/lang/String;I)[Landroid/content/pm/Signature;
    .registers 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "adminUid"    # I

    .prologue
    .line 3989
    const/4 v11, 0x1

    new-array v0, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "signatures"

    aput-object v12, v0, v11

    .line 3990
    .local v0, "columns":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 3991
    .local v8, "signatures":[Landroid/content/pm/Signature;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3992
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v11, "adminUid"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3993
    const-string/jumbo v11, "packageName"

    invoke-virtual {v1, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3994
    iget-object v11, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "KnoxExternalStorageWhitelist"

    invoke-virtual {v11, v12, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 3996
    .local v5, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_115

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_115

    .line 3997
    sget-object v11, TAG:Ljava/lang/String;

    const-string v12, "getPackageSignaturesFromExternalStorageWhiteList providerList not null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3998
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    .line 3999
    .local v10, "values":Landroid/content/ContentValues;
    const-string/jumbo v11, "signatures"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4000
    .local v9, "sigs":Ljava/lang/String;
    if-eqz v9, :cond_39

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_39

    .line 4001
    sget-boolean v11, DEBUG:Z

    if-eqz v11, :cond_72

    .line 4002
    sget-object v11, TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getPackageSignaturesFromExternalStorageWhiteList providerList sig:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4003
    :cond_72
    const-string v11, ","

    invoke-static {v9, v11}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 4004
    .local v7, "sigStrings":[Ljava/lang/String;
    if-eqz v7, :cond_fc

    array-length v11, v7

    if-lez v11, :cond_fc

    .line 4005
    sget-object v11, TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getPackageSignaturesFromExternalStorageWhiteList providerList sigStrings:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4006
    array-length v11, v7

    new-array v8, v11, [Landroid/content/pm/Signature;

    .line 4007
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9a
    array-length v11, v7

    if-ge v3, v11, :cond_fc

    .line 4008
    aget-object v11, v7, v3

    if-eqz v11, :cond_f4

    aget-object v11, v7, v3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_f4

    .line 4009
    sget-boolean v11, DEBUG:Z

    if-eqz v11, :cond_cd

    .line 4010
    sget-object v11, TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getPackageSignaturesFromExternalStorageWhiteList creating signatures : ----"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v7, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "----"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4012
    :cond_cd
    :try_start_cd
    new-instance v6, Landroid/content/pm/Signature;

    aget-object v11, v7, v3

    invoke-direct {v6, v11}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 4013
    .local v6, "s":Landroid/content/pm/Signature;
    if-eqz v6, :cond_f4

    .line 4014
    sget-boolean v11, DEBUG:Z

    if-eqz v11, :cond_f2

    .line 4015
    sget-object v11, TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getPackageSignaturesFromExternalStorageWhiteList signature :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4016
    :cond_f2
    aput-object v6, v8, v3
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_f4} :catch_f7

    .line 4007
    .end local v6    # "s":Landroid/content/pm/Signature;
    :cond_f4
    :goto_f4
    add-int/lit8 v3, v3, 0x1

    goto :goto_9a

    .line 4018
    :catch_f7
    move-exception v2

    .line 4019
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f4

    .line 4025
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i":I
    :cond_fc
    if-eqz v8, :cond_39

    array-length v11, v8

    if-lez v11, :cond_39

    const/4 v11, 0x0

    aget-object v11, v8, v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_39

    .line 4027
    sget-object v11, TAG:Ljava/lang/String;

    const-string v12, "getPackageSignaturesFromExternalStorageWhiteList SUCCESS"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v8

    .line 4035
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "sigStrings":[Ljava/lang/String;
    .end local v9    # "sigs":Ljava/lang/String;
    .end local v10    # "values":Landroid/content/ContentValues;
    :goto_114
    return-object v11

    .line 4033
    :cond_115
    sget-object v11, TAG:Ljava/lang/String;

    const-string v12, "getPackageSignaturesFromExternalStorageWhiteList DB has no value"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4035
    :cond_11c
    const/4 v11, 0x0

    goto :goto_114
.end method

.method private static getTIMAStatus()I
    .registers 11

    .prologue
    .line 1807
    const/4 v3, -0x1

    .line 1808
    .local v3, "timaStatus":I
    const/16 v8, 0x20

    new-array v1, v8, [B

    .line 1809
    .local v1, "key":[B
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 1810
    .local v2, "random":Ljava/security/SecureRandom;
    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1812
    invoke-static {}, getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v8

    if-nez v8, :cond_14

    .line 1838
    :goto_13
    return v3

    .line 1815
    :cond_14
    const/4 v4, 0x0

    .local v4, "timaVersion20":Z
    const/4 v5, 0x0

    .line 1816
    .local v5, "timaVersion30":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1818
    .local v6, "token":J
    :try_start_1a
    const-string v8, "2.0"

    invoke-static {}, getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v9

    invoke-interface {v9}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1819
    if-nez v4, :cond_38

    .line 1820
    const-string v8, "3.0"

    invoke-static {}, getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v9

    invoke-interface {v9}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1822
    :cond_38
    if-eqz v5, :cond_5e

    .line 1823
    invoke-static {}, getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v8

    invoke-interface {v8}, Landroid/service/tima/ITimaService;->KeyStore3_init()I
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_41} :catch_82
    .catchall {:try_start_1a .. :try_end_41} :catchall_8a

    move-result v3

    .line 1835
    :cond_42
    :goto_42
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1837
    :goto_45
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getTIMAStatus: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 1824
    :cond_5e
    if-eqz v4, :cond_42

    .line 1825
    :try_start_60
    invoke-static {}, getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v8

    invoke-interface {v8}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v3

    .line 1826
    if-nez v3, :cond_7a

    .line 1827
    sget-object v8, TAG:Ljava/lang/String;

    const-string v9, "getTIMAStatus is 0, get status from keystoreInstallKey"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    invoke-static {}, getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9, v1}, Landroid/service/tima/ITimaService;->keystoreInstallKey(I[B)I

    move-result v3

    .line 1830
    :cond_7a
    invoke-static {}, getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v8

    invoke-interface {v8}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_81} :catch_82
    .catchall {:try_start_60 .. :try_end_81} :catchall_8a

    goto :goto_42

    .line 1832
    :catch_82
    move-exception v0

    .line 1833
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_83
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_8a

    .line 1835
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_45

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_8a
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method private static getTimaService()Landroid/service/tima/ITimaService;
    .registers 2

    .prologue
    .line 1801
    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    .line 1803
    .local v0, "timaService":Landroid/service/tima/ITimaService;
    return-object v0
.end method

.method private getUserManagerService()Landroid/os/UserManager;
    .registers 3

    .prologue
    .line 1184
    iget-object v0, p0, mUms:Landroid/os/UserManager;

    if-nez v0, :cond_11

    .line 1185
    sget-object v0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, mUms:Landroid/os/UserManager;

    .line 1187
    :cond_11
    iget-object v0, p0, mUms:Landroid/os/UserManager;

    return-object v0
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 6674
    if-nez p1, :cond_4

    .line 6678
    :cond_3
    :goto_3
    return-object v1

    .line 6674
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_10

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p1

    goto :goto_3

    .line 6675
    :catch_10
    move-exception v0

    .line 6676
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private getWallpaperManagerLocked()Lcom/android/server/wallpaper/WallpaperManagerService;
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    if-nez v0, :cond_f

    .line 340
    const-string/jumbo v0, "wallpaper"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    iput-object v0, p0, mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 342
    :cond_f
    iget-object v0, p0, mWms:Lcom/android/server/wallpaper/WallpaperManagerService;

    return-object v0
.end method

.method private installDefaultApplications(ILjava/util/List;)V
    .registers 9
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1364
    .local p2, "appInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1365
    .local v1, "defaultPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_27

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_27

    .line 1366
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "defaultPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1367
    .restart local v1    # "defaultPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, mDefaultPkgList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1368
    sget-object v0, CREATETIME_INSTALL_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_17
    if-ge v2, v3, :cond_29

    aget-object v4, v0, v2

    .line 1369
    .local v4, "pkg":Ljava/lang/String;
    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1370
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1368
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1374
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_27
    sget-object v1, mDefaultPkgList:Ljava/util/List;

    .line 1376
    :cond_29
    invoke-direct {p0}, getService()Landroid/os/PersonaManager;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Landroid/os/PersonaManager;->installApplications(ILjava/util/List;)Z

    .line 1377
    return-void
.end method

.method private isEnoughMemoryToCreateContainer()Z
    .registers 5

    .prologue
    .line 1861
    invoke-direct {p0}, getAvailableInternalMemory()J

    move-result-wide v2

    long-to-int v0, v2

    .line 1862
    .local v0, "availableSpace":I
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AvailableSpace : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    const/16 v1, 0x264

    if-lt v0, v1, :cond_23

    .line 1864
    const/4 v1, 0x1

    .line 1866
    :goto_22
    return v1

    :cond_23
    const/4 v1, 0x0

    goto :goto_22
.end method

.method private isFOTARequired()Z
    .registers 8

    .prologue
    const/4 v2, 0x1

    .line 387
    iget-object v3, p0, mTypeList:Ljava/util/List;

    monitor-enter v3

    .line 388
    :try_start_4
    iget-object v4, p0, mTypeList:Ljava/util/List;

    if-eqz v4, :cond_10

    iget-object v4, p0, mTypeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_12

    .line 389
    :cond_10
    monitor-exit v3

    .line 401
    :goto_11
    return v2

    .line 391
    :cond_12
    iget-object v4, p0, mTypeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 392
    .local v1, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v4

    if-nez v4, :cond_18

    .line 393
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFOTARequired currentversion:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-direct {p0}, getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 395
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "Fota required......"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    monitor-exit v3

    goto :goto_11

    .line 400
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catchall_5d
    move-exception v2

    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_4 .. :try_end_5f} :catchall_5d

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_60
    :try_start_60
    monitor-exit v3
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5d

    .line 401
    const/4 v2, 0x0

    goto :goto_11
.end method

.method private isKioskEnabledOnOwner()Z
    .registers 7

    .prologue
    .line 1870
    const/4 v2, 0x0

    .line 1872
    .local v2, "status":Z
    :try_start_1
    const-string v3, "kioskmode"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v1

    .line 1873
    .local v1, "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v1, :cond_12

    .line 1874
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/app/enterprise/kioskmode/IKioskMode;->isKioskModeEnabledAsUser(I)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_2b

    move-result v2

    .line 1879
    .end local v1    # "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    :cond_12
    :goto_12
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isKioskEnabledOnOwner ->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    return v2

    .line 1876
    :catch_2b
    move-exception v0

    .line 1877
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method private static isSystemApp(Ljava/lang/String;)Z
    .registers 12
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 6512
    const/4 v6, 0x0

    .line 6514
    .local v6, "result":Z
    if-nez p0, :cond_e

    .line 6515
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "packageName=null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 6544
    .end local v6    # "result":Z
    .local v7, "result":I
    :goto_d
    return v7

    .line 6519
    .end local v7    # "result":I
    .restart local v6    # "result":Z
    :cond_e
    sget-object v8, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 6520
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v4, :cond_20

    .line 6521
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "packageManager=null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 6522
    .restart local v7    # "result":I
    goto :goto_d

    .line 6525
    .end local v7    # "result":I
    :cond_20
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 6526
    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 6528
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 6529
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 6531
    :try_start_44
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 6533
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_4d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_44 .. :try_end_4d} :catch_54

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_52

    .line 6534
    const/4 v6, 0x1

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    :cond_52
    :goto_52
    move v7, v6

    .line 6544
    .restart local v7    # "result":I
    goto :goto_d

    .line 6536
    .end local v7    # "result":I
    .restart local v5    # "pi":Landroid/content/pm/PackageInfo;
    :catch_54
    move-exception v1

    .line 6537
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package is not installed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52
.end method

.method private static isTIMAEnabled()Z
    .registers 4

    .prologue
    .line 1793
    const-string v1, "1"

    const-string/jumbo v2, "ro.config.tima"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1794
    .local v0, "timaEnabled":Z
    if-eqz v0, :cond_13

    .line 1795
    const/4 v1, 0x1

    .line 1797
    :goto_12
    return v1

    .line 1796
    :cond_13
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "TIMA is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private static isTvzwProject()Z
    .registers 3

    .prologue
    .line 6627
    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6628
    .local v0, "buildcarrier":Ljava/lang/String;
    const/4 v1, 0x0

    .line 6629
    .local v1, "result":Z
    const-string/jumbo v2, "trltevzw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    const-string/jumbo v2, "treltevzw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    const-string/jumbo v2, "trhltevzw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    const-string/jumbo v2, "tbltevzw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    const-string/jumbo v2, "tbeltevzw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    const-string/jumbo v2, "tre3gvzw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    const-string/jumbo v2, "trhpltevzw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 6632
    :cond_47
    const/4 v1, 0x1

    .line 6634
    :cond_48
    return v1
.end method

.method private matchCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Lcom/sec/knox/container/ContainerCreationParams;
    .registers 7
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    .line 2117
    iget-object v3, p0, mParamsList:Ljava/util/List;

    if-eqz v3, :cond_27

    .line 2119
    if-eqz p1, :cond_27

    .line 2120
    const/4 v2, 0x0

    .line 2121
    .local v2, "match":Lcom/sec/knox/container/ContainerCreationParams;
    iget-object v3, p0, mParamsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/ContainerCreationParams;

    .line 2122
    .local v1, "lParam":Lcom/sec/knox/container/ContainerCreationParams;
    invoke-virtual {v1}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v4

    if-ne v3, v4, :cond_d

    .line 2123
    move-object v2, v1

    .line 2127
    .end local v1    # "lParam":Lcom/sec/knox/container/ContainerCreationParams;
    :cond_24
    if-eqz v2, :cond_27

    .line 2133
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "match":Lcom/sec/knox/container/ContainerCreationParams;
    :goto_26
    return-object v2

    :cond_27
    const/4 v2, 0x0

    goto :goto_26
.end method

.method private matchPackages([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2234
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_2b

    aget-object v3, v0, v1

    .line 2235
    .local v3, "name":Ljava/lang/String;
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "packages for uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 2237
    const/4 v4, 0x1

    .line 2240
    .end local v3    # "name":Ljava/lang/String;
    :goto_27
    return v4

    .line 2234
    .restart local v3    # "name":Ljava/lang/String;
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2240
    .end local v3    # "name":Ljava/lang/String;
    :cond_2b
    const/4 v4, 0x0

    goto :goto_27
.end method

.method private notifySdcardSBABlacklistUpdate(I)V
    .registers 6
    .param p1, "containerId"    # I

    .prologue
    .line 4476
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4477
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.knox.container.access.extsdcard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4478
    const-string/jumbo v1, "source"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4479
    const-string v1, "containerId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4480
    sget-object v1, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4481
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySdcardSBABlacklistUpdate sending broadcast for SBA Blacklist update for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4482
    return-void
.end method

.method private notifySdcardWhitelistUpdate(I)V
    .registers 6
    .param p1, "containerId"    # I

    .prologue
    .line 4467
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4468
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.knox.container.access.extsdcard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4469
    const-string/jumbo v1, "source"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4470
    const-string v1, "containerId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4471
    sget-object v1, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4472
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySdcardWhitelistUpdate sending broadcast for  Whitelist update for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4473
    return-void
.end method

.method private packageInstalledForExternalStorage(Ljava/lang/String;)V
    .registers 28
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4340
    :try_start_0
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "packageInstalledForExternalStorage "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4341
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v17

    .line 4342
    .local v17, "pm":Landroid/content/pm/IPackageManager;
    invoke-direct/range {p0 .. p0}, getService()Landroid/os/PersonaManager;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v15

    .line 4343
    .local v15, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_d6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PersonaInfo;

    .line 4344
    .local v14, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v14, :cond_2f

    .line 4345
    const/16 v23, 0x40

    iget v0, v14, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v16

    .line 4346
    .local v16, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v16, :cond_2f

    .line 4347
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    iget v0, v14, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 4348
    .local v6, "admins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_63
    :goto_63
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 4351
    .local v5, "adminUid":Ljava/lang/Integer;
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 4352
    .local v21, "where":Landroid/content/ContentValues;
    const-string v23, "adminUid"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4353
    const-string/jumbo v23, "packageName"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4355
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v24, "KnoxExternalStorageWhitelist"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v7

    .line 4356
    .local v7, "count":I
    if-lez v7, :cond_167

    .line 4357
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, getSignatureFromExternalStorageWhiteListInternal(Ljava/lang/String;I)[Landroid/content/pm/Signature;

    move-result-object v20

    .line 4359
    .local v20, "signatures":[Landroid/content/pm/Signature;
    if-eqz v20, :cond_d7

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    if-lez v23, :cond_d7

    .line 4360
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-static {v0, v1}, compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v23

    if-nez v23, :cond_d7

    .line 4361
    sget-object v23, TAG:Ljava/lang/String;

    const-string v24, "Package is installed, and signature doesn\'t match. So return falure"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_cb} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_cb} :catch_f4

    goto :goto_63

    .line 4416
    .end local v5    # "adminUid":Ljava/lang/Integer;
    .end local v6    # "admins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "count":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v15    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v16    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v17    # "pm":Landroid/content/pm/IPackageManager;
    .end local v20    # "signatures":[Landroid/content/pm/Signature;
    .end local v21    # "where":Landroid/content/ContentValues;
    :catch_cc
    move-exception v9

    .line 4417
    .local v9, "e":Landroid/os/RemoteException;
    sget-object v23, TAG:Ljava/lang/String;

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4421
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_d6
    :goto_d6
    return-void

    .line 4366
    .restart local v5    # "adminUid":Ljava/lang/Integer;
    .restart local v6    # "admins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v7    # "count":I
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v14    # "pInfo":Landroid/content/pm/PersonaInfo;
    .restart local v15    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v16    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v17    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v20    # "signatures":[Landroid/content/pm/Signature;
    .restart local v21    # "where":Landroid/content/ContentValues;
    :cond_d7
    if-nez v20, :cond_ff

    .line 4367
    :try_start_d9
    sget-object v23, TAG:Ljava/lang/String;

    const-string v24, "Whitelist don\'t have signature information. Using package manager signature. Hence, notifying SEAMS"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4368
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v20, v0

    .line 4374
    :goto_e6
    invoke-direct/range {p0 .. p0}, getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v23

    if-nez v23, :cond_107

    .line 4375
    sget-object v23, TAG:Ljava/lang/String;

    const-string v24, "addPackageToExternalStorageWhiteList : SEAMS service cannot be null."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f3
    .catch Landroid/os/RemoteException; {:try_start_d9 .. :try_end_f3} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_f3} :catch_f4

    goto :goto_d6

    .line 4418
    .end local v5    # "adminUid":Ljava/lang/Integer;
    .end local v6    # "admins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "count":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v15    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v16    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v17    # "pm":Landroid/content/pm/IPackageManager;
    .end local v20    # "signatures":[Landroid/content/pm/Signature;
    .end local v21    # "where":Landroid/content/ContentValues;
    :catch_f4
    move-exception v13

    .line 4419
    .local v13, "n":Ljava/lang/Exception;
    sget-object v23, TAG:Ljava/lang/String;

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d6

    .line 4371
    .end local v13    # "n":Ljava/lang/Exception;
    .restart local v5    # "adminUid":Ljava/lang/Integer;
    .restart local v6    # "admins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v7    # "count":I
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v14    # "pInfo":Landroid/content/pm/PersonaInfo;
    .restart local v15    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v16    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v17    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v20    # "signatures":[Landroid/content/pm/Signature;
    .restart local v21    # "where":Landroid/content/ContentValues;
    :cond_ff
    :try_start_ff
    sget-object v23, TAG:Ljava/lang/String;

    const-string v24, "PackageName found in whitelist and signature matches. Hence, notifying SEAMS"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e6

    .line 4379
    :cond_107
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 4380
    .local v19, "sigStrins":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_113
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_127

    .line 4381
    aget-object v23, v20, v10

    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v19, v10

    .line 4380
    add-int/lit8 v10, v10, 0x1

    goto :goto_113

    .line 4384
    :cond_127
    invoke-direct/range {p0 .. p0}, getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v23

    iget v0, v14, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/SEAMService;->addAppToWhitelist(ILjava/lang/String;[Ljava/lang/String;I)I

    move-result v18

    .line 4385
    .local v18, "retCode":I
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "packageInstalledForExternalStorage : SEAMS service retCode - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4386
    iget v0, v14, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, notifySdcardWhitelistUpdate(I)V

    .line 4390
    .end local v10    # "i":I
    .end local v18    # "retCode":I
    .end local v19    # "sigStrins":[Ljava/lang/String;
    .end local v20    # "signatures":[Landroid/content/pm/Signature;
    :cond_167
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 4391
    .local v22, "where1":Landroid/content/ContentValues;
    const-string v23, "adminUid"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4392
    const-string/jumbo v23, "packageName"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4394
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v24, "KnoxExternalStorageSBABlacklist"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v8

    .line 4395
    .local v8, "count1":I
    if-lez v8, :cond_63

    .line 4397
    invoke-direct/range {p0 .. p0}, getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v23

    if-nez v23, :cond_1a5

    .line 4398
    sget-object v23, TAG:Ljava/lang/String;

    const-string/jumbo v24, "packageInstalledForExternalStorage : SEAMS service cannot be null."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d6

    .line 4401
    :cond_1a5
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v20, v0

    .line 4402
    .restart local v20    # "signatures":[Landroid/content/pm/Signature;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 4403
    .restart local v19    # "sigStrins":[Ljava/lang/String;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_1b7
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v10, v0, :cond_1cb

    .line 4404
    aget-object v23, v20, v10

    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v19, v10

    .line 4403
    add-int/lit8 v10, v10, 0x1

    goto :goto_1b7

    .line 4407
    :cond_1cb
    invoke-direct/range {p0 .. p0}, getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v23

    iget v0, v14, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/SEAMService;->addAppToSBABlacklist(ILjava/lang/String;[Ljava/lang/String;I)I

    move-result v18

    .line 4408
    .restart local v18    # "retCode":I
    sget-object v23, TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "packageInstalledForExternalStorage SBA Blacklist: SEAMS service retCode - "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4409
    iget v0, v14, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, notifySdcardSBABlacklistUpdate(I)V
    :try_end_20b
    .catch Landroid/os/RemoteException; {:try_start_ff .. :try_end_20b} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_20b} :catch_f4

    goto/16 :goto_63
.end method

.method private packageRemovedForExternalStorage(Ljava/lang/String;)V
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4425
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v13

    .line 4426
    .local v13, "pm":Landroid/content/pm/IPackageManager;
    invoke-direct/range {p0 .. p0}, getService()Landroid/os/PersonaManager;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v12

    .line 4427
    .local v12, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PersonaInfo;

    .line 4428
    .local v11, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v11, :cond_12

    .line 4429
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    iget v0, v11, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 4430
    .local v5, "admins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_32
    :goto_32
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 4431
    .local v4, "adminUid":Ljava/lang/Integer;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 4432
    .local v15, "where":Landroid/content/ContentValues;
    const-string v17, "adminUid"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4433
    const-string/jumbo v17, "packageName"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4435
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "KnoxExternalStorageWhitelist"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v6

    .line 4436
    .local v6, "count":I
    if-lez v6, :cond_ad

    .line 4438
    sget-object v17, TAG:Ljava/lang/String;

    const-string v18, "PackageName found in whitelist not removing from whitelist. Just, notifying SEAMS"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4440
    invoke-direct/range {p0 .. p0}, getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v17

    if-nez v17, :cond_7c

    .line 4441
    sget-object v17, TAG:Ljava/lang/String;

    const-string/jumbo v18, "packageRemovedForExternalStorage : SEAMS service cannot be null."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4464
    .end local v4    # "adminUid":Ljava/lang/Integer;
    .end local v5    # "admins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "count":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v12    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v13    # "pm":Landroid/content/pm/IPackageManager;
    .end local v15    # "where":Landroid/content/ContentValues;
    :cond_7b
    :goto_7b
    return-void

    .line 4444
    .restart local v4    # "adminUid":Ljava/lang/Integer;
    .restart local v5    # "admins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6    # "count":I
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "pInfo":Landroid/content/pm/PersonaInfo;
    .restart local v12    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v13    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v15    # "where":Landroid/content/ContentValues;
    :cond_7c
    invoke-direct/range {p0 .. p0}, getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v17

    iget v0, v11, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/SEAMService;->removeAppFromWhitelist(ILjava/lang/String;I)I

    move-result v14

    .line 4445
    .local v14, "retCode":I
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "packageRemovedForExternalStorage : SEAMS service retCode - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4448
    .end local v14    # "retCode":I
    :cond_ad
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 4449
    .local v16, "where1":Landroid/content/ContentValues;
    const-string v17, "adminUid"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4450
    const-string/jumbo v17, "packageName"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4452
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "KnoxExternalStorageSBABlacklist"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v7

    .line 4453
    .local v7, "count1":I
    if-lez v7, :cond_32

    .line 4455
    invoke-direct/range {p0 .. p0}, getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v17

    iget v0, v11, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/SEAMService;->removeAppFromSBABlacklist(ILjava/lang/String;I)I

    move-result v14

    .line 4456
    .restart local v14    # "retCode":I
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "packageRemovedForExternalStorage SBA Blacklist : SEAMS service retCode - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10c} :catch_10e

    goto/16 :goto_32

    .line 4461
    .end local v4    # "adminUid":Ljava/lang/Integer;
    .end local v5    # "admins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "count":I
    .end local v7    # "count1":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v12    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v13    # "pm":Landroid/content/pm/IPackageManager;
    .end local v14    # "retCode":I
    .end local v15    # "where":Landroid/content/ContentValues;
    .end local v16    # "where1":Landroid/content/ContentValues;
    :catch_10e
    move-exception v10

    .line 4462
    .local v10, "n":Ljava/lang/Exception;
    sget-object v17, TAG:Ljava/lang/String;

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7b
.end method

.method private prepareEnterprisePolicyData()V
    .registers 11

    .prologue
    .line 346
    const/4 v2, 0x0

    .line 349
    .local v2, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, TYPE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "enterprisedata.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_57

    .line 351
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "reading from xml resource"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    sget-object v6, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    iput-object v6, p0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 360
    :goto_38
    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    iget-object v6, p0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 361
    .local v0, "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    invoke-virtual {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    .line 362
    invoke-virtual {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, mTypeList:Ljava/util/List;

    .line 363
    invoke-direct {p0}, isFOTARequired()Z

    move-result v6

    iput-boolean v6, p0, mIsFotaRequired:Z

    .line 370
    invoke-direct {p0}, checkForFOTA()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_51} :catch_8c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_51} :catch_c5
    .catchall {:try_start_1 .. :try_end_51} :catchall_100

    .line 377
    if-eqz v2, :cond_56

    .line 378
    :try_start_53
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_72

    .line 384
    .end local v0    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v1    # "file":Ljava/io/File;
    :cond_56
    :goto_56
    return-void

    .line 355
    .restart local v1    # "file":Ljava/io/File;
    :cond_57
    :try_start_57
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "reading from xml file"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_64} :catch_8c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_57 .. :try_end_64} :catch_c5
    .catchall {:try_start_57 .. :try_end_64} :catchall_100

    .line 357
    .end local v2    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    :try_start_64
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    iput-object v6, p0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 358
    iget-object v6, p0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v7, 0x0

    invoke-interface {v6, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_70} :catch_127
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_64 .. :try_end_70} :catch_124
    .catchall {:try_start_64 .. :try_end_70} :catchall_121

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_38

    .line 380
    .restart local v0    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    :catch_72
    move-exception v4

    .line 381
    .local v4, "ioe":Ljava/io/IOException;
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 371
    .end local v0    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_8c
    move-exception v4

    .line 372
    .restart local v4    # "ioe":Ljava/io/IOException;
    :goto_8d
    :try_start_8d
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to open file - IOException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catchall {:try_start_8d .. :try_end_a5} :catchall_100

    .line 377
    if-eqz v2, :cond_56

    .line 378
    :try_start_a7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_ab

    goto :goto_56

    .line 380
    :catch_ab
    move-exception v4

    .line 381
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 373
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_c5
    move-exception v5

    .line 374
    .local v5, "parserException":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_c6
    :try_start_c6
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get parser- exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_de
    .catchall {:try_start_c6 .. :try_end_de} :catchall_100

    .line 377
    if-eqz v2, :cond_56

    .line 378
    :try_start_e0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e3} :catch_e5

    goto/16 :goto_56

    .line 380
    :catch_e5
    move-exception v4

    .line 381
    .restart local v4    # "ioe":Ljava/io/IOException;
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_56

    .line 376
    .end local v4    # "ioe":Ljava/io/IOException;
    .end local v5    # "parserException":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_100
    move-exception v6

    .line 377
    :goto_101
    if-eqz v2, :cond_106

    .line 378
    :try_start_103
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_106} :catch_107

    .line 382
    :cond_106
    :goto_106
    throw v6

    .line 380
    :catch_107
    move-exception v4

    .line 381
    .restart local v4    # "ioe":Ljava/io/IOException;
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close input stream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_106

    .line 376
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v4    # "ioe":Ljava/io/IOException;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catchall_121
    move-exception v6

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_101

    .line 373
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_124
    move-exception v5

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_c6

    .line 371
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_127
    move-exception v4

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto/16 :goto_8d
.end method

.method private processConfigurationType(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z
    .registers 5
    .param p1, "type"    # Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .prologue
    const/4 v1, 0x0

    .line 3112
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3113
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_f

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3130
    :cond_f
    :goto_f
    return v1

    .line 3116
    :cond_10
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v2

    sparse-switch v2, :sswitch_data_1a

    goto :goto_f

    .line 3123
    :sswitch_18
    const/4 v1, 0x1

    goto :goto_f

    .line 3116
    :sswitch_data_1a
    .sparse-switch
        0x10000 -> :sswitch_18
        0x20000 -> :sswitch_18
        0x40000 -> :sswitch_18
        0x50000 -> :sswitch_18
        0x60000 -> :sswitch_18
        0x61000 -> :sswitch_18
    .end sparse-switch
.end method

.method private processCreationParams(Lcom/sec/knox/container/ContainerCreationParams;I)V
    .registers 16
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 1733
    if-eqz p1, :cond_7d

    .line 1734
    const/4 v5, 0x0

    .line 1735
    .local v5, "processed":Z
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v8, mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1736
    .local v7, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    .line 1737
    .local v1, "currentUser":I
    invoke-virtual {v7, p2}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 1738
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getLockType()I

    move-result v3

    .line 1739
    .local v3, "lockType":I
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getConfigurationType()Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v6

    .line 1740
    .local v6, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lockType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    packed-switch v3, :pswitch_data_ea

    .line 1773
    :cond_36
    :goto_36
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 1774
    .local v0, "activeQuality":I
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    .line 1775
    .local v2, "keyguardQuality":I
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "active quality = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "keyguard quality = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    invoke-virtual {p1, v12}, Lcom/sec/knox/container/ContainerCreationParams;->setPassword(Ljava/lang/String;)V

    .line 1779
    invoke-virtual {v7, v1}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 1780
    if-eqz v5, :cond_7d

    .line 1781
    sget-object v8, TAG:Ljava/lang/String;

    const-string v9, "Container creation params processed successfully"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    .end local v0    # "activeQuality":I
    .end local v1    # "currentUser":I
    .end local v2    # "keyguardQuality":I
    .end local v3    # "lockType":I
    .end local v5    # "processed":Z
    .end local v6    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v7    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_7d
    return-void

    .line 1744
    .restart local v1    # "currentUser":I
    .restart local v3    # "lockType":I
    .restart local v5    # "processed":Z
    .restart local v6    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v7    # "utils":Lcom/android/internal/widget/LockPatternUtils;
    :pswitch_7e
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getPassword()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_36

    .line 1745
    invoke-virtual {v7, v11}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 1746
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "type.getPasswordQuality() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getPassword()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v9

    invoke-virtual {v7, v8, v9, v11, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZI)V

    .line 1748
    const/4 v5, 0x1

    goto :goto_36

    .line 1752
    :pswitch_b1
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getPassword()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_36

    .line 1753
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getPassword()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1754
    .local v4, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v7, v4, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;I)V

    .line 1755
    const/4 v8, 0x1

    invoke-virtual {v7, v8, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(ZI)V

    .line 1756
    const/high16 v8, 0x10000

    invoke-virtual {v7, v12, v8, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockBackupPin(Ljava/lang/String;II)V

    .line 1757
    const/4 v5, 0x1

    .line 1758
    goto/16 :goto_36

    .line 1762
    .end local v4    # "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :pswitch_ce
    invoke-virtual {v7, v11}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 1763
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getPassword()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v9

    invoke-virtual {v7, v8, v9, v11, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZI)V

    .line 1764
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getPassword()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, p2}, Lcom/android/internal/widget/LockPatternUtils;->setContainerPasswordState(Ljava/lang/String;I)V

    .line 1766
    invoke-virtual {v7, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprint(I)V

    .line 1767
    const/4 v5, 0x1

    .line 1768
    goto/16 :goto_36

    .line 1741
    nop

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_ce
        :pswitch_7e
        :pswitch_b1
    .end packed-switch
.end method

.method private processNewTypeObject(ILcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z
    .registers 23
    .param p1, "callingUid"    # I
    .param p2, "type"    # Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3281
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 3282
    .local v15, "userHandle":I
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAdminUid(I)V

    .line 3283
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setUserId(I)V

    .line 3285
    invoke-direct/range {p0 .. p0}, getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setVersion(Ljava/lang/String;)V

    .line 3287
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 3288
    .local v11, "screenDimesions":Landroid/graphics/Point;
    const/4 v10, 0x0

    .line 3289
    .local v10, "profileDimesions":Landroid/graphics/Point;
    const/4 v2, 0x0

    .line 3290
    .local v2, "badgeDimesions":Landroid/graphics/Point;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 3291
    .local v6, "folderHeaderDimensions":Landroid/graphics/Point;
    const/16 v17, 0x5a

    const/16 v18, 0x11

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 3293
    sget-object v17, mContext:Landroid/content/Context;

    const-string/jumbo v18, "window"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .line 3294
    .local v16, "winMgr":Landroid/view/WindowManager;
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3301
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Screen dimension: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3302
    const-string v3, "/data/container2.0/"

    .line 3303
    .local v3, "basedir":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3304
    .local v8, "outDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_83

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v17

    if-eqz v17, :cond_375

    .line 3305
    :cond_83
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 3306
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/io/File;->setWritable(Z)Z

    .line 3307
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 3313
    const-string v3, "/data/container2.0/icon/"

    .line 3314
    new-instance v8, Ljava/io/File;

    .end local v8    # "outDir":Ljava/io/File;
    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3315
    .restart local v8    # "outDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_b3

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v17

    if-eqz v17, :cond_396

    .line 3316
    :cond_b3
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 3317
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/io/File;->setWritable(Z)Z

    .line 3318
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 3323
    const/4 v5, 0x0

    .line 3324
    .local v5, "destPath":Ljava/lang/String;
    const/4 v14, 0x0

    .line 3325
    .local v14, "status":Z
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "/data/container2.0/icon/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getUserId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3327
    .local v9, "prefix":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_166

    .line 3328
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "CustomBadgeIcon.png"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3329
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5, v2}, Landroid/app/enterprise/lso/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v14

    .line 3331
    sget-boolean v17, DEBUG:Z

    if-eqz v17, :cond_15e

    .line 3332
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Dest image paths: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " status value:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3333
    :cond_15e
    if-nez v14, :cond_161

    .line 3334
    const/4 v5, 0x0

    .line 3336
    :cond_161
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomBadgeIcon(Ljava/lang/String;)V

    .line 3339
    :cond_166
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_20d

    .line 3340
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v13

    .line 3343
    .local v13, "srcPath":Ljava/lang/String;
    if-eqz v13, :cond_3b3

    const-string v17, "CustomHomeWallpaper-b2b.jpg"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_186

    const-string v17, "DefaultHomeWallpaper.jpeg"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3b3

    .line 3344
    :cond_186
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "DefaultHomeWallpaper.jpeg"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3348
    :goto_19b
    sget-boolean v17, DEBUG:Z

    if-eqz v17, :cond_1c7

    .line 3349
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Dest image paths: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " and source path "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    :cond_1c7
    new-instance v12, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3352
    .local v12, "source":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_3ca

    .line 3353
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3354
    .local v4, "dest":Ljava/io/File;
    invoke-static {v12, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 3355
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 3356
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 3357
    const/16 v17, 0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 3358
    sget-object v17, TAG:Ljava/lang/String;

    const-string v18, "Copying file is processed"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    .end local v4    # "dest":Ljava/io/File;
    :goto_208
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomHomeScreenWallpaper(Ljava/lang/String;)V

    .line 3367
    .end local v12    # "source":Ljava/io/File;
    .end local v13    # "srcPath":Ljava/lang/String;
    :cond_20d
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_268

    .line 3368
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "CustomLockScreenWallpaper.jpeg"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3369
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5, v11}, Landroid/app/enterprise/lso/LSOUtils;->convertImageFormatToSize(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v14

    .line 3371
    sget-boolean v17, DEBUG:Z

    if-eqz v17, :cond_260

    .line 3372
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Dest image paths: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " status value:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3373
    :cond_260
    if-nez v14, :cond_263

    .line 3374
    const/4 v5, 0x0

    .line 3376
    :cond_263
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomLockScreenWallpaper(Ljava/lang/String;)V

    .line 3379
    :cond_268
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2c3

    .line 3380
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "CustomStatusIcon.png"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3381
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5, v10}, Landroid/app/enterprise/lso/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v14

    .line 3383
    sget-boolean v17, DEBUG:Z

    if-eqz v17, :cond_2bb

    .line 3384
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Dest image paths: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " status value:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3385
    :cond_2bb
    if-nez v14, :cond_2be

    .line 3386
    const/4 v5, 0x0

    .line 3388
    :cond_2be
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    .line 3391
    :cond_2c3
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move/from16 v17, v0

    if-eqz v17, :cond_328

    move-object/from16 v17, p2

    .line 3392
    check-cast v17, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->getFolderHeaderIcon()Ljava/lang/String;

    move-result-object v7

    .line 3393
    .local v7, "headerIcon":Ljava/lang/String;
    if-eqz v7, :cond_328

    .line 3394
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "FolderHeaderIcon.png"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3395
    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v17

    invoke-static {v7, v0, v5, v6}, Landroid/app/enterprise/lso/LSOUtils;->convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z

    move-result v14

    .line 3397
    sget-boolean v17, DEBUG:Z

    if-eqz v17, :cond_31c

    .line 3398
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Dest image path folder header icon: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " status value:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3399
    :cond_31c
    if-nez v14, :cond_31f

    .line 3400
    const/4 v5, 0x0

    :cond_31f
    move-object/from16 v17, p2

    .line 3402
    check-cast v17, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->setFolderHeaderIcon(Ljava/lang/String;)V

    .line 3406
    .end local v7    # "headerIcon":Ljava/lang/String;
    :cond_328
    sget-boolean v17, DEBUG:Z

    if-eqz v17, :cond_372

    .line 3407
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Images after copy in services:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    :cond_372
    const/16 v17, 0x1

    .end local v5    # "destPath":Ljava/lang/String;
    .end local v9    # "prefix":Ljava/lang/String;
    .end local v14    # "status":Z
    :goto_374
    return v17

    .line 3309
    :cond_375
    sget-boolean v17, DEBUG:Z

    if-eqz v17, :cond_393

    .line 3310
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "cannot create folder: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    :cond_393
    const/16 v17, 0x0

    goto :goto_374

    .line 3320
    :cond_396
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "cannot create folder: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    const/16 v17, 0x0

    goto :goto_374

    .line 3346
    .restart local v5    # "destPath":Ljava/lang/String;
    .restart local v9    # "prefix":Ljava/lang/String;
    .restart local v13    # "srcPath":Ljava/lang/String;
    .restart local v14    # "status":Z
    :cond_3b3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "CustomHomeScreenWallpaper.jpeg"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_19b

    .line 3360
    .restart local v12    # "source":Ljava/io/File;
    :cond_3ca
    const/4 v5, 0x0

    .line 3361
    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "source file "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " doesn\'t exist"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_208
.end method

.method private removeConfigurationTypeInternal(ILjava/lang/String;)Z
    .registers 6
    .param p1, "admin"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 3207
    iget-object v2, p0, mTypeList:Ljava/util/List;

    monitor-enter v2

    .line 3208
    :try_start_3
    invoke-direct {p0, p1, p2}, filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v0

    .line 3209
    .local v0, "lType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v0, :cond_21

    if-eqz p1, :cond_21

    .line 3210
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_21

    .line 3211
    :cond_1b
    invoke-direct {p0, v0}, removeConfigurationTypeInternal(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z

    move-result v1

    monitor-exit v2

    .line 3215
    :goto_20
    return v1

    .line 3214
    :cond_21
    monitor-exit v2

    .line 3215
    const/4 v1, 0x0

    goto :goto_20

    .line 3214
    .end local v0    # "lType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private removeConfigurationTypeInternal(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z
    .registers 15
    .param p1, "type"    # Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .prologue
    const/4 v10, 0x0

    .line 3219
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v7

    if-nez v7, :cond_b

    :cond_9
    move v7, v10

    .line 3275
    :goto_a
    return v7

    .line 3222
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3224
    .local v8, "token":J
    const/4 v4, 0x0

    .line 3225
    .local v4, "file":Ljava/io/File;
    :try_start_10
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomBadgeIcon()Ljava/lang/String;

    move-result-object v6

    .line 3226
    .local v6, "iconPath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3227
    .local v2, "deleted":Z
    sget-boolean v7, DEBUG:Z

    if-eqz v7, :cond_31

    .line 3228
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "badge icon file : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3229
    :cond_31
    if-eqz v6, :cond_1a2

    .line 3230
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_38} :catch_175
    .catchall {:try_start_10 .. :try_end_38} :catchall_198

    .line 3231
    .end local v4    # "file":Ljava/io/File;
    .local v5, "file":Ljava/io/File;
    :try_start_38
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v2

    .line 3232
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "badge icon file deletion status: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    :goto_54
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomHomeScreenWallpaper()Ljava/lang/String;

    move-result-object v6

    .line 3235
    sget-boolean v7, DEBUG:Z

    if-eqz v7, :cond_74

    .line 3236
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCustomHomeScreenWallpaper icon file : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    :cond_74
    if-eqz v6, :cond_98

    .line 3238
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_7b} :catch_19d
    .catchall {:try_start_38 .. :try_end_7b} :catchall_198

    .line 3239
    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :try_start_7b
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v2

    .line 3240
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "home screen wall paper icon file deletion status: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_97} :catch_175
    .catchall {:try_start_7b .. :try_end_97} :catchall_198

    move-object v5, v4

    .line 3242
    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :cond_98
    :try_start_98
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomLockScreenWallpaper()Ljava/lang/String;

    move-result-object v6

    .line 3243
    sget-boolean v7, DEBUG:Z

    if-eqz v7, :cond_b8

    .line 3244
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCustomLockScreenWallpaper icon file : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    :cond_b8
    if-eqz v6, :cond_dc

    .line 3246
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_bf} :catch_19d
    .catchall {:try_start_98 .. :try_end_bf} :catchall_198

    .line 3247
    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :try_start_bf
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v2

    .line 3248
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "lock screen wall paper icon file deletion status: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_db} :catch_175
    .catchall {:try_start_bf .. :try_end_db} :catchall_198

    move-object v5, v4

    .line 3250
    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :cond_dc
    :try_start_dc
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v6

    .line 3251
    sget-boolean v7, DEBUG:Z

    if-eqz v7, :cond_fc

    .line 3252
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCustomStatusIcon icon file : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3253
    :cond_fc
    if-eqz v6, :cond_120

    .line 3254
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_103} :catch_19d
    .catchall {:try_start_dc .. :try_end_103} :catchall_198

    .line 3255
    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :try_start_103
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v2

    .line 3256
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "custom status icon file deletion status: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_11f} :catch_175
    .catchall {:try_start_103 .. :try_end_11f} :catchall_198

    move-object v5, v4

    .line 3258
    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :cond_120
    :try_start_120
    instance-of v7, p1, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    if-eqz v7, :cond_1a0

    .line 3259
    move-object v0, p1

    check-cast v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;->getFolderHeaderIcon()Ljava/lang/String;

    move-result-object v6

    .line 3260
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getFolderHeaderIcon icon file : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    if-eqz v6, :cond_1a0

    .line 3262
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_14b} :catch_19d
    .catchall {:try_start_120 .. :try_end_14b} :catchall_198

    .line 3263
    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :try_start_14b
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v2

    .line 3264
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "folder header icon file deletion status: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    :goto_167
    iget-object v7, p0, mTypeList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3269
    invoke-direct {p0}, updateConfigurationXml()V
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_16f} :catch_175
    .catchall {:try_start_14b .. :try_end_16f} :catchall_198

    .line 3270
    const/4 v7, 0x1

    .line 3275
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_a

    .line 3271
    .end local v2    # "deleted":Z
    .end local v6    # "iconPath":Ljava/lang/String;
    :catch_175
    move-exception v3

    .line 3272
    .local v3, "e":Ljava/lang/Exception;
    :goto_176
    :try_start_176
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_192
    .catchall {:try_start_176 .. :try_end_192} :catchall_198

    .line 3275
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v10

    goto/16 :goto_a

    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "file":Ljava/io/File;
    :catchall_198
    move-exception v7

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 3271
    .restart local v2    # "deleted":Z
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "iconPath":Ljava/lang/String;
    :catch_19d
    move-exception v3

    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_176

    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    :cond_1a0
    move-object v4, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    goto :goto_167

    :cond_1a2
    move-object v5, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v5    # "file":Ljava/io/File;
    goto/16 :goto_54
.end method

.method private removeContainer(IZ)I
    .registers 43
    .param p1, "containerId"    # I
    .param p2, "force"    # Z

    .prologue
    .line 2682
    const/16 v28, -0x4b1

    .line 2683
    .local v28, "retVal":I
    const-wide/16 v34, 0x0

    .line 2684
    .local v34, "token":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2686
    .local v4, "callingUid":I
    const/16 v37, 0x1

    move/from16 v0, p2

    move/from16 v1, v37

    if-eq v0, v1, :cond_32

    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, mParamsList:Ljava/util/List;

    move-object/from16 v37, v0

    if-eqz v37, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, mParamsList:Ljava/util/List;

    move-object/from16 v37, v0

    invoke-interface/range {v37 .. v37}, Ljava/util/List;->size()I

    move-result v37

    if-lez v37, :cond_32

    .line 2687
    sget-object v37, TAG:Ljava/lang/String;

    const-string/jumbo v38, "removeContainer: CONTAINER_CREATION_IN_PROGRESS is in progress."

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2c} :catch_257
    .catchall {:try_start_10 .. :try_end_2c} :catchall_419

    .line 2688
    const/16 v37, -0x3f6

    .line 2848
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2856
    :goto_31
    return v37

    .line 2691
    :cond_32
    :try_start_32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v34

    .line 2692
    invoke-direct/range {p0 .. p0}, getService()Landroid/os/PersonaManager;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v18

    .line 2693
    .local v18, "pInfo":Landroid/content/pm/PersonaInfo;
    if-nez p2, :cond_5a

    .line 2694
    if-eqz v18, :cond_5a

    .line 2695
    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    move/from16 v37, v0
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4c} :catch_257
    .catchall {:try_start_32 .. :try_end_4c} :catchall_419

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_5a

    .line 2696
    const/16 v37, -0x4b2

    .line 2848
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_31

    .line 2700
    :cond_5a
    :try_start_5a
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v17

    .line 2701
    .local v17, "ownerUid":I
    invoke-direct/range {p0 .. p1}, removeContainerOwnerRelationship(I)Z

    .line 2703
    if-eqz v18, :cond_15d

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    move/from16 v37, v0

    if-eqz v37, :cond_15d

    .line 2716
    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v1}, disableCover(Z)V

    .line 2718
    const/16 v32, 0x3e8

    .line 2720
    .local v32, "systemAdminUid":I
    new-instance v9, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v37, mContext:Landroid/content/Context;

    new-instance v38, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v38

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v9, v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/os/Handler;)V

    .line 2721
    .local v9, "edmforctx":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v9, :cond_c3

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v37

    if-eqz v37, :cond_c3

    .line 2722
    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v37

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/app/enterprise/RestrictionPolicy;->allowFactoryReset(Z)Z

    .line 2724
    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v37

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/app/enterprise/RestrictionPolicy;->setUsbMediaPlayerAvailability(Z)Z

    .line 2725
    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v37

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/app/enterprise/RestrictionPolicy;->setUsbMassStorage(Z)Z

    .line 2727
    sget-object v37, TAG:Ljava/lang/String;

    const-string/jumbo v38, "removeContainer: remove restriction policy for StatusBar / FactoryReset"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    :cond_c3
    new-instance v37, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v37

    move/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    sget-object v38, mContext:Landroid/content/Context;

    invoke-static/range {v37 .. v38}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v13

    .line 2731
    .local v13, "kioskModeService":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v13, :cond_e2

    .line 2732
    sget-object v37, TAG:Ljava/lang/String;

    const-string v38, "Enable OWNER\'s multi-window for Kiosk Mode"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    const/16 v37, 0x1

    move/from16 v0, v37

    invoke-virtual {v13, v0}, Landroid/app/enterprise/kioskmode/KioskMode;->allowMultiWindowMode(Z)Z

    .line 2736
    :cond_e2
    new-instance v37, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v37

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    sget-object v38, mContext:Landroid/content/Context;

    invoke-static/range {v37 .. v38}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v13

    .line 2737
    if-eqz v13, :cond_101

    .line 2738
    sget-object v37, TAG:Ljava/lang/String;

    const-string v38, "Enable OWNER\'s SystemBar for Kiosk Mode"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v13, v0}, Landroid/app/enterprise/kioskmode/KioskMode;->hideSystemBar(Z)Z

    .line 2742
    :cond_101
    new-instance v37, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v37

    move/from16 v1, v17

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    sget-object v38, mContext:Landroid/content/Context;

    invoke-static/range {v37 .. v38}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v13

    .line 2743
    if-eqz v13, :cond_122

    .line 2744
    sget-object v37, TAG:Ljava/lang/String;

    const-string v38, "Enable Persona\'s multi-window for Kiosk Mode"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    const/16 v37, 0x1

    move/from16 v0, v37

    invoke-virtual {v13, v0}, Landroid/app/enterprise/kioskmode/KioskMode;->allowMultiWindowMode(Z)Z

    .line 2748
    :cond_122
    sget-object v37, mContext:Landroid/content/Context;

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v37

    const-string v38, "notification_panel_active_app_list_for_reset_rollback"

    const/16 v39, 0x0

    invoke-static/range {v37 .. v39}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    .line 2749
    .local v33, "titleList":Ljava/lang/String;
    sget-object v37, mContext:Landroid/content/Context;

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v37

    const-string v38, "notification_panel_active_app_list"

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v33

    move/from16 v3, v39

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2750
    sget-object v37, mContext:Landroid/content/Context;

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v37

    const-string v38, "notification_panel_active_app_list_for_reset"

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v33

    move/from16 v3, v39

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2752
    invoke-direct/range {p0 .. p1}, enableOwnerLaunchersForCOM(I)Z

    .line 2756
    .end local v9    # "edmforctx":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v13    # "kioskModeService":Landroid/app/enterprise/kioskmode/KioskMode;
    .end local v32    # "systemAdminUid":I
    .end local v33    # "titleList":Ljava/lang/String;
    :cond_15d
    invoke-direct/range {p0 .. p1}, filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v36

    .line 2757
    .local v36, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v36, :cond_175

    .line 2758
    move-object/from16 v0, v36

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->removePersonaId(I)V

    .line 2759
    invoke-direct/range {p0 .. p0}, updateConfigurationXml()V

    .line 2760
    sget-object v37, TAG:Ljava/lang/String;

    const-string/jumbo v38, "removeContainer: configuration list updated successfully."

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    :cond_175
    invoke-direct/range {p0 .. p0}, getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v37

    if-eqz v37, :cond_1f7

    .line 2766
    invoke-direct/range {p0 .. p0}, getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v37

    const/16 v38, 0x0

    move-object/from16 v0, v37

    move/from16 v1, p1

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SEAMService;->clearWhitelist(II)I

    move-result v26

    .line 2767
    .local v26, "retCode":I
    sget-boolean v37, DEBUG:Z

    if-eqz v37, :cond_1b9

    .line 2768
    sget-object v37, TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Remove container clearWhitelist : SEAMS service retCode - "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " for containerid-"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    :cond_1b9
    invoke-direct/range {p0 .. p0}, getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v37

    const/16 v38, 0x0

    move-object/from16 v0, v37

    move/from16 v1, p1

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SEAMService;->clearSBABlacklist(II)I

    move-result v27

    .line 2771
    .local v27, "retCode1":I
    sget-boolean v37, DEBUG:Z

    if-eqz v37, :cond_1f7

    .line 2772
    sget-object v37, TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Remove container clearSBABlacklist: SEAMS service retCode - "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " for containerid-"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    .end local v26    # "retCode":I
    .end local v27    # "retCode1":I
    :cond_1f7
    new-instance v6, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v37, mContext:Landroid/content/Context;

    move-object/from16 v0, v37

    invoke-direct {v6, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 2776
    .local v6, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v30

    .line 2777
    .local v30, "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    move-object/from16 v0, v30

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->deactivateProxyAdminsForUser(I)V

    .line 2778
    move/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v14

    .line 2779
    .local v14, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    if-eqz v14, :cond_2af

    .line 2780
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_217
    :goto_217
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_2af

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 2781
    .local v23, "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual/range {v23 .. v23}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v29

    .line 2782
    .local v29, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v29, :cond_217

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v37, v0

    if-eqz v37, :cond_217

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v37, v0

    if-eqz v37, :cond_217

    .line 2783
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v37, v0

    move/from16 v0, v37

    invoke-virtual {v6, v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->removeProxyAdmin(I)V
    :try_end_256
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_256} :catch_257
    .catchall {:try_start_5a .. :try_end_256} :catchall_419

    goto :goto_217

    .line 2845
    .end local v6    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v17    # "ownerUid":I
    .end local v18    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v23    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v29    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v30    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v36    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catch_257
    move-exception v5

    .line 2846
    .local v5, "e":Ljava/lang/Exception;
    :try_start_258
    sget-object v37, TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Exception:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_274
    .catchall {:try_start_258 .. :try_end_274} :catchall_419

    .line 2848
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2850
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_277
    sget-object v37, TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "removeContainer("

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ") - "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, sendContainerRemovalIntent(II)V

    move/from16 v37, v28

    .line 2856
    goto/16 :goto_31

    .line 2787
    .restart local v6    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .restart local v17    # "ownerUid":I
    .restart local v18    # "pInfo":Landroid/content/pm/PersonaInfo;
    .restart local v30    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v36    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_2af
    :try_start_2af
    invoke-direct/range {p0 .. p0}, getService()Landroid/os/PersonaManager;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->removePersona(I)I

    move-result v28

    .line 2789
    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v37

    move/from16 v0, v37

    move/from16 v1, p1

    if-ne v0, v1, :cond_3f6

    const/4 v12, 0x1

    .line 2790
    .local v12, "isBYODAdmin":Z
    :goto_2c6
    sget-boolean v37, DEBUG:Z

    if-eqz v37, :cond_301

    .line 2791
    sget-object v37, TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "removeContainer MDM admin uid -"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " and userId -"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " and isBYODAdmin - "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    :cond_301
    if-eqz v12, :cond_41e

    .line 2794
    const/16 v16, 0x0

    .line 2795
    .local v16, "otherBYODAdminExist":Z
    invoke-direct/range {p0 .. p0}, getService()Landroid/os/PersonaManager;

    move-result-object v37

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v21

    .line 2796
    .local v21, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_313
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_38e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/PersonaInfo;

    .line 2797
    .local v19, "perInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v19, :cond_313

    .line 2798
    sget-object v37, TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "container:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v37, v0

    move/from16 v0, v37

    move/from16 v1, p1

    if-eq v0, v1, :cond_313

    .line 2800
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/PersonaInfo;->getAdminUid()I

    move-result v15

    .line 2801
    .local v15, "otherAdminUid":I
    sget-object v37, TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Other otherAdminUid:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " for container "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v37

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_3f9

    const/4 v11, 0x1

    .line 2803
    .local v11, "isBYOD":Z
    :goto_38a
    if-eqz v11, :cond_313

    .line 2804
    const/16 v16, 0x1

    .line 2810
    .end local v11    # "isBYOD":Z
    .end local v15    # "otherAdminUid":I
    .end local v19    # "perInfo":Landroid/content/pm/PersonaInfo;
    :cond_38e
    sget-object v37, TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "removeContainer otherBYODAdminExist:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    if-nez v16, :cond_3f1

    .line 2812
    const/16 v32, 0x3e8

    .line 2813
    .restart local v32    # "systemAdminUid":I
    sget-object v37, TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "removeContainer systemAdminUid-"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    new-instance v8, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v37, mContext:Landroid/content/Context;

    new-instance v38, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v38

    move/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v8, v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/os/Handler;)V

    .line 2815
    .local v8, "edmBYOD":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;
    :try_end_3e7
    .catch Ljava/lang/Exception; {:try_start_2af .. :try_end_3e7} :catch_257
    .catchall {:try_start_2af .. :try_end_3e7} :catchall_419

    move-result-object v24

    .line 2817
    .local v24, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    const/16 v37, 0x1

    :try_start_3ea
    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->setUsbDebuggingEnabled(Z)Z
    :try_end_3f1
    .catch Ljava/lang/SecurityException; {:try_start_3ea .. :try_end_3f1} :catch_3fb
    .catch Ljava/lang/Exception; {:try_start_3ea .. :try_end_3f1} :catch_257
    .catchall {:try_start_3ea .. :try_end_3f1} :catchall_419

    .line 2848
    .end local v8    # "edmBYOD":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v16    # "otherBYODAdminExist":Z
    .end local v21    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v24    # "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    .end local v32    # "systemAdminUid":I
    :cond_3f1
    :goto_3f1
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_277

    .line 2789
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "isBYODAdmin":Z
    :cond_3f6
    const/4 v12, 0x0

    goto/16 :goto_2c6

    .line 2802
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v12    # "isBYODAdmin":Z
    .restart local v15    # "otherAdminUid":I
    .restart local v16    # "otherBYODAdminExist":Z
    .restart local v19    # "perInfo":Landroid/content/pm/PersonaInfo;
    .restart local v21    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_3f9
    const/4 v11, 0x0

    goto :goto_38a

    .line 2818
    .end local v15    # "otherAdminUid":I
    .end local v19    # "perInfo":Landroid/content/pm/PersonaInfo;
    .restart local v8    # "edmBYOD":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v24    # "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    .restart local v32    # "systemAdminUid":I
    :catch_3fb
    move-exception v5

    .line 2819
    .local v5, "e":Ljava/lang/SecurityException;
    :try_start_3fc
    sget-object v37, TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "SecurityException : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_418
    .catch Ljava/lang/Exception; {:try_start_3fc .. :try_end_418} :catch_257
    .catchall {:try_start_3fc .. :try_end_418} :catchall_419

    goto :goto_3f1

    .line 2848
    .end local v5    # "e":Ljava/lang/SecurityException;
    .end local v6    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v8    # "edmBYOD":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "isBYODAdmin":Z
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v16    # "otherBYODAdminExist":Z
    .end local v17    # "ownerUid":I
    .end local v18    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v21    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v24    # "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    .end local v30    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v32    # "systemAdminUid":I
    .end local v36    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catchall_419
    move-exception v37

    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v37

    .line 2823
    .restart local v6    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v12    # "isBYODAdmin":Z
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .restart local v17    # "ownerUid":I
    .restart local v18    # "pInfo":Landroid/content/pm/PersonaInfo;
    .restart local v30    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v36    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_41e
    :try_start_41e
    new-instance v7, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v37, mContext:Landroid/content/Context;

    new-instance v38, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v38

    invoke-direct {v0, v4}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v39, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v7, v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/os/Handler;)V

    .line 2824
    .local v7, "edmAdmin":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v24

    .line 2825
    .restart local v24    # "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, getContainers(I)Ljava/util/List;

    move-result-object v22

    .line 2827
    .local v22, "personas":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v31, 0x1

    .line 2828
    .local v31, "setUsbDebuggingEnabled":Z
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_446
    :goto_446
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_47b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    .line 2829
    .local v20, "persona":Ljava/lang/Integer;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v37

    move/from16 v0, p1

    move/from16 v1, v37

    if-eq v0, v1, :cond_446

    .line 2831
    sget-object v37, TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "found another container with the same admin containerid: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_478
    .catch Ljava/lang/Exception; {:try_start_41e .. :try_end_478} :catch_257
    .catchall {:try_start_41e .. :try_end_478} :catchall_419

    .line 2832
    const/16 v31, 0x0

    goto :goto_446

    .line 2835
    .end local v20    # "persona":Ljava/lang/Integer;
    :cond_47b
    if-eqz v31, :cond_3f1

    .line 2837
    const/16 v37, 0x1

    :try_start_47f
    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->setUsbDebuggingEnabled(Z)Z

    move-result v25

    .line 2838
    .local v25, "ret":Z
    sget-object v37, TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "setUsbDebuggingEnabled : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a4
    .catch Ljava/lang/SecurityException; {:try_start_47f .. :try_end_4a4} :catch_4a6
    .catch Ljava/lang/Exception; {:try_start_47f .. :try_end_4a4} :catch_257
    .catchall {:try_start_47f .. :try_end_4a4} :catchall_419

    goto/16 :goto_3f1

    .line 2839
    .end local v25    # "ret":Z
    :catch_4a6
    move-exception v5

    .line 2840
    .restart local v5    # "e":Ljava/lang/SecurityException;
    :try_start_4a7
    sget-object v37, TAG:Ljava/lang/String;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "SecurityException : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c3
    .catch Ljava/lang/Exception; {:try_start_4a7 .. :try_end_4c3} :catch_257
    .catchall {:try_start_4a7 .. :try_end_4c3} :catchall_419

    goto/16 :goto_3f1
.end method

.method private removeContainerOwnerRelationship(I)Z
    .registers 8
    .param p1, "containerId"    # I

    .prologue
    .line 2179
    const/4 v2, 0x0

    .line 2180
    .local v2, "retVal":Z
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v1

    .line 2182
    .local v1, "ownerUid":I
    :try_start_7
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeMUMContainer(I)Z

    move-result v2

    .line 2183
    if-eqz v2, :cond_28

    .line 2184
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container removed from ownership DB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    :goto_27
    return v2

    .line 2186
    :cond_28
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Container not found or Failed to remove container from DB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_40} :catch_41

    goto :goto_27

    .line 2189
    :catch_41
    move-exception v0

    .line 2190
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed at removeContainerOwnerRelationship "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method private removeCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Z
    .registers 8
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    .line 2137
    iget-object v3, p0, mParamsList:Ljava/util/List;

    if-eqz v3, :cond_44

    .line 2139
    const/4 v2, 0x0

    .line 2140
    .local v2, "match":Lcom/sec/knox/container/ContainerCreationParams;
    iget-object v3, p0, mParamsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/ContainerCreationParams;

    .line 2141
    .local v1, "lParam":Lcom/sec/knox/container/ContainerCreationParams;
    invoke-virtual {v1}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v4

    if-ne v3, v4, :cond_b

    .line 2142
    move-object v2, v1

    .line 2146
    .end local v1    # "lParam":Lcom/sec/knox/container/ContainerCreationParams;
    :cond_22
    if-eqz v2, :cond_44

    .line 2147
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeCreationParams ->  :  match: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    iget-object v3, p0, mParamsList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2149
    const/4 v3, 0x1

    .line 2152
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "match":Lcom/sec/knox/container/ContainerCreationParams;
    :goto_43
    return v3

    :cond_44
    const/4 v3, 0x0

    goto :goto_43
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 6170
    if-nez p0, :cond_7

    .line 6171
    const/4 p0, 0x0

    .line 6177
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "length":I
    :cond_6
    :goto_6
    return-object p0

    .line 6173
    .end local v0    # "length":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 6174
    .restart local v0    # "length":I
    if-le v0, v2, :cond_6

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_6

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_6

    .line 6175
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method private restoreDisabledPackages(Ljava/util/List;Ljava/util/List;Lcom/sec/enterprise/knox/container/KnoxContainerManager;)V
    .registers 7
    .param p3, "kcm"    # Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/enterprise/knox/container/KnoxContainerManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 6383
    .local p1, "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "newList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_2a

    if-eqz p2, :cond_2a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_2a

    .line 6384
    invoke-interface {p1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 6385
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 6386
    .local v0, "packagesToEnable":[Ljava/lang/String;
    if-eqz v0, :cond_2a

    array-length v1, v0

    if-lez v1, :cond_2a

    .line 6387
    invoke-virtual {p3}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    .line 6390
    .end local v0    # "packagesToEnable":[Ljava/lang/String;
    :cond_2a
    return-void
.end method

.method private saveBlockedList(ILjava/util/Set;)Z
    .registers 10
    .param p1, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 6089
    .local p2, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6090
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6091
    .local v1, "s":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 6093
    .end local v1    # "s":Ljava/lang/String;
    :cond_2c
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ContainerOnly_wifiAP"

    const-string/jumbo v5, "wifiSSIDforKNOX"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method private sendContainerAdminChangeIntent(I)V
    .registers 6
    .param p1, "containerId"    # I

    .prologue
    .line 6503
    new-instance v0, Landroid/content/Intent;

    const-string v1, "enterprise.container.admin.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6504
    .local v0, "ownerChanged":Landroid/content/Intent;
    const-string v1, "containerid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6505
    sget-object v1, mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 6508
    return-void
.end method

.method private sendContainerAdminLockIntent(Ljava/lang/String;II)V
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 1101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "enterprise.container.locked"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1102
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1103
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1105
    :cond_12
    const-string v1, "containerid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1106
    sget-object v1, mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1108
    return-void
.end method

.method private sendContainerAdminUnlockIntent(Ljava/lang/String;II)V
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 1111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "enterprise.container.unlocked"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1112
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1113
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1115
    :cond_12
    const-string v1, "containerid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1116
    sget-object v1, mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1118
    return-void
.end method

.method private sendContainerCreationIntent(Ljava/lang/String;IIII)V
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "retCode"    # I
    .param p3, "requestId"    # I
    .param p4, "uid"    # I
    .param p5, "adminUid"    # I

    .prologue
    .line 1009
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.knox.container.creation.status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1010
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1011
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1013
    :cond_12
    const-string v1, "code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1014
    const-string/jumbo v1, "requestId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1015
    const-string v1, "admin_uid"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1016
    sget-object v1, mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1018
    return-void
.end method

.method private sendContainerCreationIntentBC(Ljava/lang/String;IIII)V
    .registers 13
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "requestId"    # I
    .param p4, "adminUid"    # I
    .param p5, "uid"    # I

    .prologue
    .line 1039
    if-lez p2, :cond_56

    .line 1041
    new-instance v1, Landroid/content/Intent;

    const-string v4, "enterprise.container.created.nonactive"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1043
    .local v1, "creationSuccess":Landroid/content/Intent;
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14

    .line 1044
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1046
    :cond_14
    const-string v4, "containerid"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1047
    const-string v4, "admin_uid"

    invoke-virtual {v1, v4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1048
    sget-object v4, mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1051
    new-instance v3, Landroid/content/Intent;

    const-string v4, "enterprise.container.setup.success"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1053
    .local v3, "setupSuccess":Landroid/content/Intent;
    if-eqz p1, :cond_40

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_40

    .line 1054
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1056
    :cond_40
    const-string v4, "containerid"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1057
    sget-object v4, mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1078
    .end local v1    # "creationSuccess":Landroid/content/Intent;
    .end local v3    # "setupSuccess":Landroid/content/Intent;
    :goto_55
    return-void

    .line 1059
    :cond_56
    const/16 v4, -0x3f9

    if-ne p2, v4, :cond_89

    .line 1060
    new-instance v0, Landroid/content/Intent;

    const-string v4, "enterprise.container.cancelled"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1062
    .local v0, "creationCancelled":Landroid/content/Intent;
    if-eqz p1, :cond_6c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6c

    .line 1063
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1065
    :cond_6c
    const-string v4, "containerid"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1066
    const-string/jumbo v4, "requestid"

    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1067
    sget-object v4, mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_55

    .line 1070
    .end local v0    # "creationCancelled":Landroid/content/Intent;
    :cond_89
    new-instance v2, Landroid/content/Intent;

    const-string v4, "enterprise.container.setup.failure"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1072
    .local v2, "creationfailure":Landroid/content/Intent;
    if-eqz p1, :cond_9b

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9b

    .line 1073
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1075
    :cond_9b
    sget-object v4, mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_55
.end method

.method private sendContainerRemovalIntent(II)V
    .registers 8
    .param p1, "retVal"    # I
    .param p2, "containerId"    # I

    .prologue
    .line 1081
    new-instance v0, Landroid/content/Intent;

    const-string v2, "enterprise.container.remove.progress"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1083
    .local v0, "removeInProgress":Landroid/content/Intent;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1084
    sget-object v2, mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1087
    const/4 v1, 0x0

    .line 1088
    .local v1, "removeStatus":Landroid/content/Intent;
    if-nez p1, :cond_3c

    .line 1089
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "removeStatus":Landroid/content/Intent;
    const-string v2, "enterprise.container.uninstalled"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1095
    .restart local v1    # "removeStatus":Landroid/content/Intent;
    :goto_26
    const-string v2, "containerid"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1096
    sget-object v2, mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1098
    return-void

    .line 1092
    :cond_3c
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "removeStatus":Landroid/content/Intent;
    const-string v2, "enterprise.container.unmountfailure"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "removeStatus":Landroid/content/Intent;
    goto :goto_26
.end method

.method private sendContainerStateChangeIntent(Ljava/lang/String;IIII)V
    .registers 11
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "userId"    # I
    .param p4, "oldState"    # I
    .param p5, "newState"    # I

    .prologue
    .line 1022
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.enterprise.container_state_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1023
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1024
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1026
    :cond_12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1027
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1029
    const-string v2, "container_old_state"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1030
    const-string v2, "container_new_state"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1032
    const-string v2, "intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1033
    sget-object v2, mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1035
    return-void
.end method

.method private sendIntentBroadcastForContainer(ILjava/lang/String;)V
    .registers 7
    .param p1, "containerId"    # I
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1191
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendIntentBroadcastForContainer : containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1193
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "container_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1194
    sget-object v1, mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1195
    return-void
.end method

.method private setEnforceAuthForContainerInternal(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "value"    # Z

    .prologue
    .line 3582
    const/4 v2, 0x0

    .line 3583
    .local v2, "result":Z
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3584
    .local v3, "where":Landroid/content/ContentValues;
    const-string v4, "cid"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3585
    const-string v4, "adminUid"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3586
    const-string/jumbo v4, "propertyName"

    const-string v5, "EnforceAuthForContainer"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3587
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_55

    .line 3588
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setEnforceAuthForContainer: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " EnforceAuthForContainer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3590
    :cond_55
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CONTAINER_POLICY"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 3591
    .local v0, "count":I
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setEnforceAuthForContainer: already row present ? "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-lez v0, :cond_ae

    const/4 v4, 0x1

    :goto_6e
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    if-lez v0, :cond_b0

    .line 3594
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3595
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3596
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CONTAINER_POLICY"

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 3603
    .end local v1    # "cv":Landroid/content/ContentValues;
    :goto_92
    if-nez v2, :cond_ad

    .line 3604
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setEnforceAuthForContainer failed : result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3606
    :cond_ad
    return v2

    .line 3591
    :cond_ae
    const/4 v4, 0x0

    goto :goto_6e

    .line 3599
    :cond_b0
    const-string/jumbo v4, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3600
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CONTAINER_POLICY"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    goto :goto_92
.end method

.method private setupDefaultOwnerLauncher([Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 10
    .param p1, "components"    # [Landroid/content/ComponentName;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 6989
    :try_start_0
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setupDefaultOwnerLauncher is called for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6990
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 6991
    .local v0, "ipm":Landroid/content/pm/IPackageManager;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6992
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 6993
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 6994
    const-string v2, "android.intent.category.MONKEY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 6996
    const/high16 v2, 0x100000

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    .line 7002
    .end local v0    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :goto_3a
    return-void

    .line 6998
    :catch_3b
    move-exception v6

    .line 6999
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3a
.end method

.method private setupDefaultPolicies(Landroid/content/ComponentName;IILcom/sec/enterprise/knox/container/KnoxConfigurationType;Ljava/util/HashMap;)Z
    .registers 58
    .param p1, "adminComp"    # Landroid/content/ComponentName;
    .param p2, "adminUid"    # I
    .param p3, "userId"    # I
    .param p4, "type"    # Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "II",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 2257
    .local p5, "pkgPolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    :try_start_0
    invoke-direct/range {p0 .. p0}, getService()Landroid/os/PersonaManager;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v36

    .line 2258
    .local v36, "pinfo":Landroid/content/pm/PersonaInfo;
    if-nez v36, :cond_11

    .line 2259
    const/16 v48, 0x0

    .line 2669
    .end local v36    # "pinfo":Landroid/content/pm/PersonaInfo;
    :goto_10
    return v48

    .line 2261
    .restart local v36    # "pinfo":Landroid/content/pm/PersonaInfo;
    :cond_11
    invoke-direct/range {p0 .. p0}, getUserManagerService()Landroid/os/UserManager;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v46

    .line 2262
    .local v46, "uinfo":Landroid/content/pm/UserInfo;
    if-nez v46, :cond_22

    .line 2263
    const/16 v48, 0x0

    goto :goto_10

    .line 2266
    :cond_22
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v13

    .line 2267
    .local v13, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    sget-object v48, mContext:Landroid/content/Context;

    new-instance v49, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v49

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    invoke-virtual {v13, v0, v1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v26

    .line 2269
    .local v26, "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    if-nez v26, :cond_47

    .line 2270
    sget-object v48, TAG:Ljava/lang/String;

    const-string v49, "failed to get container manager"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    const/16 v48, 0x0

    goto :goto_10

    .line 2274
    :cond_47
    if-nez p4, :cond_71

    .line 2275
    new-instance v48, Ljava/lang/NullPointerException;

    const-string v49, "Container type object is null."

    invoke-direct/range {v48 .. v49}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v48
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_51

    .line 2665
    .end local v13    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v26    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v36    # "pinfo":Landroid/content/pm/PersonaInfo;
    .end local v46    # "uinfo":Landroid/content/pm/UserInfo;
    :catch_51
    move-exception v10

    .line 2666
    .local v10, "e":Ljava/lang/Exception;
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Exception:"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    const/16 v48, 0x0

    goto :goto_10

    .line 2276
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v13    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v26    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .restart local v36    # "pinfo":Landroid/content/pm/PersonaInfo;
    .restart local v46    # "uinfo":Landroid/content/pm/UserInfo;
    :cond_71
    if-gtz p3, :cond_7b

    .line 2277
    :try_start_73
    new-instance v48, Ljava/lang/NullPointerException;

    const-string v49, "PersonaInfo is null."

    invoke-direct/range {v48 .. v49}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v48

    .line 2279
    :cond_7b
    const-string v48, "KNOX"

    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v48

    if-eqz v48, :cond_4d0

    .line 2280
    const-string v48, "/system/container/resources/knox_icon.png"

    move-object/from16 v0, p4

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    .line 2285
    :goto_92
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordQuality()I

    move-result v40

    .line 2287
    .local v40, "quality":I
    if-lez v40, :cond_c1

    .line 2288
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setPasswordQuality: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 2292
    :cond_c1
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getForbiddenStrings()Ljava/util/List;

    move-result-object v15

    .line 2293
    .local v15, "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_f0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v48

    if-lez v48, :cond_f0

    .line 2294
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setForbiddenStrings: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    invoke-virtual {v0, v15}, Landroid/app/enterprise/PasswordPolicy;->setForbiddenStrings(Ljava/util/List;)Z

    .line 2298
    :cond_f0
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getRequiredPwdPatternRestrictions()Ljava/lang/String;

    move-result-object v34

    .line 2299
    .local v34, "patternRestriction":Ljava/lang/String;
    if-eqz v34, :cond_123

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->isEmpty()Z

    move-result v48

    if-nez v48, :cond_123

    .line 2300
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setRequiredPasswordPattern: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PasswordPolicy;->setRequiredPasswordPattern(Ljava/lang/String;)Z

    .line 2304
    :cond_123
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumCharacterOccurences()I

    move-result v47

    .line 2305
    .local v47, "value":I
    if-lez v47, :cond_150

    .line 2306
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setMaximumCharacterOccurrences: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PasswordPolicy;->setMaximumCharacterOccurrences(I)Z

    .line 2310
    :cond_150
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumCharacterSequenceLength()I

    move-result v47

    .line 2311
    if-lez v47, :cond_17d

    .line 2312
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setMaximumCharacterSequenceLength: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PasswordPolicy;->setMaximumCharacterSequenceLength(I)Z

    .line 2316
    :cond_17d
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumFailedPasswordsForWipe()I

    move-result v47

    .line 2317
    if-lez v47, :cond_1ac

    .line 2318
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setMaximumFailedPasswordsForWipe: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 2322
    :cond_1ac
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumNumericSequenceLength()I

    move-result v47

    .line 2323
    if-lez v47, :cond_1d9

    .line 2324
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setMaximumNumericSequenceLength: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PasswordPolicy;->setMaximumNumericSequenceLength(I)Z

    .line 2328
    :cond_1d9
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLength()I

    move-result v47

    .line 2329
    if-lez v47, :cond_208

    .line 2330
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setPasswordMinimumLength: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 2334
    :cond_208
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLetters()I

    move-result v47

    .line 2335
    if-lez v47, :cond_237

    .line 2336
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setPasswordMinimumLetters: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordMinimumLetters(Landroid/content/ComponentName;I)V

    .line 2340
    :cond_237
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumNonLetters()I

    move-result v47

    .line 2341
    if-lez v47, :cond_266

    .line 2342
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setPasswordMinimumNonLetter: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    .line 2346
    :cond_266
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumSymbols()I

    move-result v47

    .line 2347
    if-lez v47, :cond_295

    .line 2348
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setPasswordMinimumSymbols: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V

    .line 2352
    :cond_295
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getMaximumTimeToLock()I

    move-result v47

    .line 2353
    if-lez v47, :cond_2c9

    .line 2354
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setMaximumTimeToLock: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v48

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v50, v0

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move-wide/from16 v2, v50

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/BasePasswordPolicy;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 2358
    :cond_2c9
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumUpperCase()I

    move-result v47

    .line 2359
    if-lez v47, :cond_2f8

    .line 2360
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setPasswordMinimumUpperCase: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V

    .line 2364
    :cond_2f8
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPasswordMinimumLowerCase()I

    move-result v47

    .line 2365
    if-lez v47, :cond_327

    .line 2366
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setPasswordMinimumLowerCase: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V

    .line 2370
    :cond_327
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getSimplePasswordEnabled()Z

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 2371
    .local v6, "booleanVal":Ljava/lang/Boolean;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v48

    if-nez v48, :cond_368

    .line 2372
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set setSimplePasswordEnabled: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    const-string v48, "device_policy"

    invoke-static/range {v48 .. v48}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v48

    invoke-static/range {v48 .. v48}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v28

    .line 2374
    .local v28, "mDPM":Landroid/app/admin/IDevicePolicyManager;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v48

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v48

    move/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager;->setSimplePasswordEnabled(Landroid/content/ComponentName;ZI)V

    .line 2377
    .end local v28    # "mDPM":Landroid/app/admin/IDevicePolicyManager;
    :cond_368
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isMultifactorAuthenticationEnforced()Z

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 2378
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v48

    if-eqz v48, :cond_39b

    .line 2379
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy set enforceMultifactorAuthentication: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;

    move-result-object v48

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v49

    invoke-virtual/range {v48 .. v49}, Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;->enforceMultifactorAuthentication(Z)V

    .line 2383
    :cond_39b
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getBiometricAuthenticationEnabledValue()Z

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 2384
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy get getBiometricAuthenticationEnabledValue: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v48

    if-eqz v48, :cond_510

    .line 2386
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getBiometricAuthenticationEnabledType()I

    move-result v47

    .line 2387
    if-lez v47, :cond_440

    .line 2388
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy get getBiometricAuthenticationEnabledType: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    invoke-virtual {v13}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getVersion()Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v7

    .line 2390
    .local v7, "currentVersion":Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "EnterpriseKnoxSdkVersion currentVersion : "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    sget-object v48, Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_2:Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-object/from16 v0, v48

    invoke-virtual {v7, v0}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v48

    if-gez v48, :cond_4db

    .line 2392
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v48

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v47

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/PasswordPolicy;->setBiometricAuthenticationEnabled(IZ)Z

    .line 2393
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy isBiometricAuthenticationEnabled: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PasswordPolicy;->isBiometricAuthenticationEnabled(I)Z

    move-result v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    .end local v7    # "currentVersion":Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;
    :cond_440
    :goto_440
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/sec/enterprise/knox/container/RCPPolicy;

    move-result-object v41

    .line 2416
    .local v41, "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAllowChangeDataSyncPolicy()Ljava/util/HashMap;

    move-result-object v43

    .line 2417
    .local v43, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    if-eqz v43, :cond_5d9

    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->isEmpty()Z

    move-result v48

    if-nez v48, :cond_5d9

    .line 2418
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 2419
    .local v39, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v33, 0x0

    .line 2420
    .local v33, "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v48

    invoke-interface/range {v48 .. v48}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_45f
    :goto_45f
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_5d9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 2421
    .local v22, "key":Ljava/lang/String;
    move-object/from16 v0, v43

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    .end local v33    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    check-cast v33, Ljava/util/List;

    .line 2422
    .restart local v33    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v33, :cond_45f

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->isEmpty()Z

    move-result v48

    if-nez v48, :cond_45f

    .line 2423
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy setAllowChangeDataSyncPolicy for "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2425
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_4a4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_5d4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/util/Pair;

    .line 2426
    .local v32, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/lang/String;

    invoke-static/range {v49 .. v49}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v49

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    move-object/from16 v2, v48

    move/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/container/RCPPolicy;->setAllowChangeDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Z)Z

    goto :goto_4a4

    .line 2282
    .end local v6    # "booleanVal":Ljava/lang/Boolean;
    .end local v15    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v22    # "key":Ljava/lang/String;
    .end local v32    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v33    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v34    # "patternRestriction":Ljava/lang/String;
    .end local v39    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v40    # "quality":I
    .end local v41    # "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    .end local v43    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .end local v47    # "value":I
    :cond_4d0
    const-string v48, "/system/container/resources/knox_icon2.png"

    move-object/from16 v0, p4

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setCustomStatusIcon(Ljava/lang/String;)V

    goto/16 :goto_92

    .line 2395
    .restart local v6    # "booleanVal":Ljava/lang/Boolean;
    .restart local v7    # "currentVersion":Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;
    .restart local v15    # "forbiddenStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v34    # "patternRestriction":Ljava/lang/String;
    .restart local v40    # "quality":I
    .restart local v47    # "value":I
    :cond_4db
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v48

    const/16 v49, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v47

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/PasswordPolicy;->setBiometricAuthenticationEnabled(IZ)Z

    .line 2396
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy isBiometricAuthenticationEnabled: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PasswordPolicy;->isBiometricAuthenticationEnabled(I)Z

    move-result v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_440

    .line 2400
    .end local v7    # "currentVersion":Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;
    :cond_510
    invoke-virtual {v13}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getVersion()Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v7

    .line 2401
    .restart local v7    # "currentVersion":Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "EnterpriseKnoxSdkVersion currentVersion : "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    sget-object v48, Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_2_3:Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-object/from16 v0, v48

    invoke-virtual {v7, v0}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v48

    if-ltz v48, :cond_440

    .line 2403
    const/16 v48, 0x1

    move-object/from16 v0, p4

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isBiometricAuthenticationEnabled(I)Z

    move-result v48

    if-nez v48, :cond_577

    .line 2404
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v48

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v47

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/PasswordPolicy;->setBiometricAuthenticationEnabled(IZ)Z

    .line 2405
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy isBiometricAuthenticationEnabled: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PasswordPolicy;->isBiometricAuthenticationEnabled(I)Z

    move-result v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    :cond_577
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "name:"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    const-string v48, "knox-1.0"

    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v48

    if-eqz v48, :cond_440

    .line 2409
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v48

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v47

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/PasswordPolicy;->setBiometricAuthenticationEnabled(IZ)Z

    .line 2410
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy isBiometricAuthenticationEnabled: "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PasswordPolicy;->isBiometricAuthenticationEnabled(I)Z

    move-result v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_440

    .line 2429
    .end local v7    # "currentVersion":Lcom/sec/enterprise/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;
    .restart local v19    # "i$":Ljava/util/Iterator;
    .restart local v22    # "key":Ljava/lang/String;
    .restart local v33    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v39    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v41    # "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    .restart local v43    # "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_5d4
    invoke-interface/range {v39 .. v39}, Ljava/util/List;->clear()V

    goto/16 :goto_45f

    .line 2434
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v22    # "key":Ljava/lang/String;
    .end local v33    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v39    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5d9
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getNotificationSyncPolicy()Ljava/util/HashMap;

    move-result-object v43

    .line 2435
    if-eqz v43, :cond_665

    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->isEmpty()Z

    move-result v48

    if-nez v48, :cond_665

    .line 2436
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 2437
    .local v31, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v33, 0x0

    .line 2438
    .restart local v33    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v48

    invoke-interface/range {v48 .. v48}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_5f4
    :goto_5f4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_665

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 2439
    .restart local v22    # "key":Ljava/lang/String;
    move-object/from16 v0, v43

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    .end local v33    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    check-cast v33, Ljava/util/List;

    .line 2440
    .restart local v33    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v33, :cond_5f4

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->isEmpty()Z

    move-result v48

    if-nez v48, :cond_5f4

    .line 2441
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Policy setNotificationSyncPolicy for "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2443
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :goto_639
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_661

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/util/Pair;

    .line 2444
    .restart local v32    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v31

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/container/RCPPolicy;->setNotificationSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_639

    .line 2446
    .end local v32    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_661
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->clear()V

    goto :goto_5f4

    .line 2451
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v22    # "key":Ljava/lang/String;
    .end local v31    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v33    # "pairList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_665
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusIcon()Ljava/lang/String;

    move-result-object v35

    .line 2452
    .local v35, "personaIcon":Ljava/lang/String;
    if-eqz v35, :cond_6a8

    const-string v48, ""

    move-object/from16 v0, v35

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_674
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_674} :catch_51

    move-result v48

    if-nez v48, :cond_6a8

    .line 2454
    :try_start_677
    invoke-static/range {v35 .. v35}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2455
    .local v5, "bmp":Landroid/graphics/Bitmap;
    invoke-direct/range {p0 .. p0}, getService()Landroid/os/PersonaManager;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/PersonaManager;->setPersonaIcon(ILandroid/graphics/Bitmap;)V

    .line 2456
    sget-boolean v48, DEBUG:Z

    if-eqz v48, :cond_6a8

    .line 2457
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Persona Bitmap:"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    move-object/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a8
    .catch Ljava/lang/Exception; {:try_start_677 .. :try_end_6a8} :catch_795

    .line 2464
    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    :cond_6a8
    :goto_6a8
    :try_start_6a8
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v48

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Landroid/app/enterprise/RestrictionPolicy;->setScreenCapture(Z)Z

    .line 2465
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;

    move-result-object v48

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;->allowRemoteControl(Z)Z

    .line 2467
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v48

    move/from16 v0, v48

    move/from16 v1, p3

    if-ne v0, v1, :cond_7b4

    const/16 v20, 0x1

    .line 2468
    .local v20, "isBYODAdmin":Z
    :goto_6c6
    sget-boolean v48, DEBUG:Z

    if-eqz v48, :cond_702

    .line 2469
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "MDM admin uid -"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, " and userId -"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, " and isBYODAdmin - "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_702
    .catch Ljava/lang/Exception; {:try_start_6a8 .. :try_end_702} :catch_51

    .line 2471
    :cond_702
    if-eqz v20, :cond_7e0

    .line 2473
    const/16 v45, 0x3e8

    .line 2474
    .local v45, "systemAdminUid":I
    :try_start_706
    sget-boolean v48, DEBUG:Z

    if-eqz v48, :cond_727

    .line 2475
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v50, "systemAdminUid userd for BYOD case -"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    :cond_727
    new-instance v11, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v48, mContext:Landroid/content/Context;

    new-instance v49, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v49

    move/from16 v1, v45

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v50, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-direct {v11, v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/os/Handler;)V

    .line 2477
    .local v11, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v11}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v42

    .line 2479
    .local v42, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    sget-boolean v48, isEngMode:Z

    if-nez v48, :cond_758

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    move/from16 v48, v0

    if-nez v48, :cond_758

    .line 2480
    const/16 v48, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->setUsbDebuggingEnabled(Z)Z
    :try_end_758
    .catch Ljava/lang/SecurityException; {:try_start_706 .. :try_end_758} :catch_7b8
    .catch Ljava/lang/Exception; {:try_start_706 .. :try_end_758} :catch_51

    .line 2504
    .end local v11    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v42    # "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    .end local v45    # "systemAdminUid":I
    :cond_758
    :goto_758
    :try_start_758
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 2505
    .restart local v31    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getProtectedPackageList()Ljava/util/List;

    move-result-object v48

    move-object/from16 v0, v31

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2506
    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    move/from16 v48, v0

    if-eqz v48, :cond_779

    .line 2507
    const-string v48, "com.sec.sdp"

    move-object/from16 v0, v31

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2509
    :cond_779
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_77d
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_842

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 2510
    .local v37, "pkg":Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;)V

    goto :goto_77d

    .line 2458
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v20    # "isBYODAdmin":Z
    .end local v31    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v37    # "pkg":Ljava/lang/String;
    :catch_795
    move-exception v10

    .line 2459
    .restart local v10    # "e":Ljava/lang/Exception;
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Bitmap decodeFile:"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6a8

    .line 2467
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_7b4
    const/16 v20, 0x0

    goto/16 :goto_6c6

    .line 2482
    .restart local v20    # "isBYODAdmin":Z
    .restart local v45    # "systemAdminUid":I
    :catch_7b8
    move-exception v10

    .line 2483
    .local v10, "e":Ljava/lang/SecurityException;
    sget-object v48, TAG:Ljava/lang/String;

    const-string v49, "SecurityException"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    sget-boolean v48, DEBUG:Z

    if-eqz v48, :cond_758

    .line 2485
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "SecurityException-"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7de
    .catch Ljava/lang/Exception; {:try_start_758 .. :try_end_7de} :catch_51

    goto/16 :goto_758

    .line 2489
    .end local v10    # "e":Ljava/lang/SecurityException;
    .end local v45    # "systemAdminUid":I
    :cond_7e0
    :try_start_7e0
    sget-object v48, TAG:Ljava/lang/String;

    const-string v49, "Applying usb policy for non BYOD admin"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    new-instance v11, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v48, mContext:Landroid/content/Context;

    new-instance v49, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v49

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v50, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-direct {v11, v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/os/Handler;)V

    .line 2491
    .restart local v11    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v11}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v42

    .line 2493
    .restart local v42    # "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    sget-boolean v48, isEngMode:Z

    if-nez v48, :cond_758

    move-object/from16 v0, v36

    iget-boolean v0, v0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    move/from16 v48, v0

    if-nez v48, :cond_758

    .line 2494
    const/16 v48, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->setUsbDebuggingEnabled(Z)Z
    :try_end_818
    .catch Ljava/lang/SecurityException; {:try_start_7e0 .. :try_end_818} :catch_81a
    .catch Ljava/lang/Exception; {:try_start_7e0 .. :try_end_818} :catch_51

    goto/16 :goto_758

    .line 2496
    .end local v11    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v42    # "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    :catch_81a
    move-exception v10

    .line 2497
    .restart local v10    # "e":Ljava/lang/SecurityException;
    :try_start_81b
    sget-object v48, TAG:Ljava/lang/String;

    const-string v49, "SecurityException"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    sget-boolean v48, DEBUG:Z

    if-eqz v48, :cond_758

    .line 2499
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "SecurityException-"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_758

    .line 2512
    .end local v10    # "e":Ljava/lang/SecurityException;
    .restart local v18    # "i$":Ljava/util/Iterator;
    .restart local v31    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_842
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToForceStopBlackList(Ljava/util/List;)Z

    .line 2513
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToClearDataBlackList(Ljava/util/List;)Z

    .line 2514
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->addPackagesToClearCacheBlackList(Ljava/util/List;)Z

    .line 2517
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v48

    const/16 v49, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/BasePasswordPolicy;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    .line 2519
    sget-boolean v48, DEBUG:Z

    if-eqz v48, :cond_87d

    .line 2520
    sget-object v48, TAG:Ljava/lang/String;

    const-string v49, "Disabling google apps from container"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    :cond_87d
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getGoogleAppsList()Ljava/util/List;

    move-result-object v17

    .line 2522
    .local v17, "googlePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v17, :cond_b83

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v48

    if-lez v48, :cond_b83

    .line 2523
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Google apps size "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v48

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 2525
    .local v9, "disablePackages":[Ljava/lang/String;
    if-eqz v9, :cond_b7a

    array-length v0, v9

    move/from16 v48, v0

    if-lez v48, :cond_b7a

    .line 2526
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v48

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v49

    invoke-virtual {v0, v9, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    .line 2536
    .end local v9    # "disablePackages":[Ljava/lang/String;
    :cond_8cd
    :goto_8cd
    sget-object v48, TAG:Ljava/lang/String;

    const-string v49, "Disabling FOTA Disable apps from container"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTADisableList()Ljava/util/List;

    move-result-object v16

    .line 2538
    .local v16, "fotaPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v16, :cond_b99

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v48

    if-lez v48, :cond_b99

    .line 2539
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "FOTA disabled apps size "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v48

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v48, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 2541
    .restart local v9    # "disablePackages":[Ljava/lang/String;
    if-eqz v9, :cond_b90

    array-length v0, v9

    move/from16 v48, v0

    if-lez v48, :cond_b90

    .line 2542
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "Disabling FOTA pkgs "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    array-length v0, v9

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v48

    const/16 v49, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v49

    invoke-virtual {v0, v9, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    .line 2551
    .end local v9    # "disablePackages":[Ljava/lang/String;
    :goto_93f
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getKioskMode()Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v48

    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isMultiwindowModeAllowed()Z

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/app/enterprise/kioskmode/KioskMode;->allowMultiWindowMode(Z)Z

    .line 2552
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getKioskMode()Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v48

    invoke-virtual/range {p4 .. p4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isTaskManagerAllowed()Z

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/app/enterprise/kioskmode/KioskMode;->allowTaskManager(Z)Z

    .line 2556
    move-object/from16 v0, p4

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v21, v0

    .line 2557
    .local v21, "isKioskModeEnabled":Z
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "isKioskModeEnabled- "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    if-eqz v21, :cond_a67

    .line 2559
    const/16 v45, 0x3e8

    .line 2560
    .restart local v45    # "systemAdminUid":I
    move-object/from16 v0, p4

    check-cast v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move-object/from16 v25, v0

    .line 2561
    .local v25, "kioskType":Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v48

    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isSettingChangesAllowed()Z

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/app/enterprise/RestrictionPolicy;->allowSettingsChanges(Z)Z

    .line 2562
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v48

    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isStatusBarExpansionAllowed()Z

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/app/enterprise/RestrictionPolicy;->allowStatusBarExpansion(Z)Z

    .line 2563
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v48

    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isHomeKeyAllowed()Z

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/app/enterprise/RestrictionPolicy;->setHomeKeyState(Z)Z

    .line 2565
    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isClearAllNotificationAllowed()Z

    move-result v48

    if-eqz v48, :cond_9af

    .line 2566
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getKioskMode()Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Landroid/app/enterprise/kioskmode/KioskMode;->clearAllNotifications()Z

    .line 2568
    :cond_9af
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getKioskMode()Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v48

    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isHideSystemBarEnabled()Z

    move-result v49

    invoke-virtual/range {v48 .. v49}, Landroid/app/enterprise/kioskmode/KioskMode;->hideSystemBar(Z)Z

    .line 2569
    invoke-virtual/range {v25 .. v25}, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;->isWipeRecentTasksEnabled()Z

    move-result v48

    if-eqz v48, :cond_9c7

    .line 2570
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getKioskMode()Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Landroid/app/enterprise/kioskmode/KioskMode;->wipeRecentTasks()Z

    .line 2573
    :cond_9c7
    const/16 v48, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-direct {v0, v1}, disableCover(Z)V

    .line 2575
    new-instance v12, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v48, mContext:Landroid/content/Context;

    new-instance v49, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v49

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v50, 0x0

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-direct {v12, v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/os/Handler;)V

    .line 2576
    .local v12, "edmforctx":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v12, :cond_a0b

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v48

    if-eqz v48, :cond_a0b

    .line 2577
    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v48

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Landroid/app/enterprise/RestrictionPolicy;->allowFactoryReset(Z)Z

    .line 2579
    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v48

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Landroid/app/enterprise/RestrictionPolicy;->setUsbMediaPlayerAvailability(Z)Z

    .line 2580
    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v48

    const/16 v49, 0x0

    invoke-virtual/range {v48 .. v49}, Landroid/app/enterprise/RestrictionPolicy;->setUsbMassStorage(Z)Z

    .line 2593
    :cond_a0b
    new-instance v48, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v48

    move/from16 v1, v45

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    sget-object v49, mContext:Landroid/content/Context;

    invoke-static/range {v48 .. v49}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v24

    .line 2594
    .local v24, "kioskModeService":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v24, :cond_a2c

    .line 2595
    sget-object v48, TAG:Ljava/lang/String;

    const-string v49, "Disable OWNER\'s multi-window for Kiosk Mode"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    const/16 v48, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/app/enterprise/kioskmode/KioskMode;->allowMultiWindowMode(Z)Z

    .line 2599
    :cond_a2c
    new-instance v48, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v48

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    sget-object v49, mContext:Landroid/content/Context;

    invoke-static/range {v48 .. v49}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v24

    .line 2600
    if-eqz v24, :cond_a4f

    .line 2601
    sget-object v48, TAG:Ljava/lang/String;

    const-string v49, "Disable Persona\'s multi-window for Kiosk Mode"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    const/16 v48, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/app/enterprise/kioskmode/KioskMode;->allowMultiWindowMode(Z)Z

    .line 2605
    :cond_a4f
    const-string v48, "activity"

    invoke-static/range {v48 .. v48}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityManagerService;

    .line 2606
    .local v4, "ams":Lcom/android/server/am/ActivityManagerService;
    if-eqz v4, :cond_a60

    .line 2607
    const/16 v48, 0x0

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->clearRecentTasks(I)Z

    .line 2610
    :cond_a60
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, disableOwnerLaunchersforCOM(I)Z

    .line 2614
    .end local v4    # "ams":Lcom/android/server/am/ActivityManagerService;
    .end local v12    # "edmforctx":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v24    # "kioskModeService":Landroid/app/enterprise/kioskmode/KioskMode;
    .end local v25    # "kioskType":Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;
    .end local v45    # "systemAdminUid":I
    :cond_a67
    invoke-direct/range {p0 .. p0}, getMyKnoxAminUid()I

    move-result v29

    .line 2615
    .local v29, "myKnoxUid":I
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "SetupDefaultPolicies : myKnoxUid-"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, " and adminUid-"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    move/from16 v0, v29

    move/from16 v1, p2

    if-ne v0, v1, :cond_c15

    .line 2617
    if-eqz p5, :cond_c15

    .line 2618
    invoke-virtual/range {p5 .. p5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v23

    .line 2619
    .local v23, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v23, :cond_c15

    .line 2620
    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .end local v18    # "i$":Ljava/util/Iterator;
    :cond_aa7
    :goto_aa7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_c15

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 2621
    .restart local v37    # "pkg":Ljava/lang/String;
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "SetupDefaultPolicies : Package-"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    move-object/from16 v0, p5

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/ArrayList;

    .line 2623
    .local v27, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-eqz v27, :cond_c0c

    .line 2624
    const/4 v14, 0x1

    .line 2625
    .local v14, "elementCount":I
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :goto_ae0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v48

    if-eqz v48, :cond_aa7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    .line 2626
    .local v38, "policyValue":Ljava/lang/Object;
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "SetupDefaultPolicies : list-"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "applyPackagePolicies : elementCount-"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, " and policyValue-"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2628
    const/16 v48, 0x1

    move/from16 v0, v48

    if-ne v14, v0, :cond_bb2

    .line 2629
    if-eqz v38, :cond_baa

    move-object/from16 v0, v38

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v48, v0

    if-eqz v48, :cond_baa

    .line 2630
    move-object/from16 v0, v38

    check-cast v0, Ljava/lang/String;

    move-object/from16 v30, v0

    .line 2631
    .local v30, "newName":Ljava/lang/String;
    if-eqz v30, :cond_ba2

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v48

    if-lez v48, :cond_ba2

    .line 2632
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v37

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/ApplicationPolicy;->changeApplicationName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v44

    .line 2633
    .local v44, "status":Z
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "applyPackagePolicies : changeApplicationName status-"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    .end local v30    # "newName":Ljava/lang/String;
    .end local v38    # "policyValue":Ljava/lang/Object;
    .end local v44    # "status":Z
    :cond_b76
    :goto_b76
    add-int/lit8 v14, v14, 0x1

    .line 2656
    goto/16 :goto_ae0

    .line 2528
    .end local v14    # "elementCount":I
    .end local v16    # "fotaPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v21    # "isKioskModeEnabled":Z
    .end local v23    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v27    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v29    # "myKnoxUid":I
    .end local v37    # "pkg":Ljava/lang/String;
    .restart local v9    # "disablePackages":[Ljava/lang/String;
    .restart local v18    # "i$":Ljava/util/Iterator;
    :cond_b7a
    sget-object v48, TAG:Ljava/lang/String;

    const-string v49, "Error converting List[] to String[]"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8cd

    .line 2531
    .end local v9    # "disablePackages":[Ljava/lang/String;
    :cond_b83
    sget-boolean v48, DEBUG:Z

    if-eqz v48, :cond_8cd

    .line 2532
    sget-object v48, TAG:Ljava/lang/String;

    const-string v49, "No Google apps to disable"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8cd

    .line 2545
    .restart local v9    # "disablePackages":[Ljava/lang/String;
    .restart local v16    # "fotaPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b90
    sget-object v48, TAG:Ljava/lang/String;

    const-string v49, "Error converting List[] to String[]"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_93f

    .line 2548
    .end local v9    # "disablePackages":[Ljava/lang/String;
    :cond_b99
    sget-object v48, TAG:Ljava/lang/String;

    const-string v49, "No Disabled FOTA apps to disable"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_93f

    .line 2635
    .end local v18    # "i$":Ljava/util/Iterator;
    .restart local v14    # "elementCount":I
    .restart local v19    # "i$":Ljava/util/Iterator;
    .restart local v21    # "isKioskModeEnabled":Z
    .restart local v23    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v27    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v29    # "myKnoxUid":I
    .restart local v30    # "newName":Ljava/lang/String;
    .restart local v37    # "pkg":Ljava/lang/String;
    .restart local v38    # "policyValue":Ljava/lang/Object;
    :cond_ba2
    sget-object v48, TAG:Ljava/lang/String;

    const-string v49, "applyPackagePolicies : changeApplicationName name can\'t ne null"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b76

    .line 2638
    .end local v30    # "newName":Ljava/lang/String;
    :cond_baa
    sget-object v48, TAG:Ljava/lang/String;

    const-string v49, "applyPackagePolicies : changeApplicationName name can\'t ne null"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b76

    .line 2640
    :cond_bb2
    const/16 v48, 0x2

    move/from16 v0, v48

    if-ne v14, v0, :cond_b76

    .line 2642
    if-eqz v38, :cond_c03

    move-object/from16 v0, v38

    instance-of v0, v0, [B

    move/from16 v48, v0

    if-eqz v48, :cond_c03

    .line 2643
    check-cast v38, [B

    .end local v38    # "policyValue":Ljava/lang/Object;
    move-object/from16 v0, v38

    check-cast v0, [B

    move-object v8, v0

    .line 2644
    .local v8, "data":[B
    if-eqz v8, :cond_bfa

    array-length v0, v8

    move/from16 v48, v0

    if-lez v48, :cond_bfa

    .line 2645
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v48

    move-object/from16 v0, v48

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v8}, Landroid/app/enterprise/ApplicationPolicy;->changeApplicationIcon(Ljava/lang/String;[B)Z

    move-result v44

    .line 2646
    .restart local v44    # "status":Z
    sget-object v48, TAG:Ljava/lang/String;

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "applyPackagePolicies : changeApplicationIcon status-"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b76

    .line 2648
    .end local v44    # "status":Z
    :cond_bfa
    sget-object v48, TAG:Ljava/lang/String;

    const-string v49, "applyPackagePolicies : changeApplicationIcon path can\'t ne null"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b76

    .line 2652
    .end local v8    # "data":[B
    .restart local v38    # "policyValue":Ljava/lang/Object;
    :cond_c03
    sget-object v48, TAG:Ljava/lang/String;

    const-string v49, "applyPackagePolicies : changeApplicationIcon path can\'t ne null"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b76

    .line 2658
    .end local v14    # "elementCount":I
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v38    # "policyValue":Ljava/lang/Object;
    :cond_c0c
    sget-object v48, TAG:Ljava/lang/String;

    const-string v49, "applyPackagePolicies : no values found"

    invoke-static/range {v48 .. v49}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c13
    .catch Ljava/lang/Exception; {:try_start_81b .. :try_end_c13} :catch_51

    goto/16 :goto_aa7

    .line 2669
    .end local v23    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v27    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v37    # "pkg":Ljava/lang/String;
    :cond_c15
    const/16 v48, 0x1

    goto/16 :goto_10
.end method

.method private static translateStatus(Landroid/content/pm/PersonaState;)I
    .registers 4
    .param p0, "status"    # Landroid/content/pm/PersonaState;

    .prologue
    const/4 v0, -0x1

    .line 1139
    sget-object v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$4;->$SwitchMap$android$content$pm$PersonaState:[I

    invoke-virtual {p0}, Landroid/content/pm/PersonaState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1a

    .line 1172
    :goto_c
    :pswitch_c
    return v0

    .line 1150
    :pswitch_d
    const/16 v0, 0x5f

    goto :goto_c

    .line 1156
    :pswitch_10
    const/16 v0, 0x5b

    goto :goto_c

    .line 1165
    :pswitch_13
    const/16 v0, 0x5d

    goto :goto_c

    .line 1169
    :pswitch_16
    const/16 v0, 0x5e

    goto :goto_c

    .line 1139
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_10
        :pswitch_10
        :pswitch_13
        :pswitch_16
    .end packed-switch
.end method

.method private trimHiddenVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x5f

    .line 5995
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trimHiddenVersion("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5996
    const/4 v0, 0x0

    .line 5997
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_33

    .line 5998
    const/4 v1, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 6002
    :goto_32
    return-object v0

    .line 6000
    :cond_33
    move-object v0, p1

    goto :goto_32
.end method

.method private updateConfigurationXml()V
    .registers 4

    .prologue
    .line 2674
    iget-object v2, p0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    monitor-enter v2

    .line 2675
    :try_start_3
    new-instance v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    iget-object v1, p0, mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2676
    .local v0, "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    iget-object v1, p0, mTypeList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->setTypeList(Ljava/util/List;)V

    .line 2677
    invoke-virtual {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->writeToXml()V

    .line 2678
    monitor-exit v2

    .line 2679
    return-void

    .line 2678
    .end local v0    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V
    .registers 16
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;
    .param p2, "retVal"    # I
    .param p3, "adminUid"    # I

    .prologue
    const/4 v11, 0x3

    .line 974
    if-nez p1, :cond_c

    .line 975
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "updateContainerCreationStatus: creation params: NULL"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :goto_b
    return-void

    .line 978
    :cond_c
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getCreatorUid()I

    move-result v1

    .line 979
    .local v1, "creatorUid":I
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateContainerCreationStatus retVal: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "admin uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "creator Uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v8, p0, mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 981
    .local v4, "msg":Landroid/os/Message;
    const/4 v8, 0x4

    new-array v0, v8, [Ljava/lang/Integer;

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v8

    const/4 v8, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v8

    const/4 v8, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v11

    .line 982
    .local v0, "arguments":[Ljava/lang/Integer;
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 983
    iget-object v9, p0, mParamsList:Ljava/util/List;

    monitor-enter v9

    .line 986
    :try_start_6a
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v5

    .line 987
    .local v5, "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getAdminRemovable()Z

    move-result v3

    .line 988
    .local v3, "isRemovable":Z
    new-instance v8, Landroid/app/enterprise/ContextInfo;

    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getAdminUid()I

    move-result v10

    invoke-direct {v8, v10}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v3, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_7f} :catch_c5
    .catchall {:try_start_6a .. :try_end_7f} :catchall_e3

    .line 992
    .end local v3    # "isRemovable":Z
    .end local v5    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :goto_7f
    :try_start_7f
    invoke-direct {p0, p1}, removeCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Z

    .line 993
    iget-object v8, p0, mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    invoke-virtual {v8, v4}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 994
    monitor-exit v9
    :try_end_88
    .catchall {:try_start_7f .. :try_end_88} :catchall_e3

    .line 996
    :try_start_88
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 997
    .local v6, "token":J
    iget-object v8, p0, mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    invoke-virtual {v8}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;->reset()V

    .line 998
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    iget-object v9, p0, mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    invoke-interface {v8, v9}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 999
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1000
    sget-object v8, TAG:Ljava/lang/String;

    const-string v9, "Process kill observer unregistered."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catch Ljava/lang/NullPointerException; {:try_start_88 .. :try_end_a4} :catch_a6
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_a4} :catch_e6

    goto/16 :goto_b

    .line 1001
    .end local v6    # "token":J
    :catch_a6
    move-exception v2

    .line 1002
    .local v2, "e":Ljava/lang/NullPointerException;
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NullPointerException :("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 989
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_c5
    move-exception v2

    .line 990
    .local v2, "e":Ljava/lang/Exception;
    :try_start_c6
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 994
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_e3
    move-exception v8

    monitor-exit v9
    :try_end_e5
    .catchall {:try_start_c6 .. :try_end_e5} :catchall_e3

    throw v8

    .line 1003
    :catch_e6
    move-exception v2

    .line 1004
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RemoteException :("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b
.end method

.method private updateDisablePackagesForCloneTypes(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 510
    .local p1, "disableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_a

    .line 511
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "disableList is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_9
    :goto_9
    return-void

    .line 515
    :cond_a
    iget-object v3, p0, mTypeList:Ljava/util/List;

    if-nez v3, :cond_16

    .line 516
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "mTypeList is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 520
    :cond_16
    iget-object v3, p0, mTypeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 521
    .local v2, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v3

    if-eqz v3, :cond_c3

    .line 523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v0, "cloneDisableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTADisableList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_71

    .line 525
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "AppDisableList for Clone type is not null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTADisableList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 528
    :cond_71
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updateDisablePackagesforCloneType null != cloneList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 531
    invoke-virtual {v2, v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setFOTADisableList(Ljava/util/List;)V

    .line 532
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updateDisablePackagesForCloneTypes null != cloneList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " objlist size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTADisableList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 536
    .end local v0    # "cloneDisableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c3
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, " Not a cloneType: AdminUid is  0"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c
.end method

.method private updateInstallPackagesForCloneTypes(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 542
    .local p1, "installList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateInstallPackagesForCloneTypes : list = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    if-nez p1, :cond_23

    .line 545
    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "Installlist is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_22
    :goto_22
    return-void

    .line 548
    :cond_23
    iget-object v5, p0, mTypeList:Ljava/util/List;

    if-nez v5, :cond_2f

    .line 549
    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "mTypeList is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 552
    :cond_2f
    iget-object v5, p0, mTypeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 553
    .local v4, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UID =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v5

    if-eqz v5, :cond_10c

    .line 555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v0, "cloneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_8a

    .line 557
    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "AppInstallList for Clone type is not null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-virtual {v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 560
    :cond_8a
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " updateInstallPackagesForCloneTypes null != cloneList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_aa
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 563
    .local v3, "installApp":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d5

    .line 564
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " updateInstallPackagesForCloneTypes :Found duplicate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    .line 567
    :cond_d5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    .line 569
    .end local v3    # "installApp":Ljava/lang/String;
    :cond_d9
    invoke-virtual {v4, v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAppInstallationList(Ljava/util/List;)V

    .line 570
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " updateInstallPackagesForCloneTypes null != cloneList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " objlist size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 574
    .end local v0    # "cloneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_10c
    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, " Not a cloneType: AdminUid is  0"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35
.end method

.method private updateReenablePackagesForCloneTypes(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p1, "enableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_a

    .line 479
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "enableList is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_9
    :goto_9
    return-void

    .line 483
    :cond_a
    iget-object v3, p0, mTypeList:Ljava/util/List;

    if-nez v3, :cond_16

    .line 484
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "mTypeList is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 488
    :cond_16
    iget-object v3, p0, mTypeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 489
    .local v2, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v3

    if-eqz v3, :cond_c3

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v0, "cloneReenableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTAReenableList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_71

    .line 493
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "AppEnableList for Clone type is not null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTAReenableList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 496
    :cond_71
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updateReenablePackagesforCloneType null != cloneList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 499
    invoke-virtual {v2, v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setFOTAReenableList(Ljava/util/List;)V

    .line 500
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updateReenablePackagesForCloneTypes null != cloneList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " objlist size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTAReenableList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 504
    .end local v0    # "cloneReenableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c3
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, " Not a cloneType: AdminUid is  0"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c
.end method

.method private updateRemovePackagesForCloneTypes(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 580
    .local p1, "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateInstallPackagesForCloneTypes : list = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    if-nez p1, :cond_23

    .line 583
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "Removelist is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_22
    :goto_22
    return-void

    .line 586
    :cond_23
    iget-object v4, p0, mTypeList:Ljava/util/List;

    if-nez v4, :cond_2f

    .line 587
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "mTypeList is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 590
    :cond_2f
    iget-object v4, p0, mTypeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 591
    .local v3, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UID =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v4

    if-eqz v4, :cond_110

    .line 593
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v1, "cloneRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppRemoveList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_8a

    .line 595
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "AppRemoveList for Clone type is not null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppRemoveList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 598
    :cond_8a
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " updateRemovePackagesForCloneTypes null != cloneList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 600
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " updateRemovePackagesForCloneTypes null != cloneList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v0, "cloneAppInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_dd

    .line 604
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 605
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 606
    invoke-virtual {v3, v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAppInstallationList(Ljava/util/List;)V

    .line 609
    :cond_dd
    invoke-virtual {v3, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAppRemoveList(Ljava/util/List;)V

    .line 610
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " updateRemovePackagesForCloneTypes null != cloneList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " objlist size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppRemoveList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35

    .line 612
    .end local v0    # "cloneAppInstallList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "cloneRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_110
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, " Not a cloneType: AdminUid is  0"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_35
.end method

.method private validateResetPwdKey(Ljava/lang/String;)Z
    .registers 13
    .param p1, "resetPwdKey"    # Ljava/lang/String;

    .prologue
    .line 6637
    const/4 v6, 0x0

    .line 6638
    .local v6, "result":Z
    if-eqz p1, :cond_5a

    .line 6639
    const/4 v2, 0x0

    .line 6640
    .local v2, "letters":I
    const/4 v8, 0x0

    .line 6641
    .local v8, "uppercase":I
    const/4 v3, 0x0

    .line 6642
    .local v3, "lowercase":I
    const/4 v5, 0x0

    .line 6643
    .local v5, "numbers":I
    const/4 v7, 0x0

    .line 6644
    .local v7, "symbols":I
    const/4 v4, 0x0

    .line 6645
    .local v4, "nonletter":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v1, v9, :cond_42

    .line 6646
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 6647
    .local v0, "c":C
    const/16 v9, 0x41

    if-lt v0, v9, :cond_23

    const/16 v9, 0x5a

    if-gt v0, v9, :cond_23

    .line 6648
    add-int/lit8 v2, v2, 0x1

    .line 6649
    add-int/lit8 v8, v8, 0x1

    .line 6645
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 6650
    :cond_23
    const/16 v9, 0x61

    if-lt v0, v9, :cond_30

    const/16 v9, 0x7a

    if-gt v0, v9, :cond_30

    .line 6651
    add-int/lit8 v2, v2, 0x1

    .line 6652
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 6653
    :cond_30
    const/16 v9, 0x30

    if-lt v0, v9, :cond_3d

    const/16 v9, 0x39

    if-gt v0, v9, :cond_3d

    .line 6654
    add-int/lit8 v5, v5, 0x1

    .line 6655
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 6657
    :cond_3d
    add-int/lit8 v7, v7, 0x1

    .line 6658
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 6662
    .end local v0    # "c":C
    :cond_42
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x80

    if-gt v9, v10, :cond_5b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x20

    if-lt v9, v10, :cond_5b

    .line 6663
    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, " inside validateResetPwdKey password is validated"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6664
    const/4 v6, 0x1

    .line 6669
    .end local v1    # "i":I
    .end local v2    # "letters":I
    .end local v3    # "lowercase":I
    .end local v4    # "nonletter":I
    .end local v5    # "numbers":I
    .end local v7    # "symbols":I
    .end local v8    # "uppercase":I
    :cond_5a
    :goto_5a
    return v6

    .line 6666
    .restart local v1    # "i":I
    .restart local v2    # "letters":I
    .restart local v3    # "lowercase":I
    .restart local v4    # "nonletter":I
    .restart local v5    # "numbers":I
    .restart local v7    # "symbols":I
    .restart local v8    # "uppercase":I
    :cond_5b
    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, " inside validateResetPwdKey password is not per requirement "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a
.end method


# virtual methods
.method public addConfigurationType(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "types"    # Ljava/util/List;

    .prologue
    const/4 v3, 0x0

    .line 3136
    const/4 v2, 0x0

    .line 3137
    .local v2, "uid":I
    sget-object v4, mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    const-string v6, "Activate Container permission"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3140
    if-eqz p1, :cond_1c

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-lez v4, :cond_1c

    .line 3141
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 3146
    :goto_13
    if-eqz p2, :cond_1b

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 3167
    :cond_1b
    :goto_1b
    return v3

    .line 3143
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    goto :goto_13

    .line 3149
    :cond_21
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 3151
    .local v1, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v1, :cond_1b

    .line 3156
    :try_start_29
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parameter name :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getConfigurationTypeByName value :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, getConfigurationTypeByName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    invoke-direct {p0, v1}, processConfigurationType(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 3161
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, getConfigurationTypeByName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1b

    .line 3162
    invoke-direct {p0, v2, v1}, addConfigurationTypeToList(ILcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_78} :catch_7a

    move-result v3

    goto :goto_1b

    .line 3164
    :catch_7a
    move-exception v0

    .line 3165
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public addNetworkSSID(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 6068
    invoke-direct {p0, p1}, enforceWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 6069
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addNetworkSSID - ssid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6070
    invoke-direct {p0, p2}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6071
    if-nez p2, :cond_24

    .line 6084
    :goto_23
    return v2

    .line 6075
    :cond_24
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 6077
    .local v0, "adminUid":I
    invoke-direct {p0, v0}, getSSID(I)Ljava/util/Set;

    move-result-object v1

    .line 6078
    .local v1, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p2}, convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6080
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 6081
    invoke-direct {p0, v0, v1}, saveBlockedList(ILjava/util/Set;)Z

    move-result v2

    goto :goto_23

    .line 6083
    :cond_39
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "addNetworkSSID failed : already exist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method public addPackageToExternalStorageSBABlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 23
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4160
    sget-object v15, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addPackageToExternalStorageSBABlackList cxtInfo.mCallerUid, cxtInfo.mContainerId : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4161
    const-string v15, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v6

    .line 4163
    .local v6, "lCxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 4165
    .local v16, "token":J
    const/4 v8, 0x0

    .line 4166
    .local v8, "packageInstalled":Z
    const/4 v9, 0x0

    .line 4167
    .local v9, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_164

    .line 4168
    if-eqz p2, :cond_164

    :try_start_44
    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4b} :catch_173
    .catchall {:try_start_44 .. :try_end_4b} :catchall_183

    move-result v15

    if-nez v15, :cond_164

    .line 4170
    :try_start_4e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    .line 4171
    .local v10, "pm":Landroid/content/pm/IPackageManager;
    const/16 v15, 0x40

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v10, v0, v15, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_61} :catch_c9
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_61} :catch_da
    .catchall {:try_start_4e .. :try_end_61} :catchall_183

    move-result-object v9

    .line 4179
    :try_start_62
    sget-object v15, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package Info: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4180
    if-eqz v9, :cond_a3

    .line 4181
    sget-boolean v15, DEBUG:Z

    if-eqz v15, :cond_a2

    .line 4182
    sget-object v15, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package Info: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4183
    :cond_a2
    const/4 v8, 0x1

    .line 4188
    :cond_a3
    if-eqz v8, :cond_eb

    iget-object v15, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    :goto_a7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v6, v1, v15}, addPackageToExternalStorageSBABlackListInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[Landroid/content/pm/Signature;)Z

    move-result v11

    .line 4191
    .local v11, "ret":Z
    if-eqz v11, :cond_164

    .line 4192
    if-eqz v8, :cond_15e

    .line 4194
    iget-object v14, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 4196
    .local v14, "sigs":[Landroid/content/pm/Signature;
    invoke-direct/range {p0 .. p0}, getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v15

    if-nez v15, :cond_ed

    .line 4197
    sget-object v15, TAG:Ljava/lang/String;

    const-string v18, "addPackageToExternalStorageSBABlackList : SEAMS service cannot be null."

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_c4} :catch_173
    .catchall {:try_start_62 .. :try_end_c4} :catchall_183

    .line 4198
    const/4 v15, 0x0

    .line 4225
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4228
    .end local v10    # "pm":Landroid/content/pm/IPackageManager;
    .end local v11    # "ret":Z
    .end local v14    # "sigs":[Landroid/content/pm/Signature;
    :goto_c8
    return v15

    .line 4172
    :catch_c9
    move-exception v4

    .line 4173
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_ca
    sget-object v15, TAG:Ljava/lang/String;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d5} :catch_173
    .catchall {:try_start_ca .. :try_end_d5} :catchall_183

    .line 4174
    const/4 v15, 0x0

    .line 4225
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c8

    .line 4175
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_da
    move-exception v7

    .line 4176
    .local v7, "n":Ljava/lang/Exception;
    :try_start_db
    sget-object v15, TAG:Ljava/lang/String;

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e6} :catch_173
    .catchall {:try_start_db .. :try_end_e6} :catchall_183

    .line 4177
    const/4 v15, 0x0

    .line 4225
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c8

    .line 4188
    .end local v7    # "n":Ljava/lang/Exception;
    .restart local v10    # "pm":Landroid/content/pm/IPackageManager;
    :cond_eb
    const/4 v15, 0x0

    goto :goto_a7

    .line 4200
    .restart local v11    # "ret":Z
    .restart local v14    # "sigs":[Landroid/content/pm/Signature;
    :cond_ed
    if-eqz v14, :cond_f2

    :try_start_ef
    array-length v15, v14

    if-nez v15, :cond_100

    .line 4201
    :cond_f2
    sget-object v15, TAG:Ljava/lang/String;

    const-string v18, "addPackageToExternalStorageSBABlackList : package signature cannot be null."

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_fb} :catch_173
    .catchall {:try_start_ef .. :try_end_fb} :catchall_183

    .line 4202
    const/4 v15, 0x0

    .line 4225
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c8

    .line 4205
    :cond_100
    :try_start_100
    array-length v15, v14

    new-array v13, v15, [Ljava/lang/String;

    .line 4206
    .local v13, "sigStrins":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_104
    array-length v15, v14

    if-ge v5, v15, :cond_112

    .line 4207
    aget-object v15, v14, v5

    invoke-virtual {v15}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v5

    .line 4206
    add-int/lit8 v5, v5, 0x1

    goto :goto_104

    .line 4210
    :cond_112
    invoke-direct/range {p0 .. p0}, getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v13, v2}, Lcom/android/server/SEAMService;->addAppToSBABlacklist(ILjava/lang/String;[Ljava/lang/String;I)I

    move-result v12

    .line 4211
    .local v12, "retCode":I
    sget-object v15, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addPackageToExternalStorageSBABlackList : SEAMS service retCode - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4212
    if-eqz v12, :cond_155

    .line 4213
    sget-object v15, TAG:Ljava/lang/String;

    const-string v18, "addPackageToExternalStorageSBABlackList : SEAMS service processing error"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_14f} :catch_173
    .catchall {:try_start_100 .. :try_end_14f} :catchall_183

    .line 4214
    const/4 v15, 0x0

    .line 4225
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_c8

    .line 4216
    :cond_155
    :try_start_155
    move-object/from16 v0, p1

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, notifySdcardSBABlacklistUpdate(I)V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_15e} :catch_173
    .catchall {:try_start_155 .. :try_end_15e} :catchall_183

    .line 4218
    .end local v5    # "i":I
    .end local v12    # "retCode":I
    .end local v13    # "sigStrins":[Ljava/lang/String;
    .end local v14    # "sigs":[Landroid/content/pm/Signature;
    :cond_15e
    const/4 v15, 0x1

    .line 4225
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_c8

    .end local v10    # "pm":Landroid/content/pm/IPackageManager;
    .end local v11    # "ret":Z
    :cond_164
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4227
    :goto_167
    sget-object v15, TAG:Ljava/lang/String;

    const-string v18, "addPackageToExternalStorageSBABlackList policy failed"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4228
    const/4 v15, 0x0

    goto/16 :goto_c8

    .line 4222
    :catch_173
    move-exception v4

    .line 4223
    .local v4, "e":Ljava/lang/Exception;
    :try_start_174
    sget-object v15, TAG:Ljava/lang/String;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17f
    .catchall {:try_start_174 .. :try_end_17f} :catchall_183

    .line 4225
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_167

    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_183
    move-exception v15

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v15
.end method

.method public addPackageToExternalStorageWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[Landroid/content/pm/Signature;)Z
    .registers 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "signatures"    # [Landroid/content/pm/Signature;

    .prologue
    .line 3880
    sget-boolean v15, DEBUG:Z

    if-eqz v15, :cond_34

    .line 3881
    sget-object v15, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addPackageToExternalStorageWhiteList cxtInfo.mCallerUid, cxtInfo.mContainerId : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3882
    :cond_34
    const-string v15, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v6

    .line 3883
    .local v6, "lCxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 3885
    .local v16, "token":J
    const/4 v8, 0x0

    .line 3886
    .local v8, "packageInstalled":Z
    const/4 v9, 0x0

    .line 3887
    .local v9, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_1b1

    .line 3888
    :try_start_46
    sget-boolean v15, DEBUG:Z

    if-eqz v15, :cond_76

    .line 3889
    sget-object v15, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "aftr addPackageToExternalStorageWhiteList lCxtInfo.mCallerUid, lCxtInfo.mContainerId : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v6, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v6, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3890
    :cond_76
    if-eqz p2, :cond_1b1

    const-string v15, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_7f} :catch_1c0
    .catchall {:try_start_46 .. :try_end_7f} :catchall_1d0

    move-result v15

    if-nez v15, :cond_1b1

    .line 3892
    :try_start_82
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    .line 3893
    .local v10, "pm":Landroid/content/pm/IPackageManager;
    const/16 v15, 0x40

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v10, v0, v15, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_95} :catch_f4
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_95} :catch_105
    .catchall {:try_start_82 .. :try_end_95} :catchall_1d0

    move-result-object v9

    .line 3901
    :try_start_96
    sget-object v15, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package Info: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3902
    if-eqz v9, :cond_d3

    .line 3903
    sget-object v15, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package Info: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3904
    const/4 v8, 0x1

    .line 3907
    :cond_d3
    if-eqz p3, :cond_116

    move-object/from16 v0, p3

    array-length v15, v0

    if-lez v15, :cond_116

    .line 3908
    if-eqz v8, :cond_116

    iget-object v15, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v0, p3

    invoke-static {v15, v0}, compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v15

    if-nez v15, :cond_116

    .line 3909
    sget-object v15, TAG:Ljava/lang/String;

    const-string v18, "Package is installed, and signature doesn\'t match. So return falure"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_ef} :catch_1c0
    .catchall {:try_start_96 .. :try_end_ef} :catchall_1d0

    .line 3910
    const/4 v15, 0x0

    .line 3952
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3955
    .end local v10    # "pm":Landroid/content/pm/IPackageManager;
    :goto_f3
    return v15

    .line 3894
    :catch_f4
    move-exception v4

    .line 3895
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_f5
    sget-object v15, TAG:Ljava/lang/String;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_100} :catch_1c0
    .catchall {:try_start_f5 .. :try_end_100} :catchall_1d0

    .line 3896
    const/4 v15, 0x0

    .line 3952
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_f3

    .line 3897
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_105
    move-exception v7

    .line 3898
    .local v7, "n":Ljava/lang/Exception;
    :try_start_106
    sget-object v15, TAG:Ljava/lang/String;

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_111} :catch_1c0
    .catchall {:try_start_106 .. :try_end_111} :catchall_1d0

    .line 3899
    const/4 v15, 0x0

    .line 3952
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_f3

    .line 3915
    .end local v7    # "n":Ljava/lang/Exception;
    .restart local v10    # "pm":Landroid/content/pm/IPackageManager;
    :cond_116
    :try_start_116
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v6, v1, v2}, addPackageToExternalStorageWhiteListInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[Landroid/content/pm/Signature;)Z

    move-result v11

    .line 3918
    .local v11, "ret":Z
    if-eqz v11, :cond_1b1

    .line 3919
    if-eqz v8, :cond_1ab

    .line 3921
    iget-object v14, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 3923
    .local v14, "sigs":[Landroid/content/pm/Signature;
    invoke-direct/range {p0 .. p0}, getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v15

    if-nez v15, :cond_13a

    .line 3924
    sget-object v15, TAG:Ljava/lang/String;

    const-string v18, "addPackageToExternalStorageWhiteList : SEAMS service cannot be null."

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_135} :catch_1c0
    .catchall {:try_start_116 .. :try_end_135} :catchall_1d0

    .line 3925
    const/4 v15, 0x0

    .line 3952
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_f3

    .line 3927
    :cond_13a
    if-eqz v14, :cond_13f

    :try_start_13c
    array-length v15, v14

    if-nez v15, :cond_14d

    .line 3928
    :cond_13f
    sget-object v15, TAG:Ljava/lang/String;

    const-string v18, "addPackageToExternalStorageWhiteList : package signature cannot be null."

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_13c .. :try_end_148} :catch_1c0
    .catchall {:try_start_13c .. :try_end_148} :catchall_1d0

    .line 3929
    const/4 v15, 0x0

    .line 3952
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_f3

    .line 3932
    :cond_14d
    :try_start_14d
    array-length v15, v14

    new-array v13, v15, [Ljava/lang/String;

    .line 3933
    .local v13, "sigStrins":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_151
    array-length v15, v14

    if-ge v5, v15, :cond_15f

    .line 3934
    aget-object v15, v14, v5

    invoke-virtual {v15}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v5

    .line 3933
    add-int/lit8 v5, v5, 0x1

    goto :goto_151

    .line 3937
    :cond_15f
    invoke-direct/range {p0 .. p0}, getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v15

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v13, v2}, Lcom/android/server/SEAMService;->addAppToWhitelist(ILjava/lang/String;[Ljava/lang/String;I)I

    move-result v12

    .line 3938
    .local v12, "retCode":I
    sget-object v15, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addPackageToExternalStorageWhiteList : SEAMS service retCode - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3939
    if-eqz v12, :cond_1a2

    .line 3940
    sget-object v15, TAG:Ljava/lang/String;

    const-string v18, "addPackageToExternalStorageWhiteList : SEAMS service processing error"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_19c} :catch_1c0
    .catchall {:try_start_14d .. :try_end_19c} :catchall_1d0

    .line 3941
    const/4 v15, 0x0

    .line 3952
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_f3

    .line 3943
    :cond_1a2
    :try_start_1a2
    move-object/from16 v0, p1

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, notifySdcardWhitelistUpdate(I)V
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1ab} :catch_1c0
    .catchall {:try_start_1a2 .. :try_end_1ab} :catchall_1d0

    .line 3945
    .end local v5    # "i":I
    .end local v12    # "retCode":I
    .end local v13    # "sigStrins":[Ljava/lang/String;
    .end local v14    # "sigs":[Landroid/content/pm/Signature;
    :cond_1ab
    const/4 v15, 0x1

    .line 3952
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_f3

    .end local v10    # "pm":Landroid/content/pm/IPackageManager;
    .end local v11    # "ret":Z
    :cond_1b1
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3954
    :goto_1b4
    sget-object v15, TAG:Ljava/lang/String;

    const-string v18, "addPackageToExternalStorageWhiteList policy failed"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3955
    const/4 v15, 0x0

    goto/16 :goto_f3

    .line 3949
    :catch_1c0
    move-exception v4

    .line 3950
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1c1
    sget-object v15, TAG:Ljava/lang/String;

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cc
    .catchall {:try_start_1c1 .. :try_end_1cc} :catchall_1d0

    .line 3952
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1b4

    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_1d0
    move-exception v15

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v15
.end method

.method public cancelCreateContainer(Lcom/sec/knox/container/ContainerCreationParams;)Z
    .registers 8
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    .line 2100
    const-string v2, "cancelCreateContainer"

    invoke-static {v2}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2101
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelCreateContainer ->  :  adminParam: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    const/4 v1, 0x0

    .line 2103
    .local v1, "result":Z
    iget-object v3, p0, mParamsList:Ljava/util/List;

    monitor-enter v3

    .line 2104
    :try_start_21
    invoke-direct {p0, p1}, matchCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v0

    .line 2105
    .local v0, "match":Lcom/sec/knox/container/ContainerCreationParams;
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestState()I

    move-result v2

    if-nez v2, :cond_54

    .line 2106
    const/16 v2, -0x3f9

    invoke-virtual {p1}, Lcom/sec/knox/container/ContainerCreationParams;->getAdminUid()I

    move-result v4

    invoke-direct {p0, p1, v2, v4}, updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V

    .line 2107
    invoke-direct {p0, p1}, removeCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Z

    move-result v1

    .line 2108
    if-eqz v1, :cond_54

    .line 2109
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelCreateContainer ->  :  result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    :cond_54
    monitor-exit v3

    .line 2113
    return v1

    .line 2112
    .end local v0    # "match":Lcom/sec/knox/container/ContainerCreationParams;
    :catchall_56
    move-exception v2

    monitor-exit v3
    :try_end_58
    .catchall {:try_start_21 .. :try_end_58} :catchall_56

    throw v2
.end method

.method public changeContainerOwner(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 34
    .param p1, "contextInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 6273
    sget-object v2, TAG:Ljava/lang/String;

    const-string v7, "changeContainerOwner"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6274
    if-eqz p2, :cond_f

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 6275
    :cond_f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v7, "Package name cannot be null or empty"

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6278
    :cond_17
    const-string v2, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 6280
    const/16 v24, 0x0

    .line 6281
    .local v24, "retVal":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 6283
    .local v28, "token":J
    :try_start_26
    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 6284
    .local v8, "containerId":I
    invoke-direct/range {p0 .. p0}, getService()Landroid/os/PersonaManager;

    move-result-object v26

    .line 6285
    .local v26, "service":Landroid/os/PersonaManager;
    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_192

    .line 6286
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Container Id : "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v30, " exists "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6287
    invoke-direct/range {p0 .. p2}, getAdminId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I

    move-result v4

    .line 6288
    .local v4, "uid":I
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Admin Uid : "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6290
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, getAdminComponentName(II)Landroid/content/ComponentName;

    move-result-object v3

    .line 6292
    .local v3, "componentName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v6

    .line 6293
    .local v6, "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v3, :cond_192

    if-eqz v6, :cond_192

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isUserManaged()Z

    move-result v2

    if-nez v2, :cond_192

    .line 6294
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "User Managed : "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isUserManaged()Z

    move-result v30

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6295
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Transferred Active Component Name : "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6297
    move v9, v4

    .line 6298
    .local v9, "creatorUid":I
    move v5, v8

    .line 6299
    .local v5, "id":I
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v1, v4, v9}, Landroid/os/PersonaManager;->updatePersonaInfo(ILjava/lang/String;II)Z

    move-result v27

    .line 6301
    .local v27, "success":Z
    if-eqz v27, :cond_1b2

    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->updateMUMContainer(II)Z

    move-result v27

    .line 6303
    :goto_e0
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Updated MUM Container : "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_fc} :catch_255
    .catchall {:try_start_26 .. :try_end_fc} :catchall_27b

    .line 6304
    if-eqz v27, :cond_192

    .line 6306
    :try_start_fe
    new-instance v13, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v2, mContext:Landroid/content/Context;

    invoke-direct {v13, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 6308
    .local v13, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v14

    .line 6310
    .local v14, "edmService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v15

    .line 6312
    .local v15, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    sget-object v2, mContext:Landroid/content/Context;

    new-instance v7, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v7, v4, v5}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {v15, v2, v7}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v17

    .line 6315
    .local v17, "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5, v2}, Landroid/os/PersonaHandle;->getUid(II)I

    move-result v20

    .line 6316
    .local v20, "oldProxyID":I
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/app/enterprise/ApplicationPolicy;->getDisabledPackages(I)Ljava/util/List;

    move-result-object v11

    .line 6317
    .local v11, "disabledPkgListBeforeSwitch":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v14, v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->deactivateProxyAdminsForUser(I)V

    .line 6319
    sget-object v2, TAG:Ljava/lang/String;

    const-string v7, "Deactivating Proxy Admin  "

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6320
    invoke-virtual {v13, v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v18

    .line 6322
    .local v18, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    if-eqz v18, :cond_1b6

    .line 6323
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_13e
    :goto_13e
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 6324
    .local v22, "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual/range {v22 .. v22}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v25

    .line 6325
    .local v25, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v25, :cond_13e

    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_13e

    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_13e

    .line 6328
    sget-object v2, TAG:Ljava/lang/String;

    const-string v7, "Removes Proxy Admin  "

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6329
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v13, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->removeProxyAdmin(I)V
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_170} :catch_171
    .catchall {:try_start_fe .. :try_end_170} :catchall_27b

    goto :goto_13e

    .line 6358
    .end local v11    # "disabledPkgListBeforeSwitch":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v14    # "edmService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v15    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v18    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v20    # "oldProxyID":I
    .end local v22    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v25    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_171
    move-exception v12

    .line 6359
    .local v12, "e":Ljava/lang/Exception;
    :try_start_172
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Exception cannot change Ownership :"

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_192
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_192} :catch_255
    .catchall {:try_start_172 .. :try_end_192} :catchall_27b

    .line 6371
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "uid":I
    .end local v5    # "id":I
    .end local v6    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v9    # "creatorUid":I
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v27    # "success":Z
    :cond_192
    :goto_192
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6373
    .end local v8    # "containerId":I
    .end local v26    # "service":Landroid/os/PersonaManager;
    :goto_195
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "changeContainerOwnership status : "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6374
    return v24

    .line 6301
    .restart local v3    # "componentName":Landroid/content/ComponentName;
    .restart local v4    # "uid":I
    .restart local v5    # "id":I
    .restart local v6    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v8    # "containerId":I
    .restart local v9    # "creatorUid":I
    .restart local v26    # "service":Landroid/os/PersonaManager;
    .restart local v27    # "success":Z
    :cond_1b2
    const/16 v27, 0x0

    goto/16 :goto_e0

    .line 6333
    .restart local v11    # "disabledPkgListBeforeSwitch":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v14    # "edmService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v15    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v17    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .restart local v18    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .restart local v20    # "oldProxyID":I
    :cond_1b6
    :try_start_1b6
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, getResolveInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ResolveInfo;

    move-result-object v23

    .line 6335
    .local v23, "resolveInfo":Landroid/content/pm/ResolveInfo;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Resolve Info for component Name :  "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6337
    new-instance v21, Landroid/app/admin/ProxyDeviceAdminInfo;

    sget-object v2, mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v2}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    .line 6339
    .local v21, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-static {v5, v4}, Landroid/os/PersonaHandle;->getUid(II)I

    move-result v2

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v2, v3, v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->addProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V

    .line 6342
    const/4 v2, 0x0

    invoke-virtual {v13, v3, v2, v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->activateAdminForUser(Landroid/content/ComponentName;ZI)V

    .line 6343
    sget-object v2, TAG:Ljava/lang/String;

    const-string v7, "Activating Proxy Admin  "

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6344
    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, setupDefaultPolicies(Landroid/content/ComponentName;IILcom/sec/enterprise/knox/container/KnoxConfigurationType;Ljava/util/HashMap;)Z

    .line 6346
    sget-object v2, TAG:Ljava/lang/String;

    const-string v7, "Setup default policy called."

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6347
    invoke-static {v5, v4}, Landroid/os/PersonaHandle;->getUid(II)I

    move-result v19

    .line 6348
    .local v19, "newProxyID":I
    invoke-virtual/range {v17 .. v17}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/enterprise/ApplicationPolicy;->getDisabledPackages(I)Ljava/util/List;

    move-result-object v10

    .line 6349
    .local v10, "disabledListAfterNewAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v11, v10, v1}, restoreDisabledPackages(Ljava/util/List;Ljava/util/List;Lcom/sec/enterprise/knox/container/KnoxContainerManager;)V

    .line 6350
    invoke-virtual {v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v2

    if-eqz v2, :cond_24c

    .line 6351
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "typeObj.getAdminUid() : "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v30

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6352
    invoke-virtual {v6, v4}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->setAdminUid(I)V

    .line 6353
    invoke-direct/range {p0 .. p0}, updateConfigurationXml()V

    .line 6356
    :cond_24c
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, sendContainerAdminChangeIntent(I)V
    :try_end_251
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_251} :catch_171
    .catchall {:try_start_1b6 .. :try_end_251} :catchall_27b

    .line 6357
    const/16 v24, 0x1

    goto/16 :goto_192

    .line 6366
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "uid":I
    .end local v5    # "id":I
    .end local v6    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v8    # "containerId":I
    .end local v9    # "creatorUid":I
    .end local v10    # "disabledListAfterNewAdmin":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "disabledPkgListBeforeSwitch":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v14    # "edmService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v15    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v17    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v18    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v19    # "newProxyID":I
    .end local v20    # "oldProxyID":I
    .end local v21    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v23    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v26    # "service":Landroid/os/PersonaManager;
    .end local v27    # "success":Z
    :catch_255
    move-exception v12

    .line 6367
    .restart local v12    # "e":Ljava/lang/Exception;
    :try_start_256
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Failed at KnoxContainerManager API changeContainerOwnership "

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_276
    .catchall {:try_start_256 .. :try_end_276} :catchall_27b

    .line 6371
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_195

    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_27b
    move-exception v2

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public clearNetworkSSID(Landroid/app/enterprise/ContextInfo;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6146
    invoke-direct {p0, p1}, enforceWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 6147
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearNetworkSSID - admin UID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6149
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 6151
    .local v0, "adminUid":I
    new-array v1, v7, [Ljava/lang/String;

    const-string v3, "adminUid"

    aput-object v3, v1, v6

    .line 6152
    .local v1, "columns":[Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 6154
    .local v2, "values":[Ljava/lang/String;
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ContainerOnly_wifiAP"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public clearPackagesFromExternalStorageSBABlackList(Landroid/app/enterprise/ContextInfo;)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v5, 0x0

    .line 4303
    const-string v8, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v8}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    .line 4304
    .local v3, "lCxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 4306
    .local v6, "token":J
    if-eqz v3, :cond_99

    .line 4308
    :try_start_d
    invoke-direct {p0}, getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v8

    if-nez v8, :cond_1e

    .line 4309
    sget-object v8, TAG:Ljava/lang/String;

    const-string v9, "clearPackagesFromExternalStorageSBABlackList : SEAMS service cannot be null."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1a} :catch_9d
    .catchall {:try_start_d .. :try_end_1a} :catchall_ac

    .line 4332
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4335
    :goto_1d
    return v5

    .line 4312
    :cond_1e
    :try_start_1e
    invoke-direct {p0}, getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v8

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SEAMService;->clearSBABlacklist(II)I

    move-result v4

    .line 4313
    .local v4, "retCode":I
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clearPackagesFromExternalStorageSBABlackList : SEAMS service retCode - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4315
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4316
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v8, "adminUid"

    iget v9, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4317
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KnoxExternalStorageSBABlacklist"

    invoke-virtual {v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 4319
    .local v0, "cnt":I
    if-lez v0, :cond_99

    .line 4320
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clearPackagesFromExternalStorageSBABlackList for admin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "has got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " results"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4322
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KnoxExternalStorageSBABlacklist"

    invoke-virtual {v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v8

    if-lez v8, :cond_99

    .line 4324
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v8}, notifySdcardSBABlacklistUpdate(I)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_94} :catch_9d
    .catchall {:try_start_1e .. :try_end_94} :catchall_ac

    .line 4325
    const/4 v5, 0x1

    .line 4332
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    .end local v0    # "cnt":I
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v4    # "retCode":I
    :cond_99
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    .line 4329
    :catch_9d
    move-exception v2

    .line 4330
    .local v2, "e":Ljava/lang/Exception;
    :try_start_9e
    sget-object v8, TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_9e .. :try_end_a7} :catchall_ac

    .line 4332
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1d

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_ac
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public clearPackagesFromExternalStorageWhiteList(Landroid/app/enterprise/ContextInfo;)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v5, 0x0

    .line 4091
    const-string v8, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v8}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    .line 4092
    .local v3, "lCxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 4094
    .local v6, "token":J
    if-eqz v3, :cond_99

    .line 4096
    :try_start_d
    invoke-direct {p0}, getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v8

    if-nez v8, :cond_1e

    .line 4097
    sget-object v8, TAG:Ljava/lang/String;

    const-string v9, "clearPackagesFromExternalStorageWhiteList : SEAMS service cannot be null."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1a} :catch_9d
    .catchall {:try_start_d .. :try_end_1a} :catchall_ac

    .line 4120
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4122
    :goto_1d
    return v5

    .line 4100
    :cond_1e
    :try_start_1e
    invoke-direct {p0}, getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v8

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SEAMService;->clearWhitelist(II)I

    move-result v4

    .line 4101
    .local v4, "retCode":I
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clearPackagesFromExternalStorageWhiteList : SEAMS service retCode - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4103
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4104
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v8, "adminUid"

    iget v9, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4105
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KnoxExternalStorageWhitelist"

    invoke-virtual {v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 4107
    .local v0, "cnt":I
    if-lez v0, :cond_99

    .line 4108
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clearPackagesFromExternalStorageWhiteList for admin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "has got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " results"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4110
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KnoxExternalStorageWhitelist"

    invoke-virtual {v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v8

    if-lez v8, :cond_99

    .line 4112
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v8}, notifySdcardWhitelistUpdate(I)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_94} :catch_9d
    .catchall {:try_start_1e .. :try_end_94} :catchall_ac

    .line 4113
    const/4 v5, 0x1

    .line 4120
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    .end local v0    # "cnt":I
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v4    # "retCode":I
    :cond_99
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1d

    .line 4117
    :catch_9d
    move-exception v2

    .line 4118
    .local v2, "e":Ljava/lang/Exception;
    :try_start_9e
    sget-object v8, TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_9e .. :try_end_a7} :catchall_ac

    .line 4120
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1d

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_ac
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public createContainer(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/container/CreationParams;I)I
    .registers 34
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "params"    # Lcom/sec/enterprise/knox/container/CreationParams;
    .param p3, "flags"    # I

    .prologue
    .line 1892
    const/16 v9, -0x3f6

    .line 1893
    .local v9, "id":I
    if-nez p2, :cond_c

    .line 1894
    sget-object v26, TAG:Ljava/lang/String;

    const-string v27, "createContainer -> Bad arguments: params is NULL"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    .end local v9    # "id":I
    :goto_b
    return v9

    .line 1897
    .restart local v9    # "id":I
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/CreationParams;->getConfigurationName()Ljava/lang/String;

    move-result-object v19

    .line 1898
    .local v19, "type":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/CreationParams;->getAdminPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1899
    .local v4, "adminParam":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/enterprise/knox/container/CreationParams;->getPasswordResetToken()Ljava/lang/String;

    move-result-object v17

    .line 1900
    .local v17, "resetPwdKey":Ljava/lang/String;
    sget-object v26, TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "createContainer ->  :  cxtInfo:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", type-"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ",adminParam-"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ",flags-"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    invoke-static {}, isTIMAEnabled()Z

    move-result v26

    if-nez v26, :cond_65

    .line 1903
    const/16 v9, -0x3fa

    goto :goto_b

    .line 1905
    :cond_65
    invoke-static {}, getTIMAStatus()I

    move-result v18

    .line 1906
    .local v18, "tima_code":I
    if-eqz v18, :cond_73

    .line 1907
    if-lez v18, :cond_70

    .line 1909
    mul-int/lit8 v9, v18, -0x1

    goto :goto_b

    :cond_70
    move/from16 v9, v18

    .line 1911
    goto :goto_b

    .line 1915
    :cond_73
    invoke-direct/range {p0 .. p0}, isEnoughMemoryToCreateContainer()Z

    move-result v26

    if-nez v26, :cond_7c

    .line 1916
    const/16 v9, -0x3f3

    goto :goto_b

    .line 1919
    :cond_7c
    move-object/from16 v0, p0

    iget-object v0, v0, mParamsList:Ljava/util/List;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 1920
    if-eqz v4, :cond_ec

    :try_start_85
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_ec

    .line 1921
    sget-object v26, mContext:Landroid/content/Context;

    const-string v28, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    const-string v29, "Activate Container permission"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    :goto_9a
    if-eqz p1, :cond_a4

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v26, v0

    if-lez v26, :cond_ac

    :cond_a4
    if-eqz v19, :cond_ac

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_103

    .line 1929
    :cond_ac
    sget-object v28, TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Bad arguments: caller uid: "

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    if-nez p1, :cond_f8

    const/16 v26, 0x0

    :goto_c1
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v29, " type: "

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    monitor-exit v27

    goto/16 :goto_b

    .line 2079
    .end local v9    # "id":I
    :catchall_e9
    move-exception v26

    monitor-exit v27
    :try_end_eb
    .catchall {:try_start_85 .. :try_end_eb} :catchall_e9

    throw v26

    .line 1925
    .restart local v9    # "id":I
    :cond_ec
    :try_start_ec
    const-string v26, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    goto :goto_9a

    .line 1929
    :cond_f8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    goto :goto_c1

    .line 1933
    :cond_103
    const/16 v25, 0x0

    .line 1934
    .local v25, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1935
    .local v6, "creatorUid":I
    if-eqz p1, :cond_13b

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v26, v0

    if-lez v26, :cond_13b

    .line 1936
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v25, v0

    .line 1941
    :goto_119
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 1945
    .local v20, "token":J
    invoke-direct/range {p0 .. p0}, getService()Landroid/os/PersonaManager;

    move-result-object v26

    invoke-static/range {v25 .. v25}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v28

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v26

    if-eqz v26, :cond_13e

    .line 1946
    new-instance v26, Ljava/lang/SecurityException;

    const-string v28, "Admin inside container cannot create another container"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_13b
    .catchall {:try_start_ec .. :try_end_13b} :catchall_e9

    .line 1938
    .end local v20    # "token":J
    :cond_13b
    move/from16 v25, v6

    goto :goto_119

    .line 1951
    .restart local v20    # "token":J
    :cond_13e
    :try_start_13e
    sget-object v26, TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "createContainer ->  :  uid -"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    if-eqz v17, :cond_173

    .line 1956
    sget-object v26, TAG:Ljava/lang/String;

    const-string v28, "createContainer -> SDP feature not supported on this device."

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_16b} :catch_23f
    .catchall {:try_start_13e .. :try_end_16b} :catchall_264

    .line 1960
    const/16 v9, -0x400

    .line 1983
    .end local v9    # "id":I
    :try_start_16d
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v27
    :try_end_171
    .catchall {:try_start_16d .. :try_end_171} :catchall_e9

    goto/16 :goto_b

    .line 1966
    .restart local v9    # "id":I
    :cond_173
    :try_start_173
    invoke-direct/range {p0 .. p0}, getService()Landroid/os/PersonaManager;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z
    :try_end_17a
    .catch Ljava/lang/Exception; {:try_start_173 .. :try_end_17a} :catch_23f
    .catchall {:try_start_173 .. :try_end_17a} :catchall_264

    move-result v26

    if-eqz v26, :cond_185

    .line 1967
    const/16 v9, -0x3fc

    .line 1983
    .end local v9    # "id":I
    :try_start_17f
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v27
    :try_end_183
    .catchall {:try_start_17f .. :try_end_183} :catchall_e9

    goto/16 :goto_b

    .line 1970
    .restart local v9    # "id":I
    :cond_185
    :try_start_185
    invoke-direct/range {p0 .. p0}, getService()Landroid/os/PersonaManager;

    move-result-object v26

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v15

    .line 1971
    .local v15, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v15, :cond_1d4

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v26

    const/16 v28, 0x2

    move/from16 v0, v26

    move/from16 v1, v28

    if-lt v0, v1, :cond_1d4

    .line 1972
    sget-object v26, TAG:Ljava/lang/String;

    const-string v28, "Containers max limit reached, returning.."

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    sget-object v26, TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Personasize exclude dying : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cc
    .catch Ljava/lang/Exception; {:try_start_185 .. :try_end_1cc} :catch_23f
    .catchall {:try_start_185 .. :try_end_1cc} :catchall_264

    .line 1974
    const/16 v9, -0x3f4

    .line 1983
    .end local v9    # "id":I
    :try_start_1ce
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v27
    :try_end_1d2
    .catchall {:try_start_1ce .. :try_end_1d2} :catchall_e9

    goto/16 :goto_b

    .line 1975
    .restart local v9    # "id":I
    :cond_1d4
    :try_start_1d4
    move-object/from16 v0, p0

    iget-object v0, v0, mParamsList:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_1f6

    .line 1976
    invoke-direct/range {p0 .. p0}, dumpAsString()V

    .line 1977
    sget-object v26, TAG:Ljava/lang/String;

    const-string v28, "Creation already in progress, returning.."

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ee
    .catch Ljava/lang/Exception; {:try_start_1d4 .. :try_end_1ee} :catch_23f
    .catchall {:try_start_1d4 .. :try_end_1ee} :catchall_264

    .line 1978
    const/16 v9, -0x3f8

    .line 1983
    .end local v9    # "id":I
    :try_start_1f0
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v27

    goto/16 :goto_b

    .restart local v9    # "id":I
    :cond_1f6
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1986
    .end local v15    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :goto_1f9
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v24

    .line 1987
    .local v24, "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-nez v24, :cond_211

    .line 1988
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v24

    .line 1991
    :cond_211
    const/4 v13, 0x0

    .line 1992
    .local v13, "name":Ljava/lang/String;
    if-nez v24, :cond_269

    .line 1993
    sget-object v26, TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "TYPE with name "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " not found!!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    const/16 v9, -0x3ed

    monitor-exit v27
    :try_end_23d
    .catchall {:try_start_1f0 .. :try_end_23d} :catchall_e9

    goto/16 :goto_b

    .line 1980
    .end local v13    # "name":Ljava/lang/String;
    .end local v24    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catch_23f
    move-exception v7

    .line 1981
    .local v7, "e":Ljava/lang/Exception;
    :try_start_240
    sget-object v26, TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "getPersonas exception: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_260
    .catchall {:try_start_240 .. :try_end_260} :catchall_264

    .line 1983
    :try_start_260
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1f9

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_264
    move-exception v26

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v26

    .line 1996
    .restart local v13    # "name":Ljava/lang/String;
    .restart local v24    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_269
    sget-object v26, TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Type object firmware version:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    sget-object v26, TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Device firmware version:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-direct/range {p0 .. p0}, getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v26

    if-eqz v26, :cond_2cc

    invoke-direct/range {p0 .. p0}, getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_2cc

    invoke-direct/range {p0 .. p0}, getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getVersion()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_2cc

    .line 2000
    const/16 v9, -0x3fb

    monitor-exit v27

    goto/16 :goto_b

    .line 2002
    :cond_2cc
    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusLabel()Ljava/lang/String;

    move-result-object v13

    .line 2003
    if-eqz v13, :cond_2d8

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_307

    .line 2004
    :cond_2d8
    move-object/from16 v0, p0

    iget-object v0, v0, mTypeList:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2e2
    :goto_2e2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_307

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 2005
    .local v14, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v14}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v26

    if-nez v26, :cond_2e2

    .line 2006
    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isUserManaged()Z

    move-result v26

    invoke-virtual {v14}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isUserManaged()Z

    move-result v28

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_2e2

    .line 2007
    invoke-virtual {v14}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getCustomStatusLabel()Ljava/lang/String;

    move-result-object v13

    goto :goto_2e2

    .line 2014
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v14    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_307
    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    move/from16 v26, v0

    if-eqz v26, :cond_36a

    .line 2015
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_312
    .catchall {:try_start_260 .. :try_end_312} :catchall_e9

    move-result-wide v22

    .line 2017
    .local v22, "token1":J
    :try_start_313
    invoke-direct/range {p0 .. p0}, isKioskEnabledOnOwner()Z
    :try_end_316
    .catch Ljava/lang/Exception; {:try_start_313 .. :try_end_316} :catch_440
    .catchall {:try_start_313 .. :try_end_316} :catchall_466

    move-result v26

    if-eqz v26, :cond_321

    .line 2018
    const/16 v9, -0x3fe

    .line 2032
    .end local v9    # "id":I
    :try_start_31b
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v27
    :try_end_31f
    .catchall {:try_start_31b .. :try_end_31f} :catchall_e9

    goto/16 :goto_b

    .line 2020
    .restart local v9    # "id":I
    :cond_321
    :try_start_321
    invoke-direct/range {p0 .. p0}, getService()Landroid/os/PersonaManager;

    move-result-object v26

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v15

    .line 2021
    .restart local v15    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    sget-object v26, mContext:Landroid/content/Context;

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v28, "notification_panel_active_app_list_for_reset"

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 2022
    .local v10, "list":Ljava/lang/String;
    if-eqz v15, :cond_34b

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v26

    if-gtz v26, :cond_355

    :cond_34b
    const-string v26, "Wifi;Location;SilentMode;AutoRotate;Bluetooth;SmartStay;PowerSaving;AirplaneMode;"

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_352
    .catch Ljava/lang/Exception; {:try_start_321 .. :try_end_352} :catch_440
    .catchall {:try_start_321 .. :try_end_352} :catchall_466

    move-result v26

    if-eqz v26, :cond_35d

    .line 2023
    :cond_355
    const/16 v9, -0x3fd

    .line 2032
    .end local v9    # "id":I
    :try_start_357
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v27

    goto/16 :goto_b

    .line 2026
    .restart local v9    # "id":I
    :cond_35d
    if-eqz v4, :cond_367

    .line 2027
    const/16 v9, -0x3ff

    .line 2032
    .end local v9    # "id":I
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v27

    goto/16 :goto_b

    .restart local v9    # "id":I
    :cond_367
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2036
    .end local v10    # "list":Ljava/lang/String;
    .end local v15    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v22    # "token1":J
    :cond_36a
    :goto_36a
    move-object/from16 v0, p0

    iget-object v0, v0, mRIdGenerator:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$RequestIdGenerator;->getNextContainerRequestId()I

    move-result v16

    .line 2037
    .local v16, "requestId":I
    new-instance v5, Lcom/sec/knox/container/ContainerCreationParams;

    invoke-direct {v5}, Lcom/sec/knox/container/ContainerCreationParams;-><init>()V

    .line 2038
    .local v5, "creationParams":Lcom/sec/knox/container/ContainerCreationParams;
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/sec/knox/container/ContainerCreationParams;->setRequestId(I)V

    .line 2039
    invoke-virtual {v5, v13}, Lcom/sec/knox/container/ContainerCreationParams;->setName(Ljava/lang/String;)V

    .line 2040
    move/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/sec/knox/container/ContainerCreationParams;->setAdminUid(I)V

    .line 2041
    invoke-virtual {v5, v6}, Lcom/sec/knox/container/ContainerCreationParams;->setCreatorUid(I)V

    .line 2042
    invoke-virtual {v5, v4}, Lcom/sec/knox/container/ContainerCreationParams;->setAdminParam(Ljava/lang/String;)V

    .line 2043
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/sec/knox/container/ContainerCreationParams;->setFlags(I)V

    .line 2044
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/sec/knox/container/ContainerCreationParams;->setResetPasswordKey(Ljava/lang/String;)V

    .line 2045
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/sec/knox/container/ContainerCreationParams;->setConfigurationType(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)V

    .line 2047
    invoke-direct/range {p0 .. p0}, getMyKnoxAminUid()I

    move-result v12

    .line 2048
    .local v12, "myKnoxUid":I
    sget-object v26, TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "myKnoxUid -"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " and caller uid-"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    move/from16 v0, v25

    if-ne v0, v12, :cond_3d6

    .line 2050
    const-string v26, "MY_KNOX"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/sec/knox/container/ContainerCreationParams;->setFeatureType(Ljava/lang/String;)V
    :try_end_3d6
    .catchall {:try_start_357 .. :try_end_3d6} :catchall_e9

    .line 2054
    :cond_3d6
    :try_start_3d6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 2055
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, mProcessObserver:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$KnoxSetupWizardObserver;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2056
    sget-object v26, TAG:Ljava/lang/String;

    const-string v28, "Process kill observer registered."

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f6
    .catch Ljava/lang/NullPointerException; {:try_start_3d6 .. :try_end_3f6} :catch_46b
    .catch Landroid/os/RemoteException; {:try_start_3d6 .. :try_end_3f6} :catch_491
    .catchall {:try_start_3d6 .. :try_end_3f6} :catchall_4b7

    .line 2062
    :try_start_3f6
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2064
    :goto_3f9
    const/4 v11, 0x0

    .line 2066
    .local v11, "msg":Landroid/os/Message;
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x100

    move/from16 v26, v0

    const/16 v28, 0x100

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_4bc

    .line 2067
    sget-object v26, TAG:Ljava/lang/String;

    const-string v28, "Calling handler MSG_START_MIGRATION_WIZARD"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    move-object/from16 v0, p0

    iget-object v0, v0, mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    move-object/from16 v26, v0

    const/16 v28, 0x5

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 2075
    :goto_423
    iput-object v5, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2076
    move-object/from16 v0, p0

    iget-object v0, v0, mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2077
    move-object/from16 v0, p0

    iget-object v0, v0, mParamsList:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2078
    monitor-exit v27
    :try_end_43c
    .catchall {:try_start_3f6 .. :try_end_43c} :catchall_e9

    move/from16 v9, v16

    goto/16 :goto_b

    .line 2029
    .end local v5    # "creationParams":Lcom/sec/knox/container/ContainerCreationParams;
    .end local v11    # "msg":Landroid/os/Message;
    .end local v12    # "myKnoxUid":I
    .end local v16    # "requestId":I
    .restart local v22    # "token1":J
    :catch_440
    move-exception v7

    .line 2030
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_441
    sget-object v26, TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "getPersonas exception: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_461
    .catchall {:try_start_441 .. :try_end_461} :catchall_466

    .line 2032
    :try_start_461
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_36a

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_466
    move-exception v26

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v26
    :try_end_46b
    .catchall {:try_start_461 .. :try_end_46b} :catchall_e9

    .line 2057
    .end local v22    # "token1":J
    .restart local v5    # "creationParams":Lcom/sec/knox/container/ContainerCreationParams;
    .restart local v12    # "myKnoxUid":I
    .restart local v16    # "requestId":I
    :catch_46b
    move-exception v7

    .line 2058
    .local v7, "e":Ljava/lang/NullPointerException;
    :try_start_46c
    sget-object v26, TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "NullPointerException :("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48c
    .catchall {:try_start_46c .. :try_end_48c} :catchall_4b7

    .line 2062
    :try_start_48c
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_48f
    .catchall {:try_start_48c .. :try_end_48f} :catchall_e9

    goto/16 :goto_3f9

    .line 2059
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_491
    move-exception v7

    .line 2060
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_492
    sget-object v26, TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "RemoteException :("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b2
    .catchall {:try_start_492 .. :try_end_4b2} :catchall_4b7

    .line 2062
    :try_start_4b2
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3f9

    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_4b7
    move-exception v26

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v26

    .line 2072
    .restart local v11    # "msg":Landroid/os/Message;
    :cond_4bc
    sget-object v26, TAG:Ljava/lang/String;

    const-string v28, "Calling handler MSG_START_SETUP_WIZARD"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    move-object/from16 v0, p0

    iget-object v0, v0, mContainerHandler:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;

    move-object/from16 v26, v0

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ContainerHandler;->obtainMessage(I)Landroid/os/Message;
    :try_end_4d6
    .catchall {:try_start_4b2 .. :try_end_4d6} :catchall_e9

    move-result-object v11

    goto/16 :goto_423
.end method

.method public createContainerInternal(Lcom/sec/knox/container/ContainerCreationParams;)I
    .registers 64
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    .line 1386
    const-string v5, "createContainerInternal"

    invoke-static {v5}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1387
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "createContainerInternal --> requestId:"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-nez p1, :cond_32

    const/4 v5, 0x0

    :goto_17
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    const/16 v20, -0x3f6

    .line 1389
    .local v20, "id":I
    if-nez p1, :cond_3b

    .line 1390
    sget-object v5, TAG:Ljava/lang/String;

    const-string v7, "ContainerCreationParams is null"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v38, v20

    .line 1676
    .end local v20    # "id":I
    .local v38, "id":I
    :goto_31
    return v38

    .line 1387
    .end local v38    # "id":I
    :cond_32
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getRequestId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_17

    .line 1394
    .restart local v20    # "id":I
    :cond_3b
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getConfigurationType()Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v21

    .line 1395
    .local v21, "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1396
    .local v6, "containerName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getAdminParam()Ljava/lang/String;

    move-result-object v11

    .line 1397
    .local v11, "adminParam":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1398
    .local v10, "type":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getResetPasswordKey()Ljava/lang/String;

    move-result-object v13

    .line 1399
    .local v13, "resetPwdKey":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getFlags()I

    move-result v34

    .line 1400
    .local v34, "flags":I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getAdminUid()I

    move-result v58

    .line 1401
    .local v58, "uid":I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getPackagePoliciesMap()Ljava/util/HashMap;

    move-result-object v22

    .line 1402
    .local v22, "pkgPolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    invoke-virtual/range {v21 .. v21}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->isUserManaged()Z

    move-result v43

    .line 1404
    .local v43, "isUserManaged":Z
    const/16 v41, 0x0

    .line 1405
    .local v41, "isLightWeightContainer":Z
    const/16 v52, 0x0

    .line 1406
    .local v52, "requestFound":Z
    const/16 v40, 0x0

    .line 1407
    .local v40, "isKioskModeEnabled":Z
    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getLockType()I

    move-result v14

    .line 1409
    .local v14, "lockType":I
    move-object/from16 v0, v21

    instance-of v5, v0, Lcom/sec/enterprise/knox/container/ContainerModeConfigurationType;

    if-eqz v5, :cond_71

    .line 1410
    const/16 v40, 0x1

    .line 1412
    :cond_71
    move-object/from16 v0, v21

    instance-of v5, v0, Lcom/sec/enterprise/knox/container/LightweightConfigurationType;

    if-eqz v5, :cond_79

    .line 1413
    const/16 v41, 0x1

    .line 1416
    :cond_79
    move-object/from16 v0, p0

    iget-object v7, v0, mParamsList:Ljava/util/List;

    monitor-enter v7

    .line 1417
    :try_start_7e
    invoke-direct/range {p0 .. p1}, removeCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Z

    move-result v52

    .line 1418
    if-nez v52, :cond_93

    .line 1419
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v58

    invoke-direct {v0, v1, v2, v3}, updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V

    .line 1420
    monitor-exit v7

    move/from16 v38, v20

    .end local v20    # "id":I
    .restart local v38    # "id":I
    goto :goto_31

    .line 1422
    .end local v38    # "id":I
    .restart local v20    # "id":I
    :cond_93
    move-object/from16 v0, p0

    iget-object v5, v0, mParamsList:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1423
    monitor-exit v7
    :try_end_9d
    .catchall {:try_start_7e .. :try_end_9d} :catchall_146

    .line 1424
    move/from16 v28, v58

    .line 1426
    .local v28, "creatorUid":I
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "createContainerInternal: type: "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v17, "adminParam-"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v17, ",flags-"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v34

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v17, " uid: "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v58

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v56

    .line 1429
    .local v56, "token":J
    :try_start_e5
    new-instance v35, Ljava/io/File;

    const-string v5, "/system/container/KnoxSecureHandler/KnoxSecureHandler.apk"

    move-object/from16 v0, v35

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1430
    .local v35, "handlerApk":Ljava/io/File;
    new-instance v59, Ljava/io/File;

    const-string v5, "/system/container/ContainerAgent2/ContainerAgent2.apk"

    move-object/from16 v0, v59

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1431
    .local v59, "wizardApk":Ljava/io/File;
    invoke-static/range {v35 .. v35}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v36

    .line 1432
    .local v36, "handlerApkUri":Landroid/net/Uri;
    invoke-static/range {v59 .. v59}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    .line 1434
    .local v12, "wizardApkUri":Landroid/net/Uri;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10}, filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v21

    .line 1435
    if-nez v21, :cond_110

    .line 1436
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-direct {v0, v1, v10}, filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v21

    .line 1438
    :cond_110
    if-nez v21, :cond_149

    .line 1439
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "TYPE with name "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v17, " not found!!"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v58

    invoke-direct {v0, v1, v2, v3}, updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_13f} :catch_208
    .catchall {:try_start_e5 .. :try_end_13f} :catchall_262

    .line 1671
    invoke-static/range {v56 .. v57}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v38, v20

    .end local v20    # "id":I
    .restart local v38    # "id":I
    goto/16 :goto_31

    .line 1423
    .end local v12    # "wizardApkUri":Landroid/net/Uri;
    .end local v28    # "creatorUid":I
    .end local v35    # "handlerApk":Ljava/io/File;
    .end local v36    # "handlerApkUri":Landroid/net/Uri;
    .end local v38    # "id":I
    .end local v56    # "token":J
    .end local v59    # "wizardApk":Ljava/io/File;
    .restart local v20    # "id":I
    :catchall_146
    move-exception v5

    :try_start_147
    monitor-exit v7
    :try_end_148
    .catchall {:try_start_147 .. :try_end_148} :catchall_146

    throw v5

    .line 1444
    .restart local v12    # "wizardApkUri":Landroid/net/Uri;
    .restart local v28    # "creatorUid":I
    .restart local v35    # "handlerApk":Ljava/io/File;
    .restart local v36    # "handlerApkUri":Landroid/net/Uri;
    .restart local v56    # "token":J
    .restart local v59    # "wizardApk":Ljava/io/File;
    :cond_149
    const/16 v50, 0x0

    .line 1445
    .local v50, "proxyDeviceAdmin":Landroid/app/admin/ProxyDeviceAdminInfo;
    const/16 v18, 0x0

    .line 1446
    .local v18, "matchedAdmin":Landroid/content/ComponentName;
    const/16 v24, 0x0

    .line 1447
    .local v24, "adminActInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v16, 0x0

    .line 1448
    .local v16, "ri":Landroid/content/pm/ResolveInfo;
    :try_start_151
    sget-object v5, mContext:Landroid/content/Context;

    const-string v7, "device_policy"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/app/admin/DevicePolicyManager;

    .line 1450
    .local v30, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {v30 .. v30}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1451
    .local v4, "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Admin param :"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    sget-object v5, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v47

    .line 1454
    .local v47, "pm":Landroid/content/pm/PackageManager;
    if-nez v11, :cond_360

    if-eqz v4, :cond_360

    .line 1455
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_188} :catch_208
    .catchall {:try_start_151 .. :try_end_188} :catchall_262

    move-result-object v54

    .line 1459
    .local v54, "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_189
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v58

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v7, 0x0

    move-object/from16 v0, v54

    invoke-virtual {v0, v5, v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getAdminRemovable(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v42

    .line 1460
    .local v42, "isRemovable":Z
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v58

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v7, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v54

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v7, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Landroid/app/enterprise/ContextInfo;ZLjava/lang/String;)Z

    .line 1461
    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/ContainerCreationParams;->setAdminRemovable(Z)V
    :try_end_1af
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_1af} :catch_1e6
    .catchall {:try_start_189 .. :try_end_1af} :catchall_262

    .line 1465
    .end local v42    # "isRemovable":Z
    :goto_1af
    const/16 v49, 0x0

    .line 1467
    .local v49, "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :try_start_1b1
    invoke-static/range {v58 .. v58}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdmins(I)Ljava/util/List;
    :try_end_1ba
    .catch Ljava/lang/Exception; {:try_start_1b1 .. :try_end_1ba} :catch_23f
    .catchall {:try_start_1b1 .. :try_end_1ba} :catchall_262

    move-result-object v49

    .line 1471
    :goto_1bb
    if-eqz v49, :cond_269

    .line 1472
    :try_start_1bd
    invoke-interface/range {v49 .. v49}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .local v37, "i$":Ljava/util/Iterator;
    :cond_1c1
    :goto_1c1
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_269

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 1473
    .local v48, "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual/range {v48 .. v48}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, v58

    if-ne v5, v0, :cond_1c1

    .line 1474
    invoke-virtual/range {v48 .. v48}, Landroid/app/admin/ProxyDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    .line 1475
    invoke-virtual/range {v48 .. v48}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v16

    .line 1476
    move-object/from16 v50, v48

    goto :goto_1c1

    .line 1462
    .end local v37    # "i$":Ljava/util/Iterator;
    .end local v48    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v49    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    :catch_1e6
    move-exception v31

    .line 1463
    .local v31, "e":Ljava/lang/Exception;
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception :"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v31 .. v31}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_207
    .catch Ljava/lang/Exception; {:try_start_1bd .. :try_end_207} :catch_208
    .catchall {:try_start_1bd .. :try_end_207} :catchall_262

    goto :goto_1af

    .line 1668
    .end local v4    # "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v12    # "wizardApkUri":Landroid/net/Uri;
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v18    # "matchedAdmin":Landroid/content/ComponentName;
    .end local v24    # "adminActInfo":Landroid/content/pm/ApplicationInfo;
    .end local v30    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v31    # "e":Ljava/lang/Exception;
    .end local v35    # "handlerApk":Ljava/io/File;
    .end local v36    # "handlerApkUri":Landroid/net/Uri;
    .end local v47    # "pm":Landroid/content/pm/PackageManager;
    .end local v50    # "proxyDeviceAdmin":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v54    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v59    # "wizardApk":Ljava/io/File;
    :catch_208
    move-exception v31

    move/from16 v19, v58

    .line 1669
    .end local v58    # "uid":I
    .local v19, "uid":I
    .restart local v31    # "e":Ljava/lang/Exception;
    :goto_20b
    :try_start_20b
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception:"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v31 .. v31}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22b
    .catchall {:try_start_20b .. :try_end_22b} :catchall_729

    .line 1671
    invoke-static/range {v56 .. v57}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1673
    .end local v31    # "e":Ljava/lang/Exception;
    :goto_22e
    if-gtz v20, :cond_23b

    .line 1674
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V

    :cond_23b
    move/from16 v38, v20

    .line 1676
    .end local v20    # "id":I
    .restart local v38    # "id":I
    goto/16 :goto_31

    .line 1468
    .end local v19    # "uid":I
    .end local v38    # "id":I
    .restart local v4    # "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v12    # "wizardApkUri":Landroid/net/Uri;
    .restart local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v18    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v20    # "id":I
    .restart local v24    # "adminActInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v30    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v35    # "handlerApk":Ljava/io/File;
    .restart local v36    # "handlerApkUri":Landroid/net/Uri;
    .restart local v47    # "pm":Landroid/content/pm/PackageManager;
    .restart local v49    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .restart local v50    # "proxyDeviceAdmin":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v54    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v58    # "uid":I
    .restart local v59    # "wizardApk":Ljava/io/File;
    :catch_23f
    move-exception v31

    .line 1469
    .restart local v31    # "e":Ljava/lang/Exception;
    :try_start_240
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getting proxyadmin list failed:"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v31 .. v31}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_260
    .catch Ljava/lang/Exception; {:try_start_240 .. :try_end_260} :catch_208
    .catchall {:try_start_240 .. :try_end_260} :catchall_262

    goto/16 :goto_1bb

    .line 1671
    .end local v4    # "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v12    # "wizardApkUri":Landroid/net/Uri;
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v18    # "matchedAdmin":Landroid/content/ComponentName;
    .end local v24    # "adminActInfo":Landroid/content/pm/ApplicationInfo;
    .end local v30    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v31    # "e":Ljava/lang/Exception;
    .end local v35    # "handlerApk":Ljava/io/File;
    .end local v36    # "handlerApkUri":Landroid/net/Uri;
    .end local v47    # "pm":Landroid/content/pm/PackageManager;
    .end local v49    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v50    # "proxyDeviceAdmin":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v54    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v59    # "wizardApk":Ljava/io/File;
    :catchall_262
    move-exception v5

    move/from16 v19, v58

    .end local v58    # "uid":I
    .restart local v19    # "uid":I
    :goto_265
    invoke-static/range {v56 .. v57}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1481
    .end local v19    # "uid":I
    .restart local v4    # "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v12    # "wizardApkUri":Landroid/net/Uri;
    .restart local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v18    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v24    # "adminActInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v30    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v35    # "handlerApk":Ljava/io/File;
    .restart local v36    # "handlerApkUri":Landroid/net/Uri;
    .restart local v47    # "pm":Landroid/content/pm/PackageManager;
    .restart local v49    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .restart local v50    # "proxyDeviceAdmin":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v54    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v58    # "uid":I
    .restart local v59    # "wizardApk":Ljava/io/File;
    :cond_269
    if-nez v18, :cond_315

    .line 1482
    :try_start_26b
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .restart local v37    # "i$":Ljava/util/Iterator;
    :cond_26f
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_315

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/ComponentName;

    .line 1483
    .local v23, "admin":Landroid/content/ComponentName;
    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v46

    .line 1484
    .local v46, "pName":Ljava/lang/String;
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Current admin loop :"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v46

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29b
    .catch Ljava/lang/Exception; {:try_start_26b .. :try_end_29b} :catch_208
    .catchall {:try_start_26b .. :try_end_29b} :catchall_262

    .line 1486
    if-eqz v46, :cond_26f

    if-eqz v47, :cond_26f

    .line 1488
    const/4 v5, 0x0

    :try_start_2a0
    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2a7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a0 .. :try_end_2a7} :catch_341
    .catch Ljava/lang/Exception; {:try_start_2a0 .. :try_end_2a7} :catch_208
    .catchall {:try_start_2a0 .. :try_end_2a7} :catchall_262

    move-result-object v24

    .line 1492
    :goto_2a8
    if-eqz v24, :cond_26f

    :try_start_2aa
    move-object/from16 v0, v24

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, v58

    if-ne v5, v0, :cond_26f

    .line 1493
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Admin found :"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v46

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v17, "Uid: "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    move-object/from16 v18, v23

    .line 1495
    new-instance v53, Landroid/content/Intent;

    invoke-direct/range {v53 .. v53}, Landroid/content/Intent;-><init>()V

    .line 1496
    .local v53, "resolveIntent":Landroid/content/Intent;
    move-object/from16 v0, v53

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1497
    sget-object v5, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v7, 0x80

    invoke-static/range {v58 .. v58}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    move-object/from16 v0, v53

    move/from16 v1, v17

    invoke-virtual {v5, v0, v7, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v39

    .line 1499
    .local v39, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v39, :cond_315

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_315

    .line 1500
    const/4 v5, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 1508
    .end local v23    # "admin":Landroid/content/ComponentName;
    .end local v37    # "i$":Ljava/util/Iterator;
    .end local v39    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v46    # "pName":Ljava/lang/String;
    .end local v53    # "resolveIntent":Landroid/content/Intent;
    .restart local v16    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_315
    if-eqz v18, :cond_319

    if-nez v16, :cond_360

    .line 1509
    :cond_319
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, v58

    invoke-direct {v0, v1, v2, v3}, updateContainerCreationStatus(Lcom/sec/knox/container/ContainerCreationParams;II)V

    .line 1510
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown admin: "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v58

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1489
    .restart local v23    # "admin":Landroid/content/ComponentName;
    .restart local v37    # "i$":Ljava/util/Iterator;
    .restart local v46    # "pName":Ljava/lang/String;
    :catch_341
    move-exception v33

    .line 1490
    .local v33, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getting app info failed. package Name: "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v46

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a8

    .end local v23    # "admin":Landroid/content/ComponentName;
    .end local v33    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v37    # "i$":Ljava/util/Iterator;
    .end local v46    # "pName":Ljava/lang/String;
    .end local v49    # "proxyAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v54    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :cond_360
    move-object/from16 v45, v18

    .line 1514
    .end local v18    # "matchedAdmin":Landroid/content/ComponentName;
    .local v45, "matchedAdmin":Landroid/content/ComponentName;
    move/from16 v0, v34

    int-to-long v8, v0

    .line 1515
    .local v8, "personaflags":J
    const/16 v51, -0x1

    .line 1516
    .local v51, "removeid":I
    if-eqz v43, :cond_36d

    .line 1517
    const-wide/16 v60, 0x80

    or-long v8, v8, v60

    .line 1520
    :cond_36d
    if-eqz v40, :cond_38d

    .line 1521
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, getDefaultLauncher(I)Ljava/lang/String;

    move-result-object v29

    .line 1522
    .local v29, "defaultLauncher":Ljava/lang/String;
    if-eqz v29, :cond_389

    .line 1523
    sget-object v5, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "com_default_owner_launcher"

    const/16 v17, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-static {v5, v7, v0, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1525
    :cond_389
    const-wide/16 v60, 0x400

    or-long v8, v8, v60

    .line 1527
    .end local v29    # "defaultLauncher":Ljava/lang/String;
    :cond_38d
    if-eqz v41, :cond_393

    .line 1528
    const-wide/16 v60, 0x200

    or-long v8, v8, v60

    .line 1531
    :cond_393
    invoke-direct/range {p0 .. p0}, getService()Landroid/os/PersonaManager;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/knox/container/ContainerCreationParams;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v5 .. v14}, Landroid/os/PersonaManager;->createPersona(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;I)I
    :try_end_39e
    .catch Ljava/lang/Exception; {:try_start_2aa .. :try_end_39e} :catch_208
    .catchall {:try_start_2aa .. :try_end_39e} :catchall_262

    move-result v38

    .line 1533
    .end local v20    # "id":I
    .restart local v38    # "id":I
    if-lez v38, :cond_6be

    .line 1534
    :try_start_3a1
    invoke-virtual/range {v21 .. v21}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1, v5}, installDefaultApplications(ILjava/util/List;)V
    :try_end_3ac
    .catch Ljava/lang/Exception; {:try_start_3a1 .. :try_end_3ac} :catch_72c
    .catchall {:try_start_3a1 .. :try_end_3ac} :catchall_71d

    .line 1535
    if-nez v11, :cond_620

    .line 1537
    :try_start_3ae
    sget-object v5, TAG:Ljava/lang/String;

    const-string v7, "Enabling proxy admins."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    new-instance v32, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v5, mContext:Landroid/content/Context;

    move-object/from16 v0, v32

    invoke-direct {v0, v5}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 1539
    .local v32, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    const/4 v15, 0x0

    .line 1540
    .local v15, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    if-eqz v50, :cond_5ea

    .line 1541
    new-instance v15, Landroid/app/admin/ProxyDeviceAdminInfo;

    .end local v15    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Landroid/app/admin/ProxyDeviceAdminInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v17

    const/4 v5, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Landroid/app/admin/ProxyDeviceAdminInfo;->getDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v50 .. v50}, Landroid/app/admin/ProxyDeviceAdminInfo;->getIcon()[B

    move-result-object v19

    invoke-virtual/range {v50 .. v50}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v20

    invoke-direct/range {v15 .. v20}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;)V

    .line 1547
    .restart local v15    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    :goto_3dc
    move/from16 v0, v38

    move/from16 v1, v58

    invoke-static {v0, v1}, Landroid/os/PersonaHandle;->getUid(II)I

    move-result v5

    move-object/from16 v0, v32

    move-object/from16 v1, v45

    move/from16 v2, v58

    invoke-virtual {v0, v15, v5, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->addProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V

    .line 1548
    const/4 v5, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v45

    move/from16 v2, v38

    invoke-virtual {v0, v1, v5, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->activateAdminForUser(Landroid/content/ComponentName;ZI)V

    .line 1549
    sget-object v5, TAG:Ljava/lang/String;

    const-string v7, "Activating proxy admins done."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3fe
    .catch Ljava/lang/Exception; {:try_start_3ae .. :try_end_3fe} :catch_5f5
    .catchall {:try_start_3ae .. :try_end_3fe} :catchall_71d

    move-object/from16 v18, v45

    .end local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v18    # "matchedAdmin":Landroid/content/ComponentName;
    move/from16 v19, v58

    .end local v58    # "uid":I
    .restart local v19    # "uid":I
    move/from16 v20, v38

    .line 1570
    .end local v15    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v32    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v38    # "id":I
    .restart local v20    # "id":I
    :goto_404
    if-lez v20, :cond_459

    .line 1572
    if-eqz v18, :cond_68a

    .line 1573
    :try_start_408
    sget-object v5, TAG:Ljava/lang/String;

    const-string v7, "Admin container relationship added."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, addContainerOwnerRelationship(II)Z

    .line 1575
    sget-object v5, TAG:Ljava/lang/String;

    const-string v7, "Setup default policy called."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v17, p0

    .line 1576
    invoke-direct/range {v17 .. v22}, setupDefaultPolicies(Landroid/content/ComponentName;IILcom/sec/enterprise/knox/container/KnoxConfigurationType;Ljava/util/HashMap;)Z

    move-result v5

    if-nez v5, :cond_42b

    .line 1577
    move/from16 v51, v20

    .line 1578
    const/16 v20, -0x3f5

    .line 1580
    :cond_42b
    if-lez v20, :cond_459

    if-eqz v11, :cond_459

    if-eqz v18, :cond_459

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_459

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_459

    .line 1583
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v54

    .line 1585
    .restart local v54    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v54

    move/from16 v1, v28

    move/from16 v2, v20

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->restoreContainerAdminData(ILjava/lang/String;I)Z
    :try_end_452
    .catch Ljava/lang/Exception; {:try_start_408 .. :try_end_452} :catch_697
    .catchall {:try_start_408 .. :try_end_452} :catchall_729

    move-result v5

    if-nez v5, :cond_459

    .line 1587
    move/from16 v51, v20

    .line 1588
    const/16 v20, -0x3f5

    .line 1607
    .end local v54    # "service":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :cond_459
    :goto_459
    if-lez v20, :cond_70a

    .line 1610
    :try_start_45b
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v44

    .line 1611
    .local v44, "ltype":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v44, :cond_49d

    .line 1612
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "***************************Writing to type object : "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    sget-object v5, TAG:Ljava/lang/String;

    const-string v7, "***************************Writing to type object :"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    invoke-virtual/range {v44 .. v44}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->dumpState()V

    .line 1615
    move-object/from16 v0, v44

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->removePersonaId(I)V

    .line 1616
    invoke-direct/range {p0 .. p0}, updateConfigurationXml()V

    .line 1617
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v7, "removeContainerId from create. Hmm fishy: configuration list updated successfully."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    :cond_49d
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "***************************Writing to type object : "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    sget-object v5, TAG:Ljava/lang/String;

    const-string v7, "***************************Writing to type object :"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    if-eqz v11, :cond_6cd

    .line 1622
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "knox-byod-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v60

    move-wide/from16 v0, v60

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->clone(Ljava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v27

    .line 1623
    .local v27, "cloneType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->addPersonaId(I)V

    .line 1627
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v5, v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    const/16 v17, 0x0

    aput-object v27, v7, v17

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, addConfigurationType(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    .line 1628
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/ContainerCreationParams;->setConfigurationType(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)V

    .line 1629
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Byod case, cloning a new type"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    .end local v27    # "cloneType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :goto_530
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/sec/knox/container/ContainerCreationParams;->setRequestState(I)V

    .line 1638
    invoke-direct/range {p0 .. p0}, getService()Landroid/os/PersonaManager;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v5

    if-eqz v5, :cond_5e5

    .line 1639
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    new-instance v7, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v7, v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$PersonaSwitchObserver;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;I)V

    invoke-interface {v5, v7}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 1642
    invoke-direct/range {p0 .. p0}, getWallpaperManagerLocked()Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v5

    if-eqz v5, :cond_561

    .line 1643
    invoke-direct/range {p0 .. p0}, getWallpaperManagerLocked()Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initializeKnoxWallpaper(I)V

    .line 1647
    :cond_561
    if-nez v11, :cond_5e5

    .line 1648
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, getAdminComponentName(II)Landroid/content/ComponentName;

    move-result-object v25

    .line 1649
    .local v25, "adminCompName":Landroid/content/ComponentName;
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "adminCompName-"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v17, " id-"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v17, ", uid - "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    if-eqz v25, :cond_5e5

    .line 1651
    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v26

    .line 1652
    .local v26, "adminPkgName":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, getService()Landroid/os/PersonaManager;

    move-result-object v5

    move/from16 v0, v20

    move-object/from16 v1, v26

    move/from16 v2, v19

    move/from16 v3, v28

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/os/PersonaManager;->updatePersonaInfo(ILjava/lang/String;II)Z

    move-result v55

    .line 1653
    .local v55, "success":Z
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "adminPkgName-"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v17, " and updatePersonaInfo status -"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v55

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e5
    .catch Ljava/lang/Exception; {:try_start_45b .. :try_end_5e5} :catch_6e3
    .catchall {:try_start_45b .. :try_end_5e5} :catchall_729

    .line 1671
    .end local v25    # "adminCompName":Landroid/content/ComponentName;
    .end local v26    # "adminPkgName":Ljava/lang/String;
    .end local v44    # "ltype":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v55    # "success":Z
    :cond_5e5
    :goto_5e5
    invoke-static/range {v56 .. v57}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_22e

    .line 1545
    .end local v18    # "matchedAdmin":Landroid/content/ComponentName;
    .end local v19    # "uid":I
    .end local v20    # "id":I
    .restart local v15    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v32    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v38    # "id":I
    .restart local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v58    # "uid":I
    :cond_5ea
    :try_start_5ea
    new-instance v15, Landroid/app/admin/ProxyDeviceAdminInfo;

    .end local v15    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    sget-object v5, mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v5}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V
    :try_end_5f3
    .catch Ljava/lang/Exception; {:try_start_5ea .. :try_end_5f3} :catch_5f5
    .catchall {:try_start_5ea .. :try_end_5f3} :catchall_71d

    .restart local v15    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    goto/16 :goto_3dc

    .line 1550
    .end local v15    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v32    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :catch_5f5
    move-exception v31

    .line 1552
    .restart local v31    # "e":Ljava/lang/Exception;
    :try_start_5f6
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception cannot create or activate proxyadmins:"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v31 .. v31}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_616
    .catch Ljava/lang/Exception; {:try_start_5f6 .. :try_end_616} :catch_72c
    .catchall {:try_start_5f6 .. :try_end_616} :catchall_71d

    .line 1553
    move/from16 v51, v38

    .line 1554
    const/16 v20, -0x3f5

    .end local v38    # "id":I
    .restart local v20    # "id":I
    move-object/from16 v18, v45

    .end local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v18    # "matchedAdmin":Landroid/content/ComponentName;
    move/from16 v19, v58

    .line 1555
    .end local v58    # "uid":I
    .restart local v19    # "uid":I
    goto/16 :goto_404

    .line 1558
    .end local v18    # "matchedAdmin":Landroid/content/ComponentName;
    .end local v19    # "uid":I
    .end local v20    # "id":I
    .end local v31    # "e":Ljava/lang/Exception;
    .restart local v38    # "id":I
    .restart local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v58    # "uid":I
    :cond_620
    :try_start_620
    sget-object v5, TAG:Ljava/lang/String;

    const-string v7, "Admin is inside container. Need to find admin."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    invoke-direct/range {p0 .. p0}, getService()Landroid/os/PersonaManager;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Landroid/os/PersonaManager;->getAdminUidForPersona(I)I
    :try_end_630
    .catch Ljava/lang/Exception; {:try_start_620 .. :try_end_630} :catch_65f
    .catchall {:try_start_620 .. :try_end_630} :catchall_71d

    move-result v19

    .line 1561
    .end local v58    # "uid":I
    .restart local v19    # "uid":I
    :try_start_631
    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, findMatchingComponent(II)Landroid/content/ComponentName;
    :try_end_63a
    .catch Ljava/lang/Exception; {:try_start_631 .. :try_end_63a} :catch_738
    .catchall {:try_start_631 .. :try_end_63a} :catchall_724

    move-result-object v18

    .line 1562
    .end local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v18    # "matchedAdmin":Landroid/content/ComponentName;
    :try_start_63b
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Admin found in findMatchingComponent: "

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65b
    .catch Ljava/lang/Exception; {:try_start_63b .. :try_end_65b} :catch_73d
    .catchall {:try_start_63b .. :try_end_65b} :catchall_724

    move/from16 v20, v38

    .line 1568
    .end local v38    # "id":I
    .restart local v20    # "id":I
    goto/16 :goto_404

    .line 1563
    .end local v18    # "matchedAdmin":Landroid/content/ComponentName;
    .end local v19    # "uid":I
    .end local v20    # "id":I
    .restart local v38    # "id":I
    .restart local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v58    # "uid":I
    :catch_65f
    move-exception v31

    move-object/from16 v18, v45

    .end local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v18    # "matchedAdmin":Landroid/content/ComponentName;
    move/from16 v19, v58

    .line 1564
    .end local v58    # "uid":I
    .restart local v19    # "uid":I
    .restart local v31    # "e":Ljava/lang/Exception;
    :goto_664
    :try_start_664
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception while getting admin id or finding admin removeContainer:"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v31 .. v31}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_684
    .catch Ljava/lang/Exception; {:try_start_664 .. :try_end_684} :catch_733
    .catchall {:try_start_664 .. :try_end_684} :catchall_724

    .line 1566
    move/from16 v51, v38

    .line 1567
    const/16 v20, -0x3f5

    .end local v38    # "id":I
    .restart local v20    # "id":I
    goto/16 :goto_404

    .line 1592
    .end local v31    # "e":Ljava/lang/Exception;
    :cond_68a
    :try_start_68a
    sget-object v5, TAG:Ljava/lang/String;

    const-string v7, "matchedAdmin is null. removeContainer"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_691
    .catch Ljava/lang/Exception; {:try_start_68a .. :try_end_691} :catch_697
    .catchall {:try_start_68a .. :try_end_691} :catchall_729

    .line 1594
    move/from16 v51, v20

    .line 1595
    const/16 v20, -0x3f5

    goto/16 :goto_459

    .line 1597
    :catch_697
    move-exception v31

    .line 1599
    .restart local v31    # "e":Ljava/lang/Exception;
    :try_start_698
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Exception:"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v31 .. v31}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b8
    .catch Ljava/lang/Exception; {:try_start_698 .. :try_end_6b8} :catch_71a
    .catchall {:try_start_698 .. :try_end_6b8} :catchall_729

    .line 1600
    move/from16 v51, v20

    .line 1601
    const/16 v20, -0x3f5

    .line 1602
    goto/16 :goto_459

    .line 1605
    .end local v18    # "matchedAdmin":Landroid/content/ComponentName;
    .end local v19    # "uid":I
    .end local v20    # "id":I
    .end local v31    # "e":Ljava/lang/Exception;
    .restart local v38    # "id":I
    .restart local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v58    # "uid":I
    :cond_6be
    :try_start_6be
    sget-object v5, TAG:Ljava/lang/String;

    const-string v7, "Error creating persona."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c5
    .catch Ljava/lang/Exception; {:try_start_6be .. :try_end_6c5} :catch_72c
    .catchall {:try_start_6be .. :try_end_6c5} :catchall_71d

    move-object/from16 v18, v45

    .end local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v18    # "matchedAdmin":Landroid/content/ComponentName;
    move/from16 v19, v58

    .end local v58    # "uid":I
    .restart local v19    # "uid":I
    move/from16 v20, v38

    .end local v38    # "id":I
    .restart local v20    # "id":I
    goto/16 :goto_459

    .line 1631
    .restart local v44    # "ltype":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_6cd
    :try_start_6cd
    invoke-virtual/range {v21 .. v21}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->dumpState()V

    .line 1632
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->addPersonaId(I)V

    .line 1633
    invoke-direct/range {p0 .. p0}, updateConfigurationXml()V

    .line 1634
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/ContainerCreationParams;->setConfigurationType(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)V
    :try_end_6e1
    .catch Ljava/lang/Exception; {:try_start_6cd .. :try_end_6e1} :catch_6e3
    .catchall {:try_start_6cd .. :try_end_6e1} :catchall_729

    goto/16 :goto_530

    .line 1657
    .end local v44    # "ltype":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :catch_6e3
    move-exception v31

    .line 1658
    .restart local v31    # "e":Ljava/lang/Exception;
    :try_start_6e4
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error creating persona:"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v31 .. v31}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    move/from16 v51, v20

    .line 1660
    const/16 v20, -0x3f5

    .line 1661
    goto/16 :goto_5e5

    .line 1663
    .end local v31    # "e":Ljava/lang/Exception;
    :cond_70a
    const/16 v5, 0x64

    move/from16 v0, v51

    if-lt v0, v5, :cond_5e5

    .line 1664
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-direct {v0, v1, v5}, removeContainer(IZ)I
    :try_end_718
    .catch Ljava/lang/Exception; {:try_start_6e4 .. :try_end_718} :catch_71a
    .catchall {:try_start_6e4 .. :try_end_718} :catchall_729

    goto/16 :goto_5e5

    .line 1668
    :catch_71a
    move-exception v31

    goto/16 :goto_20b

    .line 1671
    .end local v18    # "matchedAdmin":Landroid/content/ComponentName;
    .end local v19    # "uid":I
    .end local v20    # "id":I
    .restart local v38    # "id":I
    .restart local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v58    # "uid":I
    :catchall_71d
    move-exception v5

    move/from16 v19, v58

    .end local v58    # "uid":I
    .restart local v19    # "uid":I
    move/from16 v20, v38

    .end local v38    # "id":I
    .restart local v20    # "id":I
    goto/16 :goto_265

    .end local v20    # "id":I
    .end local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v38    # "id":I
    :catchall_724
    move-exception v5

    move/from16 v20, v38

    .end local v38    # "id":I
    .restart local v20    # "id":I
    goto/16 :goto_265

    .end local v4    # "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v8    # "personaflags":J
    .end local v12    # "wizardApkUri":Landroid/net/Uri;
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v24    # "adminActInfo":Landroid/content/pm/ApplicationInfo;
    .end local v30    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v35    # "handlerApk":Ljava/io/File;
    .end local v36    # "handlerApkUri":Landroid/net/Uri;
    .end local v47    # "pm":Landroid/content/pm/PackageManager;
    .end local v50    # "proxyDeviceAdmin":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v51    # "removeid":I
    .end local v59    # "wizardApk":Ljava/io/File;
    :catchall_729
    move-exception v5

    goto/16 :goto_265

    .line 1668
    .end local v19    # "uid":I
    .end local v20    # "id":I
    .restart local v4    # "activeAdminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v8    # "personaflags":J
    .restart local v12    # "wizardApkUri":Landroid/net/Uri;
    .restart local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v24    # "adminActInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v30    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v35    # "handlerApk":Ljava/io/File;
    .restart local v36    # "handlerApkUri":Landroid/net/Uri;
    .restart local v38    # "id":I
    .restart local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v47    # "pm":Landroid/content/pm/PackageManager;
    .restart local v50    # "proxyDeviceAdmin":Landroid/app/admin/ProxyDeviceAdminInfo;
    .restart local v51    # "removeid":I
    .restart local v58    # "uid":I
    .restart local v59    # "wizardApk":Ljava/io/File;
    :catch_72c
    move-exception v31

    move/from16 v19, v58

    .end local v58    # "uid":I
    .restart local v19    # "uid":I
    move/from16 v20, v38

    .end local v38    # "id":I
    .restart local v20    # "id":I
    goto/16 :goto_20b

    .end local v20    # "id":I
    .end local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v18    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v31    # "e":Ljava/lang/Exception;
    .restart local v38    # "id":I
    :catch_733
    move-exception v31

    move/from16 v20, v38

    .end local v38    # "id":I
    .restart local v20    # "id":I
    goto/16 :goto_20b

    .line 1563
    .end local v18    # "matchedAdmin":Landroid/content/ComponentName;
    .end local v20    # "id":I
    .end local v31    # "e":Ljava/lang/Exception;
    .restart local v38    # "id":I
    .restart local v45    # "matchedAdmin":Landroid/content/ComponentName;
    :catch_738
    move-exception v31

    move-object/from16 v18, v45

    .end local v45    # "matchedAdmin":Landroid/content/ComponentName;
    .restart local v18    # "matchedAdmin":Landroid/content/ComponentName;
    goto/16 :goto_664

    :catch_73d
    move-exception v31

    goto/16 :goto_664
.end method

.method public createContainerMarkSuccess(Lcom/sec/knox/container/ContainerCreationParams;)Z
    .registers 6
    .param p1, "params"    # Lcom/sec/knox/container/ContainerCreationParams;

    .prologue
    .line 2084
    const-string v1, "createContainerMarkSuccess"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2085
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createContainerMarkSuccess ->  : param: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    iget-object v2, p0, mParamsList:Ljava/util/List;

    monitor-enter v2

    .line 2088
    :try_start_20
    invoke-direct {p0, p1}, matchCreationParams(Lcom/sec/knox/container/ContainerCreationParams;)Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v0

    .line 2089
    .local v0, "match":Lcom/sec/knox/container/ContainerCreationParams;
    if-eqz v0, :cond_2d

    .line 2091
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/ContainerCreationParams;->setRequestState(I)V

    .line 2092
    const/4 v1, 0x1

    monitor-exit v2

    .line 2095
    :goto_2c
    return v1

    .line 2094
    :cond_2d
    monitor-exit v2

    .line 2095
    const/4 v1, 0x0

    goto :goto_2c

    .line 2094
    .end local v0    # "match":Lcom/sec/knox/container/ContainerCreationParams;
    :catchall_30
    move-exception v1

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_20 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public createContainerWithCallback(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/container/CreationParams;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)I
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "params"    # Lcom/sec/enterprise/knox/container/CreationParams;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .prologue
    .line 1886
    sput-object p4, mSetupCallback:Lcom/sec/enterprise/knox/IEnterpriseContainerCallback;

    .line 1887
    invoke-virtual {p0, p1, p2, p3}, createContainer(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/container/CreationParams;I)I

    move-result v0

    return v0
.end method

.method public doSelfUninstall()V
    .registers 9

    .prologue
    .line 3760
    sget-object v3, mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    const-string v7, "Activate Container permission"

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3764
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3765
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3768
    .local v4, "token":J
    :try_start_11
    sget-object v3, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 3771
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v3, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 3773
    sget-object v3, mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v3

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->deletePackageAsUser(Ljava/lang/String;II)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2e} :catch_32

    .line 3779
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_2e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3780
    return-void

    .line 3775
    :catch_32
    move-exception v1

    .line 3776
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail doSelfUninstall "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 6549
    sget-object v6, mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_10

    .line 6550
    const-string v6, "Permission Denial: can\'t dump KnoxContainerManager"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6564
    :cond_f
    :goto_f
    return-void

    .line 6554
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 6555
    .local v2, "now":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 6556
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, mPersona:Landroid/os/PersonaManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v4

    .line 6557
    .local v4, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-nez v4, :cond_2b

    .line 6558
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "persona list is null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 6561
    :cond_2b
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PersonaInfo;

    .line 6562
    .local v1, "persona":Landroid/content/pm/PersonaInfo;
    iget v6, v1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {p0, v6, p2}, dumpConfigurationForPersona(ILjava/io/PrintWriter;)V

    goto :goto_2f
.end method

.method public enableExternalStorage(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "value"    # Z

    .prologue
    .line 3784
    const-string v3, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v3}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v1

    .line 3785
    .local v1, "lCxtInfo":Landroid/app/enterprise/ContextInfo;
    if-eqz v1, :cond_28

    .line 3786
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 3788
    .local v2, "personaId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3790
    .local v4, "token":J
    :try_start_e
    iget-object v3, p0, mPersona:Landroid/os/PersonaManager;

    const-string/jumbo v6, "sdcard"

    invoke-virtual {v3, v6, v2, p2}, Landroid/os/PersonaManager;->setAccessPermission(Ljava/lang/String;IZ)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_1b
    .catchall {:try_start_e .. :try_end_16} :catchall_23

    .line 3794
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3796
    :goto_19
    const/4 v3, 0x1

    .line 3798
    .end local v2    # "personaId":I
    .end local v4    # "token":J
    :goto_1a
    return v3

    .line 3791
    .restart local v2    # "personaId":I
    .restart local v4    # "token":J
    :catch_1b
    move-exception v0

    .line 3792
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_23

    .line 3794
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_19

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_23
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 3798
    .end local v2    # "personaId":I
    .end local v4    # "token":J
    :cond_28
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method public enforceMultifactorAuthentication(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "value"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3683
    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v4}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 3684
    if-eqz p1, :cond_af

    .line 3685
    const/4 v2, 0x0

    .line 3686
    .local v2, "result":Z
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3687
    .local v3, "where":Landroid/content/ContentValues;
    const-string v4, "cid"

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3688
    const-string v4, "adminUid"

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3689
    const-string/jumbo v4, "propertyName"

    const-string v7, "MultifactorAuthentication"

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3690
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enforceMultifactorAuthentication: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " MultifactorAuthentication"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3692
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CONTAINER_POLICY"

    invoke-virtual {v4, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 3693
    .local v0, "count":I
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enforceMultifactorAuthentication: already row present ? "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-lez v0, :cond_b0

    move v4, v5

    :goto_71
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3694
    if-lez v0, :cond_b2

    .line 3696
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3697
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3698
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CONTAINER_POLICY"

    invoke-virtual {v4, v7, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 3705
    .end local v1    # "cv":Landroid/content/ContentValues;
    :goto_95
    if-nez v2, :cond_c5

    .line 3706
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enforceMultifactorAuthentication failed : result = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3713
    .end local v0    # "count":I
    .end local v2    # "result":Z
    .end local v3    # "where":Landroid/content/ContentValues;
    :cond_af
    :goto_af
    return v6

    .restart local v0    # "count":I
    .restart local v2    # "result":Z
    .restart local v3    # "where":Landroid/content/ContentValues;
    :cond_b0
    move v4, v6

    .line 3693
    goto :goto_71

    .line 3701
    :cond_b2
    const-string/jumbo v4, "propertyValue"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3702
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CONTAINER_POLICY"

    invoke-virtual {v4, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    goto :goto_95

    :cond_c5
    move v6, v5

    .line 3709
    goto :goto_af
.end method

.method public forceResetPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)I
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "resetPwdKey"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .prologue
    .line 3023
    if-nez p1, :cond_4

    .line 3024
    const/4 v5, -0x2

    .line 3088
    :goto_3
    return v5

    .line 3026
    :cond_4
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "forceResetPassword: containerId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    const-string v5, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v5}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 3029
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3031
    .local v6, "token":J
    :try_start_27
    invoke-direct {p0}, getService()Landroid/os/PersonaManager;

    move-result-object v5

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v8}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_13b

    move-result-object v2

    .line 3032
    .local v2, "pinfo":Landroid/content/pm/PersonaInfo;
    if-nez v2, :cond_38

    .line 3033
    const/4 v5, -0x2

    .line 3086
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 3035
    :cond_38
    :try_start_38
    iget-boolean v5, v2, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v5, :cond_6c

    iget-boolean v5, v2, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-nez v5, :cond_6c

    .line 3036
    if-eqz p2, :cond_48

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_54

    .line 3037
    :cond_48
    sget-object v5, TAG:Ljava/lang/String;

    const-string v8, "forceResetPassword: resetPwdKey is null or empty string"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_38 .. :try_end_4f} :catchall_13b

    .line 3038
    const/4 v5, -0x1

    .line 3086
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 3040
    :cond_54
    :try_start_54
    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v5

    iget v8, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v8, p2}, Lcom/sec/knox/container/util/KeyManagementUtil;->verifyKEKMdm(ILjava/lang/String;)[B

    move-result-object v3

    .line 3041
    .local v3, "plainDEK":[B
    if-nez v3, :cond_6c

    .line 3042
    sget-object v5, TAG:Ljava/lang/String;

    const-string v8, "forceResetPassword: plainDEK is null"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_54 .. :try_end_67} :catchall_13b

    .line 3043
    const/4 v5, -0x1

    .line 3086
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 3047
    .end local v3    # "plainDEK":[B
    :cond_6c
    :try_start_6c
    invoke-direct {p0}, getService()Landroid/os/PersonaManager;

    move-result-object v5

    iget v8, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v8}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v5

    sget-object v8, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {v5, v8}, Landroid/os/PersonaManager$StateManager;->isAttribute(Landroid/content/pm/PersonaAttribute;)Z

    move-result v5

    if-eqz v5, :cond_9d

    invoke-direct {p0}, getService()Landroid/os/PersonaManager;

    move-result-object v5

    iget v8, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v8}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v5

    sget-object v8, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {v5, v8}, Landroid/os/PersonaManager$StateManager;->isAttribute(Landroid/content/pm/PersonaAttribute;)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 3049
    sget-object v5, TAG:Ljava/lang/String;

    const-string v8, "forceResetPassword: already in PWD_CHANGE_ENFORCED returning!!!!!"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_6c .. :try_end_97} :catchall_13b

    .line 3050
    const/4 v5, -0x2

    .line 3086
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .line 3053
    :cond_9d
    :try_start_9d
    const-string/jumbo v5, "persona"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PersonaManagerService;

    .line 3055
    .local v1, "personaservice":Lcom/android/server/pm/PersonaManagerService;
    invoke-direct {p0}, getService()Landroid/os/PersonaManager;

    move-result-object v5

    iget v8, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v8}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v5

    sget-object v8, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {v5, v8}, Landroid/os/PersonaManager$StateManager;->isAttribute(Landroid/content/pm/PersonaAttribute;)Z

    move-result v5

    if-nez v5, :cond_c5

    iget-boolean v5, v2, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v5, :cond_f7

    iget-boolean v5, v2, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-eqz v5, :cond_f7

    iget-boolean v5, v2, Landroid/content/pm/PersonaInfo;->resetPassword:Z

    const/4 v8, 0x1

    if-ne v5, v8, :cond_f7

    .line 3057
    :cond_c5
    const-string/jumbo v5, "password_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 3059
    .local v4, "pwdPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    if-eqz v4, :cond_f1

    .line 3060
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result v0

    .line 3061
    .local v0, "enforcePwdStatus":I
    if-lez v0, :cond_f1

    .line 3062
    const/4 v5, 0x0

    const/4 v8, 0x0

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v5, v8, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequestedForUser(III)Z

    .line 3064
    sget-object v5, TAG:Ljava/lang/String;

    const-string v8, "forceResetPassword: cleared enforcepwdchange state."

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    iget v5, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v1, v5, p2, p3}, Lcom/android/server/pm/PersonaManagerService;->resetPersonaPassword(ILjava/lang/String;I)V
    :try_end_eb
    .catchall {:try_start_9d .. :try_end_eb} :catchall_13b

    .line 3067
    const/4 v5, 0x0

    .line 3086
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .line 3070
    .end local v0    # "enforcePwdStatus":I
    :cond_f1
    const/4 v5, -0x2

    .line 3086
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .line 3071
    .end local v4    # "pwdPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    :cond_f7
    :try_start_f7
    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    iget v8, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v1, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v5

    if-eqz v5, :cond_117

    .line 3072
    iget-boolean v5, v2, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z
    :try_end_103
    .catchall {:try_start_f7 .. :try_end_103} :catchall_13b

    if-eqz v5, :cond_10b

    .line 3073
    const/4 v5, -0x2

    .line 3086
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .line 3075
    :cond_10b
    :try_start_10b
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v8, 0x1

    invoke-virtual {v1, v5, v8}, Lcom/android/server/pm/PersonaManagerService;->setResetPasswordState(IZ)V
    :try_end_111
    .catchall {:try_start_10b .. :try_end_111} :catchall_13b

    .line 3076
    const/4 v5, 0x0

    .line 3086
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .line 3080
    :cond_117
    :try_start_117
    invoke-direct {p0}, getService()Landroid/os/PersonaManager;

    move-result-object v5

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v8}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v5

    sget-object v8, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/os/PersonaManager$StateManager;->setAttribute(Landroid/content/pm/PersonaAttribute;Z)Z

    move-result v5

    if-eqz v5, :cond_135

    .line 3081
    iget v5, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v1, v5, p2, p3}, Lcom/android/server/pm/PersonaManagerService;->resetPersonaPassword(ILjava/lang/String;I)V
    :try_end_12f
    .catchall {:try_start_117 .. :try_end_12f} :catchall_13b

    .line 3082
    const/4 v5, 0x0

    .line 3086
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    :cond_135
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3088
    const/4 v5, -0x2

    goto/16 :goto_3

    .line 3086
    .end local v1    # "personaservice":Lcom/android/server/pm/PersonaManagerService;
    .end local v2    # "pinfo":Landroid/content/pm/PersonaInfo;
    :catchall_13b
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public getConfigurationType(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3417
    const/4 v2, 0x0

    .line 3418
    .local v2, "uid":I
    if-eqz p1, :cond_2e

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-lez v5, :cond_2e

    .line 3419
    const-string v5, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v5}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 3420
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 3426
    :goto_f
    :try_start_f
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 3427
    .local v3, "userHandle":I
    invoke-direct {p0}, getService()Landroid/os/PersonaManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 3428
    if-ne p2, v3, :cond_33

    .line 3429
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    const/4 v6, 0x0

    invoke-direct {p0, p2}, filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2c} :catch_42

    move-result-object v4

    .line 3446
    .end local v3    # "userHandle":I
    :cond_2d
    :goto_2d
    return-object v4

    .line 3422
    :cond_2e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    goto :goto_f

    .line 3431
    .restart local v3    # "userHandle":I
    :cond_33
    :try_start_33
    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "Caller inside persona ? : false throw exception"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "No priviledge on containerId "

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_42} :catch_42

    .line 3444
    .end local v3    # "userHandle":I
    :catch_42
    move-exception v1

    .line 3445
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 3435
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "userHandle":I
    :cond_60
    :try_start_60
    invoke-direct {p0, p2}, filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v0

    .line 3436
    .local v0, "cType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    const/16 v5, 0x3e8

    if-eq v2, v5, :cond_76

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v5

    if-eq v5, v2, :cond_76

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v5

    if-nez v5, :cond_2d

    .line 3439
    :cond_76
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_7f} :catch_42

    move-result-object v4

    goto :goto_2d
.end method

.method public getConfigurationTypeByName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3093
    const/4 v0, 0x0

    .line 3094
    .local v0, "callingUid":I
    if-eqz p1, :cond_1d

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-lez v2, :cond_1d

    .line 3095
    const-string v2, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 3096
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 3100
    :goto_f
    invoke-direct {p0, v3, p2}, filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v1

    .line 3101
    .local v1, "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-nez v1, :cond_19

    .line 3102
    invoke-direct {p0, v0, p2}, filterType(ILjava/lang/String;)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v1

    .line 3104
    :cond_19
    if-nez v1, :cond_22

    .line 3105
    const/4 v2, 0x0

    .line 3107
    :goto_1c
    return-object v2

    .line 3098
    .end local v1    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    goto :goto_f

    .line 3107
    .restart local v1    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_22
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_1c
.end method

.method public getConfigurationTypes(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3480
    const/4 v3, 0x0

    .line 3481
    .local v3, "uid":I
    if-eqz p1, :cond_7a

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-lez v4, :cond_7a

    .line 3482
    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v4}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 3483
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 3487
    :goto_e
    const/4 v1, 0x0

    .line 3488
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KnoxConfigurationType: input uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3489
    iget-object v4, p0, mTypeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2d
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 3490
    .local v2, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v4

    if-eq v4, v3, :cond_45

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v4

    if-nez v4, :cond_2d

    .line 3491
    :cond_45
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KnoxConfigurationType: name, uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    if-nez v1, :cond_76

    .line 3493
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3495
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :cond_76
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 3485
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    .end local v2    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_7a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    goto :goto_e

    .line 3498
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :cond_7f
    return-object v1
.end method

.method public getContainerCreationParams(I)Lcom/sec/knox/container/ContainerCreationParams;
    .registers 4
    .param p1, "containerId"    # I

    .prologue
    .line 3470
    const-string v1, "getContainerCreationParams"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3471
    invoke-direct {p0, p1}, getCreationParams(I)Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v0

    .line 3472
    .local v0, "params":Lcom/sec/knox/container/ContainerCreationParams;
    if-eqz v0, :cond_10

    .line 3473
    invoke-virtual {v0}, Lcom/sec/knox/container/ContainerCreationParams;->clone()Lcom/sec/knox/container/ContainerCreationParams;

    move-result-object v1

    .line 3475
    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public getContainers(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2904
    const/4 v0, 0x0

    .line 2905
    .local v0, "callingUid":I
    if-eqz p1, :cond_13

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-lez v1, :cond_13

    .line 2906
    const-string v1, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 2907
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2911
    :goto_e
    invoke-direct {p0, v0}, getContainers(I)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 2909
    :cond_13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    goto :goto_e
.end method

.method public getDefaultConfigurationTypes()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/container/KnoxConfigurationType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3453
    const-string v3, "getDefaultConfigurationTypes"

    invoke-static {v3}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3454
    const/4 v1, 0x0

    .line 3455
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    iget-object v3, p0, mTypeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 3456
    .local v2, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v3

    if-nez v3, :cond_c

    .line 3457
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KnoxConfigurationType: name, uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAdminUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    if-nez v1, :cond_4f

    .line 3459
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3461
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/container/KnoxConfigurationType;>;"
    :cond_4f
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 3464
    .end local v2    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_53
    return-object v1
.end method

.method public getEnforceAuthForContainer(Landroid/app/enterprise/ContextInfo;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3503
    if-eqz p1, :cond_5f

    .line 3504
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v5, "propertyValue"

    aput-object v5, v0, v7

    .line 3507
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3508
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "cid"

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3509
    const-string/jumbo v5, "propertyName"

    const-string v8, "EnforceAuthForContainer"

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3510
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .line 3511
    .local v2, "ownerUid":I
    const-string v5, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3512
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CONTAINER_POLICY"

    invoke-virtual {v5, v8, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 3514
    .local v3, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_5d

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5d

    .line 3516
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string/jumbo v8, "propertyValue"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3517
    .local v4, "ret":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    move v5, v6

    .line 3529
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "ret":Ljava/lang/String;
    :goto_5a
    return v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "ownerUid":I
    .restart local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v4    # "ret":Ljava/lang/String;
    :cond_5b
    move v5, v7

    .line 3520
    goto :goto_5a

    .end local v4    # "ret":Ljava/lang/String;
    :cond_5d
    move v5, v6

    .line 3525
    goto :goto_5a

    .line 3528
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_5f
    sget-object v5, TAG:Ljava/lang/String;

    const-string v7, "getEnforceAuthForContainer failed > returning true"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 3529
    goto :goto_5a
.end method

.method public getHibernationTimeout(Landroid/app/enterprise/ContextInfo;)J
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v11, 0x0

    .line 6008
    const-string v5, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v5}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 6009
    if-eqz p1, :cond_94

    .line 6010
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v5, "propertyValue"

    aput-object v5, v0, v11

    .line 6013
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 6014
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "cid"

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6015
    const-string/jumbo v5, "propertyName"

    const-string v8, "HibernationTimeout"

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6016
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .line 6017
    .local v2, "ownerUid":I
    const-string v5, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6018
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CONTAINER_POLICY"

    invoke-virtual {v5, v8, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 6020
    .local v3, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_8c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_8c

    .line 6021
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "time=- "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string/jumbo v10, "propertyValue"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6022
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string/jumbo v8, "propertyValue"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6023
    .local v4, "ret":Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 6035
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "ret":Ljava/lang/String;
    :goto_86
    return-wide v6

    .line 6026
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "ownerUid":I
    .restart local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v4    # "ret":Ljava/lang/String;
    :cond_87
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_86

    .line 6030
    .end local v4    # "ret":Ljava/lang/String;
    :cond_8c
    sget-object v5, TAG:Ljava/lang/String;

    const-string v8, "getHibernationTimeout failed to get value from DB > returning default value"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86

    .line 6034
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_94
    sget-object v5, TAG:Ljava/lang/String;

    const-string v8, "getHibernationTimeout failed > returning default value."

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_86
.end method

.method public getNetworkSSID(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6122
    invoke-direct {p0, p1}, enforceWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 6123
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNetworkSSID - adminUid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6125
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 6126
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3}, getSSID(I)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6127
    .local v0, "aux":Ljava/lang/String;
    invoke-static {v0}, removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 6129
    .end local v0    # "aux":Ljava/lang/String;
    :cond_41
    return-object v2
.end method

.method public getOwnContainers()[Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .registers 19

    .prologue
    .line 2917
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2918
    .local v2, "callingUid":I
    const/4 v11, 0x0

    .line 2919
    .local v11, "retList":[Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    const/4 v5, 0x0

    .line 2920
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2922
    .local v12, "token":J
    :try_start_a
    invoke-direct/range {p0 .. p0}, getService()Landroid/os/PersonaManager;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v10

    .line 2923
    .local v10, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v10, :cond_cb

    .line 2924
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_d7
    .catchall {:try_start_a .. :try_end_1b} :catchall_cf

    .line 2925
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    const/4 v7, 0x0

    .line 2926
    .local v7, "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    :try_start_1c
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_ca

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PersonaInfo;

    .line 2927
    .local v9, "pInfo":Landroid/content/pm/PersonaInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v0, v9, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v8

    .line 2928
    .local v8, "ownerUid":I
    sget-boolean v15, DEBUG:Z

    if-eqz v15, :cond_70

    .line 2929
    sget-object v15, TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Persona found with id , creator uid, passed uid: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v9, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    :cond_70
    if-ne v8, v2, :cond_20

    .line 2931
    new-instance v7, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    .end local v7    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    invoke-direct {v7}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;-><init>()V

    .line 2932
    .restart local v7    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    iget v15, v9, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v7, v15}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerId(I)V

    .line 2933
    invoke-virtual {v7, v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerAdmin(I)V

    .line 2934
    invoke-direct/range {p0 .. p0}, getUserManagerService()Landroid/os/UserManager;

    move-result-object v15

    iget v0, v9, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v14

    .line 2935
    .local v14, "uinfo":Landroid/content/pm/UserInfo;
    iget-object v15, v14, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v15}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerName(Ljava/lang/String;)V

    .line 2936
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_93} :catch_94
    .catchall {:try_start_1c .. :try_end_93} :catchall_d4

    goto :goto_20

    .line 2940
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v8    # "ownerUid":I
    .end local v9    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v14    # "uinfo":Landroid/content/pm/UserInfo;
    :catch_94
    move-exception v3

    move-object v5, v6

    .line 2941
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .end local v10    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .local v3, "e":Ljava/lang/Exception;
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    :goto_96
    :try_start_96
    sget-object v15, TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getOwnContainers exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_96 .. :try_end_b2} :catchall_cf

    .line 2943
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2945
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_b5
    if-eqz v5, :cond_c9

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_c9

    .line 2946
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    invoke-interface {v5, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "retList":[Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    check-cast v11, [Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    .line 2948
    .restart local v11    # "retList":[Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    :cond_c9
    return-object v11

    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v7    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .restart local v10    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_ca
    move-object v5, v6

    .line 2943
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .end local v7    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    :cond_cb
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b5

    .end local v10    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catchall_cf
    move-exception v15

    :goto_d0
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v15

    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v10    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catchall_d4
    move-exception v15

    move-object v5, v6

    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    goto :goto_d0

    .line 2940
    .end local v10    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :catch_d7
    move-exception v3

    goto :goto_96
.end method

.method public getPackageSignaturesFromExternalStorageWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4040
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackageSignaturesFromExternalStorageWhiteList cxtInfo.mCallerUid, cxtInfo.mContainerId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4041
    const-string v1, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    .line 4043
    .local v0, "lCxtInfo":Landroid/app/enterprise/ContextInfo;
    if-eqz v0, :cond_6f

    if-eqz p2, :cond_6f

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 4044
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aftr getPackageSignaturesFromExternalStorageWhiteList lCxtInfo.mCallerUid, lCxtInfo.mContainerId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4045
    iget v1, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, p2, v1}, getSignatureFromExternalStorageWhiteListInternal(Ljava/lang/String;I)[Landroid/content/pm/Signature;

    move-result-object v1

    .line 4048
    :goto_6e
    return-object v1

    .line 4047
    :cond_6f
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "getPackageSignaturesFromExternalStorageWhiteList policy returning null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4048
    const/4 v1, 0x0

    goto :goto_6e
.end method

.method public getPackagesFromExternalStorageSBABlackList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 4233
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPackagesFromExternalStorageSBABlackList cxtInfo.mCallerUid, cxtInfo.mContainerId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4234
    const-string v9, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v9}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    .line 4236
    .local v3, "lCxtInfo":Landroid/app/enterprise/ContextInfo;
    if-eqz v3, :cond_9f

    .line 4237
    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "packageName"

    aput-object v10, v0, v9

    .line 4239
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4240
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    iget v10, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4241
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "KnoxExternalStorageSBABlacklist"

    invoke-virtual {v9, v10, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 4243
    .local v4, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_9f

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_9f

    .line 4244
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4245
    .local v5, "providerStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_61
    :goto_61
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 4246
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v9, "packageName"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4247
    .local v6, "tmp":Ljava/lang/String;
    if-eqz v6, :cond_61

    .line 4248
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 4251
    .end local v6    # "tmp":Ljava/lang/String;
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_7a
    sget-boolean v9, DEBUG:Z

    if-eqz v9, :cond_96

    .line 4252
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPackagesFromExternalStorageSBABlackList SUCCESS : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4253
    :cond_96
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_9d

    .line 4257
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v5    # "providerStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_9c
    return-object v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v5    # "providerStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9d
    move-object v5, v8

    .line 4253
    goto :goto_9c

    .line 4256
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v5    # "providerStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9f
    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "getPackagesFromExternalStorageSBABlackList policy returning null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 4257
    goto :goto_9c
.end method

.method public getPackagesFromExternalStorageWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 3960
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPackagesFromExternalStorageWhiteList cxtInfo.mCallerUid, cxtInfo.mContainerId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3961
    const-string v9, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v9}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    .line 3963
    .local v3, "lCxtInfo":Landroid/app/enterprise/ContextInfo;
    if-eqz v3, :cond_c5

    .line 3964
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "aftr getPackagesFromExternalStorageWhiteList lCxtInfo.mCallerUid, lCxtInfo.mContainerId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v3, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3965
    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "packageName"

    aput-object v10, v0, v9

    .line 3967
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3968
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    iget v10, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3969
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "KnoxExternalStorageWhitelist"

    invoke-virtual {v9, v10, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 3971
    .local v4, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_c5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_c5

    .line 3972
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3973
    .local v5, "providerStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_87
    :goto_87
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 3974
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v9, "packageName"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3975
    .local v6, "tmp":Ljava/lang/String;
    if-eqz v6, :cond_87

    .line 3976
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    .line 3979
    .end local v6    # "tmp":Ljava/lang/String;
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_a0
    sget-boolean v9, DEBUG:Z

    if-eqz v9, :cond_bc

    .line 3980
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPackageSignaturesFromExternalStorageWhiteList SUCCESS : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3981
    :cond_bc
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_c3

    .line 3985
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v5    # "providerStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_c2
    return-object v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v5    # "providerStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c3
    move-object v5, v8

    .line 3981
    goto :goto_c2

    .line 3984
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v5    # "providerStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c5
    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "addPackageToExternalStorageWhiteList policy returning null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .line 3985
    goto :goto_c2
.end method

.method getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;
    .registers 3

    .prologue
    .line 7005
    const-string/jumbo v1, "persona"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    .line 7006
    .local v0, "service":Lcom/android/server/pm/PersonaManagerService;
    return-object v0
.end method

.method public getStatus(Landroid/app/enterprise/ContextInfo;)I
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2953
    const-string v3, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v3}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 2955
    const/4 v1, 0x0

    .line 2956
    .local v1, "status":Landroid/content/pm/PersonaState;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2958
    .local v4, "token":J
    :try_start_a
    invoke-direct {p0}, getService()Landroid/os/PersonaManager;

    move-result-object v3

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v6}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PersonaManager$StateManager;->getState()Landroid/content/pm/PersonaState;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_4a
    .catchall {:try_start_a .. :try_end_17} :catchall_6b

    move-result-object v1

    .line 2962
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2964
    :goto_1b
    invoke-virtual {v1}, Landroid/content/pm/PersonaState;->getKnox2_0State()I

    move-result v2

    .line 2965
    .local v2, "statusInt":I
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStatus() for state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/pm/PersonaState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    invoke-static {v1}, translateStatus(Landroid/content/pm/PersonaState;)I

    move-result v3

    return v3

    .line 2959
    .end local v2    # "statusInt":I
    :catch_4a
    move-exception v0

    .line 2960
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4b
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStatus exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_4b .. :try_end_67} :catchall_6b

    .line 2962
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1b

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_6b
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isExternalStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3804
    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v6}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v2

    .line 3805
    .local v2, "lCxtInfo":Landroid/app/enterprise/ContextInfo;
    if-eqz v2, :cond_29

    .line 3806
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 3807
    .local v3, "personaId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3808
    .local v4, "token":J
    const/4 v1, 0x0

    .line 3810
    .local v1, "flag":Z
    :try_start_f
    iget-object v6, p0, mPersona:Landroid/os/PersonaManager;

    const-string/jumbo v7, "sdcard"

    invoke-virtual {v6, v7, v3}, Landroid/os/PersonaManager;->canAccess(Ljava/lang/String;I)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_1c
    .catchall {:try_start_f .. :try_end_17} :catchall_24

    move-result v1

    .line 3814
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3818
    .end local v1    # "flag":Z
    .end local v3    # "personaId":I
    .end local v4    # "token":J
    :goto_1b
    return v1

    .line 3811
    .restart local v1    # "flag":Z
    .restart local v3    # "personaId":I
    .restart local v4    # "token":J
    :catch_1c
    move-exception v0

    .line 3812
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_24

    .line 3814
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1b

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_24
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 3818
    .end local v1    # "flag":Z
    .end local v3    # "personaId":I
    .end local v4    # "token":J
    :cond_29
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public isMultifactorAuthenticationEnforced(Landroid/app/enterprise/ContextInfo;)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3648
    if-eqz p1, :cond_b9

    .line 3649
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v5, "propertyValue"

    aput-object v5, v0, v7

    .line 3652
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3653
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "cid"

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3654
    const-string/jumbo v5, "propertyName"

    const-string v8, "MultifactorAuthentication"

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3655
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .line 3656
    .local v2, "ownerUid":I
    const-string v5, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3657
    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_62

    .line 3658
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isMultifactorAuthenticationEnforced: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " EnforceAuthForContainer"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3660
    :cond_62
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CONTAINER_POLICY"

    invoke-virtual {v5, v8, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    .line 3662
    .local v3, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_b0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_b0

    .line 3663
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isMultifactorAuthenticationEnforced: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string/jumbo v10, "propertyValue"

    invoke-virtual {v5, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3664
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    const-string/jumbo v8, "propertyValue"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3665
    .local v4, "ret":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ae

    move v5, v6

    .line 3677
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v4    # "ret":Ljava/lang/String;
    :goto_ad
    return v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "ownerUid":I
    .restart local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v4    # "ret":Ljava/lang/String;
    :cond_ae
    move v5, v7

    .line 3668
    goto :goto_ad

    .line 3672
    .end local v4    # "ret":Ljava/lang/String;
    :cond_b0
    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "getEnforceAuthForContainer failed to get value from DB > returning true"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 3673
    goto :goto_ad

    .line 3676
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "ownerUid":I
    .end local v3    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_b9
    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "getEnforceAuthForContainer failed > returning true"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    .line 3677
    goto :goto_ad
.end method

.method public isResetContainerOnRebootEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3741
    if-nez p1, :cond_4

    .line 3742
    const/4 v1, 0x0

    .line 3756
    :goto_3
    return v1

    .line 3744
    :cond_4
    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v4}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 3745
    const/4 v1, 0x0

    .line 3746
    .local v1, "retVal":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3748
    .local v2, "token":J
    :try_start_e
    invoke-direct {p0}, getService()Landroid/os/PersonaManager;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 3749
    invoke-direct {p0}, getService()Landroid/os/PersonaManager;

    move-result-object v4

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v5}, Landroid/os/PersonaManager;->isResetPersonaOnRebootEnabled(I)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1d} :catch_22
    .catchall {:try_start_e .. :try_end_1d} :catchall_2e

    move-result v1

    .line 3754
    :cond_1e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 3751
    :catch_22
    move-exception v0

    .line 3752
    .local v0, "e":Ljava/lang/Exception;
    :try_start_23
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "Failed at KnoxMUMContainerPolicy API isResetContainerOnRebootEnabled "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2e

    .line 3754
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_2e
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isSettingsOptionEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "option"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 6719
    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "isSettingsOptionEnabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6721
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 6722
    :cond_10
    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "Error from isSettingsOptionEnabled(): option is null or empty"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6746
    :goto_17
    return v4

    .line 6726
    :cond_18
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 6728
    .local v2, "uid":I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 6729
    .local v3, "where":Landroid/content/ContentValues;
    const-string v5, "adminUid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6730
    const-string/jumbo v5, "optionName"

    invoke-virtual {v3, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6733
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KnoxSettingsOptionsTable"

    invoke-virtual {v5, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 6735
    .local v0, "count":I
    if-nez v0, :cond_43

    .line 6736
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "isSettingsOptionEnabled(): no record. Return default value \'true\'"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6737
    const/4 v4, 0x1

    goto :goto_17

    .line 6741
    :cond_43
    :try_start_43
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KnoxSettingsOptionsTable"

    const-string/jumbo v7, "optionValue"

    invoke-virtual {v5, v6, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4d} :catch_4f

    move-result v4

    goto :goto_17

    .line 6743
    :catch_4f
    move-exception v1

    .line 6744
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSettingsOptionEnabled() exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public isSettingsOptionEnabledInternal(ILjava/lang/String;Z)Z
    .registers 16
    .param p1, "personaId"    # I
    .param p2, "option"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .prologue
    .line 6756
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isSettingsOptionEnabledInternal for personaId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; option="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6758
    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_33

    .line 6759
    :cond_2a
    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "Error from isSettingsOptionEnabledInternal: option is null or empty"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6760
    const/4 p3, 0x0

    .line 6807
    .end local p3    # "defaultValue":Z
    :goto_32
    return p3

    .line 6764
    .restart local p3    # "defaultValue":Z
    :cond_33
    const/4 v9, 0x2

    :try_start_34
    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "optionValue"

    aput-object v10, v0, v9

    .line 6769
    .local v0, "columns":[Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 6770
    .local v8, "where":Landroid/content/ContentValues;
    const-string/jumbo v9, "optionName"

    invoke-virtual {v8, v9, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6772
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "KnoxSettingsOptionsTable"

    invoke-virtual {v9, v10, v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .line 6774
    .local v7, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v7, :cond_5c

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_94

    .line 6775
    :cond_5c
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isSettingsOptionEnabledInternal: empty or null:  Return default value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_74} :catch_75

    goto :goto_32

    .line 6801
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v7    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v8    # "where":Landroid/content/ContentValues;
    :catch_75
    move-exception v2

    .line 6802
    .local v2, "e":Ljava/lang/Exception;
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isSettingsOptionEnabledInternal: Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6803
    const/4 p3, 0x0

    goto :goto_32

    .line 6779
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v7    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v8    # "where":Landroid/content/ContentValues;
    :cond_94
    const/4 v5, 0x0

    .line 6781
    .local v5, "integerUid":Ljava/lang/Integer;
    :try_start_95
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_99
    :goto_99
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_df

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 6782
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 6784
    if-nez v5, :cond_b5

    .line 6785
    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "isSettingsOptionEnabledInternal: Warning integerUid == null. Should not happened."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    .line 6789
    :cond_b5
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-ne p1, v9, :cond_99

    .line 6791
    const-string/jumbo v9, "optionValue"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 6792
    .local v6, "result":Ljava/lang/Integer;
    if-nez v6, :cond_d2

    .line 6793
    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "isSettingsOptionEnabledInternal: Error result == null. Should not happened. Returning false"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6794
    const/4 p3, 0x0

    goto/16 :goto_32

    .line 6796
    :cond_d2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_d5} :catch_75

    move-result v4

    .line 6797
    .local v4, "iResult":I
    const/4 v9, 0x1

    if-ne v4, v9, :cond_dd

    const/4 v9, 0x1

    :goto_da
    move p3, v9

    goto/16 :goto_32

    :cond_dd
    const/4 v9, 0x0

    goto :goto_da

    .line 6806
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v4    # "iResult":I
    .end local v6    # "result":Ljava/lang/Integer;
    :cond_df
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isSettingsOptionEnabledInternal: no record found for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":  Return default value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32
.end method

.method public lockContainer(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 2971
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "lockContainer"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v4}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 2973
    const/4 v1, 0x0

    .line 2974
    .local v1, "retVal":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2976
    .local v2, "token":J
    :try_start_11
    invoke-direct {p0}, getService()Landroid/os/PersonaManager;

    move-result-object v4

    if-eqz v4, :cond_21

    .line 2977
    invoke-direct {p0}, getService()Landroid/os/PersonaManager;

    move-result-object v4

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v5, p2}, Landroid/os/PersonaManager;->adminLockPersona(ILjava/lang/String;)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_20} :catch_25
    .catchall {:try_start_11 .. :try_end_20} :catchall_31

    move-result v1

    .line 2982
    :cond_21
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2984
    :goto_24
    return v1

    .line 2979
    :catch_25
    move-exception v0

    .line 2980
    .local v0, "e":Ljava/lang/Exception;
    :try_start_26
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "Failed at KnoxMUMContainerPolicy API adminLockPersona "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_31

    .line 2982
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_24

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_31
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public onAdminAdded(I)V
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 5944
    const-string v0, "onAdminAdded"

    invoke-static {v0}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 5946
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 5950
    const-string v0, "onAdminRemoved"

    invoke-static {v0}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 5951
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdminRemoval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5952
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 10
    .param p1, "uid"    # I

    .prologue
    .line 5956
    const-string v5, "onPreAdminRemoval"

    invoke-static {v5}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 5957
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreAdminRemoval:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5959
    invoke-direct {p0, p1}, getContainers(I)Ljava/util/List;

    move-result-object v1

    .line 5960
    .local v1, "containerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_78

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_78

    .line 5961
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleting containers for owner Uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5962
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_78

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5964
    .local v0, "containerId":Ljava/lang/Integer;
    :try_start_51
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, removeContainer(IZ)I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_59} :catch_5a

    goto :goto_45

    .line 5965
    :catch_5a
    move-exception v2

    .line 5966
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 5971
    .end local v0    # "containerId":Ljava/lang/Integer;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_78
    if-eqz p1, :cond_92

    .line 5972
    invoke-direct {p0, p1}, filterType(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_82
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_92

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 5973
    .local v4, "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-direct {p0, v4}, removeConfigurationTypeInternal(Lcom/sec/enterprise/knox/container/KnoxConfigurationType;)Z

    goto :goto_82

    .line 5976
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "type":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_92
    return-void
.end method

.method public registerBroadcastReceiverIntent(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "scheme"    # Ljava/lang/String;

    .prologue
    .line 3535
    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v6}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3537
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 3538
    .local v0, "containerId":I
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 3539
    .local v3, "userId":I
    const/4 v2, 0x0

    .line 3540
    .local v2, "retVal":Z
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_20

    .line 3541
    :cond_17
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "Invalid action"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3542
    const/4 v6, 0x0

    .line 3554
    :goto_1f
    return v6

    .line 3544
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3546
    .local v4, "token":J
    :try_start_24
    iget-object v6, p0, containerAdminFwdedIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    invoke-virtual {v6, v3, p2, p3}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->registerBroadcastReceiverIntent(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_2f
    .catchall {:try_start_24 .. :try_end_29} :catchall_37

    move-result v2

    .line 3552
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2d
    move v6, v2

    .line 3554
    goto :goto_1f

    .line 3548
    :catch_2f
    move-exception v1

    .line 3549
    .local v1, "e":Ljava/lang/Exception;
    :try_start_30
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_37

    .line 3552
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2d

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_37
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public removeConfigurationType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 3196
    const-string v1, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 3197
    const/4 v0, 0x0

    .line 3198
    .local v0, "uid":I
    if-eqz p1, :cond_13

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-lez v1, :cond_13

    .line 3199
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 3203
    :goto_e
    invoke-direct {p0, v0, p2}, removeConfigurationTypeInternal(ILjava/lang/String;)Z

    move-result v1

    return v1

    .line 3201
    :cond_13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    goto :goto_e
.end method

.method public removeContainer(Landroid/app/enterprise/ContextInfo;)I
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2862
    invoke-direct {p0}, getService()Landroid/os/PersonaManager;

    move-result-object v1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 2863
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid container Id. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exists!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    const/16 v1, -0x4b2

    .line 2874
    :goto_2e
    return v1

    .line 2869
    :cond_2f
    :try_start_2f
    const-string/jumbo v1, "removeContainer"

    invoke-static {v1}, checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/SecurityException; {:try_start_2f .. :try_end_35} :catch_3d

    .line 2874
    :goto_35
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, removeContainer(IZ)I

    move-result v1

    goto :goto_2e

    .line 2870
    :catch_3d
    move-exception v0

    .line 2871
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SEAMS invalidated caller. lets go for MDM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    const-string v1, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v1}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    goto :goto_35
.end method

.method public removeNetworkSSID(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 6098
    invoke-direct {p0, p1}, enforceWifiPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 6099
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeNetworkSSID - SSID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6101
    invoke-direct {p0, p2}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6102
    if-nez p2, :cond_3e

    .line 6103
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeNetworkSSID - invalid Str "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6117
    :goto_3d
    return v2

    .line 6107
    :cond_3e
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 6109
    .local v0, "adminUid":I
    invoke-static {p2}, convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6111
    invoke-direct {p0, v0}, getSSID(I)Ljava/util/Set;

    move-result-object v1

    .line 6112
    .local v1, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 6113
    invoke-direct {p0, v0, v1}, saveBlockedList(ILjava/util/Set;)Z

    move-result v2

    goto :goto_3d

    .line 6116
    :cond_53
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "addNetworkSSID failed : no exist."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method public removePackageFromExternalStorageSBABlackList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 4263
    const-string v8, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v8}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    .line 4265
    .local v3, "lCxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 4267
    .local v6, "token":J
    if-eqz v3, :cond_af

    if-eqz p2, :cond_af

    .line 4270
    :try_start_f
    invoke-direct {p0}, getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v8

    if-nez v8, :cond_21

    .line 4271
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "removePackageFromExternalStorageSBABlackList : SEAMS service cannot be null."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1d} :catch_b4
    .catchall {:try_start_f .. :try_end_1d} :catchall_c3

    .line 4295
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4298
    :goto_20
    return v5

    .line 4274
    :cond_21
    :try_start_21
    invoke-direct {p0}, getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v8

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p2, v10}, Lcom/android/server/SEAMService;->removeAppFromSBABlacklist(ILjava/lang/String;I)I

    move-result v4

    .line 4275
    .local v4, "retCode":I
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removePackageFromExternalStorageSBABlackList : SEAMS service retCode - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4277
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4278
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v8, "adminUid"

    iget v9, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4279
    const-string/jumbo v8, "packageName"

    invoke-virtual {v1, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4280
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KnoxExternalStorageSBABlacklist"

    invoke-virtual {v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 4282
    .local v0, "cnt":I
    if-lez v0, :cond_af

    .line 4283
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removePackageFromExternalStorageSBABlackList for package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", admin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "has got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " results"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4285
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KnoxExternalStorageSBABlacklist"

    invoke-virtual {v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v8

    if-lez v8, :cond_af

    .line 4287
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v8}, notifySdcardSBABlacklistUpdate(I)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_a9} :catch_b4
    .catchall {:try_start_21 .. :try_end_a9} :catchall_c3

    .line 4288
    const/4 v5, 0x1

    .line 4295
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_20

    .end local v0    # "cnt":I
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v4    # "retCode":I
    :cond_af
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_20

    .line 4292
    :catch_b4
    move-exception v2

    .line 4293
    .local v2, "e":Ljava/lang/Exception;
    :try_start_b5
    sget-object v8, TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catchall {:try_start_b5 .. :try_end_be} :catchall_c3

    .line 4295
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_20

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_c3
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public removePackageFromExternalStorageWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 4053
    const-string v8, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v8}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v3

    .line 4054
    .local v3, "lCxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 4056
    .local v6, "token":J
    if-eqz v3, :cond_af

    if-eqz p2, :cond_af

    .line 4059
    :try_start_f
    invoke-direct {p0}, getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v8

    if-nez v8, :cond_21

    .line 4060
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "removePackageFromExternalStorageWhiteList : SEAMS service cannot be null."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1d} :catch_b4
    .catchall {:try_start_f .. :try_end_1d} :catchall_c3

    .line 4084
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4086
    :goto_20
    return v5

    .line 4063
    :cond_21
    :try_start_21
    invoke-direct {p0}, getSEAMSService()Lcom/android/server/SEAMService;

    move-result-object v8

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p2, v10}, Lcom/android/server/SEAMService;->removeAppFromWhitelist(ILjava/lang/String;I)I

    move-result v4

    .line 4064
    .local v4, "retCode":I
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removePackageFromExternalStorageWhiteList : SEAMS service retCode - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4066
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4067
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v8, "adminUid"

    iget v9, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4068
    const-string/jumbo v8, "packageName"

    invoke-virtual {v1, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4069
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KnoxExternalStorageWhitelist"

    invoke-virtual {v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 4071
    .local v0, "cnt":I
    if-lez v0, :cond_af

    .line 4072
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removePackageFromExternalStorageWhiteList for package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", admin: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "has got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " results"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4074
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KnoxExternalStorageWhitelist"

    invoke-virtual {v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v8

    if-lez v8, :cond_af

    .line 4076
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v8}, notifySdcardWhitelistUpdate(I)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_a9} :catch_b4
    .catchall {:try_start_21 .. :try_end_a9} :catchall_c3

    .line 4077
    const/4 v5, 0x1

    .line 4084
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_20

    .end local v0    # "cnt":I
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v4    # "retCode":I
    :cond_af
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_20

    .line 4081
    :catch_b4
    move-exception v2

    .line 4082
    .local v2, "e":Ljava/lang/Exception;
    :try_start_b5
    sget-object v8, TAG:Ljava/lang/String;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catchall {:try_start_b5 .. :try_end_be} :catchall_c3

    .line 4084
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_20

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_c3
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public resetContainerOnReboot(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 3720
    if-nez p1, :cond_4

    .line 3721
    const/4 v1, 0x0

    .line 3735
    :goto_3
    return v1

    .line 3723
    :cond_4
    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v4}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 3724
    const/4 v1, 0x0

    .line 3725
    .local v1, "retVal":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3727
    .local v2, "token":J
    :try_start_e
    invoke-direct {p0}, getService()Landroid/os/PersonaManager;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 3728
    invoke-direct {p0}, getService()Landroid/os/PersonaManager;

    move-result-object v4

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v4, v5, p2}, Landroid/os/PersonaManager;->resetPersonaOnReboot(IZ)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1d} :catch_22
    .catchall {:try_start_e .. :try_end_1d} :catchall_2e

    move-result v1

    .line 3733
    :cond_1e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 3730
    :catch_22
    move-exception v0

    .line 3731
    .local v0, "e":Ljava/lang/Exception;
    :try_start_23
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "Failed at KnoxMUMContainerPolicy API resetPersonaOnBoot "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_2e

    .line 3733
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_2e
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public resetContainerPolicies(Landroid/app/enterprise/ContextInfo;)Z
    .registers 29
    .param p1, "contextInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 6191
    const/16 v21, 0x0

    .line 6192
    .local v21, "retVal":Z
    const-string v2, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 6194
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 6196
    .local v24, "token":J
    :try_start_f
    invoke-direct/range {p0 .. p0}, getService()Landroid/os/PersonaManager;

    move-result-object v23

    .line 6197
    .local v23, "service":Landroid/os/PersonaManager;
    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 6198
    .local v5, "containerId":I
    if-eqz v23, :cond_15a

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_15a

    .line 6199
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 6200
    .local v4, "uid":I
    new-instance v9, Landroid/app/enterprise/EnterpriseDeviceManager;

    sget-object v2, mContext:Landroid/content/Context;

    invoke-direct {v9, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 6202
    .local v9, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v10

    .line 6204
    .local v10, "edmService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v11

    .line 6205
    .local v11, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    sget-object v2, mContext:Landroid/content/Context;

    new-instance v7, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v7, v4, v5}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {v11, v2, v7}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v13

    .line 6206
    .local v13, "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, getAdminComponentName(II)Landroid/content/ComponentName;

    move-result-object v3

    .line 6207
    .local v3, "componentName":Landroid/content/ComponentName;
    if-eqz v3, :cond_15a

    .line 6208
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Component Name :  "

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6209
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5, v2}, Landroid/os/PersonaHandle;->getUid(II)I

    move-result v19

    .line 6210
    .local v19, "proxyID":I
    invoke-virtual {v13}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/enterprise/ApplicationPolicy;->getDisabledPackages(I)Ljava/util/List;

    move-result-object v16

    .line 6211
    .local v16, "oldPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v10, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->deactivateProxyAdminsForUser(I)V

    .line 6212
    sget-object v2, TAG:Ljava/lang/String;

    const-string v7, "Deactivating Proxy Admin  "

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6213
    invoke-virtual {v9, v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getProxyAdmins(I)Ljava/util/List;

    move-result-object v14

    .line 6215
    .local v14, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    if-eqz v14, :cond_e8

    .line 6216
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_8d
    :goto_8d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/admin/ProxyDeviceAdminInfo;

    .line 6217
    .local v18, "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-virtual/range {v18 .. v18}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v22

    .line 6218
    .local v22, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v22, :cond_8d

    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_8d

    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_8d

    .line 6220
    sget-object v2, TAG:Ljava/lang/String;

    const-string v7, "Removes Proxy Admin  "

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6221
    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v9, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->removeProxyAdmin(I)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_bf} :catch_c0
    .catchall {:try_start_f .. :try_end_bf} :catchall_15f

    goto :goto_8d

    .line 6242
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "uid":I
    .end local v5    # "containerId":I
    .end local v9    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v10    # "edmService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v11    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v16    # "oldPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "proxy":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v19    # "proxyID":I
    .end local v22    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v23    # "service":Landroid/os/PersonaManager;
    :catch_c0
    move-exception v8

    .line 6243
    .local v8, "e":Ljava/lang/Exception;
    :try_start_c1
    sget-object v2, TAG:Ljava/lang/String;

    const-string v7, "Failed at KnoxMUMContainerPolicy API resetContainerPolicies "

    invoke-static {v2, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c8
    .catchall {:try_start_c1 .. :try_end_c8} :catchall_15f

    .line 6246
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6248
    .end local v8    # "e":Ljava/lang/Exception;
    :goto_cb
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Returned Value for Reset Policies : "

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6249
    return v21

    .line 6225
    .restart local v3    # "componentName":Landroid/content/ComponentName;
    .restart local v4    # "uid":I
    .restart local v5    # "containerId":I
    .restart local v9    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .restart local v10    # "edmService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v11    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v13    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .restart local v14    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .restart local v16    # "oldPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "proxyID":I
    .restart local v23    # "service":Landroid/os/PersonaManager;
    :cond_e8
    :try_start_e8
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v6

    .line 6226
    .local v6, "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, getResolveInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ResolveInfo;

    move-result-object v20

    .line 6227
    .local v20, "resolveInfo":Landroid/content/pm/ResolveInfo;
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Resolve Info "

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6228
    new-instance v17, Landroid/app/admin/ProxyDeviceAdminInfo;

    sget-object v2, mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v2}, Landroid/app/admin/ProxyDeviceAdminInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    .line 6230
    .local v17, "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    invoke-static {v5, v4}, Landroid/os/PersonaHandle;->getUid(II)I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v2, v3, v4}, Landroid/app/enterprise/EnterpriseDeviceManager;->addProxyAdmin(Landroid/app/admin/ProxyDeviceAdminInfo;ILandroid/content/ComponentName;I)V

    .line 6232
    const/4 v2, 0x0

    invoke-virtual {v9, v3, v2, v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->activateAdminForUser(Landroid/content/ComponentName;ZI)V

    .line 6233
    sget-object v2, TAG:Ljava/lang/String;

    const-string v7, "Activating Proxy Admin  "

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6234
    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, setupDefaultPolicies(Landroid/content/ComponentName;IILcom/sec/enterprise/knox/container/KnoxConfigurationType;Ljava/util/HashMap;)Z

    .line 6235
    invoke-virtual {v13}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/enterprise/ApplicationPolicy;->getDisabledPackages(I)Ljava/util/List;

    move-result-object v15

    .line 6236
    .local v15, "newPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, TAG:Ljava/lang/String;

    const-string v7, "Setup default policy called."

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6237
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15, v13}, restoreDisabledPackages(Ljava/util/List;Ljava/util/List;Lcom/sec/enterprise/knox/container/KnoxContainerManager;)V

    .line 6238
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, sendContainerAdminChangeIntent(I)V
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_158} :catch_c0
    .catchall {:try_start_e8 .. :try_end_158} :catchall_15f

    .line 6239
    const/16 v21, 0x1

    .line 6246
    .end local v3    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "uid":I
    .end local v6    # "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v9    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v10    # "edmService":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v11    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v13    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/ProxyDeviceAdminInfo;>;"
    .end local v15    # "newPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "oldPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "pdai":Landroid/app/admin/ProxyDeviceAdminInfo;
    .end local v19    # "proxyID":I
    .end local v20    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_15a
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_cb

    .end local v5    # "containerId":I
    .end local v23    # "service":Landroid/os/PersonaManager;
    :catchall_15f
    move-exception v2

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setEnforceAuthForContainer(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "value"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 3611
    const-string v7, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v7}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 3612
    invoke-virtual {p0, p1}, getEnforceAuthForContainer(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    if-ne v7, p2, :cond_e

    .line 3643
    :goto_d
    return v3

    .line 3615
    :cond_e
    if-eqz p1, :cond_67

    .line 3616
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3618
    .local v4, "token":J
    :try_start_14
    invoke-direct {p0}, getService()Landroid/os/PersonaManager;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v7, v8}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v1

    .line 3619
    .local v1, "pinfo":Landroid/content/pm/PersonaInfo;
    if-eqz v1, :cond_29

    iget-boolean v7, v1, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_22} :catch_69
    .catchall {:try_start_14 .. :try_end_22} :catchall_8a

    if-eqz v7, :cond_29

    .line 3640
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v6

    goto :goto_d

    .line 3622
    :cond_29
    if-nez p2, :cond_3e

    .line 3623
    :try_start_2b
    iget-object v3, p0, mPersona:Landroid/os/PersonaManager;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v7}, Landroid/os/PersonaManager;->disablePersonaKeyGuard(I)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 3624
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, setEnforceAuthForContainerInternal(Landroid/app/enterprise/ContextInfo;Z)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_39} :catch_69
    .catchall {:try_start_2b .. :try_end_39} :catchall_8a

    move-result v3

    .line 3640
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_d

    .line 3626
    :cond_3e
    if-ne p2, v3, :cond_64

    .line 3627
    const/4 v7, 0x1

    :try_start_41
    invoke-direct {p0, p1, v7}, setEnforceAuthForContainerInternal(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v2

    .line 3628
    .local v2, "ret":Z
    if-eqz v2, :cond_5e

    iget-object v7, p0, mPersona:Landroid/os/PersonaManager;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v7, v8}, Landroid/os/PersonaManager;->enablePersonaKeyGuard(I)Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 3629
    if-eqz v2, :cond_64

    .line 3630
    iget-object v7, p0, mPersona:Landroid/os/PersonaManager;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v7, v8}, Landroid/os/PersonaManager;->refreshTimer(I)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_5a} :catch_69
    .catchall {:try_start_41 .. :try_end_5a} :catchall_8a

    .line 3640
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_d

    .line 3633
    :cond_5e
    if-eqz v2, :cond_64

    .line 3634
    const/4 v3, 0x0

    :try_start_61
    invoke-direct {p0, p1, v3}, setEnforceAuthForContainerInternal(Landroid/app/enterprise/ContextInfo;Z)Z
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_69
    .catchall {:try_start_61 .. :try_end_64} :catchall_8a

    .line 3640
    .end local v2    # "ret":Z
    :cond_64
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "pinfo":Landroid/content/pm/PersonaInfo;
    .end local v4    # "token":J
    :cond_67
    :goto_67
    move v3, v6

    .line 3643
    goto :goto_d

    .line 3637
    .restart local v4    # "token":J
    :catch_69
    move-exception v0

    .line 3638
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6a
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_6a .. :try_end_86} :catchall_8a

    .line 3640
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_67

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_8a
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setHibernationTimeout(Landroid/app/enterprise/ContextInfo;J)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "time"    # J

    .prologue
    .line 6041
    const-string v4, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v4}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 6043
    const/4 v2, 0x0

    .line 6044
    .local v2, "result":Z
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 6045
    .local v3, "where":Landroid/content/ContentValues;
    const-string v4, "cid"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6046
    const-string v4, "adminUid"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6047
    const-string/jumbo v4, "propertyName"

    const-string v5, "HibernationTimeout"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6048
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CONTAINER_POLICY"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 6049
    .local v0, "count":I
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setHibernationTimeout: already row present ? "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-lez v0, :cond_82

    const/4 v4, 0x1

    :goto_42
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6050
    if-lez v0, :cond_84

    .line 6052
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 6053
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v4, "propertyValue"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6054
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CONTAINER_POLICY"

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 6061
    .end local v1    # "cv":Landroid/content/ContentValues;
    :goto_66
    if-nez v2, :cond_81

    .line 6062
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setHibernationTimeout failed : result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6064
    :cond_81
    return v2

    .line 6049
    :cond_82
    const/4 v4, 0x0

    goto :goto_42

    .line 6057
    :cond_84
    const-string/jumbo v4, "propertyValue"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6058
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CONTAINER_POLICY"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    goto :goto_66
.end method

.method public setSettingsOptionEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "option"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 6683
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "setSettingsOptionEnabled()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6685
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 6686
    :cond_11
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "Error from setSettingsOptionEnabled(): option is null or empty"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 6714
    :cond_19
    :goto_19
    return v3

    .line 6690
    :cond_1a
    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v6}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v2

    .line 6691
    .local v2, "lCtxInfo":Landroid/app/enterprise/ContextInfo;
    const/4 v3, 0x0

    .line 6692
    .local v3, "result":Z
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 6693
    .local v4, "where":Landroid/content/ContentValues;
    const-string v6, "adminUid"

    iget v7, v2, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6694
    const-string/jumbo v6, "optionName"

    invoke-virtual {v4, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6696
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KnoxSettingsOptionsTable"

    invoke-virtual {v6, v7, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 6697
    .local v0, "count":I
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSettingsOptionEnabled(): already row present ? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-lez v0, :cond_50

    const/4 v5, 0x1

    :cond_50
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6699
    if-lez v0, :cond_90

    .line 6701
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 6702
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v5, "optionValue"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6703
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KnoxSettingsOptionsTable"

    invoke-virtual {v5, v6, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    .line 6710
    .end local v1    # "cv":Landroid/content/ContentValues;
    :goto_74
    if-nez v3, :cond_19

    .line 6711
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSettingsOptionEnabled failed : result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 6706
    :cond_90
    const-string/jumbo v5, "optionValue"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6707
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KnoxSettingsOptionsTable"

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    goto :goto_74
.end method

.method public systemReady()V
    .registers 3

    .prologue
    .line 1198
    const-string/jumbo v0, "systemReady"

    invoke-static {v0}, checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1199
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "SystemReady called...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    sget-object v0, mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, mActivityManager:Landroid/app/ActivityManager;

    .line 1203
    new-instance v0, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    sget-object v1, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, containerAdminFwdedIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    .line 1205
    invoke-direct {p0}, getService()Landroid/os/PersonaManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1206
    const/4 v0, 0x1

    invoke-direct {p0, v0}, disableCover(Z)V

    .line 1209
    :cond_30
    invoke-direct {p0}, getService()Landroid/os/PersonaManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/PersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    .line 1305
    return-void
.end method

.method public unlockContainer(Landroid/app/enterprise/ContextInfo;)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2989
    sget-object v11, TAG:Ljava/lang/String;

    const-string/jumbo v12, "unlockContainer"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    const-string v11, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v11}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    .line 2991
    const/4 v7, 0x0

    .line 2992
    .local v7, "retVal":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2994
    .local v8, "token":J
    :try_start_12
    invoke-direct {p0}, getService()Landroid/os/PersonaManager;

    move-result-object v11

    if-eqz v11, :cond_22

    .line 2995
    invoke-direct {p0}, getService()Landroid/os/PersonaManager;

    move-result-object v11

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v11, v12}, Landroid/os/PersonaManager;->adminUnLockPersona(I)Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_21} :catch_4a
    .catchall {:try_start_12 .. :try_end_21} :catchall_56

    move-result v7

    .line 3000
    :cond_22
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3004
    :goto_25
    if-eqz v7, :cond_61

    .line 3005
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3006
    .local v0, "adminUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 3007
    .local v10, "userId":I
    sget-object v11, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 3008
    .local v6, "pkgNames":[Ljava/lang/String;
    if-eqz v6, :cond_5b

    .line 3009
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3e
    if-ge v3, v4, :cond_61

    aget-object v5, v1, v3

    .line 3010
    .local v5, "pkgName":Ljava/lang/String;
    iget v11, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v5, v11, v10}, sendContainerAdminUnlockIntent(Ljava/lang/String;II)V

    .line 3009
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    .line 2997
    .end local v0    # "adminUid":I
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "pkgNames":[Ljava/lang/String;
    .end local v10    # "userId":I
    :catch_4a
    move-exception v2

    .line 2998
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4b
    sget-object v11, TAG:Ljava/lang/String;

    const-string v12, "Failed at KnoxMUMContainerPolicy API adminUnLockPersona "

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_56

    .line 3000
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_25

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_56
    move-exception v11

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .line 3013
    .restart local v0    # "adminUid":I
    .restart local v6    # "pkgNames":[Ljava/lang/String;
    .restart local v10    # "userId":I
    :cond_5b
    const/4 v11, 0x0

    iget v12, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v11, v12, v10}, sendContainerAdminUnlockIntent(Ljava/lang/String;II)V

    .line 3018
    .end local v0    # "adminUid":I
    .end local v6    # "pkgNames":[Ljava/lang/String;
    .end local v10    # "userId":I
    :cond_61
    return v7
.end method

.method public unregisterBroadcastReceiverIntent(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "scheme"    # Ljava/lang/String;

    .prologue
    .line 3558
    const-string v6, "android.permission.sec.MDM_ENTERPRISE_CONTAINER"

    invoke-direct {p0, p1, v6}, enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3560
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 3561
    .local v0, "containerId":I
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 3562
    .local v3, "userId":I
    const/4 v2, 0x0

    .line 3563
    .local v2, "retVal":Z
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_20

    .line 3564
    :cond_17
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "Invalid action"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3565
    const/4 v6, 0x0

    .line 3578
    :goto_1f
    return v6

    .line 3567
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3569
    .local v4, "token":J
    :try_start_24
    iget-object v6, p0, containerAdminFwdedIntentReceiver:Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;

    invoke-virtual {v6, v3, p2, p3}, Lcom/android/server/enterprise/container/ContainerAdminIntentReceiver;->unregisterBroadcastReceiverIntent(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_2f
    .catchall {:try_start_24 .. :try_end_29} :catchall_37

    move-result v2

    .line 3576
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2d
    move v6, v2

    .line 3578
    goto :goto_1f

    .line 3572
    :catch_2f
    move-exception v1

    .line 3573
    .local v1, "e":Ljava/lang/Exception;
    :try_start_30
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_37

    .line 3576
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2d

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_37
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method
