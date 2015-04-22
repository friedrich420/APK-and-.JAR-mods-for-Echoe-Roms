.class public Lcom/android/server/wallpaper/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperBackupRequestReciever;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;,
        Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final IMAGE_WALLPAPER:Landroid/content/ComponentName;

.field private static final INITIALIZE_KNOX_WALLPAPER:I = 0x3e9

.field static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field static final SETTINGS_SYSTEMUI_TRANSPARENCY:Ljava/lang/String; = "android.wallpaper.settings_systemui_transparency"

.field private static final SWITCH_KNOX_WALLPAPER:I = 0x3ea

.field static final TAG:Ljava/lang/String; = "WallpaperManagerService"

.field static final WALLPAPER:Ljava/lang/String; = "wallpaper"

.field static final WALLPAPER_2:Ljava/lang/String; = "wallpaper2"

.field static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"


# instance fields
.field public final REQUEST_BACKUP_WALLPAPER:Ljava/lang/String;

.field public final REQUEST_RESTORE_WALLPAPER:Ljava/lang/String;

.field public final RESPONSE_BACKUP_WALLPAPER:Ljava/lang/String;

.field public final RESPONSE_RESTORE_WALLPAPER:Ljava/lang/String;

.field private mBackupRunning:Z

.field private mBackupStatus:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperBackupRequestReciever;

.field final mContext:Landroid/content/Context;

.field private mCurrentPersonaId:I

.field mCurrentUserId:I

.field private mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field final mHandler:Landroid/os/Handler;

.field final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field final mImageWallpaper:Landroid/content/ComponentName;

.field mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final mLock:Ljava/lang/Object;

.field final mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

.field private mReceiver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;

.field mWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field whichSimSetWallpaper:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 146
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.ImageWallpaper"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, IMAGE_WALLPAPER:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 528
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    .line 126
    new-array v4, v7, [Ljava/lang/Object;

    iput-object v4, p0, mLock:Ljava/lang/Object;

    .line 136
    iput v7, p0, whichSimSetWallpaper:I

    .line 137
    const-string v4, "com.sec.android.intent.action.REQUEST_BACKUP_WALLPAPER"

    iput-object v4, p0, REQUEST_BACKUP_WALLPAPER:Ljava/lang/String;

    .line 138
    const-string v4, "android.intent.action.RESPONSE_BACKUP_WALLPAPER"

    iput-object v4, p0, RESPONSE_BACKUP_WALLPAPER:Ljava/lang/String;

    .line 139
    const-string v4, "com.sec.android.intent.action.REQUEST_RESTORE_WALLPAPER"

    iput-object v4, p0, REQUEST_RESTORE_WALLPAPER:Ljava/lang/String;

    .line 140
    const-string v4, "android.intent.action.RESPONSE_RESTORE_WALLPAPER"

    iput-object v4, p0, RESPONSE_RESTORE_WALLPAPER:Ljava/lang/String;

    .line 141
    iput-boolean v7, p0, mBackupRunning:Z

    .line 150
    iput-object v8, p0, mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 156
    iput v7, p0, mCurrentPersonaId:I

    .line 232
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, mWallpaperMap:Landroid/util/SparseArray;

    .line 2014
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$4;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$4;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v4, p0, mHandler:Landroid/os/Handler;

    .line 530
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 531
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, mImageWallpaper:Landroid/content/ComponentName;

    .line 533
    const-string/jumbo v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, p0, mIWindowManager:Landroid/view/IWindowManager;

    .line 535
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iput-object v4, p0, mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 536
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v4, p0, mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    .line 537
    iget-object v4, p0, mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x1

    invoke-virtual {v4, p1, v8, v5, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 538
    invoke-static {v7}, getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 539
    invoke-direct {p0, v7}, loadSettingsLocked(I)V

    .line 541
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v3

    .line 542
    .local v3, "versionInfo":Landroid/os/Bundle;
    const-string v4, "2.0"

    const-string/jumbo v5, "version"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 543
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 544
    .local v0, "mPersona":Landroid/os/PersonaManager;
    if-eqz v0, :cond_cc

    .line 545
    invoke-virtual {v0}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 546
    invoke-virtual {v0, v7}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v1

    .line 547
    .local v1, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    const/4 v2, 0x0

    .line 548
    .local v2, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v1, :cond_cc

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_cc

    .line 549
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "pi":Landroid/content/pm/PersonaInfo;
    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 550
    .restart local v2    # "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v2, :cond_cc

    iget-boolean v4, v2, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v4, :cond_cc

    .line 551
    iget v4, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {p0, v4}, loadSettingsLocked(I)V

    .line 552
    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadSettingsLocked is called for user -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    .end local v0    # "mPersona":Landroid/os/PersonaManager;
    .end local v1    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v2    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_cc
    return-void
.end method

.method private SimStatusVerify()I
    .registers 6

    .prologue
    .line 1712
    const/4 v0, 0x0

    .line 1713
    .local v0, "currSimId":I
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimStatusVerify"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    invoke-virtual {p0}, getCurrSimID()I

    move-result v0

    .line 1717
    const-string/jumbo v2, "ril.MSIMM"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1725
    .local v1, "simSlot":Ljava/lang/String;
    invoke-virtual {p0}, checkWallpaperForMultiSimSkip()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1726
    const/4 v0, 0x0

    .line 1728
    :cond_31
    const-string v2, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WallpaperManagerService->SimStatusVerify slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " currSimId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    return v0
.end method

.method static synthetic access$000(I)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 122
    invoke-static {p0}, getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 122
    invoke-direct {p0, p1}, notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 122
    invoke-direct {p0, p1}, saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, setKnoxWallpaper(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wallpaper/WallpaperManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    .line 122
    invoke-direct {p0}, SimStatusVerify()I

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wallpaper/WallpaperManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, mBackupRunning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, loadSettingsLocked(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wallpaper/WallpaperManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .prologue
    .line 122
    iget v0, p0, mCurrentPersonaId:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/wallpaper/WallpaperManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 122
    iput p1, p0, mCurrentPersonaId:I

    return p1
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1393
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2f

    .line 1394
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1397
    :cond_2f
    return-void
.end method

.method private getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .prologue
    .line 1465
    const/4 v1, 0x0

    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1466
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 1469
    .end local p3    # "defValue":I
    :goto_7
    return p3

    .restart local p3    # "defValue":I
    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    goto :goto_7
.end method

.method private getDefaultDisplaySize()Landroid/graphics/Point;
    .registers 6

    .prologue
    .line 810
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 811
    .local v1, "p":Landroid/graphics/Point;
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 812
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 813
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 814
    return-object v1
.end method

.method private getMaximumSizeDimension()I
    .registers 5

    .prologue
    .line 1567
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1568
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1569
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v2

    return v2
.end method

.method private getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;
    .registers 4

    .prologue
    .line 1908
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1910
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_11

    .line 1911
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 1913
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private static getWallpaperDir(I)Ljava/io/File;
    .registers 2
    .param p0, "userId"    # I

    .prologue
    .line 562
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private loadSettingsLocked(I)V
    .registers 20
    .param p1, "userId"    # I

    .prologue
    .line 1475
    invoke-static/range {p1 .. p1}, makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v5

    .line 1476
    .local v5, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v7, 0x0

    .line 1477
    .local v7, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v4

    .line 1478
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_12

    .line 1480
    invoke-direct/range {p0 .. p0}, migrateFromOld()V

    .line 1482
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, mWallpaperMap:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1483
    .local v12, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v12, :cond_30

    .line 1484
    new-instance v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .end local v12    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(I)V

    .line 1485
    .restart local v12    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move-object/from16 v0, p0

    iget-object v13, v0, mWallpaperMap:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v13, v0, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1487
    :cond_30
    const/4 v9, 0x0

    .line 1489
    .local v9, "success":Z
    :try_start_31
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_36} :catch_109
    .catch Ljava/lang/NullPointerException; {:try_start_31 .. :try_end_36} :catch_112
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_36} :catch_136
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31 .. :try_end_36} :catch_15a
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_36} :catch_17f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_31 .. :try_end_36} :catch_1a4

    .line 1490
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .local v8, "stream":Ljava/io/FileInputStream;
    :try_start_36
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 1491
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v13, 0x0

    invoke-interface {v6, v8, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1495
    :cond_3e
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 1496
    .local v11, "type":I
    const/4 v13, 0x2

    if-ne v11, v13, :cond_d5

    .line 1497
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1498
    .local v10, "tag":Ljava/lang/String;
    const-string/jumbo v13, "wp"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d5

    .line 1499
    const/4 v13, 0x0

    const-string/jumbo v14, "width"

    invoke-interface {v6, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 1500
    const/4 v13, 0x0

    const-string v14, "height"

    invoke-interface {v6, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 1502
    iget-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string/jumbo v14, "paddingLeft"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14, v15}, getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Landroid/graphics/Rect;->left:I

    .line 1503
    iget-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string/jumbo v14, "paddingTop"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14, v15}, getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Landroid/graphics/Rect;->top:I

    .line 1504
    iget-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string/jumbo v14, "paddingRight"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14, v15}, getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Landroid/graphics/Rect;->right:I

    .line 1505
    iget-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const-string/jumbo v14, "paddingBottom"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v14, v15}, getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    iput v14, v13, Landroid/graphics/Rect;->bottom:I

    .line 1506
    const/4 v13, 0x0

    const-string v14, "name"

    invoke-interface {v6, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 1507
    const/4 v13, 0x0

    const-string v14, "component"

    invoke-interface {v6, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1508
    .local v2, "comp":Ljava/lang/String;
    if-eqz v2, :cond_107

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    :goto_bb
    iput-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 1511
    iget-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v13, :cond_cf

    const-string v13, "android"

    iget-object v14, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d5

    .line 1514
    :cond_cf
    move-object/from16 v0, p0

    iget-object v13, v0, mImageWallpaper:Landroid/content/ComponentName;

    iput-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_d5
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_d5} :catch_1dd
    .catch Ljava/lang/NullPointerException; {:try_start_36 .. :try_end_d5} :catch_1d9
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_d5} :catch_1d5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_d5} :catch_1d2
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_d5} :catch_1cf
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_36 .. :try_end_d5} :catch_1cc

    .line 1526
    .end local v2    # "comp":Ljava/lang/String;
    .end local v10    # "tag":Ljava/lang/String;
    :cond_d5
    const/4 v13, 0x1

    if-ne v11, v13, :cond_3e

    .line 1527
    const/4 v9, 0x1

    move-object v7, v8

    .line 1542
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .end local v11    # "type":I
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :goto_da
    if-eqz v7, :cond_df

    .line 1543
    :try_start_dc
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_df} :catch_1c9

    .line 1549
    :cond_df
    :goto_df
    if-nez v9, :cond_f6

    .line 1550
    const/4 v13, -0x1

    iput v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 1551
    const/4 v13, -0x1

    iput v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 1552
    iget-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Rect;->set(IIII)V

    .line 1553
    const-string v13, ""

    iput-object v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 1557
    :cond_f6
    invoke-direct/range {p0 .. p0}, getMaximumSizeDimension()I

    move-result v1

    .line 1558
    .local v1, "baseSize":I
    iget v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    if-ge v13, v1, :cond_100

    .line 1559
    iput v1, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 1561
    :cond_100
    iget v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    if-ge v13, v1, :cond_106

    .line 1562
    iput v1, v12, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 1564
    :cond_106
    return-void

    .line 1508
    .end local v1    # "baseSize":I
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "comp":Ljava/lang/String;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "tag":Ljava/lang/String;
    .restart local v11    # "type":I
    :cond_107
    const/4 v13, 0x0

    goto :goto_bb

    .line 1528
    .end local v2    # "comp":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "stream":Ljava/io/FileInputStream;
    .end local v10    # "tag":Ljava/lang/String;
    .end local v11    # "type":I
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_109
    move-exception v3

    .line 1529
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_10a
    const-string v13, "WallpaperManagerService"

    const-string v14, "no current wallpaper -- first boot?"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_da

    .line 1530
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_112
    move-exception v3

    .line 1531
    .local v3, "e":Ljava/lang/NullPointerException;
    :goto_113
    const-string v13, "WallpaperManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "failed parsing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_da

    .line 1532
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_136
    move-exception v3

    .line 1533
    .local v3, "e":Ljava/lang/NumberFormatException;
    :goto_137
    const-string v13, "WallpaperManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "failed parsing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_da

    .line 1534
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_15a
    move-exception v3

    .line 1535
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_15b
    const-string v13, "WallpaperManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "failed parsing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_da

    .line 1536
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_17f
    move-exception v3

    .line 1537
    .local v3, "e":Ljava/io/IOException;
    :goto_180
    const-string v13, "WallpaperManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "failed parsing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_da

    .line 1538
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1a4
    move-exception v3

    .line 1539
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_1a5
    const-string v13, "WallpaperManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "failed parsing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_da

    .line 1545
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1c9
    move-exception v13

    goto/16 :goto_df

    .line 1538
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_1cc
    move-exception v3

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto :goto_1a5

    .line 1536
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_1cf
    move-exception v3

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto :goto_180

    .line 1534
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_1d2
    move-exception v3

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto :goto_15b

    .line 1532
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_1d5
    move-exception v3

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_137

    .line 1530
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_1d9
    move-exception v3

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_113

    .line 1528
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v8    # "stream":Ljava/io/FileInputStream;
    :catch_1dd
    move-exception v3

    move-object v7, v8

    .end local v8    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_10a
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .registers 7
    .param p0, "userId"    # I

    .prologue
    .line 1400
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper_info.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1401
    .local v0, "base":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private migrateFromOld()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1452
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1453
    .local v3, "oldWallpaper":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/system/wallpaper_info.xml"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1454
    .local v2, "oldInfo":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1455
    new-instance v1, Ljava/io/File;

    invoke-static {v6}, getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1456
    .local v1, "newWallpaper":Ljava/io/File;
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1458
    .end local v1    # "newWallpaper":Ljava/io/File;
    :cond_24
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 1459
    new-instance v0, Ljava/io/File;

    invoke-static {v6}, getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper_info.xml"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1460
    .local v0, "newInfo":Ljava/io/File;
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1462
    .end local v0    # "newInfo":Ljava/io/File;
    :cond_39
    return-void
.end method

.method private notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 8
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1377
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$400(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1378
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v2, :cond_1b

    .line 1380
    :try_start_b
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$400(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_36

    .line 1378
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1387
    :cond_1b
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$400(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1388
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1389
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, mCurrentUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1390
    return-void

    .line 1381
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_36
    move-exception v3

    goto :goto_18
.end method

.method private registerBackupRestoreReceiver()V
    .registers 4

    .prologue
    .line 1853
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1854
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.intent.action.REQUEST_BACKUP_WALLPAPER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1855
    const-string v1, "android.intent.action.RESPONSE_BACKUP_WALLPAPER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1856
    const-string v1, "com.sec.android.intent.action.REQUEST_RESTORE_WALLPAPER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1857
    const-string v1, "android.intent.action.RESPONSE_RESTORE_WALLPAPER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1858
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperBackupRequestReciever;

    invoke-direct {v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperBackupRequestReciever;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v1, p0, mBackupStatus:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperBackupRequestReciever;

    .line 1859
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mBackupStatus:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperBackupRequestReciever;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1860
    return-void
.end method

.method private registerSimChangedReceiver()V
    .registers 4

    .prologue
    .line 1842
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1845
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1847
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v1, p0, mReceiver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;

    .line 1848
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mReceiver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperSimChangeObserver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1849
    return-void
.end method

.method private saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 10
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1405
    iget v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v5}, makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v1

    .line 1406
    .local v1, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v3, 0x0

    .line 1408
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_7
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_cd

    .line 1409
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .local v4, "stream":Ljava/io/FileOutputStream;
    :try_start_11
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1410
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v5, "utf-8"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1411
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1413
    const/4 v5, 0x0

    const-string/jumbo v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1414
    const/4 v5, 0x0

    const-string/jumbo v6, "width"

    iget v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1415
    const/4 v5, 0x0

    const-string v6, "height"

    iget v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1416
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-eqz v5, :cond_5a

    .line 1417
    const/4 v5, 0x0

    const-string/jumbo v6, "paddingLeft"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1419
    :cond_5a
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-eqz v5, :cond_6f

    .line 1420
    const/4 v5, 0x0

    const-string/jumbo v6, "paddingTop"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1422
    :cond_6f
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-eqz v5, :cond_84

    .line 1423
    const/4 v5, 0x0

    const-string/jumbo v6, "paddingRight"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1425
    :cond_84
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-eqz v5, :cond_99

    .line 1426
    const/4 v5, 0x0

    const-string/jumbo v6, "paddingBottom"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1428
    :cond_99
    const/4 v5, 0x0

    const-string v6, "name"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1429
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_bb

    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iget-object v6, p0, mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bb

    .line 1431
    const/4 v5, 0x0

    const-string v6, "component"

    iget-object v7, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1434
    :cond_bb
    const/4 v5, 0x0

    const-string/jumbo v6, "wp"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1436
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1437
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1438
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_cb} :catch_d9

    move-object v3, v4

    .line 1449
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :goto_cc
    return-void

    .line 1439
    :catch_cd
    move-exception v0

    .line 1441
    .local v0, "e":Ljava/io/IOException;
    :goto_ce
    if-eqz v3, :cond_d3

    .line 1442
    :try_start_d0
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d7

    .line 1447
    :cond_d3
    :goto_d3
    invoke-virtual {v1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    goto :goto_cc

    .line 1444
    :catch_d7
    move-exception v5

    goto :goto_d3

    .line 1439
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_d9
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_ce
.end method

.method private setKnoxWallpaper(I)V
    .registers 14
    .param p1, "userId"    # I

    .prologue
    .line 1925
    iget-object v9, p0, mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1926
    :try_start_3
    const-string v8, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setKnoxWallpaper userId-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    iget-object v8, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1929
    .local v7, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v7, :cond_42

    .line 1930
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wallpaper not yet initialized for user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1964
    .end local v7    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_3f
    move-exception v8

    monitor-exit v9
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v8

    .line 1932
    .restart local v7    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_42
    :try_start_42
    invoke-virtual {p0}, getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v8

    if-nez v8, :cond_51

    .line 1933
    const-string v8, "WallpaperManagerService"

    const-string v10, "PMS cannot be null"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    monitor-exit v9

    .line 1966
    :goto_50
    return-void

    .line 1936
    :cond_51
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_54
    .catchall {:try_start_42 .. :try_end_54} :catchall_3f

    move-result-wide v4

    .line 1938
    .local v4, "ident":J
    :try_start_55
    invoke-virtual {p0}, getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/server/pm/PersonaManagerService;->getKnoxWallpaper(I)Ljava/io/InputStream;

    move-result-object v0

    .line 1939
    .local v0, "data":Ljava/io/InputStream;
    if-nez v0, :cond_7c

    .line 1940
    const-string v8, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "KNOX wallpaper stream cannot be null for userId-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_77} :catch_aa
    .catchall {:try_start_55 .. :try_end_77} :catchall_c8

    .line 1962
    :try_start_77
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v9
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_3f

    goto :goto_50

    .line 1943
    :cond_7c
    const/4 v8, 0x0

    :try_start_7d
    invoke-virtual {p0, v8, v7}, updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 1944
    .local v6, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v6, :cond_86

    .line 1945
    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_86} :catch_aa
    .catchall {:try_start_7d .. :try_end_86} :catchall_c8

    .line 1947
    :cond_86
    const/4 v2, 0x0

    .line 1949
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_87
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v6}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_8c
    .catchall {:try_start_87 .. :try_end_8c} :catchall_9e

    .line 1950
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_8c
    invoke-direct {p0, v0, v3}, setupKnoxWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_cd

    .line 1952
    if-eqz v3, :cond_94

    .line 1953
    :try_start_91
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1955
    :cond_94
    if-eqz v0, :cond_99

    .line 1956
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_99} :catch_aa
    .catchall {:try_start_91 .. :try_end_99} :catchall_c8

    .line 1962
    :cond_99
    :try_start_99
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1964
    .end local v0    # "data":Ljava/io/InputStream;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_9c
    monitor-exit v9
    :try_end_9d
    .catchall {:try_start_99 .. :try_end_9d} :catchall_3f

    goto :goto_50

    .line 1952
    .restart local v0    # "data":Ljava/io/InputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_9e
    move-exception v8

    :goto_9f
    if-eqz v2, :cond_a4

    .line 1953
    :try_start_a1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1955
    :cond_a4
    if-eqz v0, :cond_a9

    .line 1956
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_a9
    throw v8
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_aa} :catch_aa
    .catchall {:try_start_a1 .. :try_end_aa} :catchall_c8

    .line 1959
    .end local v0    # "data":Ljava/io/InputStream;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_aa
    move-exception v1

    .line 1960
    .local v1, "e":Ljava/lang/Exception;
    :try_start_ab
    const-string v8, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setKnoxWallpaper Exception-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catchall {:try_start_ab .. :try_end_c4} :catchall_c8

    .line 1962
    :try_start_c4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_9c

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_c8
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
    :try_end_cd
    .catchall {:try_start_c4 .. :try_end_cd} :catchall_3f

    .line 1952
    .restart local v0    # "data":Ljava/io/InputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_cd
    move-exception v8

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_9f
.end method

.method private setupKnoxWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .registers 6
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1970
    const v2, 0x8000

    new-array v1, v2, [B

    .line 1972
    .local v1, "buffer":[B
    :goto_5
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "amt":I
    if-lez v0, :cond_10

    .line 1973
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_5

    .line 1975
    :cond_10
    return-void
.end method

.method private simInserted(I)Z
    .registers 5
    .param p1, "simSlot"    # I

    .prologue
    .line 1783
    const-string/jumbo v1, "ril.ICC_TYPE"

    invoke-static {v1, p1}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1787
    .local v0, "iccType":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1789
    const/4 v1, 0x1

    .line 1791
    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method


# virtual methods
.method attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 14
    .param p1, "conn"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1365
    :try_start_2
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v3, 0x7dd

    const/4 v4, 0x0

    iget v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    iget v6, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    iget-object v7, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14

    .line 1374
    :cond_13
    :goto_13
    return-void

    .line 1368
    :catch_14
    move-exception v8

    .line 1369
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "WallpaperManagerService"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1370
    iget-boolean v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v0, :cond_13

    move-object v0, p0

    move-object v1, v10

    move v2, v9

    move v3, v9

    move-object v4, p2

    move-object v5, v10

    .line 1371
    invoke-virtual/range {v0 .. v5}, bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto :goto_13
.end method

.method bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .registers 26
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "force"    # Z
    .param p3, "fromUser"    # Z
    .param p4, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p5, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1193
    if-nez p2, :cond_20

    .line 1194
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_20

    .line 1195
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v3, :cond_12

    .line 1196
    if-nez p1, :cond_20

    .line 1199
    const/4 v3, 0x1

    .line 1327
    :goto_11
    return v3

    .line 1201
    :cond_12
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1204
    const/4 v3, 0x1

    goto :goto_11

    .line 1210
    :cond_20
    if-nez p1, :cond_32

    .line 1211
    :try_start_22
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p1

    .line 1212
    if-nez p1, :cond_32

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, mImageWallpaper:Landroid/content/ComponentName;

    move-object/from16 p1, v0

    .line 1220
    :cond_32
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move/from16 v16, v0

    .line 1221
    .local v16, "serviceUserId":I
    move-object/from16 v0, p0

    iget-object v3, v0, mIPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v4, 0x1080

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v3, v0, v4, v1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v17

    .line 1223
    .local v17, "si":Landroid/content/pm/ServiceInfo;
    if-nez v17, :cond_6a

    .line 1225
    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted wallpaper "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is unavailable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    const/4 v3, 0x0

    goto :goto_11

    .line 1228
    :cond_6a
    const-string v3, "android.permission.BIND_WALLPAPER"

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c3

    .line 1229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected service does not require android.permission.BIND_WALLPAPER: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1232
    .local v12, "msg":Ljava/lang/String;
    if-eqz p3, :cond_bb

    .line 1233
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_93} :catch_93

    .line 1319
    .end local v12    # "msg":Ljava/lang/String;
    .end local v16    # "serviceUserId":I
    .end local v17    # "si":Landroid/content/pm/ServiceInfo;
    :catch_93
    move-exception v9

    .line 1320
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1321
    .restart local v12    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_23b

    .line 1322
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1235
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v16    # "serviceUserId":I
    .restart local v17    # "si":Landroid/content/pm/ServiceInfo;
    :cond_bb
    :try_start_bb
    const-string v3, "WallpaperManagerService"

    invoke-static {v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 1239
    .end local v12    # "msg":Ljava/lang/String;
    :cond_c3
    const/16 v18, 0x0

    .line 1241
    .local v18, "wi":Landroid/app/WallpaperInfo;
    new-instance v11, Landroid/content/Intent;

    const-string v3, "android.service.wallpaper.WallpaperService"

    invoke-direct {v11, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1242
    .local v11, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_176

    move-object/from16 v0, p0

    iget-object v3, v0, mImageWallpaper:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_176

    .line 1244
    move-object/from16 v0, p0

    iget-object v3, v0, mIPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    move/from16 v0, v16

    invoke-interface {v3, v11, v4, v5, v0}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v14

    .line 1248
    .local v14, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_f3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-ge v10, v3, :cond_12a

    .line 1249
    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v15, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1250
    .local v15, "rsi":Landroid/content/pm/ServiceInfo;
    iget-object v3, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16b

    iget-object v3, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_116
    .catch Landroid/os/RemoteException; {:try_start_bb .. :try_end_116} :catch_93

    move-result v3

    if-eqz v3, :cond_16b

    .line 1253
    :try_start_119
    new-instance v18, Landroid/app/WallpaperInfo;

    .end local v18    # "wi":Landroid/app/WallpaperInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v3}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_12a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_119 .. :try_end_12a} :catch_149
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_12a} :catch_15a
    .catch Landroid/os/RemoteException; {:try_start_119 .. :try_end_12a} :catch_93

    .line 1270
    .end local v15    # "rsi":Landroid/content/pm/ServiceInfo;
    .restart local v18    # "wi":Landroid/app/WallpaperInfo;
    :cond_12a
    if-nez v18, :cond_176

    .line 1271
    :try_start_12c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selected service is not a wallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1273
    .restart local v12    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_16e

    .line 1274
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1254
    .end local v12    # "msg":Ljava/lang/String;
    .end local v18    # "wi":Landroid/app/WallpaperInfo;
    .restart local v15    # "rsi":Landroid/content/pm/ServiceInfo;
    :catch_149
    move-exception v9

    .line 1255
    .local v9, "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz p3, :cond_152

    .line 1256
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1258
    :cond_152
    const-string v3, "WallpaperManagerService"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1259
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 1260
    .end local v9    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_15a
    move-exception v9

    .line 1261
    .local v9, "e":Ljava/io/IOException;
    if-eqz p3, :cond_163

    .line 1262
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1264
    :cond_163
    const-string v3, "WallpaperManagerService"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1265
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 1248
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v18    # "wi":Landroid/app/WallpaperInfo;
    :cond_16b
    add-int/lit8 v10, v10, 0x1

    goto :goto_f3

    .line 1276
    .end local v15    # "rsi":Landroid/content/pm/ServiceInfo;
    .restart local v12    # "msg":Ljava/lang/String;
    :cond_16e
    const-string v3, "WallpaperManagerService"

    invoke-static {v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 1283
    .end local v10    # "i":I
    .end local v12    # "msg":Ljava/lang/String;
    .end local v14    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_176
    new-instance v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p4

    invoke-direct {v13, v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1284
    .local v13, "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1285
    const-string v3, "android.intent.extra.client_label"

    const v4, 0x1040549

    invoke-virtual {v11, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1287
    const-string v19, "android.intent.extra.client_intent"

    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    const v7, 0x104054a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    move/from16 v0, v16

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1292
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    const v4, 0x20000001

    new-instance v5, Landroid/os/UserHandle;

    move/from16 v0, v16

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v11, v13, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_1f6

    .line 1295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to bind service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1297
    .restart local v12    # "msg":Ljava/lang/String;
    if-eqz p3, :cond_1ee

    .line 1298
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1300
    :cond_1ee
    const-string v3, "WallpaperManagerService"

    invoke-static {v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 1303
    .end local v12    # "msg":Ljava/lang/String;
    :cond_1f6
    move-object/from16 v0, p4

    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move-object/from16 v0, p0

    iget v4, v0, mCurrentUserId:I

    if-ne v3, v4, :cond_20f

    move-object/from16 v0, p0

    iget-object v3, v0, mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v3, :cond_20f

    .line 1304
    move-object/from16 v0, p0

    iget-object v3, v0, mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1306
    :cond_20f
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    iput-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1307
    move-object/from16 v0, p4

    iput-object v13, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1308
    move-object/from16 v0, p5

    iput-object v0, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;
    :try_end_21d
    .catch Landroid/os/RemoteException; {:try_start_12c .. :try_end_21d} :catch_93

    .line 1310
    :try_start_21d
    move-object/from16 v0, p4

    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    move-object/from16 v0, p0

    iget v4, v0, mCurrentUserId:I

    if-ne v3, v4, :cond_238

    .line 1313
    move-object/from16 v0, p0

    iget-object v3, v0, mIWindowManager:Landroid/view/IWindowManager;

    iget-object v4, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    const/16 v5, 0x7dd

    invoke-interface {v3, v4, v5}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V

    .line 1315
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_238
    .catch Landroid/os/RemoteException; {:try_start_21d .. :try_end_238} :catch_243

    .line 1327
    :cond_238
    :goto_238
    const/4 v3, 0x1

    goto/16 :goto_11

    .line 1324
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .end local v16    # "serviceUserId":I
    .end local v17    # "si":Landroid/content/pm/ServiceInfo;
    .end local v18    # "wi":Landroid/app/WallpaperInfo;
    .local v9, "e":Landroid/os/RemoteException;
    .restart local v12    # "msg":Ljava/lang/String;
    :cond_23b
    const-string v3, "WallpaperManagerService"

    invoke-static {v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    const/4 v3, 0x0

    goto/16 :goto_11

    .line 1317
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v12    # "msg":Ljava/lang/String;
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v13    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .restart local v16    # "serviceUserId":I
    .restart local v17    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v18    # "wi":Landroid/app/WallpaperInfo;
    :catch_243
    move-exception v3

    goto :goto_238
.end method

.method public checkWallpaperForMultiSimSkip()Z
    .registers 4

    .prologue
    .line 1701
    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1702
    .local v0, "mProductName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1704
    .local v1, "multiSIM_skip":Z
    const-string/jumbo v2, "trlteduos"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "klteduos"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "ctc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1705
    :cond_21
    const/4 v1, 0x1

    .line 1708
    :cond_22
    return v1
.end method

.method public clearWallpaper()V
    .registers 5

    .prologue
    .line 742
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 743
    const/4 v0, 0x0

    :try_start_4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    .line 744
    monitor-exit v1

    .line 745
    return-void

    .line 744
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw v0
.end method

.method clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 3
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1359
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1360
    invoke-virtual {p0, p1}, detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1361
    return-void
.end method

.method clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V
    .registers 16
    .param p1, "defaultFailed"    # Z
    .param p2, "userId"    # I
    .param p3, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    const/4 v1, 0x0

    .line 748
    iget-object v0, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 749
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    new-instance v8, Ljava/io/File;

    invoke-static {p2}, getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "wallpaper"

    invoke-direct {v8, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 750
    .local v8, "f":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 751
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 753
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 755
    .local v10, "ident":J
    const/4 v6, 0x0

    .line 757
    .local v6, "e":Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    :try_start_24
    iput-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 758
    iget v0, p0, mCurrentUserId:I
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_28} :catch_40
    .catchall {:try_start_24 .. :try_end_28} :catchall_56

    if-eq p2, v0, :cond_2e

    .line 781
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 783
    :goto_2d
    return-void

    .line 759
    :cond_2e
    if-eqz p1, :cond_32

    :try_start_30
    iget-object v1, p0, mImageWallpaper:Landroid/content/ComponentName;

    :cond_32
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_39} :catch_40
    .catchall {:try_start_30 .. :try_end_39} :catchall_56

    move-result v0

    if-eqz v0, :cond_42

    .line 781
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2d

    .line 764
    :catch_40
    move-exception v7

    .line 765
    .local v7, "e1":Ljava/lang/IllegalArgumentException;
    move-object v6, v7

    .line 772
    .end local v7    # "e1":Ljava/lang/IllegalArgumentException;
    :cond_42
    :try_start_42
    const-string v0, "WallpaperManagerService"

    const-string v1, "Default wallpaper component not found!"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 773
    invoke-virtual {p0, v4}, clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_56

    .line 774
    if-eqz p3, :cond_52

    .line 776
    const/4 v0, 0x0

    :try_start_4f
    invoke-interface {p3, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_52} :catch_5b
    .catchall {:try_start_4f .. :try_end_52} :catchall_56

    .line 781
    :cond_52
    :goto_52
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2d

    :catchall_56
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 777
    :catch_5b
    move-exception v0

    goto :goto_52
.end method

.method detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 5
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v2, 0x0

    .line 1331
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_3e

    .line 1332
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_17

    .line 1334
    :try_start_b
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_43

    .line 1337
    :goto_13
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 1339
    :cond_17
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_24

    .line 1341
    :try_start_1d
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_24} :catch_41

    .line 1345
    :cond_24
    :goto_24
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1349
    :try_start_2b
    iget-object v0, p0, mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_34} :catch_3f

    .line 1352
    :goto_34
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 1353
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 1354
    iput-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1356
    :cond_3e
    return-void

    .line 1350
    :catch_3f
    move-exception v0

    goto :goto_34

    .line 1342
    :catch_41
    move-exception v0

    goto :goto_24

    .line 1335
    :catch_43
    move-exception v0

    goto :goto_13
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1863
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_33

    .line 1866
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump wallpaper service from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1904
    :goto_32
    return-void

    .line 1872
    :cond_33
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1873
    :try_start_36
    const-string v3, "Current Wallpaper Service state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1874
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3c
    iget-object v3, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_f2

    .line 1875
    iget-object v3, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1876
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " User "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1877
    const-string v3, "  mWidth="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1878
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1879
    const-string v3, " mHeight="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1880
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 1881
    const-string v3, "  mPadding="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1882
    const-string v3, "  mName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1883
    const-string v3, "  mWallpaperComponent="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1884
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_ee

    .line 1885
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1886
    .local v0, "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    const-string v3, "  Wallpaper connection "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1887
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1888
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1889
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v3, :cond_c1

    .line 1890
    const-string v3, "    mInfo.component="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1891
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1893
    :cond_c1
    const-string v3, "    mToken="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1894
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mToken:Landroid/os/Binder;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1895
    const-string v3, "    mService="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1896
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1897
    const-string v3, "    mEngine="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1898
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1899
    const-string v3, "    mLastDiedTime="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1900
    iget-wide v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {p2, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    .line 1874
    .end local v0    # "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_ee
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3c

    .line 1903
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_f2
    monitor-exit v4

    goto/16 :goto_32

    .end local v1    # "i":I
    :catchall_f5
    move-exception v3

    monitor-exit v4
    :try_end_f7
    .catchall {:try_start_36 .. :try_end_f7} :catchall_f5

    throw v3
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 567
    invoke-super {p0}, Landroid/app/IWallpaperManager$Stub;->finalize()V

    .line 568
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v2, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 569
    iget-object v2, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 570
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 572
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1c
    return-void
.end method

.method public getCurrSimID()I
    .registers 14

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1735
    const/4 v3, 0x0

    .line 1737
    .local v3, "currSimId":I
    const-string/jumbo v0, "ril.ICC_TYPE"

    .line 1738
    .local v0, "SP_KEY_SIM_STATE_SIM1":Ljava/lang/String;
    const-string/jumbo v1, "ril.ICC_TYPE2"

    .line 1739
    .local v1, "SP_KEY_SIM_STATE_SIM2":Ljava/lang/String;
    const-string v2, "0"

    .line 1741
    .local v2, "SP_VALUE_SIM_STATE_ABSENT":Ljava/lang/String;
    const-string/jumbo v11, "ril.ICC_TYPE"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1742
    .local v5, "sim1State":Ljava/lang/String;
    const-string/jumbo v11, "ril.ICC_TYPE2"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1744
    .local v7, "sim2State":Ljava/lang/String;
    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "phone1_on"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_84

    move v4, v9

    .line 1745
    .local v4, "sim1Enabled":Z
    :goto_2d
    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "phone2_on"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_86

    move v6, v9

    .line 1747
    .local v6, "sim2Enabled":Z
    :goto_3d
    const-string/jumbo v10, "ril.MSIMM"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1749
    .local v8, "simSlot":Ljava/lang/String;
    const-string v10, "0"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_88

    if-eqz v4, :cond_88

    const-string v10, "0"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_88

    if-eqz v6, :cond_88

    .line 1751
    const-string v9, "1"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    .line 1752
    const/4 v3, 0x1

    .line 1757
    :cond_61
    const-string v9, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCurrSimID dual sim inserted  currSimId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " simSlot : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    :goto_83
    return v3

    .end local v4    # "sim1Enabled":Z
    .end local v6    # "sim2Enabled":Z
    .end local v8    # "simSlot":Ljava/lang/String;
    :cond_84
    move v4, v10

    .line 1744
    goto :goto_2d

    .restart local v4    # "sim1Enabled":Z
    :cond_86
    move v6, v10

    .line 1745
    goto :goto_3d

    .line 1758
    .restart local v6    # "sim2Enabled":Z
    .restart local v8    # "simSlot":Ljava/lang/String;
    :cond_88
    const-string v10, "0"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v9, :cond_b2

    const-string v10, "0"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v9, :cond_b2

    .line 1760
    const/4 v3, 0x0

    .line 1761
    const-string v9, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCurrSimID no sim  currSimId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 1764
    :cond_b2
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c1

    .line 1765
    const-string v10, "1"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-ne v10, v9, :cond_e4

    .line 1766
    const/4 v3, 0x1

    .line 1776
    :cond_c1
    :goto_c1
    const-string v9, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCurrSimID single sim inserted  currSimId : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " simSlot : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    .line 1768
    :cond_e4
    if-nez v4, :cond_ea

    if-eqz v6, :cond_ea

    .line 1769
    const/4 v3, 0x1

    goto :goto_c1

    .line 1771
    :cond_ea
    const/4 v3, 0x0

    goto :goto_c1
.end method

.method public getHeightHint()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 865
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 866
    :try_start_3
    iget-object v1, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 867
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    monitor-exit v2

    return v1

    .line 868
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 671
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_10

    .line 672
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getName() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_10
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 675
    :try_start_13
    iget-object v0, p0, mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 676
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_20

    throw v0
.end method

.method getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;
    .registers 3

    .prologue
    .line 1919
    const-string/jumbo v1, "persona"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    .line 1920
    .local v0, "pms":Lcom/android/server/pm/PersonaManagerService;
    return-object v0
.end method

.method public getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .registers 16
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "outParams"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 907
    iget-object v9, p0, mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 908
    :try_start_4
    invoke-direct {p0}, SimStatusVerify()I

    move-result v0

    .line 913
    .local v0, "SimStatusFlag":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 914
    .local v1, "callingUid":I
    const/4 v7, 0x0

    .line 915
    .local v7, "wallpaperUserId":I
    const/16 v10, 0x3e8

    if-ne v1, v10, :cond_91

    .line 916
    iget v7, p0, mCurrentUserId:I

    .line 920
    :goto_13
    iget-boolean v10, p0, mBackupRunning:Z

    if-eqz v10, :cond_18

    .line 921
    const/4 v7, 0x0

    .line 923
    :cond_18
    iget-object v10, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_9f

    .line 925
    .local v6, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz p2, :cond_31

    .line 926
    :try_start_22
    const-string/jumbo v10, "width"

    iget v11, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 927
    const-string v10, "height"

    iget v11, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 930
    :cond_31
    const-string v4, ""

    .line 931
    .local v4, "fileName":Ljava/lang/String;
    const-string v5, ""

    .line 932
    .local v5, "nFile":Ljava/lang/String;
    if-eqz v0, :cond_3d

    .line 933
    add-int/lit8 v10, v0, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 935
    :cond_3d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "wallpaper"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 937
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$400(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 938
    new-instance v3, Ljava/io/File;

    invoke-static {v7}, getWallpaperDir(I)Ljava/io/File;

    move-result-object v10

    invoke-direct {v3, v10, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 939
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_97

    .line 940
    const-string v10, "WallpaperManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WallpaperManagerService  SimStatusFlag : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " WALLPAPER_FILE:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not existed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_8f} :catch_a2
    .catchall {:try_start_22 .. :try_end_8f} :catchall_9f

    .line 941
    :try_start_8f
    monitor-exit v9

    .line 948
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "nFile":Ljava/lang/String;
    :goto_90
    return-object v8

    .line 918
    .end local v6    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_91
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_94
    .catchall {:try_start_8f .. :try_end_94} :catchall_9f

    move-result v7

    goto/16 :goto_13

    .line 943
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "fileName":Ljava/lang/String;
    .restart local v5    # "nFile":Ljava/lang/String;
    .restart local v6    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_97
    const/high16 v10, 0x10000000

    :try_start_99
    invoke-static {v3, v10}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_9c
    .catch Ljava/io/FileNotFoundException; {:try_start_99 .. :try_end_9c} :catch_a2
    .catchall {:try_start_99 .. :try_end_9c} :catchall_9f

    move-result-object v8

    :try_start_9d
    monitor-exit v9

    goto :goto_90

    .line 949
    .end local v0    # "SimStatusFlag":I
    .end local v1    # "callingUid":I
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "nFile":Ljava/lang/String;
    .end local v6    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v7    # "wallpaperUserId":I
    :catchall_9f
    move-exception v8

    monitor-exit v9
    :try_end_a1
    .catchall {:try_start_9d .. :try_end_a1} :catchall_9f

    throw v8

    .line 944
    .restart local v0    # "SimStatusFlag":I
    .restart local v1    # "callingUid":I
    .restart local v6    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v7    # "wallpaperUserId":I
    :catch_a2
    move-exception v2

    .line 946
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_a3
    const-string v10, "WallpaperManagerService"

    const-string v11, "Error getting wallpaper"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 948
    monitor-exit v9
    :try_end_ab
    .catchall {:try_start_a3 .. :try_end_ab} :catchall_9f

    goto :goto_90
.end method

.method public getWallpaperForMultiSim(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    .registers 16
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "outParams"    # Landroid/os/Bundle;
    .param p3, "simSlot"    # I

    .prologue
    const/4 v7, 0x0

    .line 955
    iget-object v8, p0, mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 958
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 959
    .local v0, "callingUid":I
    const/4 v6, 0x0

    .line 960
    .local v6, "wallpaperUserId":I
    const/16 v9, 0x3e8

    if-ne v0, v9, :cond_9c

    .line 961
    iget v6, p0, mCurrentUserId:I

    .line 965
    :goto_f
    iget-boolean v9, p0, mBackupRunning:Z

    if-eqz v9, :cond_14

    .line 966
    const/4 v6, 0x0

    .line 968
    :cond_14
    iget-object v9, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_aa

    .line 970
    .local v5, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz p2, :cond_2d

    .line 971
    :try_start_1e
    const-string/jumbo v9, "width"

    iget v10, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    invoke-virtual {p2, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 972
    const-string v9, "height"

    iget v10, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    invoke-virtual {p2, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 975
    :cond_2d
    const-string v3, ""

    .line 976
    .local v3, "fileName":Ljava/lang/String;
    const-string v4, ""

    .line 977
    .local v4, "nFile":Ljava/lang/String;
    const/4 v9, 0x1

    if-ne p3, v9, :cond_3a

    .line 978
    add-int/lit8 v9, p3, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 980
    :cond_3a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "wallpaper"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 982
    const-string v9, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "callback register : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$400(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 984
    new-instance v2, Ljava/io/File;

    invoke-static {v6}, getWallpaperDir(I)Ljava/io/File;

    move-result-object v9

    invoke-direct {v2, v9, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 986
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_a2

    .line 987
    const-string v9, "WallpaperManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WallpaperManagerService WALLPAPER_FILE:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not existed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_9a} :catch_ad
    .catchall {:try_start_1e .. :try_end_9a} :catchall_aa

    .line 988
    :try_start_9a
    monitor-exit v8

    .line 995
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "nFile":Ljava/lang/String;
    :goto_9b
    return-object v7

    .line 963
    .end local v5    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_9c
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_9f
    .catchall {:try_start_9a .. :try_end_9f} :catchall_aa

    move-result v6

    goto/16 :goto_f

    .line 990
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v4    # "nFile":Ljava/lang/String;
    .restart local v5    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_a2
    const/high16 v9, 0x10000000

    :try_start_a4
    invoke-static {v2, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_a7
    .catch Ljava/io/FileNotFoundException; {:try_start_a4 .. :try_end_a7} :catch_ad
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_aa

    move-result-object v7

    :try_start_a8
    monitor-exit v8

    goto :goto_9b

    .line 996
    .end local v0    # "callingUid":I
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "nFile":Ljava/lang/String;
    .end local v5    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v6    # "wallpaperUserId":I
    :catchall_aa
    move-exception v7

    monitor-exit v8
    :try_end_ac
    .catchall {:try_start_a8 .. :try_end_ac} :catchall_aa

    throw v7

    .line 991
    .restart local v0    # "callingUid":I
    .restart local v5    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v6    # "wallpaperUserId":I
    :catch_ad
    move-exception v1

    .line 993
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_ae
    const-string v9, "WallpaperManagerService"

    const-string v10, "Error getting wallpaper"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 995
    monitor-exit v8
    :try_end_b6
    .catchall {:try_start_ae .. :try_end_b6} :catchall_aa

    goto :goto_9b
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .registers 5

    .prologue
    .line 1001
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1002
    .local v0, "userId":I
    iget-boolean v2, p0, mBackupRunning:Z

    if-eqz v2, :cond_9

    .line 1003
    const/4 v0, 0x0

    .line 1005
    :cond_9
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1006
    :try_start_c
    iget-object v2, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1007
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_1e

    .line 1008
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    monitor-exit v3

    .line 1010
    :goto_1d
    return-object v2

    :cond_1e
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_1d

    .line 1011
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_21

    throw v2
.end method

.method public getWidthHint()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 858
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 859
    :try_start_3
    iget-object v1, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 860
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    monitor-exit v2

    return v1

    .line 861
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public hasNamedWallpaper(Ljava/lang/String;)Z
    .registers 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 786
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 788
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_56

    move-result-wide v2

    .line 790
    .local v2, "ident":J
    :try_start_7
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_51

    move-result-object v4

    .line 792
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_16
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 794
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 795
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget-object v6, p0, mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 796
    .local v5, "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v5, :cond_44

    .line 798
    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, loadSettingsLocked(I)V

    .line 799
    iget-object v6, p0, mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 801
    .restart local v5    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_44
    if-eqz v5, :cond_1d

    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 802
    const/4 v6, 0x1

    monitor-exit v7

    .line 806
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_50
    return v6

    .line 792
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_51
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 805
    .end local v2    # "ident":J
    :catchall_56
    move-exception v6

    monitor-exit v7
    :try_end_58
    .catchall {:try_start_16 .. :try_end_58} :catchall_56

    throw v6

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "ident":J
    .restart local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_59
    :try_start_59
    monitor-exit v7
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_56

    .line 806
    const/4 v6, 0x0

    goto :goto_50
.end method

.method public initializeKnoxWallpaper(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 2008
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeKnoxWallpaper userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2010
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2011
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2012
    return-void
.end method

.method public loadKnoxWallpaperSettings(I)V
    .registers 7
    .param p1, "personaId"    # I

    .prologue
    .line 1979
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1980
    :try_start_3
    iput p1, p0, mCurrentUserId:I

    .line 1981
    iget-object v1, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1982
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_1c

    .line 1983
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-direct {v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(I)V

    .line 1984
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1985
    invoke-direct {p0, p1}, loadSettingsLocked(I)V

    .line 1988
    :cond_1c
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-nez v1, :cond_2c

    .line 1989
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 1990
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 1993
    :cond_2c
    const-string v1, "WallpaperManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " postponing showing wallpaper for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    monitor-exit v2

    .line 1995
    return-void

    .line 1994
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_46
    move-exception v1

    monitor-exit v2
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v1
.end method

.method onRemoveUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 694
    const/4 v2, 0x1

    if-ge p1, v2, :cond_4

    .line 702
    :goto_3
    return-void

    .line 695
    :cond_4
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 696
    :try_start_7
    invoke-virtual {p0, p1}, onStoppingUser(I)V

    .line 697
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v4, "wallpaper"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 698
    .local v0, "wallpaperFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 699
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v4, "wallpaper_info.xml"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 700
    .local v1, "wallpaperInfoFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 701
    monitor-exit v3

    goto :goto_3

    .end local v0    # "wallpaperFile":Ljava/io/File;
    .end local v1    # "wallpaperInfoFile":Ljava/io/File;
    :catchall_2a
    move-exception v2

    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2a

    throw v2
.end method

.method onStoppingUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 680
    const/4 v1, 0x1

    if-ge p1, v1, :cond_4

    .line 691
    :goto_3
    return-void

    .line 681
    :cond_4
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 682
    :try_start_7
    iget-object v1, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 683
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_22

    .line 684
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-eqz v1, :cond_1d

    .line 685
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 686
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 688
    :cond_1d
    iget-object v1, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 690
    :cond_22
    monitor-exit v2

    goto :goto_3

    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw v1
.end method

.method restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 23
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1626
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_14c

    const-string/jumbo v17, "res:"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x4

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14c

    .line 1627
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 1629
    .local v14, "resName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1630
    .local v10, "pkg":Ljava/lang/String;
    const/16 v17, 0x3a

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1631
    .local v5, "colon":I
    if-lez v5, :cond_48

    .line 1632
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1635
    :cond_48
    const/4 v9, 0x0

    .line 1636
    .local v9, "ident":Ljava/lang/String;
    const/16 v17, 0x2f

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 1637
    .local v15, "slash":I
    if-lez v15, :cond_5b

    .line 1638
    add-int/lit8 v17, v15, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1641
    :cond_5b
    const/16 v16, 0x0

    .line 1642
    .local v16, "type":Ljava/lang/String;
    if-lez v5, :cond_73

    if-lez v15, :cond_73

    sub-int v17, v15, v5

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_73

    .line 1643
    add-int/lit8 v17, v5, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 1646
    :cond_73
    if-eqz v10, :cond_14c

    if-eqz v9, :cond_14c

    if-eqz v16, :cond_14c

    .line 1647
    const/4 v13, -0x1

    .line 1648
    .local v13, "resId":I
    const/4 v12, 0x0

    .line 1649
    .local v12, "res":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 1651
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_7c
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 1652
    .local v4, "c":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1653
    .local v11, "r":Landroid/content/res/Resources;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v14, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 1654
    if-nez v13, :cond_e2

    .line 1655
    const-string v17, "WallpaperManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "couldn\'t resolve identifier pkg="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " type="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ident="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7c .. :try_end_d2} :catch_1f2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7c .. :try_end_d2} :catch_17d
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_d2} :catch_1a8
    .catchall {:try_start_7c .. :try_end_d2} :catchall_1c4

    .line 1657
    const/16 v17, 0x0

    .line 1682
    if-eqz v12, :cond_d9

    .line 1684
    :try_start_d6
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_d9} :catch_1d3

    .line 1687
    :cond_d9
    :goto_d9
    if-eqz v7, :cond_e1

    .line 1688
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1690
    :try_start_de
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_1d6

    .line 1696
    .end local v4    # "c":Landroid/content/Context;
    .end local v5    # "colon":I
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "ident":Ljava/lang/String;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v11    # "r":Landroid/content/res/Resources;
    .end local v12    # "res":Ljava/io/InputStream;
    .end local v13    # "resId":I
    .end local v14    # "resName":Ljava/lang/String;
    .end local v15    # "slash":I
    .end local v16    # "type":Ljava/lang/String;
    :cond_e1
    :goto_e1
    return v17

    .line 1660
    .restart local v4    # "c":Landroid/content/Context;
    .restart local v5    # "colon":I
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "ident":Ljava/lang/String;
    .restart local v10    # "pkg":Ljava/lang/String;
    .restart local v11    # "r":Landroid/content/res/Resources;
    .restart local v12    # "res":Ljava/io/InputStream;
    .restart local v13    # "resId":I
    .restart local v14    # "resName":Ljava/lang/String;
    .restart local v15    # "slash":I
    .restart local v16    # "type":Ljava/lang/String;
    :cond_e2
    :try_start_e2
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v12

    .line 1661
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_fb

    .line 1662
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 1664
    :cond_fb
    new-instance v8, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_108
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e2 .. :try_end_108} :catch_1f2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e2 .. :try_end_108} :catch_17d
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_108} :catch_1a8
    .catchall {:try_start_e2 .. :try_end_108} :catchall_1c4

    .line 1666
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    const v17, 0x8000

    :try_start_10b
    move/from16 v0, v17

    new-array v3, v0, [B

    .line 1668
    .local v3, "buffer":[B
    :goto_10f
    invoke-virtual {v12, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "amt":I
    if-lez v2, :cond_14f

    .line 1669
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v3, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_11c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10b .. :try_end_11c} :catch_11d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10b .. :try_end_11c} :catch_1ef
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_11c} :catch_1ec
    .catchall {:try_start_10b .. :try_end_11c} :catchall_1e9

    goto :goto_10f

    .line 1675
    .end local v2    # "amt":I
    .end local v3    # "buffer":[B
    :catch_11d
    move-exception v6

    move-object v7, v8

    .line 1676
    .end local v4    # "c":Landroid/content/Context;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "r":Landroid/content/res/Resources;
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :goto_11f
    :try_start_11f
    const-string v17, "WallpaperManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package name "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " not found"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13f
    .catchall {:try_start_11f .. :try_end_13f} :catchall_1c4

    .line 1682
    if-eqz v12, :cond_144

    .line 1684
    :try_start_141
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_144} :catch_1db

    .line 1687
    :cond_144
    :goto_144
    if-eqz v7, :cond_14c

    .line 1688
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1690
    :try_start_149
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_14c} :catch_1de

    .line 1696
    .end local v5    # "colon":I
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "ident":Ljava/lang/String;
    .end local v10    # "pkg":Ljava/lang/String;
    .end local v12    # "res":Ljava/io/InputStream;
    .end local v13    # "resId":I
    .end local v14    # "resName":Ljava/lang/String;
    .end local v15    # "slash":I
    .end local v16    # "type":Ljava/lang/String;
    :cond_14c
    :goto_14c
    const/16 v17, 0x0

    goto :goto_e1

    .line 1673
    .restart local v2    # "amt":I
    .restart local v3    # "buffer":[B
    .restart local v4    # "c":Landroid/content/Context;
    .restart local v5    # "colon":I
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "ident":Ljava/lang/String;
    .restart local v10    # "pkg":Ljava/lang/String;
    .restart local v11    # "r":Landroid/content/res/Resources;
    .restart local v12    # "res":Ljava/io/InputStream;
    .restart local v13    # "resId":I
    .restart local v14    # "resName":Ljava/lang/String;
    .restart local v15    # "slash":I
    .restart local v16    # "type":Ljava/lang/String;
    :cond_14f
    :try_start_14f
    const-string v17, "WallpaperManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Restored wallpaper: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_169
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14f .. :try_end_169} :catch_11d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14f .. :try_end_169} :catch_1ef
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_169} :catch_1ec
    .catchall {:try_start_14f .. :try_end_169} :catchall_1e9

    .line 1674
    const/16 v17, 0x1

    .line 1682
    if-eqz v12, :cond_170

    .line 1684
    :try_start_16d
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_170
    .catch Ljava/io/IOException; {:try_start_16d .. :try_end_170} :catch_1d9

    .line 1687
    :cond_170
    :goto_170
    if-eqz v8, :cond_e1

    .line 1688
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1690
    :try_start_175
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_178
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_178} :catch_17a

    goto/16 :goto_e1

    .line 1691
    :catch_17a
    move-exception v18

    goto/16 :goto_e1

    .line 1677
    .end local v2    # "amt":I
    .end local v3    # "buffer":[B
    .end local v4    # "c":Landroid/content/Context;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "r":Landroid/content/res/Resources;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_17d
    move-exception v6

    .line 1678
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_17e
    :try_start_17e
    const-string v17, "WallpaperManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Resource not found: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_198
    .catchall {:try_start_17e .. :try_end_198} :catchall_1c4

    .line 1682
    if-eqz v12, :cond_19d

    .line 1684
    :try_start_19a
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_19d
    .catch Ljava/io/IOException; {:try_start_19a .. :try_end_19d} :catch_1e1

    .line 1687
    :cond_19d
    :goto_19d
    if-eqz v7, :cond_14c

    .line 1688
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1690
    :try_start_1a2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a5
    .catch Ljava/io/IOException; {:try_start_1a2 .. :try_end_1a5} :catch_1a6

    goto :goto_14c

    .line 1691
    :catch_1a6
    move-exception v17

    goto :goto_14c

    .line 1679
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1a8
    move-exception v6

    .line 1680
    .local v6, "e":Ljava/io/IOException;
    :goto_1a9
    :try_start_1a9
    const-string v17, "WallpaperManagerService"

    const-string v18, "IOException while restoring wallpaper "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b4
    .catchall {:try_start_1a9 .. :try_end_1b4} :catchall_1c4

    .line 1682
    if-eqz v12, :cond_1b9

    .line 1684
    :try_start_1b6
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1b9
    .catch Ljava/io/IOException; {:try_start_1b6 .. :try_end_1b9} :catch_1e3

    .line 1687
    :cond_1b9
    :goto_1b9
    if-eqz v7, :cond_14c

    .line 1688
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1690
    :try_start_1be
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c1
    .catch Ljava/io/IOException; {:try_start_1be .. :try_end_1c1} :catch_1c2

    goto :goto_14c

    .line 1691
    :catch_1c2
    move-exception v17

    goto :goto_14c

    .line 1682
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1c4
    move-exception v17

    :goto_1c5
    if-eqz v12, :cond_1ca

    .line 1684
    :try_start_1c7
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1ca
    .catch Ljava/io/IOException; {:try_start_1c7 .. :try_end_1ca} :catch_1e5

    .line 1687
    :cond_1ca
    :goto_1ca
    if-eqz v7, :cond_1d2

    .line 1688
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1690
    :try_start_1cf
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d2
    .catch Ljava/io/IOException; {:try_start_1cf .. :try_end_1d2} :catch_1e7

    .line 1691
    :cond_1d2
    :goto_1d2
    throw v17

    .line 1685
    .restart local v4    # "c":Landroid/content/Context;
    .restart local v11    # "r":Landroid/content/res/Resources;
    :catch_1d3
    move-exception v18

    goto/16 :goto_d9

    .line 1691
    :catch_1d6
    move-exception v18

    goto/16 :goto_e1

    .line 1685
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "amt":I
    .restart local v3    # "buffer":[B
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_1d9
    move-exception v18

    goto :goto_170

    .end local v2    # "amt":I
    .end local v3    # "buffer":[B
    .end local v4    # "c":Landroid/content/Context;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "r":Landroid/content/res/Resources;
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_1db
    move-exception v17

    goto/16 :goto_144

    .line 1691
    :catch_1de
    move-exception v17

    goto/16 :goto_14c

    .line 1685
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1e1
    move-exception v17

    goto :goto_19d

    .local v6, "e":Ljava/io/IOException;
    :catch_1e3
    move-exception v17

    goto :goto_1b9

    .end local v6    # "e":Ljava/io/IOException;
    :catch_1e5
    move-exception v18

    goto :goto_1ca

    .line 1691
    :catch_1e7
    move-exception v18

    goto :goto_1d2

    .line 1682
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "c":Landroid/content/Context;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v11    # "r":Landroid/content/res/Resources;
    :catchall_1e9
    move-exception v17

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1c5

    .line 1679
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_1ec
    move-exception v6

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1a9

    .line 1677
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_1ef
    move-exception v6

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    goto :goto_17e

    .line 1675
    .end local v4    # "c":Landroid/content/Context;
    .end local v11    # "r":Landroid/content/res/Resources;
    :catch_1f2
    move-exception v6

    goto/16 :goto_11f
.end method

.method public setDimensionHints(II)V
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 818
    const-string v3, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v3}, checkPermission(Ljava/lang/String;)V

    .line 819
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 820
    :try_start_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 821
    .local v1, "userId":I
    iget-object v3, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 822
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v2, :cond_32

    .line 823
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wallpaper not yet initialized for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 854
    .end local v1    # "userId":I
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_2f
    move-exception v3

    monitor-exit v4
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2f

    throw v3

    .line 825
    .restart local v1    # "userId":I
    .restart local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_32
    if-lez p1, :cond_36

    if-gtz p2, :cond_3f

    .line 826
    :cond_36
    :try_start_36
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "width and height must be > 0"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 829
    :cond_3f
    invoke-direct {p0}, getDefaultDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    .line 830
    .local v0, "displaySize":Landroid/graphics/Point;
    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 831
    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 833
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    if-ne p1, v3, :cond_57

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    if-eq p2, v3, :cond_78

    .line 834
    :cond_57
    iput p1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->width:I

    .line 835
    iput p2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->height:I

    .line 836
    invoke-direct {p0, v2}, saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 837
    iget v3, p0, mCurrentUserId:I

    if-eq v3, v1, :cond_64

    monitor-exit v4

    .line 855
    :goto_63
    return-void

    .line 838
    :cond_64
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_78

    .line 839
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_6c
    .catchall {:try_start_36 .. :try_end_6c} :catchall_2f

    if-eqz v3, :cond_7a

    .line 841
    :try_start_6e
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v3, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_75} :catch_86
    .catchall {:try_start_6e .. :try_end_75} :catchall_2f

    .line 845
    :goto_75
    :try_start_75
    invoke-direct {p0, v2}, notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 854
    :cond_78
    :goto_78
    monitor-exit v4

    goto :goto_63

    .line 846
    :cond_7a
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v3, :cond_78

    .line 850
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDimensionsChanged:Z
    :try_end_85
    .catchall {:try_start_75 .. :try_end_85} :catchall_2f

    goto :goto_78

    .line 843
    :catch_86
    move-exception v3

    goto :goto_75
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 872
    const-string v2, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v2}, checkPermission(Ljava/lang/String;)V

    .line 873
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 874
    :try_start_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 875
    .local v0, "userId":I
    iget-object v2, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 876
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v1, :cond_32

    .line 877
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wallpaper not yet initialized for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 902
    .end local v0    # "userId":I
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_2f
    move-exception v2

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2f

    throw v2

    .line 879
    .restart local v0    # "userId":I
    .restart local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_32
    :try_start_32
    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ltz v2, :cond_42

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ltz v2, :cond_42

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-ltz v2, :cond_42

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    if-gez v2, :cond_5c

    .line 880
    :cond_42
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "padding must be positive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 883
    :cond_5c
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_86

    .line 884
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->padding:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 885
    invoke-direct {p0, v1}, saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 886
    iget v2, p0, mCurrentUserId:I

    if-eq v2, v0, :cond_72

    monitor-exit v3

    .line 903
    :goto_71
    return-void

    .line 887
    :cond_72
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_86

    .line 888
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_7a
    .catchall {:try_start_32 .. :try_end_7a} :catchall_2f

    if-eqz v2, :cond_88

    .line 890
    :try_start_7c
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v2, p1}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_83} :catch_94
    .catchall {:try_start_7c .. :try_end_83} :catchall_2f

    .line 893
    :goto_83
    :try_start_83
    invoke-direct {p0, v1}, notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 902
    :cond_86
    :goto_86
    monitor-exit v3

    goto :goto_71

    .line 894
    :cond_88
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v2, :cond_86

    .line 898
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mPaddingChanged:Z
    :try_end_93
    .catchall {:try_start_83 .. :try_end_93} :catchall_2f

    goto :goto_86

    .line 891
    :catch_94
    move-exception v2

    goto :goto_83
.end method

.method public setSettingsSystemUiTransparency(I)V
    .registers 5
    .param p1, "value"    # I

    .prologue
    .line 163
    const-string v0, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSettingsSystemUiTransparency : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.wallpaper.settings_systemui_transparency"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 165
    return-void
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 12
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1015
    const-string v6, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v6}, checkPermission(Ljava/lang/String;)V

    .line 1016
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1018
    :try_start_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1019
    .local v4, "userId":I
    iget-boolean v6, p0, mBackupRunning:Z

    if-eqz v6, :cond_11

    .line 1020
    const/4 v4, 0x0

    .line 1022
    :cond_11
    iget-object v6, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1024
    .local v5, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-direct {p0}, getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 1025
    .local v3, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v3, :cond_29

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/app/enterprise/RestrictionPolicy;->isWallpaperChangeAllowed(Z)Z

    move-result v6

    if-nez v6, :cond_29

    .line 1028
    const/4 v2, 0x0

    monitor-exit v7

    .line 1043
    :goto_28
    return-object v2

    .line 1030
    :cond_29
    if-nez v5, :cond_47

    .line 1031
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wallpaper not yet initialized for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1045
    .end local v3    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    .end local v4    # "userId":I
    .end local v5    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_44
    move-exception v6

    monitor-exit v7
    :try_end_46
    .catchall {:try_start_8 .. :try_end_46} :catchall_44

    throw v6

    .line 1033
    .restart local v3    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    .restart local v4    # "userId":I
    .restart local v5    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_47
    :try_start_47
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_44

    move-result-wide v0

    .line 1035
    .local v0, "ident":J
    :try_start_4b
    invoke-virtual {p0, p1, v5}, updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1036
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_54

    .line 1037
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 1040
    :cond_54
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, setSettingsSystemUiTransparency(I)V
    :try_end_58
    .catchall {:try_start_4b .. :try_end_58} :catchall_5d

    .line 1043
    :try_start_58
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v7

    goto :goto_28

    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_5d
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
    :try_end_62
    .catchall {:try_start_58 .. :try_end_62} :catchall_44
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .registers 13
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1161
    const-string v0, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {p0, v0}, checkPermission(Ljava/lang/String;)V

    .line 1162
    iget-object v10, p0, mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1164
    :try_start_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 1166
    .local v9, "userId":I
    invoke-direct {p0}, getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v8

    .line 1167
    .local v8, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v8, :cond_1b

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/app/enterprise/RestrictionPolicy;->isWallpaperChangeAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1170
    monitor-exit v10

    .line 1187
    :goto_1a
    return-void

    .line 1173
    :cond_1b
    iget-object v0, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1174
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_41

    .line 1175
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper not yet initialized for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1186
    .end local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v8    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    .end local v9    # "userId":I
    :catchall_3e
    move-exception v0

    monitor-exit v10
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_3e

    throw v0

    .line 1177
    .restart local v4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v8    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    .restart local v9    # "userId":I
    :cond_41
    :try_start_41
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_3e

    move-result-wide v6

    .line 1179
    .local v6, "ident":J
    const/4 v0, 0x0

    :try_start_46
    iput-boolean v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 1180
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 1182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setSettingsSystemUiTransparency(I)V
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_59

    .line 1184
    :try_start_54
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1186
    monitor-exit v10

    goto :goto_1a

    .line 1184
    :catchall_59
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_3e
.end method

.method public setWallpaperForMultiSim(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "simSlot"    # I

    .prologue
    .line 1080
    iput p2, p0, whichSimSetWallpaper:I

    .line 1082
    invoke-virtual {p0, p1}, setWallpaperForSet(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public setWallpaperForSet(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1052
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1053
    .local v3, "userId":I
    iget-boolean v5, p0, mBackupRunning:Z

    if-eqz v5, :cond_9

    .line 1054
    const/4 v3, 0x0

    .line 1056
    :cond_9
    iget-object v5, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1057
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v4, :cond_2c

    .line 1058
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wallpaper not yet initialized for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1060
    :cond_2c
    const-string v5, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v5}, checkPermission(Ljava/lang/String;)V

    .line 1061
    iget-object v6, p0, mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1062
    :try_start_34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_4f

    move-result-wide v0

    .line 1064
    .local v0, "ident":J
    :try_start_38
    invoke-virtual {p0, p1, v4}, updateWallpaperBitmapLockedForSet(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1065
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_41

    .line 1066
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 1069
    :cond_41
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, setSettingsSystemUiTransparency(I)V
    :try_end_45
    .catchall {:try_start_38 .. :try_end_45} :catchall_4a

    .line 1072
    :try_start_45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v6

    return-object v2

    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_4a
    move-exception v5

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 1074
    .end local v0    # "ident":J
    :catchall_4f
    move-exception v5

    monitor-exit v6
    :try_end_51
    .catchall {:try_start_45 .. :try_end_51} :catchall_4f

    throw v5
.end method

.method public settingsRestored()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 1575
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_12

    .line 1576
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "settingsRestored() can only be called from the system process"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1581
    :cond_12
    const/4 v5, 0x0

    .line 1582
    .local v5, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v7, 0x0

    .line 1583
    .local v7, "success":Z
    iget-object v8, p0, mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1584
    const/4 v1, 0x0

    :try_start_18
    invoke-direct {p0, v1}, loadSettingsLocked(I)V

    .line 1585
    iget-object v1, p0, mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v5, v0

    .line 1586
    iget-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_7f

    iget-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v2, p0, mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7f

    .line 1588
    iget-object v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 1593
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 1595
    :cond_48
    const/4 v7, 0x1

    .line 1612
    :cond_49
    :goto_49
    monitor-exit v8
    :try_end_4a
    .catchall {:try_start_18 .. :try_end_4a} :catchall_96

    .line 1614
    if-nez v7, :cond_77

    .line 1615
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to restore wallpaper: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    const-string v1, ""

    iput-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 1617
    invoke-static {v9}, getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1620
    :cond_77
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1621
    :try_start_7a
    invoke-direct {p0, v5}, saveSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1622
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_7a .. :try_end_7e} :catchall_9e

    .line 1623
    return-void

    .line 1599
    :cond_7f
    :try_start_7f
    const-string v1, ""

    iget-object v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 1601
    const/4 v7, 0x1

    .line 1607
    :goto_8a
    if-eqz v7, :cond_49

    .line 1608
    iget-object v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    goto :goto_49

    .line 1612
    :catchall_96
    move-exception v1

    monitor-exit v8
    :try_end_98
    .catchall {:try_start_7f .. :try_end_98} :catchall_96

    throw v1

    .line 1604
    :cond_99
    :try_start_99
    invoke-virtual {p0, v5}, restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_96

    move-result v7

    goto :goto_8a

    .line 1622
    :catchall_9e
    move-exception v1

    :try_start_9f
    monitor-exit v2
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw v1
.end method

.method public switchPersonaWallpaper(IZ)V
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "forced"    # Z

    .prologue
    .line 1999
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchPersonaWallpaper is called for personaId-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2001
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2002
    if-eqz p2, :cond_2e

    const/4 v1, 0x1

    :goto_26
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2003
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2004
    return-void

    .line 2002
    :cond_2e
    const/4 v1, 0x0

    goto :goto_26
.end method

.method switchUser(ILandroid/os/IRemoteCallback;)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 705
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 706
    :try_start_3
    iput p1, p0, mCurrentUserId:I

    .line 707
    iput p1, p0, mCurrentPersonaId:I

    .line 708
    iget-object v1, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 709
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_1e

    .line 710
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-direct {v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(I)V

    .line 711
    .restart local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, p0, mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 712
    invoke-direct {p0, p1}, loadSettingsLocked(I)V

    .line 715
    :cond_1e
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-nez v1, :cond_2e

    .line 716
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 717
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 719
    :cond_2e
    invoke-virtual {p0, v0, p2}, switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 720
    monitor-exit v2

    .line 721
    return-void

    .line 720
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_33
    move-exception v1

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    .registers 12
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 724
    iget-object v8, p0, mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 725
    const/4 v6, 0x0

    .line 727
    .local v6, "e":Ljava/lang/RuntimeException;
    :try_start_4
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_17

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 729
    .local v1, "cname":Landroid/content/ComponentName;
    :goto_a
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_12} :catch_1a
    .catchall {:try_start_4 .. :try_end_12} :catchall_2b

    move-result v0

    if-eqz v0, :cond_1c

    .line 730
    :try_start_15
    monitor-exit v8
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_2b

    .line 738
    .end local v1    # "cname":Landroid/content/ComponentName;
    :goto_16
    return-void

    .line 727
    :cond_17
    :try_start_17
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_19} :catch_1a
    .catchall {:try_start_17 .. :try_end_19} :catchall_2b

    goto :goto_a

    .line 732
    :catch_1a
    move-exception v7

    .line 733
    .local v7, "e1":Ljava/lang/RuntimeException;
    move-object v6, v7

    .line 735
    .end local v7    # "e1":Ljava/lang/RuntimeException;
    :cond_1c
    :try_start_1c
    const-string v0, "WallpaperManagerService"

    const-string v2, "Failure starting previous wallpaper"

    invoke-static {v0, v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 736
    const/4 v0, 0x0

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p0, v0, v2, p2}, clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    .line 737
    monitor-exit v8

    goto :goto_16

    :catchall_2b
    move-exception v0

    monitor-exit v8
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public systemRunning()V
    .registers 7

    .prologue
    .line 576
    iget-object v4, p0, mWallpaperMap:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 577
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 578
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v4, p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 579
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 580
    invoke-direct {p0}, registerSimChangedReceiver()V

    .line 581
    invoke-direct {p0}, registerBackupRestoreReceiver()V

    .line 582
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 583
    .local v2, "userFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 584
    const-string v4, "android.intent.action.USER_STOPPING"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 585
    iget-object v4, p0, mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$1;

    invoke-direct {v5, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 605
    :try_start_38
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 606
    .local v1, "mPersona":Landroid/os/PersonaManager;
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$2;

    invoke-direct {v4, p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/os/PersonaManager;)V

    invoke-virtual {v1, v4}, Landroid/os/PersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4b} :catch_58

    .line 651
    .end local v1    # "mPersona":Landroid/os/PersonaManager;
    :goto_4b
    :try_start_4b
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$3;

    invoke-direct {v5, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_57} :catch_5d

    .line 666
    :goto_57
    return-void

    .line 645
    :catch_58
    move-exception v0

    .line 646
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4b

    .line 662
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_5d
    move-exception v0

    .line 664
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_57
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v7, 0x0

    .line 1087
    invoke-direct {p0}, SimStatusVerify()I

    move-result v0

    .line 1088
    .local v0, "SimStatusFlag":I
    if-nez p1, :cond_9

    const-string p1, ""

    .line 1091
    :cond_9
    :try_start_9
    iget v8, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v8}, getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    .line 1092
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_23

    .line 1093
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 1094
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1f9

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-static {v8, v9, v10, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1101
    :cond_23
    const/4 v4, 0x0

    .line 1102
    .local v4, "file":Ljava/io/File;
    const-string v6, ""

    .line 1103
    .local v6, "nFile":Ljava/lang/String;
    const-string v5, ""

    .line 1106
    .local v5, "fileName":Ljava/lang/String;
    iget v8, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const/16 v9, 0x64

    if-lt v8, v9, :cond_2f

    .line 1107
    const/4 v0, 0x0

    .line 1110
    :cond_2f
    if-eqz v0, :cond_37

    .line 1111
    add-int/lit8 v8, v0, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 1112
    :cond_37
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "wallpaper"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1113
    new-instance v4, Ljava/io/File;

    .end local v4    # "file":Ljava/io/File;
    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1116
    .restart local v4    # "file":Ljava/io/File;
    const/high16 v8, 0x3c000000    # 0.0078125f

    invoke-static {v4, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 1118
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-static {v4}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_5e

    move-object v3, v7

    .line 1126
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "nFile":Ljava/lang/String;
    :goto_5d
    return-object v3

    .line 1121
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "fileName":Ljava/lang/String;
    .restart local v6    # "nFile":Ljava/lang/String;
    :cond_5e
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_60} :catch_61

    goto :goto_5d

    .line 1123
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "nFile":Ljava/lang/String;
    :catch_61
    move-exception v2

    .line 1124
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v8, "WallpaperManagerService"

    const-string v9, "Error setting wallpaper"

    invoke-static {v8, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v7

    .line 1126
    goto :goto_5d
.end method

.method updateWallpaperBitmapLockedForSet(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/ParcelFileDescriptor;
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .prologue
    .line 1131
    if-nez p1, :cond_4

    const-string p1, ""

    .line 1133
    :cond_4
    :try_start_4
    iget v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v5}, getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 1134
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 1135
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1136
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f9

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v5, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1142
    :cond_1e
    const-string v4, ""

    .line 1143
    .local v4, "nFile":Ljava/lang/String;
    const-string v3, ""

    .line 1144
    .local v3, "fileName":Ljava/lang/String;
    iget v5, p0, whichSimSetWallpaper:I

    if-eqz v5, :cond_2e

    .line 1145
    iget v5, p0, whichSimSetWallpaper:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1146
    :cond_2e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wallpaper"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1148
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v6, 0x38000000

    invoke-static {v5, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1150
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4f} :catch_50

    .line 1156
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "nFile":Ljava/lang/String;
    :goto_4f
    return-object v2

    .line 1153
    :catch_50
    move-exception v1

    .line 1154
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v5, "WallpaperManagerService"

    const-string v6, "Error setting wallpaper"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1156
    const/4 v2, 0x0

    goto :goto_4f
.end method
