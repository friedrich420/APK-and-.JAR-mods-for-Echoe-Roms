.class public Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
.super Landroid/app/enterprise/knoxcustom/IKnoxCustomManager$Stub;
.source "KnoxCustomManagerService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;
    }
.end annotation


# static fields
.field private static final ACTION_MULTIWINDOW_SEALED_MODE:Ljava/lang/String; = "com.sec.android.multiwindow.SEALED_MODE"

.field private static final ACTION_QUICKSETTING_REFRESH:Ljava/lang/String; = "com.sec.android.quicksetting.REFRESH"

.field public static final DB_UID:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "KnoxCustomManagerService"

.field private static mBootReceiver:Landroid/content/BroadcastReceiver;

.field private static mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

.field private static mWifiConfigure:Z

.field private static mWifiPassword:Ljava/lang/String;

.field private static mWifiSSID:Ljava/lang/String;


# instance fields
.field private final DEBUG:Z

.field private mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mTempContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 150
    sput-object v1, mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    sput-object v1, mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    const/4 v0, 0x0

    sput-boolean v0, mWifiConfigure:Z

    .line 157
    sput-object v1, mWifiSSID:Ljava/lang/String;

    .line 158
    sput-object v1, mWifiPassword:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appPolicy"    # Lcom/android/server/enterprise/application/ApplicationPolicy;

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-direct {p0}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager$Stub;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, DEBUG:Z

    .line 143
    iput-object v1, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 144
    iput-object v1, p0, mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 163
    iput-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 172
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 173
    iput-object p2, p0, mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 174
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 176
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KnoxCustomManagerService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 177
    iget-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 178
    new-instance v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    iget-object v1, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    .line 181
    invoke-direct {p0}, registerBootReceiver()V

    .line 182
    return-void
.end method

.method static synthetic access$000(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .prologue
    .line 130
    invoke-direct {p0}, startSealedMode()V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 130
    sget-boolean v0, mWifiConfigure:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 130
    sput-boolean p0, mWifiConfigure:Z

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 130
    sget-object v0, mWifiSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 130
    sget-object v0, mWifiPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-direct {p0, p1, p2, p3}, configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 130
    invoke-direct {p0, p1}, startStopUsbNet(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .prologue
    .line 130
    iget-object v0, p0, mTempContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkDotString(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 465
    if-nez p1, :cond_4

    .line 471
    :cond_3
    :goto_3
    return v0

    .line 468
    :cond_4
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 471
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private checkIpAddressString(Ljava/lang/String;)Z
    .registers 12
    .param p1, "ipAddressString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 479
    if-nez p1, :cond_4

    .line 500
    :cond_3
    :goto_3
    return v7

    .line 482
    :cond_4
    const-string v8, "\\."

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 483
    .local v6, "tokens":[Ljava/lang/String;
    array-length v8, v6

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    .line 486
    const-string v8, "."

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 489
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_19
    if-ge v3, v4, :cond_2c

    aget-object v5, v0, v3

    .line 491
    .local v5, "str":Ljava/lang/String;
    :try_start_1d
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_2a

    move-result v2

    .line 492
    .local v2, "i":I
    if-ltz v2, :cond_3

    const/16 v8, 0xff

    if-gt v2, v8, :cond_3

    .line 489
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 495
    .end local v2    # "i":I
    :catch_2a
    move-exception v1

    .line 497
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_3

    .line 500
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "str":Ljava/lang/String;
    :cond_2c
    const/4 v7, 0x1

    goto :goto_3
.end method

.method private configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 320
    const-string/jumbo v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 321
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 322
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 323
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 324
    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 325
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 328
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 329
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_8e

    .line 330
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_54
    :goto_54
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 331
    .local v0, "c":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 332
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 333
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 334
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->reconnect()Z

    goto :goto_54

    .line 338
    .end local v0    # "c":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_8e
    return-void
.end method

.method private deserializeObject([B)Ljava/util/ArrayList;
    .registers 10
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2353
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2355
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    :try_start_5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 2356
    .local v3, "p":Landroid/os/Parcel;
    const/4 v6, 0x0

    array-length v7, p1

    invoke-virtual {v3, p1, v6, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2357
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2358
    sget-object v6, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;

    .line 2359
    .local v5, "temp":[Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    array-length v6, v5

    if-ge v1, v6, :cond_30

    .line 2360
    aget-object v2, v5, v1

    .line 2361
    .local v2, "item":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_23} :catch_26

    .line 2359
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 2364
    .end local v1    # "i":I
    .end local v2    # "item":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    .end local v3    # "p":Landroid/os/Parcel;
    .end local v5    # "temp":[Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    :catch_26
    move-exception v0

    .line 2365
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "deserializeObject"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2366
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_30
    return-object v4
.end method

.method private enforceRubensFeaturesPermission()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.CUSTOM_RUBENS_FEATURES"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 245
    const/16 v0, 0x3e8

    return v0
.end method

.method private enforceSealedModePermission()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.CUSTOM_SEALEDMODE"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 219
    const/16 v0, 0x3e8

    return v0
.end method

.method private enforceSettingPermission()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.CUSTOM_SETTING"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 228
    const/16 v0, 0x3e8

    return v0
.end method

.method private enforceSystemPermission()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 237
    const/16 v0, 0x3e8

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 186
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 187
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 190
    :cond_10
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private registerBootReceiver()V
    .registers 6

    .prologue
    .line 254
    :try_start_0
    sget-object v1, mBootReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1c

    .line 255
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;

    invoke-direct {v1, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    sput-object v1, mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 268
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, mBootReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 275
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1c
    :goto_1c
    return-void

    .line 272
    :catch_1d
    move-exception v1

    goto :goto_1c
.end method

.method private registerKnoxCustomReceiver()V
    .registers 6

    .prologue
    .line 283
    :try_start_0
    sget-object v1, mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_21

    .line 284
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    new-instance v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;

    invoke-direct {v1, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    sput-object v1, mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    .line 307
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    .line 314
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_21
    :goto_21
    return-void

    .line 311
    :catch_22
    move-exception v1

    goto :goto_21
.end method

.method private serializeObject(Ljava/util/ArrayList;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 2334
    .local p1, "inputList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2335
    .local v2, "p":Landroid/os/Parcel;
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2336
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 2337
    .local v0, "b":[B
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 2341
    .end local v0    # "b":[B
    .end local v2    # "p":Landroid/os/Parcel;
    :goto_e
    return-object v0

    .line 2339
    :catch_f
    move-exception v1

    .line 2340
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "serializeObject"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private startSealedMode()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    .line 388
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 389
    .local v6, "token":J
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string/jumbo v9, "statusbar"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    .line 390
    .local v4, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {p0}, getSealedStatusBarMode()I

    move-result v5

    .line 391
    .local v5, "statusBarMode":I
    const/4 v8, 0x3

    if-ne v5, v8, :cond_70

    .line 392
    const/16 v8, 0x22b

    invoke-virtual {v4, v8}, Landroid/app/StatusBarManager;->disable(I)V

    .line 396
    :goto_1c
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.sec.android.multiwindow.SEALED_MODE"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .local v3, "multiwindowIntent":Landroid/content/Intent;
    const-string v8, "closeTray"

    invoke-virtual {v3, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 398
    iget-object v8, p0, mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    const/4 v10, -0x2

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 400
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v8}, startStopUsbNet(Landroid/content/Context;)V

    .line 403
    const-string v0, "com.samsung.android.app.cocktailbarservice"

    .line 404
    .local v0, "cb":Ljava/lang/String;
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.feature.cocktailbar"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_61

    .line 405
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_61

    .line 407
    :try_start_56
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/enterprise/ApplicationPolicy;->setDisableApplication(Ljava/lang/String;)Z
    :try_end_61
    .catch Ljava/lang/SecurityException; {:try_start_56 .. :try_end_61} :catch_76

    .line 415
    :cond_61
    :goto_61
    const/16 v8, 0x1b9

    invoke-virtual {p0, v8}, getSealedMultiWindowFixedState(I)I

    move-result v2

    .line 416
    .local v2, "fixed":I
    if-ne v2, v11, :cond_6c

    .line 417
    invoke-direct {p0}, updateMultiWindowCenterBar()V

    .line 419
    :cond_6c
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 420
    return-void

    .line 394
    .end local v0    # "cb":Ljava/lang/String;
    .end local v2    # "fixed":I
    .end local v3    # "multiwindowIntent":Landroid/content/Intent;
    :cond_70
    const/16 v8, 0x22d

    invoke-virtual {v4, v8}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_1c

    .line 409
    .restart local v0    # "cb":Ljava/lang/String;
    .restart local v3    # "multiwindowIntent":Landroid/content/Intent;
    :catch_76
    move-exception v1

    .line 410
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v8, "KnoxCustomManagerService"

    const-string v9, "Warning: could not disable cocktail bar"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61
.end method

.method private startStopUsbNet(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 344
    iput-object p1, p0, mTempContext:Landroid/content/Context;

    .line 345
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$3;

    invoke-direct {v1, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$3;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 357
    return-void
.end method

.method private stopSealedMode()V
    .registers 12

    .prologue
    .line 426
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 427
    .local v6, "token":J
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string/jumbo v9, "statusbar"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    .line 428
    .local v5, "statusBarManager":Landroid/app/StatusBarManager;
    const/16 v8, 0x22c

    invoke-virtual {v5, v8}, Landroid/app/StatusBarManager;->disable(I)V

    .line 429
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.sec.android.multiwindow.SEALED_MODE"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .local v4, "multiwindowIntent":Landroid/content/Intent;
    const-string v8, "closeTray"

    const/4 v9, 0x2

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 431
    iget-object v8, p0, mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    const/4 v10, -0x2

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v4, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 433
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v8}, startStopUsbNet(Landroid/content/Context;)V

    .line 436
    const-string v0, "com.samsung.android.app.cocktailbarservice"

    .line 437
    .local v0, "cb":Ljava/lang/String;
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.feature.cocktailbar"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6b

    .line 438
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6b

    .line 440
    :try_start_4f
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/enterprise/ApplicationPolicy;->setEnableApplication(Ljava/lang/String;)Z

    .line 443
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v3, "intent":Landroid/content/Intent;
    const-string v8, "com.samsung.android.app.cocktailbarservice.CocktailBarService"

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_6b
    .catch Ljava/lang/SecurityException; {:try_start_4f .. :try_end_6b} :catch_7b

    .line 453
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_6b
    :goto_6b
    const/16 v8, 0x1b9

    invoke-virtual {p0, v8}, getSealedMultiWindowFixedState(I)I

    move-result v2

    .line 454
    .local v2, "fixed":I
    const/4 v8, 0x1

    if-ne v2, v8, :cond_77

    .line 455
    invoke-direct {p0}, updateMultiWindowCenterBar()V

    .line 457
    :cond_77
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 458
    return-void

    .line 447
    .end local v2    # "fixed":I
    :catch_7b
    move-exception v1

    .line 448
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v8, "KnoxCustomManagerService"

    const-string v9, "Warning: could not enable cocktail bar"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b
.end method

.method private updateMultiWindowCenterBar()V
    .registers 5

    .prologue
    .line 362
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.multiwindow.SEALED_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    .local v0, "multiwindowUpdateIntent":Landroid/content/Intent;
    const-string/jumbo v1, "updateCenterBar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 364
    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 365
    return-void
.end method


# virtual methods
.method public checkEnterprisePermission(Ljava/lang/String;)Z
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1321
    :try_start_0
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_7} :catch_9

    .line 1325
    const/4 v1, 0x1

    :goto_8
    return v1

    .line 1322
    :catch_9
    move-exception v0

    .line 1323
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public dialEmergencyNumber(Ljava/lang/String;)I
    .registers 11
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 2518
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 2520
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2522
    .local v4, "token":J
    :try_start_8
    invoke-virtual {p0}, getSealedState()Z

    move-result v6

    if-eqz v6, :cond_50

    .line 2523
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_52

    move-result v6

    if-nez v6, :cond_1c

    .line 2524
    :cond_16
    const/16 v3, -0x28

    .line 2542
    .local v3, "sealedResult":I
    :goto_18
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2543
    return v3

    .line 2526
    .end local v3    # "sealedResult":I
    :cond_1c
    :try_start_1c
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 2527
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_EMERGENCY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2528
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2529
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_4b} :catch_52

    .line 2530
    const/4 v3, 0x0

    .line 2531
    .restart local v3    # "sealedResult":I
    goto :goto_18

    .line 2532
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "sealedResult":I
    :cond_4d
    const/16 v3, -0x31

    .restart local v3    # "sealedResult":I
    goto :goto_18

    .line 2536
    .end local v3    # "sealedResult":I
    :cond_50
    const/4 v3, -0x2

    .restart local v3    # "sealedResult":I
    goto :goto_18

    .line 2538
    .end local v3    # "sealedResult":I
    :catch_52
    move-exception v1

    .line 2539
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dialEmergencyNumber() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    const/4 v3, -0x1

    .restart local v3    # "sealedResult":I
    goto :goto_18
.end method

.method public getCheckCoverPopupState()Z
    .registers 7

    .prologue
    .line 2985
    const/4 v1, 0x1

    .line 2987
    .local v1, "sealedResult":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "checkCoverPopupState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v1

    .line 2992
    :goto_d
    return v1

    .line 2988
    :catch_e
    move-exception v0

    .line 2989
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCheckCoverPopupState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public getExtendedCallInfoState()Z
    .registers 7

    .prologue
    .line 2498
    const/4 v1, 0x0

    .line 2500
    .local v1, "sealedResult":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "extendedCallInfoState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v1

    .line 2505
    :goto_d
    return v1

    .line 2501
    :catch_e
    move-exception v0

    .line 2502
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExtendedCallInfoState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public getRecentLongPressActivity()Ljava/lang/String;
    .registers 7

    .prologue
    .line 3031
    const/4 v1, 0x0

    .line 3033
    .local v1, "sealedResult":Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "recentLongPressActivity"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v1

    .line 3038
    :goto_e
    return-object v1

    .line 3034
    :catch_f
    move-exception v0

    .line 3035
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRecentLongPressActivity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public getRecentLongPressMode()I
    .registers 7

    .prologue
    .line 3073
    const/4 v1, -0x1

    .line 3075
    .local v1, "result":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "recentLongPressMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 3080
    :goto_e
    return v1

    .line 3076
    :catch_f
    move-exception v0

    .line 3077
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRecentLongPressMode() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public getSealedExitUI(I)Ljava/lang/String;
    .registers 8
    .param p1, "stringType"    # I

    .prologue
    .line 686
    const/4 v1, 0x0

    .line 687
    .local v1, "sealedResult":Ljava/lang/String;
    packed-switch p1, :pswitch_data_5c

    .line 703
    const-string v2, "KnoxCustomManagerService"

    const-string v3, "getSealedExitUI() called with invalid stringType"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    :goto_b
    return-object v1

    .line 690
    :pswitch_c
    :try_start_c
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedExitUiPackage"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_1a

    move-result-object v1

    goto :goto_b

    .line 691
    :catch_1a
    move-exception v0

    .line 692
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedExitUI() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 697
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_34
    :try_start_34
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedExitUiClass"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_40} :catch_42

    move-result-object v1

    goto :goto_b

    .line 698
    :catch_42
    move-exception v0

    .line 699
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedExitUI() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 687
    :pswitch_data_5c
    .packed-switch 0xdd
        :pswitch_c
        :pswitch_34
    .end packed-switch
.end method

.method public getSealedHideNotificationMessages()I
    .registers 7

    .prologue
    .line 2945
    const/4 v1, 0x0

    .line 2947
    .local v1, "sealedResult":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "notificationMessagesMask"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v1

    .line 2952
    :goto_d
    return v1

    .line 2948
    :catch_e
    move-exception v0

    .line 2949
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedHideNotificationMessages() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public getSealedHomeActivity()Ljava/lang/String;
    .registers 7

    .prologue
    .line 892
    const/4 v1, 0x0

    .line 894
    .local v1, "sealedResult":Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedHomeActivity"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v1

    .line 899
    :goto_e
    return-object v1

    .line 895
    :catch_f
    move-exception v0

    .line 896
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedHomeActivity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public getSealedInputMethodRestrictionState()Z
    .registers 7

    .prologue
    .line 1859
    const/4 v1, 0x0

    .line 1861
    .local v1, "sealedResult":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "inputRestrictionState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_e

    move-result v1

    .line 1866
    :goto_d
    return v1

    .line 1862
    :catch_e
    move-exception v0

    .line 1863
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedInputMethodRestrictionState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public getSealedModeString(I)Ljava/lang/String;
    .registers 8
    .param p1, "stringType"    # I

    .prologue
    .line 820
    const/4 v1, 0x0

    .line 822
    .local v1, "sealedResult":Ljava/lang/String;
    packed-switch p1, :pswitch_data_88

    .line 849
    const-string v2, "KnoxCustomManagerService"

    const-string v3, "getSealedModeString() failed - unrecognized type"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :goto_b
    return-object v1

    .line 825
    :pswitch_c
    :try_start_c
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOn"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_18} :catch_1a

    move-result-object v1

    goto :goto_b

    .line 826
    :catch_1a
    move-exception v0

    .line 827
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedModeString() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const/4 v1, 0x0

    .line 830
    goto :goto_b

    .line 833
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_35
    :try_start_35
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOff"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_41} :catch_43

    move-result-object v1

    goto :goto_b

    .line 834
    :catch_43
    move-exception v0

    .line 835
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedModeString() failed - persistence problem (SEALED_OFF_STRING) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const/4 v1, 0x0

    .line 838
    goto :goto_b

    .line 841
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_5e
    :try_start_5e
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOption"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_6a} :catch_6c

    move-result-object v1

    goto :goto_b

    .line 843
    :catch_6c
    move-exception v0

    .line 844
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedModeString() failed - persistence problem (SEALED_OPTION_STRING) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    const/4 v1, 0x0

    .line 847
    goto :goto_b

    .line 822
    nop

    :pswitch_data_88
    .packed-switch 0x6f
        :pswitch_5e
        :pswitch_c
        :pswitch_35
    .end packed-switch
.end method

.method public getSealedMultiWindowFixedState(I)I
    .registers 8
    .param p1, "paramType"    # I

    .prologue
    .line 1749
    const/4 v1, -0x1

    .line 1750
    .local v1, "sealedResult":I
    packed-switch p1, :pswitch_data_5a

    .line 1766
    const-string v2, "KnoxCustomManagerService"

    const-string v3, "getSealedMultiWindowFixedState() failed - invalid parameter type "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    :goto_b
    return v1

    .line 1753
    :pswitch_c
    :try_start_c
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "multiWindowFixed"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_19

    move-result v1

    goto :goto_b

    .line 1754
    :catch_19
    move-exception v0

    .line 1755
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedMultiWindowFixedState(MULTI_WINDOW_FIXED_STATE) failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1760
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_33
    :try_start_33
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "multiWindowPercentageSplit"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3e} :catch_40

    move-result v1

    goto :goto_b

    .line 1761
    :catch_40
    move-exception v0

    .line 1762
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedMultiWindowFixedState(MULTI_WINDOW_PERCENTAGE) failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1750
    :pswitch_data_5a
    .packed-switch 0x1b9
        :pswitch_c
        :pswitch_33
    .end packed-switch
.end method

.method public getSealedNotificationMessagesState()Z
    .registers 7

    .prologue
    .line 1630
    const/4 v2, 0x1

    .line 1632
    .local v2, "sealedResult":Z
    :try_start_1
    invoke-virtual {p0}, getSealedHideNotificationMessages()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_b

    move-result v1

    .line 1633
    .local v1, "mask":I
    const/16 v3, 0x1f

    if-ne v1, v3, :cond_a

    .line 1634
    const/4 v2, 0x0

    .line 1640
    .end local v1    # "mask":I
    :cond_a
    :goto_a
    return v2

    .line 1636
    :catch_b
    move-exception v0

    .line 1637
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSealedNotificationMessagesState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public getSealedPowerDialogCustomItems()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2417
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2419
    .local v2, "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    :try_start_5
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "sealedPowerCustomItems"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 2422
    .local v0, "blob":[B
    if-eqz v0, :cond_18

    .line 2423
    invoke-direct {p0, v0}, deserializeObject([B)Ljava/util/ArrayList;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_19

    move-result-object v2

    .line 2428
    .end local v0    # "blob":[B
    :cond_18
    :goto_18
    return-object v2

    .line 2425
    :catch_19
    move-exception v1

    .line 2426
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    const-string v4, "getSealedPowerDialogCustomItems() failed"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method

.method public getSealedPowerDialogCustomItemsState()Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2315
    :try_start_2
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "sealedPowerCustomItemsState"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_14

    move-result v3

    if-ne v1, v3, :cond_12

    .line 2320
    :goto_11
    return v1

    :cond_12
    move v1, v2

    .line 2315
    goto :goto_11

    .line 2318
    :catch_14
    move-exception v0

    .line 2319
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedPowerDialogCustomItemsState() failed - persistence problem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 2320
    goto :goto_11
.end method

.method public getSealedPowerDialogItems()I
    .registers 7

    .prologue
    .line 2235
    const/4 v1, -0x1

    .line 2238
    .local v1, "sealedResult":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedPowerDialogItems"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 2244
    :goto_e
    return v1

    .line 2239
    :catch_f
    move-exception v0

    .line 2240
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedPowerDialogItems() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public getSealedPowerDialogOptionMode()I
    .registers 7

    .prologue
    .line 748
    const/4 v1, 0x2

    .line 751
    .local v1, "sealedResult":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedPowerDialogOptionMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 757
    :goto_e
    return v1

    .line 752
    :catch_f
    move-exception v0

    .line 753
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedPowerDialogOptionMode() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public getSealedState()Z
    .registers 7

    .prologue
    .line 594
    const/4 v1, 0x0

    .line 596
    .local v1, "state":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 601
    :goto_e
    return v1

    .line 597
    :catch_f
    move-exception v0

    .line 598
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public getSealedStatusBarClockState()Z
    .registers 7

    .prologue
    .line 1021
    const/4 v1, 0x1

    .line 1023
    .local v1, "sealedResult":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedStatusBarClockState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 1028
    :goto_e
    return v1

    .line 1024
    :catch_f
    move-exception v0

    .line 1025
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedStatusBarClockState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public getSealedStatusBarIconsState()Z
    .registers 7

    .prologue
    .line 1078
    const/4 v1, 0x1

    .line 1080
    .local v1, "sealedResult":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedStatusBarIconsState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 1085
    :goto_e
    return v1

    .line 1081
    :catch_f
    move-exception v0

    .line 1082
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedStatusBarIconsState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public getSealedStatusBarMode()I
    .registers 7

    .prologue
    .line 964
    const/4 v1, -0x1

    .line 966
    .local v1, "sealedResult":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedStatusBarMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 971
    :goto_e
    return v1

    .line 967
    :catch_f
    move-exception v0

    .line 968
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedStatusBarMode() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public getSealedUsbMassStorageState()Z
    .registers 7

    .prologue
    .line 1131
    const/4 v1, 0x1

    .line 1133
    .local v1, "sealedResult":Z
    invoke-virtual {p0}, getSealedUsbNetState()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1134
    const/4 v2, 0x0

    .line 1142
    :goto_8
    return v2

    .line 1137
    :cond_9
    :try_start_9
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "usbMassStorageState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_18

    move-result v1

    :goto_16
    move v2, v1

    .line 1142
    goto :goto_8

    .line 1138
    :catch_18
    move-exception v0

    .line 1139
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedUsbMassStorageState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method public getSealedUsbNetAddress(I)Ljava/lang/String;
    .registers 8
    .param p1, "addressType"    # I

    .prologue
    .line 1238
    const/4 v1, 0x0

    .line 1239
    .local v1, "sealedResult":Ljava/lang/String;
    packed-switch p1, :pswitch_data_5e

    .line 1255
    const-string v2, "KnoxCustomManagerService"

    const-string v3, "getSealedUsbNetAddress() failed - invalid address type "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    const/4 v1, 0x0

    .line 1260
    :goto_c
    return-object v1

    .line 1242
    :pswitch_d
    :try_start_d
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "usbNetSource"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_1b

    move-result-object v1

    goto :goto_c

    .line 1243
    :catch_1b
    move-exception v0

    .line 1244
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedUsbNetState(sourceAddress) failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 1249
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_35
    :try_start_35
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "usbNetDest"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_41} :catch_43

    move-result-object v1

    goto :goto_c

    .line 1250
    :catch_43
    move-exception v0

    .line 1251
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedUsbNetState(destinationAddress) failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 1239
    nop

    :pswitch_data_5e
    .packed-switch 0x14b
        :pswitch_d
        :pswitch_35
    .end packed-switch
.end method

.method public getSealedUsbNetState()Z
    .registers 7

    .prologue
    .line 1190
    const/4 v1, 0x0

    .line 1193
    .local v1, "sealedResult":Z
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "usbNetState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 1198
    :goto_e
    return v1

    .line 1194
    :catch_f
    move-exception v0

    .line 1195
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSealedUsbNetState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public getSettingsHiddenState()I
    .registers 7

    .prologue
    .line 2598
    const/4 v1, 0x0

    .line 2600
    .local v1, "sealedResult":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "settingsState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result v1

    .line 2605
    :goto_e
    return v1

    .line 2601
    :catch_f
    move-exception v0

    .line 2602
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSettingsHiddenState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public getUserInactivityTimeout()I
    .registers 6

    .prologue
    .line 2036
    const/4 v1, -0x6

    .line 2039
    .local v1, "sealedResult":I
    :try_start_1
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_activity_timeout"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2041
    if-lez v1, :cond_13

    .line 2042
    div-int/lit16 v1, v1, 0x3e8
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_14

    .line 2049
    :cond_13
    :goto_13
    return v1

    .line 2044
    :catch_14
    move-exception v0

    .line 2045
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserInactivityTimeout() failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 203
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 211
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 207
    return-void
.end method

.method public removeLockScreen()I
    .registers 11

    .prologue
    .line 2066
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 2069
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2071
    .local v4, "token":J
    :try_start_8
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2072
    .local v2, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 2073
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 2075
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_pattern_autolock"

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 2076
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreen.disabled"

    const-wide/16 v8, 0x1

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 2077
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreen.password_type"

    const-wide/32 v8, 0x10000

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 2078
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreen.password_type_alternate"

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4c} :catch_51

    .line 2079
    const/4 v3, 0x0

    .line 2083
    .end local v2    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    .local v3, "sealedResult":I
    :goto_4d
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2085
    return v3

    .line 2080
    .end local v3    # "sealedResult":I
    :catch_51
    move-exception v1

    .line 2081
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, -0x1

    .restart local v3    # "sealedResult":I
    goto :goto_4d
.end method

.method public setAdbState(Z)I
    .registers 11
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1338
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 1341
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1342
    .local v4, "token":J
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 1343
    .local v2, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isUsbDebuggingEnabled()Z

    move-result v7

    if-nez v7, :cond_28

    move v1, v3

    .line 1344
    .local v1, "isRestricted":Z
    :goto_19
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1345
    if-eqz v1, :cond_2a

    .line 1346
    const-string v3, "KnoxCustomManagerService"

    const-string/jumbo v6, "setAdbState() - eSDK USB debugging disabled"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    const/4 v6, -0x7

    .line 1357
    :goto_27
    return v6

    .end local v1    # "isRestricted":Z
    :cond_28
    move v1, v6

    .line 1343
    goto :goto_19

    .line 1350
    .restart local v1    # "isRestricted":Z
    :cond_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1351
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "adb_enabled"

    if-eqz p1, :cond_4f

    :goto_38
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1352
    if-eqz p1, :cond_4b

    .line 1353
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v7, "persist.sys.auto_confirm"

    const-string v8, "1"

    invoke-static {v3, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1355
    :cond_4b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    :cond_4f
    move v3, v6

    .line 1351
    goto :goto_38
.end method

.method public setAudioVolume(II)I
    .registers 12
    .param p1, "stream"    # I
    .param p2, "volume"    # I

    .prologue
    .line 2101
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v2

    .line 2102
    .local v2, "callingUid":I
    const/4 v4, -0x6

    .line 2104
    .local v4, "sealedResult":I
    if-ltz p1, :cond_31

    .line 2105
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2106
    .local v6, "token":J
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 2107
    .local v1, "am":Landroid/media/AudioManager;
    if-eqz v1, :cond_2a

    .line 2108
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    .line 2109
    .local v3, "maxVolume":I
    move v0, p2

    .line 2110
    .local v0, "actualVolume":I
    if-le v0, v3, :cond_1f

    .line 2111
    move v0, v3

    .line 2113
    :cond_1f
    if-gez v0, :cond_22

    .line 2114
    const/4 v0, 0x0

    .line 2116
    :cond_22
    const/4 v5, 0x5

    if-gt p1, v5, :cond_2e

    .line 2117
    const/4 v5, 0x0

    invoke-virtual {v1, p1, v0, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2118
    const/4 v4, 0x0

    .line 2123
    .end local v0    # "actualVolume":I
    .end local v3    # "maxVolume":I
    :cond_2a
    :goto_2a
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2128
    .end local v1    # "am":Landroid/media/AudioManager;
    .end local v6    # "token":J
    :goto_2d
    return v4

    .line 2120
    .restart local v0    # "actualVolume":I
    .restart local v1    # "am":Landroid/media/AudioManager;
    .restart local v3    # "maxVolume":I
    .restart local v6    # "token":J
    :cond_2e
    const/16 v4, -0x26

    goto :goto_2a

    .line 2125
    .end local v0    # "actualVolume":I
    .end local v1    # "am":Landroid/media/AudioManager;
    .end local v3    # "maxVolume":I
    .end local v6    # "token":J
    :cond_31
    const/16 v4, -0x26

    goto :goto_2d
.end method

.method public setAutoRotationState(ZI)I
    .registers 12
    .param p1, "status"    # Z
    .param p2, "rotation"    # I

    .prologue
    .line 1567
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 1568
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 1569
    .local v2, "sealedResult":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1572
    .local v4, "token":J
    :try_start_9
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 1573
    .local v3, "wm":Landroid/view/IWindowManager;
    if-eqz p1, :cond_20

    .line 1574
    invoke-interface {v3}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1b} :catch_36

    .line 1575
    const/4 v2, 0x0

    .line 1589
    .end local v3    # "wm":Landroid/view/IWindowManager;
    :goto_1c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1590
    return v2

    .line 1577
    .restart local v3    # "wm":Landroid/view/IWindowManager;
    :cond_20
    const/4 v6, 0x3

    if-gt p2, v6, :cond_26

    const/4 v6, -0x1

    if-ge p2, v6, :cond_31

    .line 1578
    :cond_26
    :try_start_26
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setAutoRotationState() failed - Invalid Rotation"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    const/16 v2, -0x27

    goto :goto_1c

    .line 1581
    :cond_31
    invoke-interface {v3, p2}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_34} :catch_36

    .line 1582
    const/4 v2, 0x0

    goto :goto_1c

    .line 1585
    .end local v3    # "wm":Landroid/view/IWindowManager;
    :catch_36
    move-exception v1

    .line 1586
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAutoRotationState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    const/4 v2, -0x1

    goto :goto_1c
.end method

.method public setBackupRestoreState(IZ)I
    .registers 16
    .param p1, "type"    # I
    .param p2, "status"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2789
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v1

    .line 2791
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2792
    .local v6, "token":J
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    .line 2793
    .local v4, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v4, v9}, Landroid/app/enterprise/RestrictionPolicy;->isBackupAllowed(Z)Z

    move-result v10

    if-nez v10, :cond_28

    move v3, v8

    .line 2794
    .local v3, "isRestricted":Z
    :goto_19
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2795
    if-eqz v3, :cond_2a

    .line 2796
    const-string v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setBackupRestoreState() - eSDK backup is disabled"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2797
    const/4 v5, -0x7

    .line 2829
    :cond_27
    :goto_27
    return v5

    .end local v3    # "isRestricted":Z
    :cond_28
    move v3, v9

    .line 2793
    goto :goto_19

    .line 2799
    .restart local v3    # "isRestricted":Z
    :cond_2a
    if-lt p1, v8, :cond_2f

    const/4 v10, 0x3

    if-le p1, v10, :cond_32

    .line 2800
    :cond_2f
    const/16 v5, -0x32

    goto :goto_27

    .line 2802
    :cond_32
    const/4 v5, 0x0

    .line 2803
    .local v5, "ret":I
    and-int/lit8 v10, p1, 0x1

    if-eqz v10, :cond_54

    .line 2804
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2805
    const-string v10, "backup"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 2807
    .local v0, "backupManager":Landroid/app/backup/IBackupManager;
    if-nez v0, :cond_6e

    .line 2808
    const-string v10, "KnoxCustomManagerService"

    const-string v11, "Failed to get BackupManager"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2809
    const/4 v5, -0x1

    .line 2818
    :goto_4f
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2819
    if-nez v5, :cond_27

    .line 2823
    .end local v0    # "backupManager":Landroid/app/backup/IBackupManager;
    :cond_54
    and-int/lit8 v10, p1, 0x2

    if-eqz v10, :cond_6c

    .line 2824
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2825
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "backup_auto_restore"

    if-eqz p2, :cond_8e

    :goto_66
    invoke-static {v10, v11, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2827
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_6c
    move v5, v9

    .line 2829
    goto :goto_27

    .line 2812
    .restart local v0    # "backupManager":Landroid/app/backup/IBackupManager;
    :cond_6e
    :try_start_6e
    invoke-interface {v0, p2}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_4f

    .line 2813
    :catch_72
    move-exception v2

    .line 2814
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setBackupEnabled exception:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2815
    const/4 v5, -0x1

    goto :goto_4f

    .end local v0    # "backupManager":Landroid/app/backup/IBackupManager;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8e
    move v8, v9

    .line 2825
    goto :goto_66
.end method

.method public setBluetoothState(Z)I
    .registers 11
    .param p1, "status"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1400
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v1

    .line 1403
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1404
    .local v6, "token":J
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 1405
    .local v3, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v3, v2}, Landroid/app/enterprise/RestrictionPolicy;->isBluetoothEnabled(Z)Z

    move-result v5

    if-nez v5, :cond_18

    const/4 v2, 0x1

    .line 1406
    .local v2, "isRestricted":Z
    :cond_18
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1407
    if-eqz v2, :cond_27

    .line 1408
    const-string v5, "KnoxCustomManagerService"

    const-string/jumbo v8, "setBluetoothState() - eSDK bluetooth disabled"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    const/4 v4, -0x7

    .line 1426
    :goto_26
    return v4

    .line 1414
    :cond_27
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1415
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_46

    .line 1416
    if-eqz p1, :cond_3a

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_3a

    .line 1417
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1421
    :cond_38
    :goto_38
    const/4 v4, 0x0

    .local v4, "sealedResult":I
    goto :goto_26

    .line 1418
    .end local v4    # "sealedResult":I
    :cond_3a
    if-nez p1, :cond_38

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 1419
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_38

    .line 1423
    :cond_46
    const/4 v4, -0x1

    .restart local v4    # "sealedResult":I
    goto :goto_26
.end method

.method public setBluetoothVisibilityTimeout(I)I
    .registers 11
    .param p1, "timeout"    # I

    .prologue
    const/16 v6, -0x2d

    .line 2618
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 2619
    .local v0, "callingUid":I
    const/4 v2, -0x1

    .line 2620
    .local v2, "sealedResult":I
    const v7, 0x20c49b

    if-lt p1, v7, :cond_d

    .line 2637
    :cond_c
    :goto_c
    return v6

    .line 2623
    :cond_d
    if-ltz p1, :cond_c

    .line 2626
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2628
    .local v4, "token":J
    :try_start_13
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "bluetooth_discoverable_timeout"

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2629
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2630
    .local v3, "systemIntent":Landroid/content/Intent;
    iget-object v6, p0, mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_30} :catch_36

    .line 2631
    const/4 v2, 0x0

    .line 2636
    .end local v3    # "systemIntent":Landroid/content/Intent;
    :goto_31
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v2

    .line 2637
    goto :goto_c

    .line 2632
    :catch_36
    move-exception v1

    .line 2633
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setBluetoothVisibilityTimeout() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    const/4 v2, -0x1

    goto :goto_31
.end method

.method public setCheckCoverPopupState(Z)I
    .registers 8
    .param p1, "status"    # Z

    .prologue
    .line 2965
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 2966
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 2968
    .local v2, "sealedResult":I
    :try_start_5
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "checkCoverPopupState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_10

    .line 2969
    const/4 v2, 0x0

    .line 2974
    :goto_f
    return v2

    .line 2970
    :catch_10
    move-exception v1

    .line 2971
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCheckCoverPopupState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2972
    const/4 v2, -0x1

    goto :goto_f
.end method

.method public setCpuPowerSavingState(Z)I
    .registers 11
    .param p1, "status"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1921
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 1924
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1925
    .local v2, "token":J
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "psm_cpu_clock"

    if-eqz p1, :cond_2b

    move v4, v5

    :goto_16
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1928
    if-eqz p1, :cond_2d

    .line 1932
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "psm_switch"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1944
    :cond_27
    :goto_27
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1946
    return v6

    :cond_2b
    move v4, v6

    .line 1925
    goto :goto_16

    .line 1935
    :cond_2d
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "psm_display"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1936
    .local v1, "screenSetting":I
    if-nez v1, :cond_27

    .line 1940
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "psm_switch"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_27
.end method

.method public setDeveloperOptionsHidden()I
    .registers 11

    .prologue
    .line 2439
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v1

    .line 2441
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2445
    .local v6, "token":J
    :try_start_8
    new-instance v3, Ljava/io/File;

    const-string v5, "/data/data/com.android.settings/shared_prefs/development.xml"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2446
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 2448
    :cond_1b
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2449
    .local v0, "am":Landroid/app/ActivityManager;
    const-string v5, "com.android.settings"

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2a} :catch_31

    .line 2450
    const/4 v4, 0x0

    .line 2461
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "f":Ljava/io/File;
    .local v4, "sealedResult":I
    :goto_2b
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2462
    return v4

    .line 2454
    .end local v4    # "sealedResult":I
    .restart local v3    # "f":Ljava/io/File;
    :cond_2f
    const/4 v4, -0x1

    .restart local v4    # "sealedResult":I
    goto :goto_2b

    .line 2457
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "sealedResult":I
    :catch_31
    move-exception v2

    .line 2458
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setDeveloperOptionsHidden() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    const/4 v4, -0x1

    .restart local v4    # "sealedResult":I
    goto :goto_2b
.end method

.method public setExtendedCallInfoState(Z)I
    .registers 8
    .param p1, "status"    # Z

    .prologue
    .line 2475
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.telephony"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 2476
    const/4 v2, -0x6

    .line 2487
    :goto_f
    return v2

    .line 2478
    :cond_10
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 2479
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 2481
    .local v2, "sealedResult":I
    :try_start_15
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "extendedCallInfoState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1e} :catch_20

    .line 2482
    const/4 v2, 0x0

    goto :goto_f

    .line 2483
    :catch_20
    move-exception v1

    .line 2484
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setExtendedCallInfoState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2485
    const/4 v2, -0x1

    goto :goto_f
.end method

.method public setGpsState(Z)I
    .registers 10
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1510
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 1513
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1514
    .local v4, "token":J
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getLocationPolicy()Landroid/app/enterprise/LocationPolicy;

    move-result-object v2

    .line 1515
    .local v2, "locationPolicy":Landroid/app/enterprise/LocationPolicy;
    invoke-virtual {v2}, Landroid/app/enterprise/LocationPolicy;->isGPSStateChangeAllowed()Z

    move-result v6

    if-nez v6, :cond_27

    const/4 v1, 0x1

    .line 1516
    .local v1, "isRestricted":Z
    :goto_18
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1517
    if-eqz v1, :cond_29

    .line 1518
    const-string v3, "KnoxCustomManagerService"

    const-string/jumbo v6, "setGpsState() - eSDK GPS state change not allowed"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    const/4 v3, -0x7

    .line 1526
    :goto_26
    return v3

    .end local v1    # "isRestricted":Z
    :cond_27
    move v1, v3

    .line 1515
    goto :goto_18

    .line 1522
    .restart local v1    # "isRestricted":Z
    :cond_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1523
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gps"

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1524
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_26
.end method

.method public setInputMethod(Ljava/lang/String;Z)I
    .registers 14
    .param p1, "inputMethodClassName"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 1785
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 1788
    .local v0, "callingUid":I
    invoke-direct {p0, p1}, checkDotString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1789
    const/16 v4, -0x30

    .line 1820
    :goto_c
    return v4

    .line 1792
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1794
    .local v6, "token":J
    :try_start_11
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_85

    .line 1795
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "enabled_input_methods"

    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1796
    .local v3, "methodList":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 1797
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "default_input_method"

    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1798
    .local v1, "defaultInput":Ljava/lang/String;
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "default_input_method"

    invoke-static {v5, v8, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1799
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "default_input_method"

    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_4b} :catch_88

    move-result-object v1

    .line 1800
    const/4 v4, 0x0

    .line 1818
    .end local v1    # "defaultInput":Ljava/lang/String;
    .end local v3    # "methodList":Ljava/lang/String;
    .local v4, "sealedResult":I
    :goto_4d
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    .line 1802
    .end local v4    # "sealedResult":I
    .restart local v3    # "methodList":Ljava/lang/String;
    :cond_51
    if-eqz p2, :cond_82

    .line 1803
    :try_start_53
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "enabled_input_methods"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1805
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "default_input_method"

    invoke-static {v5, v8, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_80} :catch_88

    .line 1806
    const/4 v4, 0x0

    .restart local v4    # "sealedResult":I
    goto :goto_4d

    .line 1808
    .end local v4    # "sealedResult":I
    :cond_82
    const/16 v4, -0x30

    .restart local v4    # "sealedResult":I
    goto :goto_4d

    .line 1812
    .end local v3    # "methodList":Ljava/lang/String;
    .end local v4    # "sealedResult":I
    :cond_85
    const/16 v4, -0x30

    .restart local v4    # "sealedResult":I
    goto :goto_4d

    .line 1814
    .end local v4    # "sealedResult":I
    :catch_88
    move-exception v2

    .line 1815
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setInputMethod() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    const/4 v4, -0x1

    .restart local v4    # "sealedResult":I
    goto :goto_4d
.end method

.method public setMobileDataRoamingState(Z)I
    .registers 11
    .param p1, "status"    # Z

    .prologue
    const/4 v6, 0x1

    .line 2650
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 2652
    .local v0, "callingUid":I
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.telephony"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 2653
    const/4 v2, -0x6

    .line 2673
    :goto_14
    return v2

    .line 2656
    :cond_15
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string/jumbo v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 2657
    .local v3, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v7

    if-ne v7, v6, :cond_2f

    .line 2658
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_2f

    .line 2659
    const/4 v2, -0x1

    goto :goto_14

    .line 2663
    :cond_2f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2665
    .local v4, "token":J
    :try_start_33
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "data_roaming"

    if-eqz p1, :cond_45

    :goto_3d
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_40} :catch_47

    .line 2666
    const/4 v2, 0x0

    .line 2671
    .local v2, "sealedResult":I
    :goto_41
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_14

    .line 2665
    .end local v2    # "sealedResult":I
    :cond_45
    const/4 v6, 0x0

    goto :goto_3d

    .line 2667
    :catch_47
    move-exception v1

    .line 2668
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setMobileDataRoamingState() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2669
    const/4 v2, -0x1

    .restart local v2    # "sealedResult":I
    goto :goto_41
.end method

.method public setMobileDataState(Z)I
    .registers 8
    .param p1, "status"    # Z

    .prologue
    .line 1540
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.telephony"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 1541
    const/4 v4, -0x6

    .line 1552
    :goto_f
    return v4

    .line 1544
    :cond_10
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 1546
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1547
    .local v2, "token":J
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1549
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 1550
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1552
    const/4 v4, 0x0

    goto :goto_f
.end method

.method public setMotionControlState(IZ)I
    .registers 13
    .param p1, "type"    # I
    .param p2, "status"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 2843
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 2844
    .local v0, "callingUid":I
    if-lt p1, v3, :cond_b

    const/4 v7, 0x3

    if-le p1, v7, :cond_e

    .line 2845
    :cond_b
    const/16 v2, -0x32

    .line 2870
    :goto_d
    return v2

    .line 2848
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2852
    .local v4, "token":J
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_32

    .line 2853
    :try_start_16
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "motion_pick_up"

    if-eqz p2, :cond_57

    move v7, v3

    :goto_21
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2855
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "motion_pick_up_to_call_out"

    if-eqz p2, :cond_59

    move v7, v3

    :goto_2f
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2858
    :cond_32
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_52

    .line 2859
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "motion_merged_mute_pause"

    if-eqz p2, :cond_5b

    move v7, v3

    :goto_41
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2861
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "surface_palm_swipe"

    if-eqz p2, :cond_5d

    :goto_4f
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_52} :catch_5f

    .line 2864
    :cond_52
    const/4 v2, 0x0

    .line 2869
    .local v2, "sealedResult":I
    :goto_53
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_d

    .end local v2    # "sealedResult":I
    :cond_57
    move v7, v6

    .line 2853
    goto :goto_21

    :cond_59
    move v7, v6

    .line 2855
    goto :goto_2f

    :cond_5b
    move v7, v6

    .line 2859
    goto :goto_41

    :cond_5d
    move v3, v6

    .line 2861
    goto :goto_4f

    .line 2865
    :catch_5f
    move-exception v1

    .line 2866
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMotionControlState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2867
    const/4 v2, -0x1

    .restart local v2    # "sealedResult":I
    goto :goto_53
.end method

.method public setMultiWindowState(Z)I
    .registers 11
    .param p1, "status"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1655
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 1657
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1658
    .local v4, "token":J
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v2

    .line 1659
    .local v2, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isMultiWindowModeAllowed()Z

    move-result v8

    if-nez v8, :cond_26

    move v1, v6

    .line 1660
    .local v1, "isRestricted":Z
    :goto_17
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1661
    if-eqz v1, :cond_28

    .line 1662
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setMultiWindowState() - eSDK multi window mode not allowed"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    const/4 v3, -0x7

    .line 1674
    :goto_25
    return v3

    .end local v1    # "isRestricted":Z
    :cond_26
    move v1, v7

    .line 1659
    goto :goto_17

    .line 1665
    .restart local v1    # "isRestricted":Z
    :cond_28
    const/4 v3, -0x6

    .line 1666
    .local v3, "sealedResult":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1667
    if-eqz p1, :cond_3f

    .line 1668
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "multi_window_enabled"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1672
    :goto_3a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1673
    const/4 v3, 0x0

    .line 1674
    goto :goto_25

    .line 1670
    :cond_3f
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "multi_window_enabled"

    invoke-static {v6, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3a
.end method

.method public setPackageVerifierState(Z)I
    .registers 10
    .param p1, "status"    # Z

    .prologue
    .line 2763
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 2765
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2767
    .local v4, "token":J
    :try_start_8
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "package_verifier_enable"

    if-eqz p1, :cond_1c

    const/4 v3, 0x1

    :goto_14
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_1e

    .line 2769
    const/4 v2, 0x0

    .line 2774
    .local v2, "sealedResult":I
    :goto_18
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2775
    return v2

    .line 2767
    .end local v2    # "sealedResult":I
    :cond_1c
    const/4 v3, 0x0

    goto :goto_14

    .line 2770
    :catch_1e
    move-exception v1

    .line 2771
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setPackageVerifierState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2772
    const/4 v2, -0x1

    .restart local v2    # "sealedResult":I
    goto :goto_18
.end method

.method public setRecentLongPressActivity(Ljava/lang/String;)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3006
    const/4 v2, -0x6

    .line 3007
    .local v2, "sealedResult":I
    invoke-direct {p0}, enforceRubensFeaturesPermission()I

    move-result v0

    .line 3009
    .local v0, "callingUid":I
    if-eqz p1, :cond_10

    .line 3010
    invoke-direct {p0, p1}, checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 3011
    const/16 v3, -0x21

    .line 3022
    :goto_f
    return v3

    .line 3016
    :cond_10
    :try_start_10
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "recentLongPressActivity"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_1d

    .line 3017
    const/4 v2, 0x0

    :goto_1b
    move v3, v2

    .line 3022
    goto :goto_f

    .line 3018
    :catch_1d
    move-exception v1

    .line 3019
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRecentLongPressActivity() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3020
    const/4 v2, -0x1

    goto :goto_1b
.end method

.method public setRecentLongPressMode(I)I
    .registers 8
    .param p1, "mode"    # I

    .prologue
    .line 3051
    const/4 v2, -0x6

    .line 3052
    .local v2, "result":I
    invoke-direct {p0}, enforceRubensFeaturesPermission()I

    move-result v0

    .line 3055
    .local v0, "callingUid":I
    :try_start_5
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "recentLongPressMode"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_11

    .line 3056
    const/4 v2, 0x0

    .line 3061
    :goto_10
    return v2

    .line 3057
    :catch_11
    move-exception v1

    .line 3058
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRecentLongPressMode() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3059
    const/4 v2, -0x1

    goto :goto_10
.end method

.method public setScreenPowerSavingState(Z)I
    .registers 11
    .param p1, "status"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1881
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 1884
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1885
    .local v2, "token":J
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "psm_display"

    if-eqz p1, :cond_2b

    move v4, v5

    :goto_16
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1888
    if-eqz p1, :cond_2d

    .line 1892
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "psm_switch"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1904
    :cond_27
    :goto_27
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1906
    return v6

    :cond_2b
    move v4, v6

    .line 1885
    goto :goto_16

    .line 1895
    :cond_2d
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "psm_cpu_clock"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1896
    .local v1, "screenSetting":I
    if-nez v1, :cond_27

    .line 1900
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "psm_switch"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_27
.end method

.method public setScreenTimeout(I)I
    .registers 12
    .param p1, "timeout"    # I

    .prologue
    const/16 v2, -0x2d

    .line 1959
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 1961
    .local v0, "callingUid":I
    const v5, 0x20c49b

    if-lt p1, v5, :cond_c

    .line 1979
    :cond_b
    :goto_b
    return v2

    .line 1964
    :cond_c
    const/4 v5, 0x5

    if-lt p1, v5, :cond_b

    .line 1968
    mul-int/lit16 v4, p1, 0x3e8

    .line 1969
    .local v4, "timeout_val":I
    :try_start_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1970
    .local v6, "token":J
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "screen_off_timeout"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1971
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1972
    .local v3, "systemIntent":Landroid/content/Intent;
    iget-object v5, p0, mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    const/4 v9, -0x2

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1973
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_36} :catch_38

    .line 1974
    const/4 v2, 0x0

    .local v2, "sealedResult":I
    goto :goto_b

    .line 1975
    .end local v2    # "sealedResult":I
    .end local v3    # "systemIntent":Landroid/content/Intent;
    .end local v6    # "token":J
    :catch_38
    move-exception v1

    .line 1976
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setScreenTimeout() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    const/4 v2, -0x1

    .restart local v2    # "sealedResult":I
    goto :goto_b
.end method

.method public setSealedExitUI(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "exitUIPackage"    # Ljava/lang/String;
    .param p2, "exitUIClass"    # Ljava/lang/String;

    .prologue
    .line 658
    const/4 v2, -0x6

    .line 659
    .local v2, "sealedResult":I
    invoke-direct {p0}, enforceSealedModePermission()I

    move-result v0

    .line 661
    .local v0, "callingUid":I
    if-nez p1, :cond_9

    if-eqz p2, :cond_18

    .line 662
    :cond_9
    invoke-direct {p0, p1}, checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-direct {p0, p2}, checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 663
    :cond_15
    const/16 v3, -0x21

    .line 674
    :goto_17
    return v3

    .line 667
    :cond_18
    :try_start_18
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedExitUiPackage"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 668
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedExitUiClass"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2c} :catch_2f

    .line 669
    const/4 v2, 0x0

    :goto_2d
    move v3, v2

    .line 674
    goto :goto_17

    .line 670
    :catch_2f
    move-exception v1

    .line 671
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSealedExitUI() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const/4 v2, -0x1

    goto :goto_2d
.end method

.method public setSealedHideNotificationMessages(I)I
    .registers 9
    .param p1, "mask"    # I

    .prologue
    .line 2916
    invoke-direct {p0}, enforceSealedModePermission()I

    move-result v0

    .line 2918
    .local v0, "callingUid":I
    const/16 v4, 0x1f

    if-gt p1, v4, :cond_a

    if-gez p1, :cond_26

    .line 2919
    :cond_a
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSealedHideNotificationMessages() failed - Invalid Notifications type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2920
    const/16 v3, -0x32

    .line 2934
    :goto_25
    return v3

    .line 2922
    :cond_26
    const/4 v3, -0x6

    .line 2924
    .local v3, "sealedResult":I
    :try_start_27
    invoke-virtual {p0}, getSealedHideNotificationMessages()I

    move-result v1

    .line 2926
    .local v1, "currentMask":I
    if-eq p1, v1, :cond_36

    .line 2927
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "notificationMessagesMask"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_36} :catch_38

    .line 2929
    :cond_36
    const/4 v3, 0x0

    goto :goto_25

    .line 2930
    .end local v1    # "currentMask":I
    :catch_38
    move-exception v2

    .line 2931
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setSealedHideNotificationMessages() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2932
    const/4 v3, -0x1

    goto :goto_25
.end method

.method public setSealedHomeActivity(Ljava/lang/String;)I
    .registers 8
    .param p1, "homePackage"    # Ljava/lang/String;

    .prologue
    .line 868
    invoke-direct {p0}, enforceSealedModePermission()I

    move-result v0

    .line 869
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 871
    .local v2, "sealedResult":I
    if-eqz p1, :cond_10

    invoke-direct {p0, p1}, checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 872
    const/16 v3, -0x21

    .line 881
    :goto_f
    return v3

    .line 875
    :cond_10
    :try_start_10
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedHomeActivity"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_1d

    .line 876
    const/4 v2, 0x0

    :goto_1b
    move v3, v2

    .line 881
    goto :goto_f

    .line 877
    :catch_1d
    move-exception v1

    .line 878
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSealedHomeActivity() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    const/4 v2, -0x1

    goto :goto_1b
.end method

.method public setSealedInputMethodRestrictionState(Z)I
    .registers 8
    .param p1, "status"    # Z

    .prologue
    .line 1833
    invoke-direct {p0}, enforceSealedModePermission()I

    move-result v0

    .line 1840
    .local v0, "callingUid":I
    :try_start_4
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "inputRestrictionState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_f

    .line 1841
    const/4 v2, 0x0

    .line 1847
    .local v2, "sealedResult":I
    :goto_e
    return v2

    .line 1842
    .end local v2    # "sealedResult":I
    :catch_f
    move-exception v1

    .line 1843
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSealedInputMethodRestrictionState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    const/4 v2, -0x1

    .restart local v2    # "sealedResult":I
    goto :goto_e
.end method

.method public setSealedModeString(ILjava/lang/String;)I
    .registers 9
    .param p1, "stringType"    # I
    .param p2, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 773
    invoke-direct {p0}, enforceSealedModePermission()I

    move-result v0

    .line 774
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 776
    .local v2, "sealedResult":I
    packed-switch p1, :pswitch_data_8c

    .line 805
    const-string v3, "KnoxCustomManagerService"

    const-string/jumbo v4, "setSealedModeString() failed - unrecognized type"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const/16 v2, -0x29

    .line 809
    :goto_12
    return v2

    .line 779
    :pswitch_13
    :try_start_13
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOn"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_1f

    .line 780
    const/4 v2, 0x0

    goto :goto_12

    .line 781
    :catch_1f
    move-exception v1

    .line 782
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSealedModeString() failed - persistence problem (SEALED_ON_STRING) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const/4 v2, -0x1

    .line 785
    goto :goto_12

    .line 788
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_3b
    :try_start_3b
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOff"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_45} :catch_47

    .line 789
    const/4 v2, 0x0

    goto :goto_12

    .line 790
    :catch_47
    move-exception v1

    .line 791
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSealedModeString() failed - persistence problem (SEALED_OFF_STRING) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const/4 v2, -0x1

    .line 794
    goto :goto_12

    .line 797
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_63
    :try_start_63
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOption"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6d} :catch_6f

    .line 798
    const/4 v2, 0x0

    goto :goto_12

    .line 799
    :catch_6f
    move-exception v1

    .line 800
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSealedModeString() failed - persistence problem (SEALED_OPTION_STRING) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const/4 v2, -0x1

    .line 803
    goto :goto_12

    .line 776
    nop

    :pswitch_data_8c
    .packed-switch 0x6f
        :pswitch_63
        :pswitch_13
        :pswitch_3b
    .end packed-switch
.end method

.method public setSealedMultiWindowFixedState(II)I
    .registers 15
    .param p1, "fixed"    # I
    .param p2, "percentageSplit"    # I

    .prologue
    const/4 v8, 0x1

    .line 1692
    invoke-direct {p0}, enforceSealedModePermission()I

    move-result v0

    .line 1694
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1695
    .local v6, "token":J
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v3

    .line 1696
    .local v3, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isMultiWindowModeAllowed()Z

    move-result v9

    if-nez v9, :cond_25

    move v2, v8

    .line 1697
    .local v2, "isRestricted":Z
    :goto_16
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1698
    if-eqz v2, :cond_27

    .line 1699
    const-string v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setSealedMultiWindowFixedState() - eSDK multi window mode not allowed"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    const/4 v4, -0x7

    .line 1736
    :cond_24
    :goto_24
    return v4

    .line 1696
    .end local v2    # "isRestricted":Z
    :cond_25
    const/4 v2, 0x0

    goto :goto_16

    .line 1702
    .restart local v2    # "isRestricted":Z
    :cond_27
    const/4 v4, -0x6

    .line 1704
    .local v4, "sealedResult":I
    if-eq p1, v8, :cond_2f

    if-eqz p1, :cond_2f

    .line 1705
    const/16 v4, -0x2b

    goto :goto_24

    .line 1707
    :cond_2f
    const/16 v9, 0xa

    if-lt p2, v9, :cond_37

    const/16 v9, 0x5a

    if-le p2, v9, :cond_3a

    .line 1708
    :cond_37
    const/16 v4, -0x2a

    goto :goto_24

    .line 1710
    :cond_3a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1712
    if-ne p1, v8, :cond_56

    .line 1713
    :try_start_40
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "multi_window_enabled"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v8, :cond_56

    .line 1714
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, setMultiWindowState(Z)I

    move-result v4

    .line 1715
    if-nez v4, :cond_24

    .line 1720
    :cond_56
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "multiWindowFixed"

    invoke-virtual {v8, v0, v9, v10, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 1721
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "multiWindowPercentageSplit"

    invoke-virtual {v8, v0, v9, v10, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 1724
    const-string v8, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1725
    .local v5, "uri":Landroid/net/Uri;
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1727
    invoke-direct {p0}, updateMultiWindowCenterBar()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_7b} :catch_80

    .line 1728
    const/4 v4, 0x0

    .line 1735
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_7c
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_24

    .line 1729
    :catch_80
    move-exception v1

    .line 1730
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setSealedMultiWindowFixedState() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    const/4 v4, -0x1

    goto :goto_7c
.end method

.method public setSealedNotificationMessagesState(Z)I
    .registers 8
    .param p1, "status"    # Z

    .prologue
    .line 1605
    invoke-direct {p0}, enforceSealedModePermission()I

    move-result v0

    .line 1606
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 1609
    .local v2, "sealedResult":I
    if-eqz p1, :cond_d

    .line 1610
    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {p0, v3}, setSealedHideNotificationMessages(I)I

    move-result v2

    .line 1618
    :goto_c
    return v2

    .line 1612
    :cond_d
    const/16 v3, 0x1f

    invoke-virtual {p0, v3}, setSealedHideNotificationMessages(I)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_14

    move-result v2

    goto :goto_c

    .line 1614
    :catch_14
    move-exception v1

    .line 1615
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSealedNotificationMessagesState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    const/4 v2, -0x1

    goto :goto_c
.end method

.method public setSealedPassCode(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .param p1, "currentPassCode"    # Ljava/lang/String;
    .param p2, "passCode"    # Ljava/lang/String;

    .prologue
    .line 616
    const/4 v3, -0x6

    .line 617
    .local v3, "sealedResult":I
    invoke-direct {p0}, enforceSealedModePermission()I

    move-result v0

    .line 619
    .local v0, "callingUid":I
    :try_start_5
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "sealedState"

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 620
    .local v1, "currentStatus":Z
    if-eqz v1, :cond_44

    .line 621
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "sealedPinCode"

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 622
    .local v4, "storedPassCode":Ljava/lang/String;
    if-eqz v4, :cond_39

    if-eqz p2, :cond_39

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_39

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 625
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "sealedPinCode"

    invoke-virtual {v5, v0, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 626
    const/4 v3, 0x0

    .line 639
    .end local v1    # "currentStatus":Z
    .end local v4    # "storedPassCode":Ljava/lang/String;
    :goto_38
    return v3

    .line 628
    .restart local v1    # "currentStatus":Z
    .restart local v4    # "storedPassCode":Ljava/lang/String;
    :cond_39
    const-string v5, "KnoxCustomManagerService"

    const-string/jumbo v6, "setSealedPassCode() - Invalid passcode"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const/16 v3, -0x20

    goto :goto_38

    .line 632
    .end local v4    # "storedPassCode":Ljava/lang/String;
    :cond_44
    const-string v5, "KnoxCustomManagerService"

    const-string/jumbo v6, "setSealedPassCode() - Not in Sealed Mode "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4c} :catch_4e

    .line 633
    const/4 v3, -0x2

    goto :goto_38

    .line 635
    .end local v1    # "currentStatus":Z
    :catch_4e
    move-exception v2

    .line 636
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSealedPassCode() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const/4 v3, -0x1

    goto :goto_38
.end method

.method public setSealedPowerDialogCustomItems(Ljava/util/List;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    const/4 v3, -0x1

    .line 2384
    invoke-direct {p0}, enforceSealedModePermission()I

    move-result v0

    .line 2385
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .line 2387
    .local v1, "dbBytes":[B
    if-eqz p1, :cond_e

    :try_start_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_27

    .line 2388
    :cond_e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v4}, serializeObject(Ljava/util/ArrayList;)[B

    move-result-object v1

    .line 2395
    :goto_17
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v5, 0x3e8

    const-string v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "sealedPowerCustomItems"

    invoke-virtual {v4, v5, v6, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->updateBlob(ILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v4

    if-nez v4, :cond_46

    .line 2405
    :goto_26
    return v3

    .line 2390
    :cond_27
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_31

    .line 2391
    const/16 v3, -0x33

    goto :goto_26

    .line 2393
    :cond_31
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v4}, serializeObject(Ljava/util/ArrayList;)[B
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_39} :catch_3b

    move-result-object v1

    goto :goto_17

    .line 2401
    :catch_3b
    move-exception v2

    .line 2402
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 2405
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_46
    const/4 v3, 0x0

    goto :goto_26
.end method

.method public setSealedPowerDialogCustomItemsState(Z)I
    .registers 11
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2290
    invoke-direct {p0}, enforceSealedModePermission()I

    move-result v0

    .line 2292
    .local v0, "callingUid":I
    :try_start_6
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v6, 0x3e8

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "sealedPowerCustomItemsState"

    if-eqz p1, :cond_19

    const/4 v4, 0x1

    :goto_12
    invoke-virtual {v5, v6, v7, v8, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_1b

    move-result v4

    if-nez v4, :cond_36

    .line 2302
    :goto_18
    return v2

    :cond_19
    move v4, v3

    .line 2292
    goto :goto_12

    .line 2298
    :catch_1b
    move-exception v1

    .line 2299
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSealedPowerDialogCustomItemsState() failed - persistence problem"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_36
    move v2, v3

    .line 2302
    goto :goto_18
.end method

.method public setSealedPowerDialogItems(I)I
    .registers 9
    .param p1, "value"    # I

    .prologue
    .line 2259
    invoke-direct {p0}, enforceSealedModePermission()I

    move-result v0

    .line 2260
    .local v0, "callingUid":I
    const/4 v2, -0x1

    .line 2262
    .local v2, "sealedResult":I
    if-ltz p1, :cond_b

    const/16 v3, 0x3ff

    if-le p1, v3, :cond_e

    .line 2263
    :cond_b
    const/16 v2, -0x32

    .line 2277
    :goto_d
    return v2

    .line 2265
    :cond_e
    :try_start_e
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "sealedPowerDialogItems"

    invoke-virtual {v3, v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_21

    move-result v3

    if-eqz v3, :cond_1f

    .line 2268
    const/4 v2, 0x0

    goto :goto_d

    .line 2270
    :cond_1f
    const/4 v2, -0x1

    goto :goto_d

    .line 2273
    :catch_21
    move-exception v1

    .line 2274
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSealedPowerDialogItems() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2275
    const/4 v2, -0x1

    goto :goto_d
.end method

.method public setSealedPowerDialogOptionMode(I)I
    .registers 8
    .param p1, "mode"    # I

    .prologue
    .line 723
    invoke-direct {p0}, enforceSealedModePermission()I

    move-result v0

    .line 724
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 727
    .local v2, "sealedResult":I
    const/4 v3, 0x2

    if-eq p1, v3, :cond_d

    const/4 v3, 0x3

    if-eq p1, v3, :cond_d

    if-nez p1, :cond_19

    .line 728
    :cond_d
    :try_start_d
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedPowerDialogOptionMode"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_1c

    .line 729
    const/4 v2, 0x0

    .line 737
    :goto_18
    return v2

    .line 731
    :cond_19
    const/16 v2, -0x2b

    goto :goto_18

    .line 733
    :catch_1c
    move-exception v1

    .line 734
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSealedPowerDialogOptionMode() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const/4 v2, -0x1

    goto :goto_18
.end method

.method public setSealedState(ZLjava/lang/String;)I
    .registers 16
    .param p1, "status"    # Z
    .param p2, "passCode"    # Ljava/lang/String;

    .prologue
    .line 522
    invoke-direct {p0}, enforceSealedModePermission()I

    move-result v0

    .line 525
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 526
    .local v8, "token":J
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v4

    .line 527
    .local v4, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v4}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v3

    .line 528
    .local v3, "isRestricted":Z
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 529
    if-eqz v3, :cond_21

    .line 530
    const-string v10, "KnoxCustomManagerService"

    const-string/jumbo v11, "setSealedState() - eSDK kiosk mode already enabled"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const/4 v5, -0x7

    .line 584
    :goto_20
    return v5

    .line 534
    :cond_21
    const/4 v5, -0x1

    .line 537
    .local v5, "sealedResult":I
    :try_start_22
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "KNOX_CUSTOM"

    const-string/jumbo v12, "sealedState"

    invoke-virtual {v10, v0, v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 538
    .local v1, "currentStatus":Z
    if-eqz p1, :cond_93

    .line 539
    if-eqz v1, :cond_3b

    .line 540
    const-string v10, "KnoxCustomManagerService"

    const-string/jumbo v11, "setSealedState() - Already in sealed mode - Passcode not changed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const/4 v5, -0x3

    goto :goto_20

    .line 544
    :cond_3b
    if-eqz p2, :cond_88

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_88

    .line 545
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "KNOX_CUSTOM"

    const-string/jumbo v12, "sealedState"

    invoke-virtual {v10, v0, v11, v12, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 546
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "KNOX_CUSTOM"

    const-string/jumbo v12, "sealedPinCode"

    invoke-virtual {v10, v0, v11, v12, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 547
    invoke-direct {p0}, startSealedMode()V

    .line 548
    const/4 v5, 0x0

    .line 551
    const-string v10, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 552
    .local v7, "uri":Landroid/net/Uri;
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v7, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_6b} :catch_6c

    goto :goto_20

    .line 580
    .end local v1    # "currentStatus":Z
    .end local v7    # "uri":Landroid/net/Uri;
    :catch_6c
    move-exception v2

    .line 581
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setSealedState() failed - persistence problem "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const/4 v5, -0x1

    goto :goto_20

    .line 555
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "currentStatus":Z
    :cond_88
    :try_start_88
    const-string v10, "KnoxCustomManagerService"

    const-string/jumbo v11, "setSealedState() - Invalid passcode"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const/16 v5, -0x20

    goto :goto_20

    .line 560
    :cond_93
    if-eqz v1, :cond_d4

    .line 561
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "KNOX_CUSTOM"

    const-string/jumbo v12, "sealedPinCode"

    invoke-virtual {v10, v0, v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 562
    .local v6, "storedPassCode":Ljava/lang/String;
    if-eqz v6, :cond_c8

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c8

    .line 563
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "KNOX_CUSTOM"

    const-string/jumbo v12, "sealedState"

    invoke-virtual {v10, v0, v11, v12, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 564
    invoke-direct {p0}, stopSealedMode()V

    .line 565
    const/4 v5, 0x0

    .line 568
    const-string v10, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 569
    .restart local v7    # "uri":Landroid/net/Uri;
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v7, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_20

    .line 572
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_c8
    const-string v10, "KnoxCustomManagerService"

    const-string/jumbo v11, "setSealedState() - Invalid passcode"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const/16 v5, -0x20

    goto/16 :goto_20

    .line 576
    .end local v6    # "storedPassCode":Ljava/lang/String;
    :cond_d4
    const-string v10, "KnoxCustomManagerService"

    const-string/jumbo v11, "setSealedState() - Not in Sealed Mode"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_dc} :catch_6c

    .line 577
    const/4 v5, -0x2

    goto/16 :goto_20
.end method

.method public setSealedStatusBarClockState(Z)I
    .registers 12
    .param p1, "status"    # Z

    .prologue
    .line 984
    invoke-direct {p0}, enforceSealedModePermission()I

    move-result v0

    .line 986
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 989
    .local v2, "sealedResult":I
    :try_start_5
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "sealedStatusBarClockState"

    invoke-virtual {v5, v0, v8, v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 990
    invoke-virtual {p0}, getSealedState()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 991
    invoke-virtual {p0}, getSealedStatusBarMode()I

    move-result v4

    .line 992
    .local v4, "statusBarMode":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3b

    .line 993
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 994
    .local v6, "token":J
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v8, "statusbar"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .line 995
    .local v3, "statusBarManager":Landroid/app/StatusBarManager;
    if-eqz p1, :cond_3d

    .line 996
    const v5, 0x80022d

    invoke-virtual {v3, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 997
    const/16 v5, 0x22d

    invoke-virtual {v3, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1001
    :goto_38
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1004
    .end local v3    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v4    # "statusBarMode":I
    .end local v6    # "token":J
    :cond_3b
    const/4 v2, 0x0

    .line 1010
    :goto_3c
    return v2

    .line 999
    .restart local v3    # "statusBarManager":Landroid/app/StatusBarManager;
    .restart local v4    # "statusBarMode":I
    .restart local v6    # "token":J
    :cond_3d
    const v5, 0x80022d

    invoke-virtual {v3, v5}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_43} :catch_44

    goto :goto_38

    .line 1005
    .end local v3    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v4    # "statusBarMode":I
    .end local v6    # "token":J
    :catch_44
    move-exception v1

    .line 1006
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSealedStatusBarClockState() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const/4 v2, -0x1

    goto :goto_3c
.end method

.method public setSealedStatusBarIconsState(Z)I
    .registers 12
    .param p1, "status"    # Z

    .prologue
    .line 1041
    invoke-direct {p0}, enforceSealedModePermission()I

    move-result v0

    .line 1042
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 1045
    .local v2, "sealedResult":I
    :try_start_5
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "sealedStatusBarIconsState"

    invoke-virtual {v5, v0, v8, v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1046
    invoke-virtual {p0}, getSealedState()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 1047
    invoke-virtual {p0}, getSealedStatusBarMode()I

    move-result v4

    .line 1048
    .local v4, "statusBarMode":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3b

    .line 1049
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1050
    .local v6, "token":J
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v8, "statusbar"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .line 1051
    .local v3, "statusBarManager":Landroid/app/StatusBarManager;
    if-eqz p1, :cond_3d

    .line 1052
    const v5, 0x10022d

    invoke-virtual {v3, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1053
    const/16 v5, 0x22d

    invoke-virtual {v3, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1057
    :goto_38
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1060
    .end local v3    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v4    # "statusBarMode":I
    .end local v6    # "token":J
    :cond_3b
    const/4 v2, 0x0

    .line 1066
    :goto_3c
    return v2

    .line 1055
    .restart local v3    # "statusBarManager":Landroid/app/StatusBarManager;
    .restart local v4    # "statusBarMode":I
    .restart local v6    # "token":J
    :cond_3d
    const v5, 0x10022d

    invoke-virtual {v3, v5}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_43} :catch_44

    goto :goto_38

    .line 1061
    .end local v3    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v4    # "statusBarMode":I
    .end local v6    # "token":J
    :catch_44
    move-exception v1

    .line 1062
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSealedStatusBarIconsState() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const/4 v2, -0x1

    goto :goto_3c
.end method

.method public setSealedStatusBarMode(I)I
    .registers 14
    .param p1, "mode"    # I

    .prologue
    const/4 v11, 0x3

    .line 915
    invoke-direct {p0}, enforceSealedModePermission()I

    move-result v0

    .line 918
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 919
    .local v6, "token":J
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v3

    .line 920
    .local v3, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isStatusBarHidden()Z

    move-result v2

    .line 921
    .local v2, "isRestricted":Z
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 922
    if-eqz v2, :cond_22

    .line 923
    const-string v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setSealedStatusBarMode() - eSDK status bar already hidden"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    const/4 v4, -0x7

    .line 951
    :goto_21
    return v4

    .line 927
    :cond_22
    const/4 v4, -0x6

    .line 930
    .local v4, "sealedResult":I
    const/4 v8, 0x2

    if-eq p1, v8, :cond_28

    if-ne p1, v11, :cond_75

    .line 931
    :cond_28
    :try_start_28
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "sealedStatusBarMode"

    invoke-virtual {v8, v0, v9, v10, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 932
    invoke-virtual {p0}, getSealedState()Z

    move-result v8

    if-eqz v8, :cond_51

    .line 933
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 934
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string/jumbo v9, "statusbar"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    .line 935
    .local v5, "statusBarManager":Landroid/app/StatusBarManager;
    if-ne p1, v11, :cond_53

    .line 936
    const/16 v8, 0x22b

    invoke-virtual {v5, v8}, Landroid/app/StatusBarManager;->disable(I)V

    .line 940
    :goto_4e
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 942
    .end local v5    # "statusBarManager":Landroid/app/StatusBarManager;
    :cond_51
    const/4 v4, 0x0

    goto :goto_21

    .line 938
    .restart local v5    # "statusBarManager":Landroid/app/StatusBarManager;
    :cond_53
    const/16 v8, 0x22d

    invoke-virtual {v5, v8}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_58} :catch_59

    goto :goto_4e

    .line 946
    .end local v5    # "statusBarManager":Landroid/app/StatusBarManager;
    :catch_59
    move-exception v1

    .line 947
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setSealedStatusBarMode() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    const/4 v4, -0x1

    goto :goto_21

    .line 944
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_75
    const/16 v4, -0x2b

    goto :goto_21
.end method

.method public setSealedUsbMassStorageState(Z)I
    .registers 12
    .param p1, "status"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1098
    invoke-direct {p0}, enforceSealedModePermission()I

    move-result v0

    .line 1101
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1102
    .local v6, "token":J
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 1104
    .local v3, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v3, v2}, Landroid/app/enterprise/RestrictionPolicy;->isUsbMediaPlayerAvailable(Z)Z

    move-result v5

    if-nez v5, :cond_18

    const/4 v2, 0x1

    .line 1105
    .local v2, "isRestricted":Z
    :cond_18
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1106
    if-eqz v2, :cond_27

    .line 1107
    const-string v5, "KnoxCustomManagerService"

    const-string/jumbo v8, "setSealedUsbMassStorageState() - eSDK USB media player disabled"

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    const/4 v4, -0x7

    .line 1120
    :goto_26
    return v4

    .line 1111
    :cond_27
    const/4 v4, -0x6

    .line 1114
    .local v4, "sealedResult":I
    :try_start_28
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "usbMassStorageState"

    invoke-virtual {v5, v0, v8, v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_32} :catch_34

    .line 1115
    const/4 v4, 0x0

    goto :goto_26

    .line 1116
    :catch_34
    move-exception v1

    .line 1117
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSealedUsbMassStorageState() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    const/4 v4, -0x1

    goto :goto_26
.end method

.method public setSealedUsbNetAddresses(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "sourceAddress"    # Ljava/lang/String;
    .param p2, "destinationAddress"    # Ljava/lang/String;

    .prologue
    .line 1212
    invoke-direct {p0}, enforceSealedModePermission()I

    move-result v0

    .line 1213
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 1215
    .local v2, "sealedResult":I
    invoke-direct {p0, p1}, checkIpAddressString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-direct {p0, p2}, checkIpAddressString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 1216
    :cond_11
    const/16 v3, -0x24

    .line 1226
    :goto_13
    return v3

    .line 1219
    :cond_14
    :try_start_14
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "usbNetSource"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1220
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "usbNetDest"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_28} :catch_2b

    .line 1221
    const/4 v2, 0x0

    :goto_29
    move v3, v2

    .line 1226
    goto :goto_13

    .line 1222
    :catch_2b
    move-exception v1

    .line 1223
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSealedUsbNetAddresses() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    const/4 v2, -0x1

    goto :goto_29
.end method

.method public setSealedUsbNetState(Z)I
    .registers 10
    .param p1, "status"    # Z

    .prologue
    .line 1158
    invoke-direct {p0}, enforceSealedModePermission()I

    move-result v0

    .line 1159
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 1160
    .local v2, "sealedResult":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1162
    .local v4, "token":J
    const/16 v3, 0x14b

    :try_start_b
    invoke-virtual {p0, v3}, getSealedUsbNetAddress(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19

    const/16 v3, 0x14c

    invoke-virtual {p0, v3}, getSealedUsbNetAddress(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_29

    :cond_19
    if-eqz p1, :cond_29

    .line 1165
    const-string v3, "KnoxCustomManagerService"

    const-string/jumbo v6, "setSealedUsbNetState() failed - invalid IP addresses "

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_23} :catch_40

    .line 1166
    const/16 v2, -0x24

    .line 1178
    :goto_25
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1179
    return v2

    .line 1168
    :cond_29
    :try_start_29
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "usbNetState"

    invoke-virtual {v3, v0, v6, v7, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1169
    invoke-virtual {p0}, getSealedState()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1170
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, startStopUsbNet(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3e} :catch_40

    .line 1172
    :cond_3e
    const/4 v2, 0x0

    goto :goto_25

    .line 1174
    :catch_40
    move-exception v1

    .line 1175
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSealedUsbNetState() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    const/4 v2, -0x1

    goto :goto_25
.end method

.method public setSettingsHiddenState(ZI)I
    .registers 15
    .param p1, "status"    # Z
    .param p2, "elements"    # I

    .prologue
    .line 2556
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v1

    .line 2558
    .local v1, "callingUid":I
    if-ltz p2, :cond_a

    const/16 v7, 0x1ff

    if-le p2, v7, :cond_26

    .line 2559
    :cond_a
    const-string v7, "KnoxCustomManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setSettingsHiddenState() failed - Invalid Settings type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2560
    const/16 v6, -0x32

    .line 2588
    :goto_25
    return v6

    .line 2562
    :cond_26
    const/4 v6, -0x6

    .line 2563
    .local v6, "sealedResult":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2566
    .local v8, "token":J
    :try_start_2b
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "KNOX_CUSTOM"

    const-string/jumbo v11, "settingsState"

    invoke-virtual {v7, v1, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2567
    .local v2, "currentElements":I
    if-eqz p1, :cond_6c

    .line 2569
    or-int v5, v2, p2

    .line 2574
    .local v5, "newElements":I
    :goto_3a
    if-eq v5, v2, :cond_67

    .line 2575
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "KNOX_CUSTOM"

    const-string/jumbo v11, "settingsState"

    invoke-virtual {v7, v1, v10, v11, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 2577
    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2578
    .local v0, "am":Landroid/app/ActivityManager;
    const-string v7, "com.android.settings"

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 2579
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.sec.android.quicksetting.REFRESH"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2580
    .local v4, "i":Landroid/content/Intent;
    iget-object v7, p0, mContext:Landroid/content/Context;

    new-instance v10, Landroid/os/UserHandle;

    const/4 v11, -0x2

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v4, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_67} :catch_71

    .line 2582
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v4    # "i":Landroid/content/Intent;
    :cond_67
    const/4 v6, 0x0

    .line 2587
    .end local v2    # "currentElements":I
    .end local v5    # "newElements":I
    :goto_68
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_25

    .line 2572
    .restart local v2    # "currentElements":I
    :cond_6c
    xor-int/lit8 v7, p2, -0x1

    and-int v5, v2, v7

    .restart local v5    # "newElements":I
    goto :goto_3a

    .line 2583
    .end local v2    # "currentElements":I
    .end local v5    # "newElements":I
    :catch_71
    move-exception v3

    .line 2584
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "KnoxCustomManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setSettingsHiddenState() failed - persistence problem "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2585
    const/4 v6, -0x1

    goto :goto_68
.end method

.method public setStayAwakeState(Z)I
    .registers 10
    .param p1, "status"    # Z

    .prologue
    .line 2883
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 2885
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2887
    .local v4, "token":J
    :try_start_8
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "stay_on_while_plugged_in"

    if-eqz p1, :cond_1c

    const/4 v3, 0x1

    :goto_14
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_1e

    .line 2889
    const/4 v2, 0x0

    .line 2894
    .local v2, "sealedResult":I
    :goto_18
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2895
    return v2

    .line 2887
    .end local v2    # "sealedResult":I
    :cond_1c
    const/4 v3, 0x0

    goto :goto_14

    .line 2890
    :catch_1e
    move-exception v1

    .line 2891
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setStayAwakeState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2892
    const/4 v2, -0x1

    .restart local v2    # "sealedResult":I
    goto :goto_18
.end method

.method public setSystemLocale(Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .param p1, "localeLanguage"    # Ljava/lang/String;
    .param p2, "localeCountry"    # Ljava/lang/String;

    .prologue
    const/16 v7, -0x2c

    .line 2142
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v1

    .line 2145
    .local v1, "callingUid":I
    const/4 v5, 0x0

    .line 2146
    .local v5, "locale":Ljava/util/Locale;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_49

    .line 2147
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2148
    .local v8, "token":J
    if-nez p2, :cond_1b

    .line 2149
    new-instance v5, Ljava/util/Locale;

    .end local v5    # "locale":Ljava/util/Locale;
    invoke-direct {v5, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 2153
    .restart local v5    # "locale":Ljava/util/Locale;
    :goto_18
    if-nez v5, :cond_21

    .line 2172
    .end local v8    # "token":J
    :cond_1a
    :goto_1a
    return v7

    .line 2151
    .restart local v8    # "token":J
    :cond_1b
    new-instance v5, Ljava/util/Locale;

    .end local v5    # "locale":Ljava/util/Locale;
    invoke-direct {v5, p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5    # "locale":Ljava/util/Locale;
    goto :goto_18

    .line 2156
    :cond_21
    const/4 v10, 0x0

    .line 2157
    .local v10, "valid":Z
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v6

    .line 2158
    .local v6, "locales":[Ljava/util/Locale;
    move-object v0, v6

    .local v0, "arr$":[Ljava/util/Locale;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_29
    if-ge v2, v4, :cond_3f

    aget-object v3, v0, v2

    .line 2159
    .local v3, "l":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3c

    .line 2160
    const/4 v10, 0x1

    .line 2158
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 2163
    .end local v3    # "l":Ljava/util/Locale;
    :cond_3f
    if-eqz v10, :cond_1a

    .line 2166
    invoke-static {v5}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 2167
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2168
    const/4 v7, 0x0

    .line 2169
    .local v7, "sealedResult":I
    goto :goto_1a

    .line 2170
    .end local v0    # "arr$":[Ljava/util/Locale;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "locales":[Ljava/util/Locale;
    .end local v7    # "sealedResult":I
    .end local v8    # "token":J
    .end local v10    # "valid":Z
    :cond_49
    const/16 v7, -0x2c

    .restart local v7    # "sealedResult":I
    goto :goto_1a
.end method

.method public setSystemRingtone(ILjava/lang/String;)I
    .registers 15
    .param p1, "ringtoneType"    # I
    .param p2, "ringtoneName"    # Ljava/lang/String;

    .prologue
    .line 2188
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 2191
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2192
    .local v8, "token":J
    new-instance v5, Landroid/media/RingtoneManager;

    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 2193
    .local v5, "rm":Landroid/media/RingtoneManager;
    const/4 v10, 0x1

    if-eq p1, v10, :cond_1e

    const/4 v10, 0x2

    if-eq p1, v10, :cond_1e

    const/4 v10, 0x4

    if-eq p1, v10, :cond_1e

    .line 2196
    const/16 v6, -0x22

    .line 2223
    .local v6, "sealedResult":I
    :goto_1a
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2225
    .end local v6    # "sealedResult":I
    :goto_1d
    return v6

    .line 2198
    :cond_1e
    if-nez p2, :cond_23

    .line 2199
    const/16 v6, -0x23

    goto :goto_1d

    .line 2201
    :cond_23
    const/4 v1, 0x0

    .line 2202
    .local v1, "found":Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_35

    .line 2203
    iget-object v10, p0, mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v10, p1, v11}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 2204
    const/4 v1, 0x1

    .line 2217
    :cond_31
    if-eqz v1, :cond_62

    .line 2218
    const/4 v6, 0x0

    .restart local v6    # "sealedResult":I
    goto :goto_1a

    .line 2206
    .end local v6    # "sealedResult":I
    :cond_35
    invoke-virtual {v5, p1}, Landroid/media/RingtoneManager;->setType(I)V

    .line 2207
    invoke-virtual {v5}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 2208
    .local v4, "ringtones":I
    const/4 v7, 0x0

    .local v7, "tone":I
    :goto_41
    if-ge v7, v4, :cond_31

    if-nez v1, :cond_31

    .line 2209
    invoke-virtual {v5, v7}, Landroid/media/RingtoneManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v2

    .line 2210
    .local v2, "ringtone":Landroid/media/Ringtone;
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5f

    .line 2211
    invoke-virtual {v5, v7}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 2212
    .local v3, "ringtoneUri":Landroid/net/Uri;
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10, p1, v3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 2213
    const/4 v1, 0x1

    .line 2208
    .end local v3    # "ringtoneUri":Landroid/net/Uri;
    :cond_5f
    add-int/lit8 v7, v7, 0x1

    goto :goto_41

    .line 2220
    .end local v2    # "ringtone":Landroid/media/Ringtone;
    .end local v4    # "ringtones":I
    .end local v7    # "tone":I
    :cond_62
    const/16 v6, -0x23

    .restart local v6    # "sealedResult":I
    goto :goto_1a
.end method

.method public setSystemSoundsSilent()I
    .registers 9

    .prologue
    .line 2735
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 2737
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2739
    .local v4, "token":J
    :try_start_8
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "dtmf_tone"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2740
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "sound_effects_enabled"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2741
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "lockscreen_sounds_enabled"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2742
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "haptic_feedback_enabled"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2743
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "pen_detachment_notification"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_46} :catch_4b

    .line 2744
    const/4 v2, 0x0

    .line 2749
    .local v2, "sealedResult":I
    :goto_47
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2750
    return v2

    .line 2745
    .end local v2    # "sealedResult":I
    :catch_4b
    move-exception v1

    .line 2746
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSystemSoundsSilent() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2747
    const/4 v2, -0x1

    .restart local v2    # "sealedResult":I
    goto :goto_47
.end method

.method public setUnknownSourcesState(Z)I
    .registers 10
    .param p1, "status"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1372
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 1375
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1376
    .local v2, "token":J
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/RestrictionPolicy;->isNonMarketAppAllowed()Z

    move-result v6

    if-nez v6, :cond_28

    move v1, v4

    .line 1377
    .local v1, "isRestricted":Z
    :goto_19
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1378
    if-eqz v1, :cond_2a

    .line 1379
    const-string v4, "KnoxCustomManagerService"

    const-string/jumbo v5, "setUnknownSourcesState() - eSDK non market app not allowed"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    const/4 v5, -0x7

    .line 1387
    :goto_27
    return v5

    .end local v1    # "isRestricted":Z
    :cond_28
    move v1, v5

    .line 1376
    goto :goto_19

    .line 1383
    .restart local v1    # "isRestricted":Z
    :cond_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1384
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "install_non_market_apps"

    if-eqz p1, :cond_3f

    :goto_38
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1385
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_27

    :cond_3f
    move v4, v5

    .line 1384
    goto :goto_38
.end method

.method public setUsbDeviceDefaultPackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)I
    .registers 14
    .param p1, "usbDevice"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "applicationPackage"    # Ljava/lang/String;
    .param p3, "applicationUid"    # I

    .prologue
    .line 1278
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v1

    .line 1279
    .local v1, "callingUid":I
    const/4 v3, -0x6

    .line 1281
    .local v3, "sealedResult":I
    if-eqz p2, :cond_10

    invoke-direct {p0, p2}, checkDotString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 1282
    const/16 v5, -0x21

    .line 1307
    :goto_f
    return v5

    .line 1284
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1286
    .local v6, "token":J
    if-eqz p1, :cond_3e

    .line 1287
    if-lez p3, :cond_33

    .line 1289
    :try_start_18
    const-string/jumbo v5, "usb"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1290
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v4

    .line 1291
    .local v4, "service":Landroid/hardware/usb/IUsbManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v4, p1, p2, v5}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    .line 1292
    invoke-interface {v4, p1, p3}, Landroid/hardware/usb/IUsbManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2d} :catch_49

    .line 1293
    const/4 v3, 0x0

    .line 1306
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v4    # "service":Landroid/hardware/usb/IUsbManager;
    :goto_2e
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v3

    .line 1307
    goto :goto_f

    .line 1295
    :cond_33
    :try_start_33
    const-string v5, "KnoxCustomManagerService"

    const-string/jumbo v8, "setUsbDeviceDefaultPackage() failed - Application UID not specified "

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    const/16 v3, -0x2e

    goto :goto_2e

    .line 1299
    :cond_3e
    const-string v5, "KnoxCustomManagerService"

    const-string/jumbo v8, "setUsbDeviceDefaultPackage() failed - USB device not specified "

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_46} :catch_49

    .line 1300
    const/16 v3, -0x2f

    goto :goto_2e

    .line 1302
    :catch_49
    move-exception v2

    .line 1303
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setUsbDeviceDefaultPackage() failed - permission problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    const/4 v3, -0x1

    goto :goto_2e
.end method

.method public setUserInactivityTimeout(I)I
    .registers 12
    .param p1, "timeout"    # I

    .prologue
    const/16 v5, -0x2d

    .line 2000
    invoke-direct {p0}, enforceSystemPermission()I

    move-result v0

    .line 2001
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 2002
    .local v2, "sealedResult":I
    const v8, 0x20c49b

    if-lt p1, v8, :cond_d

    .line 2023
    :cond_c
    :goto_c
    return v5

    .line 2005
    :cond_d
    if-ltz p1, :cond_c

    .line 2009
    mul-int/lit16 v4, p1, 0x3e8

    .line 2010
    .local v4, "timeout_val":I
    :try_start_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2011
    .local v6, "token":J
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "user_activity_timeout"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2014
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2015
    .local v3, "systemIntent":Landroid/content/Intent;
    iget-object v5, p0, mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2016
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_32} :catch_35

    .line 2017
    const/4 v2, 0x0

    .end local v3    # "systemIntent":Landroid/content/Intent;
    .end local v6    # "token":J
    :goto_33
    move v5, v2

    .line 2023
    goto :goto_c

    .line 2018
    :catch_35
    move-exception v1

    .line 2019
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setUserInactivityTimeout() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    const/4 v2, -0x1

    goto :goto_33
.end method

.method public setWifiConnectionMonitorState(Z)I
    .registers 10
    .param p1, "status"    # Z

    .prologue
    .line 2686
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 2688
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2690
    .local v4, "token":J
    :try_start_8
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_watchdog_poor_network_test_enabled"

    if-eqz p1, :cond_1c

    const/4 v3, 0x1

    :goto_14
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_1e

    .line 2692
    const/4 v2, 0x0

    .line 2697
    .local v2, "sealedResult":I
    :goto_18
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2698
    return v2

    .line 2690
    .end local v2    # "sealedResult":I
    :cond_1c
    const/4 v3, 0x0

    goto :goto_14

    .line 2693
    :catch_1e
    move-exception v1

    .line 2694
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setWifiConnectionMonitorState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2695
    const/4 v2, -0x1

    .restart local v2    # "sealedResult":I
    goto :goto_18
.end method

.method public setWifiNetworkNotificationState(Z)I
    .registers 10
    .param p1, "status"    # Z

    .prologue
    .line 2711
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 2713
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2715
    .local v4, "token":J
    :try_start_8
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_networks_available_notification_on"

    if-eqz p1, :cond_1c

    const/4 v3, 0x1

    :goto_14
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_1e

    .line 2717
    const/4 v2, 0x0

    .line 2722
    .local v2, "sealedResult":I
    :goto_18
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2723
    return v2

    .line 2715
    .end local v2    # "sealedResult":I
    :cond_1c
    const/4 v3, 0x0

    goto :goto_14

    .line 2718
    :catch_1e
    move-exception v1

    .line 2719
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setWifiNetworkNotificationState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2720
    const/4 v2, -0x1

    .restart local v2    # "sealedResult":I
    goto :goto_18
.end method

.method public setWifiState(ZLjava/lang/String;Ljava/lang/String;)I
    .registers 15
    .param p1, "status"    # Z
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 1439
    invoke-direct {p0}, enforceSettingPermission()I

    move-result v0

    .line 1442
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1443
    .local v6, "token":J
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 1444
    .local v3, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v3, v8}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v9

    if-nez v9, :cond_27

    .line 1445
    .local v2, "isRestricted":Z
    :goto_18
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1446
    if-eqz v2, :cond_29

    .line 1447
    const-string v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setWifiState() - eSDK wifi disabled"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    const/4 v4, -0x7

    .line 1497
    :goto_26
    return v4

    .end local v2    # "isRestricted":Z
    :cond_27
    move v2, v8

    .line 1444
    goto :goto_18

    .line 1451
    .restart local v2    # "isRestricted":Z
    :cond_29
    const/4 v4, -0x6

    .line 1453
    .local v4, "sealedResult":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1455
    :try_start_2e
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string/jumbo v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 1456
    .local v5, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v8, 0x0

    sput-boolean v8, mWifiConfigure:Z

    .line 1457
    if-eqz v5, :cond_a4

    .line 1458
    if-eqz p1, :cond_9e

    .line 1461
    if-nez p2, :cond_52

    if-eqz p3, :cond_52

    .line 1462
    const-string v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setWifiState() - ssid == null && password != null"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4c} :catch_82

    .line 1463
    const/16 v4, -0x28

    .line 1495
    .end local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_4e
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_26

    .line 1464
    .restart local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_52
    if-eqz p2, :cond_61

    if-nez p3, :cond_61

    .line 1465
    :try_start_56
    const-string v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setWifiState() - ssid != null && password == null"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    const/16 v4, -0x28

    goto :goto_4e

    .line 1468
    :cond_61
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    if-eqz v8, :cond_72

    .line 1469
    if-eqz p2, :cond_70

    if-eqz p3, :cond_70

    .line 1470
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v8, p2, p3}, configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    :cond_70
    :goto_70
    const/4 v4, 0x0

    goto :goto_4e

    .line 1473
    :cond_72
    if-eqz p2, :cond_7d

    if-eqz p3, :cond_7d

    .line 1474
    const/4 v8, 0x1

    sput-boolean v8, mWifiConfigure:Z

    .line 1475
    sput-object p2, mWifiSSID:Ljava/lang/String;

    .line 1476
    sput-object p3, mWifiPassword:Ljava/lang/String;

    .line 1479
    :cond_7d
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_81} :catch_82

    goto :goto_70

    .line 1491
    .end local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_82
    move-exception v1

    .line 1492
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setWifiState() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    const/4 v4, -0x1

    goto :goto_4e

    .line 1485
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_9e
    const/4 v8, 0x0

    :try_start_9f
    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a2} :catch_82

    .line 1486
    const/4 v4, 0x0

    goto :goto_4e

    .line 1489
    :cond_a4
    const/4 v4, -0x1

    goto :goto_4e
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 198
    invoke-direct {p0}, registerKnoxCustomReceiver()V

    .line 199
    return-void
.end method
