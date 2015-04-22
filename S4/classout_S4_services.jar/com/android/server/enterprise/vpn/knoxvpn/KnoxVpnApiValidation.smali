.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
.super Ljava/lang/Object;
.source "KnoxVpnApiValidation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KnoxVpnApiValidation"

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private static mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

.field private static mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

.field private static mPersonaManager:Landroid/os/IPersonaManager;


# instance fields
.field private mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field private vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 65
    sput-object v0, mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    .line 69
    sput-object v0, mPersonaManager:Landroid/os/IPersonaManager;

    .line 71
    sput-object v0, mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

    .line 73
    sput-object v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 79
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 80
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 81
    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    iput-object v0, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 82
    return-void
.end method

.method private static getEnterpriseDeviceManager()Landroid/app/enterprise/IEnterpriseDeviceManager;
    .registers 1

    .prologue
    .line 99
    sget-object v0, mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 100
    const-string v0, "enterprise_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v0

    sput-object v0, mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

    .line 102
    :cond_10
    sget-object v0, mEnterpriseDeviceManager:Landroid/app/enterprise/IEnterpriseDeviceManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    monitor-enter v1

    :try_start_3
    sget-object v0, mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    if-nez v0, :cond_e

    .line 86
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    sput-object v0, mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;

    .line 88
    :cond_e
    sget-object v0, mKnoxVpnApiValidation:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnApiValidation;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 85
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getPersonaManager()Landroid/os/IPersonaManager;
    .registers 1

    .prologue
    .line 92
    sget-object v0, mPersonaManager:Landroid/os/IPersonaManager;

    if-nez v0, :cond_11

    .line 93
    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v0

    sput-object v0, mPersonaManager:Landroid/os/IPersonaManager;

    .line 95
    :cond_11
    sget-object v0, mPersonaManager:Landroid/os/IPersonaManager;

    return-object v0
.end method


# virtual methods
.method public activateVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;Z)I
    .registers 13
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 392
    const/16 v4, 0x64

    .line 395
    .local v4, "validationResult":I
    if-eqz p2, :cond_8

    :try_start_4
    iget-object v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v6, :cond_c

    .line 396
    :cond_8
    const/16 v4, 0x68

    move v5, v4

    .line 436
    .end local v4    # "validationResult":I
    .local v5, "validationResult":I
    :goto_b
    return v5

    .line 400
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_c
    iget-object v6, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 401
    .local v2, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v2, :cond_18

    .line 402
    const/16 v4, 0x6c

    move v5, v4

    .line 403
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_b

    .line 405
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_18
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v6, v7, :cond_24

    .line 406
    const/16 v4, 0x70

    move v5, v4

    .line 407
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_b

    .line 411
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_24
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .line 412
    .local v3, "routeType":I
    if-nez v3, :cond_2e

    .line 413
    const/16 v4, 0x6d

    move v5, v4

    .line 414
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_b

    .line 417
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_2e
    if-eqz p3, :cond_3b

    .line 418
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v0

    .line 419
    .local v0, "currentStateOfProfile":I
    const/4 v6, 0x1

    if-ne v0, v6, :cond_64

    .line 420
    const/16 v4, 0x73

    move v5, v4

    .line 421
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_b

    .line 424
    .end local v0    # "currentStateOfProfile":I
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_3b
    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3e} :catch_45

    move-result v0

    .line 425
    .restart local v0    # "currentStateOfProfile":I
    if-nez v0, :cond_64

    .line 426
    const/16 v4, 0x74

    move v5, v4

    .line 427
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_b

    .line 431
    .end local v0    # "currentStateOfProfile":I
    .end local v2    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "routeType":I
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :catch_45
    move-exception v1

    .line 432
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at activateVpnProfileValidation API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/16 v4, 0x65

    .line 435
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_64
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "activateVpnProfileValidation : validationResult value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 436
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_b
.end method

.method public addAllContainerPackagesToVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)I
    .registers 14
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    .line 657
    const/16 v5, 0x64

    .line 661
    .local v5, "validationResult":I
    if-eqz p3, :cond_8

    :try_start_4
    iget-object v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v7, :cond_c

    .line 662
    :cond_8
    const/16 v5, 0x68

    move v6, v5

    .line 717
    .end local v5    # "validationResult":I
    .local v6, "validationResult":I
    :goto_b
    return v6

    .line 666
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_c
    iget-object v7, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .line 667
    .local v3, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_18

    .line 668
    const/16 v5, 0x6c

    move v6, v5

    .line 669
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 671
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_18
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v7

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v7, v8, :cond_24

    .line 672
    const/16 v5, 0x70

    move v6, v5

    .line 673
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 677
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_24
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v4

    .line 678
    .local v4, "routeType":I
    if-nez v4, :cond_2e

    .line 679
    const/16 v5, 0x6d

    move v6, v5

    .line 680
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 683
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_2e
    invoke-static {}, getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v7

    invoke-interface {v7, p2}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    .line 684
    .local v2, "isPersonaIdIsValid":Z
    if-nez v2, :cond_3c

    .line 685
    const/16 v5, 0x71

    move v6, v5

    .line 686
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 689
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_3c
    sget-object v7, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 690
    .local v0, "containerOwner":I
    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v0, v7, :cond_4a

    .line 691
    const/16 v5, 0x72

    move v6, v5

    .line 692
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 695
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_4a
    iget-object v7, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v7

    if-eqz v7, :cond_60

    .line 696
    iget-object v7, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, p3, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_60

    .line 697
    const/16 v5, 0x7b

    move v6, v5

    .line 698
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 702
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_60
    iget-object v7, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v7

    if-eqz v7, :cond_99

    .line 703
    iget-object v7, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v7

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_70} :catch_7a

    if-ne v7, v8, :cond_76

    .line 704
    const/16 v5, 0x75

    move v6, v5

    .line 705
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 707
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_76
    const/16 v5, 0x76

    move v6, v5

    .line 708
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 712
    .end local v0    # "containerOwner":I
    .end local v2    # "isPersonaIdIsValid":Z
    .end local v3    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v4    # "routeType":I
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :catch_7a
    move-exception v1

    .line 713
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "KnoxVpnApiValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception at addAllContainerPackagesToVpnValidation API "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const/16 v5, 0x65

    .line 716
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_99
    const-string v7, "KnoxVpnApiValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addAllContainerPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 717
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto/16 :goto_b
.end method

.method public addAllPackagesToVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .registers 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 776
    const/16 v3, 0x64

    .line 780
    .local v3, "validationResult":I
    if-eqz p2, :cond_8

    :try_start_4
    iget-object v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v5, :cond_c

    .line 781
    :cond_8
    const/16 v3, 0x68

    move v4, v3

    .line 824
    .end local v3    # "validationResult":I
    .local v4, "validationResult":I
    :goto_b
    return v4

    .line 785
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_c
    iget-object v5, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v5, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 786
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_18

    .line 787
    const/16 v3, 0x6c

    move v4, v3

    .line 788
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b

    .line 790
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_18
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v5

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v5, v6, :cond_24

    .line 791
    const/16 v3, 0x70

    move v4, v3

    .line 792
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b

    .line 796
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_24
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    .line 797
    .local v2, "routeType":I
    if-nez v2, :cond_2e

    .line 798
    const/16 v3, 0x6d

    move v4, v3

    .line 799
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b

    .line 802
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_2e
    iget-object v5, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 803
    iget-object v5, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, p2, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_46

    .line 804
    const/16 v3, 0x7b

    move v4, v3

    .line 805
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b

    .line 809
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_46
    iget-object v5, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 810
    iget-object v5, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v5

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_5a} :catch_64

    if-ne v5, v6, :cond_60

    .line 811
    const/16 v3, 0x75

    move v4, v3

    .line 812
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b

    .line 814
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_60
    const/16 v3, 0x76

    move v4, v3

    .line 815
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b

    .line 819
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v2    # "routeType":I
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :catch_64
    move-exception v0

    .line 820
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "KnoxVpnApiValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception at addAllPackagesToVpnValidation API "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const/16 v3, 0x65

    .line 823
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_83
    const-string v5, "KnoxVpnApiValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAllPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 824
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto/16 :goto_b
.end method

.method public addContainerPackagesToVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)I
    .registers 21
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "profileName"    # Ljava/lang/String;

    .prologue
    .line 472
    const/16 v11, 0x64

    .line 476
    .local v11, "validationResult":I
    if-eqz p4, :cond_12

    if-eqz p3, :cond_12

    :try_start_6
    move-object/from16 v0, p3

    array-length v13, v0

    const/4 v14, 0x1

    if-lt v13, v14, :cond_12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v13, :cond_16

    .line 477
    :cond_12
    const/16 v11, 0x68

    move v12, v11

    .line 543
    .end local v11    # "validationResult":I
    .local v12, "validationResult":I
    :goto_15
    return v12

    .line 481
    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v7

    .line 482
    .local v7, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v7, :cond_26

    .line 483
    const/16 v11, 0x6c

    move v12, v11

    .line 484
    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto :goto_15

    .line 486
    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :cond_26
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v13

    move-object/from16 v0, p1

    iget v14, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v13, v14, :cond_34

    .line 487
    const/16 v11, 0x70

    move v12, v11

    .line 488
    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto :goto_15

    .line 492
    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :cond_34
    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v9

    .line 493
    .local v9, "routeType":I
    if-nez v9, :cond_3e

    .line 494
    const/16 v11, 0x6d

    move v12, v11

    .line 495
    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto :goto_15

    .line 498
    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :cond_3e
    invoke-static {}, getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v13

    move/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v5

    .line 499
    .local v5, "isPersonaIdIsValid":Z
    if-nez v5, :cond_4e

    .line 500
    const/16 v11, 0x71

    move v12, v11

    .line 501
    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto :goto_15

    .line 504
    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :cond_4e
    sget-object v13, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v2

    .line 505
    .local v2, "containerOwner":I
    move-object/from16 v0, p1

    iget v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v2, v13, :cond_60

    .line 506
    const/16 v11, 0x72

    move v12, v11

    .line 507
    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto :goto_15

    .line 510
    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :cond_60
    move-object/from16 v1, p3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_64
    if-ge v4, v6, :cond_81

    aget-object v10, v1, v4

    .line 511
    .local v10, "tempPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v14, "ADD_ALL_PACKAGES"

    move/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7e

    .line 512
    const/16 v11, 0x89

    move v12, v11

    .line 513
    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto :goto_15

    .line 510
    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :cond_7e
    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 517
    .end local v10    # "tempPackage":Ljava/lang/String;
    :cond_81
    move-object/from16 v0, p0

    iget-object v13, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v13

    if-eqz v13, :cond_f0

    .line 518
    move-object/from16 v0, p0

    iget-object v13, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v13

    move-object/from16 v0, p1

    iget v14, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v13, v14, :cond_cc

    .line 521
    move-object/from16 v0, p0

    iget-object v13, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p0

    iget-object v14, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v15, "ADD_ALL_PACKAGES"

    move/from16 v0, p2

    invoke-virtual {v14, v0, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 522
    .local v8, "profileOwningPackage":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_f0

    .line 523
    move-object/from16 v0, p0

    iget-object v13, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v13, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c0} :catch_d1

    move-result v13

    packed-switch v13, :pswitch_data_10c

    .line 527
    const/16 v11, 0x77

    move v12, v11

    .line 528
    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto/16 :goto_15

    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :pswitch_c9
    move v12, v11

    .line 525
    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto/16 :goto_15

    .line 533
    .end local v8    # "profileOwningPackage":Ljava/lang/String;
    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :cond_cc
    const/16 v11, 0x78

    move v12, v11

    .line 534
    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto/16 :goto_15

    .line 538
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "containerOwner":I
    .end local v4    # "i$":I
    .end local v5    # "isPersonaIdIsValid":Z
    .end local v6    # "len$":I
    .end local v7    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v9    # "routeType":I
    .end local v12    # "validationResult":I
    .restart local v11    # "validationResult":I
    :catch_d1
    move-exception v3

    .line 539
    .local v3, "e":Ljava/lang/Exception;
    const-string v13, "KnoxVpnApiValidation"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception at addContainerPackagesToVpnValidation API "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/16 v11, 0x65

    .line 542
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_f0
    const-string v13, "KnoxVpnApiValidation"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "addContainerPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v11

    .line 543
    .end local v11    # "validationResult":I
    .restart local v12    # "validationResult":I
    goto/16 :goto_15

    .line 523
    nop

    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_c9
    .end packed-switch
.end method

.method public addPackagesToVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 19
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageList"    # [Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    .line 277
    const/16 v9, 0x64

    .line 280
    .local v9, "validationResult":I
    if-eqz p3, :cond_12

    if-eqz p2, :cond_12

    :try_start_6
    move-object/from16 v0, p2

    array-length v11, v0

    const/4 v12, 0x1

    if-lt v11, v12, :cond_12

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v11, :cond_16

    .line 281
    :cond_12
    const/16 v9, 0x68

    move v10, v9

    .line 333
    .end local v9    # "validationResult":I
    .local v10, "validationResult":I
    :goto_15
    return v10

    .line 285
    .end local v10    # "validationResult":I
    .restart local v9    # "validationResult":I
    :cond_16
    iget-object v11, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v5

    .line 286
    .local v5, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v5, :cond_24

    .line 287
    const/16 v9, 0x6c

    move v10, v9

    .line 288
    .end local v9    # "validationResult":I
    .restart local v10    # "validationResult":I
    goto :goto_15

    .line 290
    .end local v10    # "validationResult":I
    .restart local v9    # "validationResult":I
    :cond_24
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v11

    move-object/from16 v0, p1

    iget v12, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v11, v12, :cond_32

    .line 291
    const/16 v9, 0x70

    move v10, v9

    .line 292
    .end local v9    # "validationResult":I
    .restart local v10    # "validationResult":I
    goto :goto_15

    .line 296
    .end local v10    # "validationResult":I
    .restart local v9    # "validationResult":I
    :cond_32
    invoke-virtual {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v7

    .line 297
    .local v7, "routeType":I
    if-nez v7, :cond_3c

    .line 298
    const/16 v9, 0x6d

    move v10, v9

    .line 299
    .end local v9    # "validationResult":I
    .restart local v10    # "validationResult":I
    goto :goto_15

    .line 302
    .end local v10    # "validationResult":I
    .restart local v9    # "validationResult":I
    :cond_3c
    move-object/from16 v1, p2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_40
    if-ge v3, v4, :cond_5d

    aget-object v8, v1, v3

    .line 303
    .local v8, "tempPackage":Ljava/lang/String;
    iget-object v11, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    const-string v13, "ADD_ALL_PACKAGES"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5a

    .line 304
    const/16 v9, 0x89

    move v10, v9

    .line 305
    .end local v9    # "validationResult":I
    .restart local v10    # "validationResult":I
    goto :goto_15

    .line 302
    .end local v10    # "validationResult":I
    .restart local v9    # "validationResult":I
    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 309
    .end local v8    # "tempPackage":Ljava/lang/String;
    :cond_5d
    iget-object v11, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v11

    if-eqz v11, :cond_c8

    .line 310
    iget-object v11, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v11

    move-object/from16 v0, p1

    iget v12, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v11, v12, :cond_a4

    .line 312
    iget-object v11, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v12, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    const-string v14, "ADD_ALL_PACKAGES"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 313
    .local v6, "profileOwningPackage":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_c8

    .line 314
    iget-object v11, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_98} :catch_a9

    move-result v11

    packed-switch v11, :pswitch_data_e4

    .line 318
    const/16 v9, 0x77

    move v10, v9

    .line 319
    .end local v9    # "validationResult":I
    .restart local v10    # "validationResult":I
    goto/16 :goto_15

    .end local v10    # "validationResult":I
    .restart local v9    # "validationResult":I
    :pswitch_a1
    move v10, v9

    .line 316
    .end local v9    # "validationResult":I
    .restart local v10    # "validationResult":I
    goto/16 :goto_15

    .line 323
    .end local v6    # "profileOwningPackage":Ljava/lang/String;
    .end local v10    # "validationResult":I
    .restart local v9    # "validationResult":I
    :cond_a4
    const/16 v9, 0x78

    move v10, v9

    .line 324
    .end local v9    # "validationResult":I
    .restart local v10    # "validationResult":I
    goto/16 :goto_15

    .line 328
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v7    # "routeType":I
    .end local v10    # "validationResult":I
    .restart local v9    # "validationResult":I
    :catch_a9
    move-exception v2

    .line 329
    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "KnoxVpnApiValidation"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception at addPackagesToVpnValidation API "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/16 v9, 0x65

    .line 332
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_c8
    const-string v11, "KnoxVpnApiValidation"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "addPackagesToVpnValidation : validationResult value is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v9

    .line 333
    .end local v9    # "validationResult":I
    .restart local v10    # "validationResult":I
    goto/16 :goto_15

    .line 314
    nop

    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_a1
    .end packed-switch
.end method

.method public createVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .registers 32
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "jsonProfile"    # Ljava/lang/String;

    .prologue
    .line 106
    const/16 v23, 0x64

    .line 109
    .local v23, "validationResult":I
    if-eqz p2, :cond_c

    :try_start_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_11

    .line 110
    :cond_c
    const/16 v23, 0x68

    move/from16 v24, v23

    .line 213
    .end local v23    # "validationResult":I
    .local v24, "validationResult":I
    :goto_10
    return v24

    .line 114
    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_11
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 115
    .local v18, "profileObj":Lorg/json/JSONObject;
    const-string v26, "KNOX_VPN_PARAMETERS"

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 116
    .local v12, "parentAttrObj":Lorg/json/JSONObject;
    const-string/jumbo v26, "profile_attribute"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 117
    .local v14, "profileAttrObj":Lorg/json/JSONObject;
    const-string v26, "knox"

    move-object/from16 v0, v26

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 119
    .local v10, "knoxAttrObj":Lorg/json/JSONObject;
    const-string/jumbo v26, "profileName"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 120
    .local v17, "profileName":Ljava/lang/String;
    const-string/jumbo v26, "vpn_type"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 121
    .local v19, "protocolType":Ljava/lang/String;
    const-string/jumbo v26, "vpn_route_type"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 123
    .local v20, "routeType":I
    const-string v26, "chaining_enabled"

    const/16 v27, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 124
    .local v3, "chainingEnabled":I
    const-string/jumbo v26, "uidpid_search_enabled"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v21

    .line 125
    .local v21, "uidPidSearchEnabled":I
    const-string v26, "connectionType"

    const-string v27, "keepon"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "connectionType":Ljava/lang/String;
    if-eqz v17, :cond_7f

    if-eqz v19, :cond_7f

    const/16 v26, 0x1

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_84

    if-eqz v20, :cond_84

    .line 129
    :cond_7f
    const/16 v23, 0x69

    move/from16 v24, v23

    .line 130
    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto :goto_10

    .line 133
    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_84
    if-nez v20, :cond_a4

    .line 134
    if-eqz v3, :cond_8e

    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v3, v0, :cond_94

    .line 135
    :cond_8e
    const/16 v23, 0x1f9

    move/from16 v24, v23

    .line 136
    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_10

    .line 138
    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_94
    const-string v26, "ondemand"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_a4

    .line 139
    const/16 v23, 0x2be

    move/from16 v24, v23

    .line 140
    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_10

    .line 144
    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_a4
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v3, v0, :cond_b8

    if-eqz v3, :cond_b8

    const/16 v26, 0x1

    move/from16 v0, v26

    if-eq v3, v0, :cond_b8

    .line 145
    const/16 v23, 0x1f5

    move/from16 v24, v23

    .line 146
    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_10

    .line 149
    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_b8
    const/16 v26, 0x1

    move/from16 v0, v21

    move/from16 v1, v26

    if-eq v0, v1, :cond_c8

    if-eqz v21, :cond_c8

    .line 150
    const/16 v23, 0x259

    move/from16 v24, v23

    .line 151
    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_10

    .line 154
    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_c8
    const-string v26, "keepon"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e2

    const-string v26, "ondemand"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e2

    .line 155
    const/16 v23, 0x2bd

    move/from16 v24, v23

    .line 156
    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_10

    .line 159
    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_e2
    const-string v26, "ondemand"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_f4

    if-nez v3, :cond_f4

    .line 160
    const/16 v23, 0x2be

    move/from16 v24, v23

    .line 161
    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_10

    .line 164
    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_f4
    const-string v26, "\\s"

    invoke-static/range {v26 .. v26}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 165
    .local v13, "pattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 166
    .local v11, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    .line 167
    .local v7, "found":Z
    if-eqz v7, :cond_10c

    .line 168
    const/16 v23, 0x6a

    move/from16 v24, v23

    .line 169
    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_10

    .line 172
    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_10c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v16

    .line 173
    .local v16, "profileLength":I
    const/16 v26, 0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-lt v0, v1, :cond_120

    const/16 v26, 0x80

    move/from16 v0, v16

    move/from16 v1, v26

    if-le v0, v1, :cond_126

    .line 174
    :cond_120
    const/16 v23, 0x6b

    move/from16 v24, v23

    .line 175
    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_10

    .line 178
    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_126
    move-object/from16 v0, p0

    iget-object v0, v0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v15

    .line 179
    .local v15, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v15, :cond_152

    .line 180
    invoke-virtual {v15}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v26

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_14c

    .line 181
    const/16 v23, 0x6f

    move/from16 v24, v23

    .line 182
    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_10

    .line 184
    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_14c
    const/16 v23, 0x70

    move/from16 v24, v23

    .line 185
    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_10

    .line 189
    .end local v24    # "validationResult":I
    .restart local v23    # "validationResult":I
    :cond_152
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 190
    .local v25, "vendorName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    move/from16 v22, v0

    .line 192
    .local v22, "userId":I
    const-string v26, "chaining_enabled"

    const/16 v27, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 193
    .local v4, "chainingValue":I
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v4, v0, :cond_1b6

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v27

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfChainingEnabledForVendor(IZ)I
    :try_end_18b
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_18b} :catch_1db
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18b} :catch_1fb

    move-result v8

    .line 195
    .local v8, "isChainingEnabled":I
    const/16 v26, 0x1

    move/from16 v0, v26

    if-eq v8, v0, :cond_194

    if-nez v8, :cond_196

    .line 196
    :cond_194
    const/16 v23, 0x1f7

    .line 212
    .end local v3    # "chainingEnabled":I
    .end local v4    # "chainingValue":I
    .end local v5    # "connectionType":Ljava/lang/String;
    .end local v7    # "found":Z
    .end local v8    # "isChainingEnabled":I
    .end local v10    # "knoxAttrObj":Lorg/json/JSONObject;
    .end local v11    # "matcher":Ljava/util/regex/Matcher;
    .end local v12    # "parentAttrObj":Lorg/json/JSONObject;
    .end local v13    # "pattern":Ljava/util/regex/Pattern;
    .end local v14    # "profileAttrObj":Lorg/json/JSONObject;
    .end local v15    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v16    # "profileLength":I
    .end local v17    # "profileName":Ljava/lang/String;
    .end local v18    # "profileObj":Lorg/json/JSONObject;
    .end local v19    # "protocolType":Ljava/lang/String;
    .end local v20    # "routeType":I
    .end local v21    # "uidPidSearchEnabled":I
    .end local v22    # "userId":I
    .end local v25    # "vendorName":Ljava/lang/String;
    :cond_196
    :goto_196
    const-string v26, "KnoxVpnApiValidation"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "createVpnProfileValidation : validationResult value is "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v24, v23

    .line 213
    .end local v23    # "validationResult":I
    .restart local v24    # "validationResult":I
    goto/16 :goto_10

    .line 199
    .end local v24    # "validationResult":I
    .restart local v3    # "chainingEnabled":I
    .restart local v4    # "chainingValue":I
    .restart local v5    # "connectionType":Ljava/lang/String;
    .restart local v7    # "found":Z
    .restart local v10    # "knoxAttrObj":Lorg/json/JSONObject;
    .restart local v11    # "matcher":Ljava/util/regex/Matcher;
    .restart local v12    # "parentAttrObj":Lorg/json/JSONObject;
    .restart local v13    # "pattern":Ljava/util/regex/Pattern;
    .restart local v14    # "profileAttrObj":Lorg/json/JSONObject;
    .restart local v15    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .restart local v16    # "profileLength":I
    .restart local v17    # "profileName":Ljava/lang/String;
    .restart local v18    # "profileObj":Lorg/json/JSONObject;
    .restart local v19    # "protocolType":Ljava/lang/String;
    .restart local v20    # "routeType":I
    .restart local v21    # "uidPidSearchEnabled":I
    .restart local v22    # "userId":I
    .restart local v23    # "validationResult":I
    .restart local v25    # "vendorName":Ljava/lang/String;
    :cond_1b6
    :try_start_1b6
    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v27

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfChainingEnabledForVendor(IZ)I
    :try_end_1d1
    .catch Lorg/json/JSONException; {:try_start_1b6 .. :try_end_1d1} :catch_1db
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1d1} :catch_1fb

    move-result v9

    .line 200
    .local v9, "isVpnEnabled":I
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v9, v0, :cond_196

    .line 201
    const/16 v23, 0x1f8

    goto :goto_196

    .line 205
    .end local v3    # "chainingEnabled":I
    .end local v4    # "chainingValue":I
    .end local v5    # "connectionType":Ljava/lang/String;
    .end local v7    # "found":Z
    .end local v9    # "isVpnEnabled":I
    .end local v10    # "knoxAttrObj":Lorg/json/JSONObject;
    .end local v11    # "matcher":Ljava/util/regex/Matcher;
    .end local v12    # "parentAttrObj":Lorg/json/JSONObject;
    .end local v13    # "pattern":Ljava/util/regex/Pattern;
    .end local v14    # "profileAttrObj":Lorg/json/JSONObject;
    .end local v15    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v16    # "profileLength":I
    .end local v17    # "profileName":Ljava/lang/String;
    .end local v18    # "profileObj":Lorg/json/JSONObject;
    .end local v19    # "protocolType":Ljava/lang/String;
    .end local v20    # "routeType":I
    .end local v21    # "uidPidSearchEnabled":I
    .end local v22    # "userId":I
    .end local v25    # "vendorName":Ljava/lang/String;
    :catch_1db
    move-exception v6

    .line 206
    .local v6, "e":Lorg/json/JSONException;
    const-string v26, "KnoxVpnApiValidation"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "JSONException at createVpnProfileValidation API "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/16 v23, 0x67

    .line 211
    goto :goto_196

    .line 208
    .end local v6    # "e":Lorg/json/JSONException;
    :catch_1fb
    move-exception v6

    .line 209
    .local v6, "e":Ljava/lang/Exception;
    const-string v26, "KnoxVpnApiValidation"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Exception at createVpnProfileValidation API "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/16 v23, 0x65

    goto/16 :goto_196
.end method

.method public getAllContainerPackagesInVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 615
    if-eqz p3, :cond_7

    :try_start_3
    iget-object v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v6, :cond_10

    .line 616
    :cond_7
    const-string v6, "KnoxVpnApiValidation"

    const-string v7, "getAllContainerPackagesInVpnProfileValidation: profileName value is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    .line 653
    .end local p3    # "profileName":Ljava/lang/String;
    :cond_f
    :goto_f
    return-object p3

    .line 620
    .restart local p3    # "profileName":Ljava/lang/String;
    :cond_10
    iget-object v6, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .line 621
    .local v3, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_21

    .line 622
    const-string v6, "KnoxVpnApiValidation"

    const-string v7, "getAllContainerPackagesInVpnProfileValidation: profileInfo value is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    .line 623
    goto :goto_f

    .line 625
    :cond_21
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v6, v7, :cond_32

    .line 626
    const-string v6, "KnoxVpnApiValidation"

    const-string v7, "getAllContainerPackagesInVpnProfileValidation: Not the same admin"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    .line 627
    goto :goto_f

    .line 631
    :cond_32
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v4

    .line 632
    .local v4, "routeType":I
    if-nez v4, :cond_41

    .line 633
    const-string v6, "KnoxVpnApiValidation"

    const-string v7, "getAllContainerPackagesInVpnProfileValidation: profile is of system type"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    .line 634
    goto :goto_f

    .line 637
    :cond_41
    invoke-static {}, getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v6

    invoke-interface {v6, p2}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    .line 638
    .local v2, "isPersonaIdIsValid":Z
    if-nez v2, :cond_54

    .line 639
    const-string v6, "KnoxVpnApiValidation"

    const-string v7, "getAllContainerPackagesInVpnProfileValidation: user id is not valid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    .line 640
    goto :goto_f

    .line 643
    :cond_54
    sget-object v6, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 644
    .local v0, "containerOwner":I
    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v0, v6, :cond_f

    .line 645
    const-string v6, "KnoxVpnApiValidation"

    const-string v7, "getAllContainerPackagesInVpnProfileValidation: Admin does not own the container"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_65} :catch_67

    move-object p3, v5

    .line 646
    goto :goto_f

    .line 649
    .end local v0    # "containerOwner":I
    .end local v2    # "isPersonaIdIsValid":Z
    .end local v3    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v4    # "routeType":I
    :catch_67
    move-exception v1

    .line 650
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at getAllContainerPackagesInVpnProfileValidation API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p3, v5

    .line 651
    goto :goto_f
.end method

.method public getAllPackagesInVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 442
    if-eqz p2, :cond_7

    :try_start_3
    iget-object v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v4, :cond_10

    .line 443
    :cond_7
    const-string v4, "KnoxVpnApiValidation"

    const-string v5, "getAllPackagesInVpnProfileValidation: profileName value is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    .line 468
    .end local p2    # "profileName":Ljava/lang/String;
    :cond_f
    :goto_f
    return-object p2

    .line 447
    .restart local p2    # "profileName":Ljava/lang/String;
    :cond_10
    iget-object v4, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 448
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_21

    .line 449
    const-string v4, "KnoxVpnApiValidation"

    const-string v5, "getAllPackagesInVpnProfileValidation: profileInfo value is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    .line 450
    goto :goto_f

    .line 452
    :cond_21
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v4

    iget v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v4, v5, :cond_32

    .line 453
    const-string v4, "KnoxVpnApiValidation"

    const-string v5, "getAllPackagesInVpnProfileValidation: Not the same Admin"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    .line 454
    goto :goto_f

    .line 458
    :cond_32
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    .line 459
    .local v2, "routeType":I
    if-nez v2, :cond_f

    .line 460
    const-string v4, "KnoxVpnApiValidation"

    const-string v5, "getAllPackagesInVpnProfileValidation: profile is of system type"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3f} :catch_41

    move-object p2, v3

    .line 461
    goto :goto_f

    .line 464
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v2    # "routeType":I
    :catch_41
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxVpnApiValidation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception at getVpnProfileValidation API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v3

    .line 466
    goto :goto_f
.end method

.method public getVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 219
    if-eqz p2, :cond_7

    :try_start_3
    iget-object v3, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v3, :cond_10

    .line 220
    :cond_7
    const-string v3, "KnoxVpnApiValidation"

    const-string v4, "getVpnProfileValidation: profileName value is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    .line 238
    .end local p2    # "profileName":Ljava/lang/String;
    :cond_f
    :goto_f
    return-object p2

    .line 224
    .restart local p2    # "profileName":Ljava/lang/String;
    :cond_10
    iget-object v3, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 225
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_21

    .line 226
    const-string v3, "KnoxVpnApiValidation"

    const-string v4, "getVpnProfileValidation: profileInfo value is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    .line 227
    goto :goto_f

    .line 229
    :cond_21
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v3

    iget v4, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v3, v4, :cond_f

    .line 230
    const-string v3, "KnoxVpnApiValidation"

    const-string v4, "getVpnProfileValidation: Not the same admin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_30} :catch_32

    move-object p2, v2

    .line 231
    goto :goto_f

    .line 234
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_32
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnApiValidation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception at getVpnProfileValidation API "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public removeAllContainerPackagesFromVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;ILjava/lang/String;)I
    .registers 14
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    .line 722
    const/16 v5, 0x64

    .line 726
    .local v5, "validationResult":I
    if-eqz p3, :cond_8

    :try_start_4
    iget-object v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v7, :cond_c

    .line 727
    :cond_8
    const/16 v5, 0x68

    move v6, v5

    .line 772
    .end local v5    # "validationResult":I
    .local v6, "validationResult":I
    :goto_b
    return v6

    .line 731
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_c
    iget-object v7, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v7, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .line 732
    .local v3, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_18

    .line 733
    const/16 v5, 0x6c

    move v6, v5

    .line 734
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 736
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_18
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v7

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v7, v8, :cond_24

    .line 737
    const/16 v5, 0x70

    move v6, v5

    .line 738
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 742
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_24
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v4

    .line 743
    .local v4, "routeType":I
    if-nez v4, :cond_2e

    .line 744
    const/16 v5, 0x6d

    move v6, v5

    .line 745
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 748
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_2e
    invoke-static {}, getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v7

    invoke-interface {v7, p2}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    .line 749
    .local v2, "isPersonaIdIsValid":Z
    if-nez v2, :cond_3c

    .line 750
    const/16 v5, 0x71

    move v6, v5

    .line 751
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 754
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_3c
    sget-object v7, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 755
    .local v0, "containerOwner":I
    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v0, v7, :cond_4a

    .line 756
    const/16 v5, 0x72

    move v6, v5

    .line 757
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 760
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :cond_4a
    iget-object v7, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v7, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 761
    iget-object v7, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v7, p3, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_59} :catch_60

    move-result v7

    if-nez v7, :cond_7f

    .line 762
    const/16 v5, 0x7c

    move v6, v5

    .line 763
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto :goto_b

    .line 767
    .end local v0    # "containerOwner":I
    .end local v2    # "isPersonaIdIsValid":Z
    .end local v3    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v4    # "routeType":I
    .end local v6    # "validationResult":I
    .restart local v5    # "validationResult":I
    :catch_60
    move-exception v1

    .line 768
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "KnoxVpnApiValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception at removeAllPackagesFromVpnValidation API "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const/16 v5, 0x65

    .line 771
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7f
    const-string v7, "KnoxVpnApiValidation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeAllPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 772
    .end local v5    # "validationResult":I
    .restart local v6    # "validationResult":I
    goto/16 :goto_b
.end method

.method public removeAllPackagesFromVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .registers 11
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 828
    const/16 v3, 0x64

    .line 831
    .local v3, "validationResult":I
    if-eqz p2, :cond_8

    :try_start_4
    iget-object v5, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v5, :cond_c

    .line 832
    :cond_8
    const/16 v3, 0x68

    move v4, v3

    .line 865
    .end local v3    # "validationResult":I
    .local v4, "validationResult":I
    :goto_b
    return v4

    .line 836
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_c
    iget-object v5, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v5, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 837
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_18

    .line 838
    const/16 v3, 0x6c

    move v4, v3

    .line 839
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b

    .line 841
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_18
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v5

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v5, v6, :cond_24

    .line 842
    const/16 v3, 0x70

    move v4, v3

    .line 843
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b

    .line 847
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_24
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v2

    .line 848
    .local v2, "routeType":I
    if-nez v2, :cond_2e

    .line 849
    const/16 v3, 0x6d

    move v4, v3

    .line 850
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b

    .line 853
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :cond_2e
    iget-object v5, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isUsingKnoxPackageExists(I)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 854
    iget-object v5, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v5, p2, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->chainingForAddAll(Ljava/lang/String;I)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3f} :catch_46

    move-result v5

    if-nez v5, :cond_65

    .line 855
    const/16 v3, 0x7c

    move v4, v3

    .line 856
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b

    .line 860
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v2    # "routeType":I
    .end local v4    # "validationResult":I
    .restart local v3    # "validationResult":I
    :catch_46
    move-exception v0

    .line 861
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "KnoxVpnApiValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception at removeAllPackagesFromVpnValidation API "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const/16 v3, 0x65

    .line 864
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_65
    const-string v5, "KnoxVpnApiValidation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeAllPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 865
    .end local v3    # "validationResult":I
    .restart local v4    # "validationResult":I
    goto :goto_b
.end method

.method public removeContainerPackagesFromVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;I[Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "containerId"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "profileName"    # Ljava/lang/String;

    .prologue
    .line 547
    const/16 v6, 0x64

    .line 550
    .local v6, "validationResult":I
    if-eqz p4, :cond_e

    if-eqz p3, :cond_e

    :try_start_6
    array-length v8, p3

    const/4 v9, 0x1

    if-lt v8, v9, :cond_e

    iget-object v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v8, :cond_12

    .line 551
    :cond_e
    const/16 v6, 0x68

    move v7, v6

    .line 610
    .end local v6    # "validationResult":I
    .local v7, "validationResult":I
    :goto_11
    return v7

    .line 555
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_12
    iget-object v8, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v8, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v3

    .line 556
    .local v3, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v3, :cond_1e

    .line 557
    const/16 v6, 0x6c

    move v7, v6

    .line 558
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_11

    .line 560
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_1e
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v8

    iget v9, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v8, v9, :cond_2a

    .line 561
    const/16 v6, 0x70

    move v7, v6

    .line 562
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_11

    .line 566
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_2a
    invoke-virtual {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v5

    .line 567
    .local v5, "routeType":I
    if-nez v5, :cond_34

    .line 568
    const/16 v6, 0x6d

    move v7, v6

    .line 569
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_11

    .line 572
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_34
    invoke-static {}, getPersonaManager()Landroid/os/IPersonaManager;

    move-result-object v8

    invoke-interface {v8, p2}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v2

    .line 573
    .local v2, "isPersonaIdIsValid":Z
    if-nez v2, :cond_42

    .line 574
    const/16 v6, 0x71

    move v7, v6

    .line 575
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_11

    .line 578
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_42
    sget-object v8, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 579
    .local v0, "containerOwner":I
    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v0, v8, :cond_50

    .line 580
    const/16 v6, 0x72

    move v7, v6

    .line 581
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_11

    .line 584
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_50
    iget-object v8, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v8

    if-eqz v8, :cond_a8

    .line 585
    iget-object v8, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v8

    iget v9, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v8, v9, :cond_85

    .line 588
    iget-object v8, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v9, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v10, "ADD_ALL_PACKAGES"

    invoke-virtual {v9, p2, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 589
    .local v4, "profileOwningPackage":Ljava/lang/String;
    invoke-virtual {v4, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a8

    .line 590
    iget-object v8, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v8, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_7b} :catch_89

    move-result v8

    packed-switch v8, :pswitch_data_c4

    .line 594
    const/16 v6, 0x79

    move v7, v6

    .line 595
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_11

    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :pswitch_83
    move v7, v6

    .line 592
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_11

    .line 600
    .end local v4    # "profileOwningPackage":Ljava/lang/String;
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :cond_85
    const/16 v6, 0x7a

    move v7, v6

    .line 601
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto :goto_11

    .line 605
    .end local v0    # "containerOwner":I
    .end local v2    # "isPersonaIdIsValid":Z
    .end local v3    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v5    # "routeType":I
    .end local v7    # "validationResult":I
    .restart local v6    # "validationResult":I
    :catch_89
    move-exception v1

    .line 606
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "KnoxVpnApiValidation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception at removeContainerPackagesFromVpnValidation API "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/16 v6, 0x65

    .line 609
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a8
    const-string v8, "KnoxVpnApiValidation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removeContainerPackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 610
    .end local v6    # "validationResult":I
    .restart local v7    # "validationResult":I
    goto/16 :goto_11

    .line 590
    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_83
    .end packed-switch
.end method

.method public removePackagesFromVpnValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 14
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "packageList"    # [Ljava/lang/String;
    .param p3, "profileName"    # Ljava/lang/String;

    .prologue
    .line 337
    const/16 v4, 0x64

    .line 340
    .local v4, "validationResult":I
    if-eqz p3, :cond_e

    if-eqz p2, :cond_e

    :try_start_6
    array-length v6, p2

    const/4 v7, 0x1

    if-lt v6, v7, :cond_e

    iget-object v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v6, :cond_12

    .line 341
    :cond_e
    const/16 v4, 0x68

    move v5, v4

    .line 388
    .end local v4    # "validationResult":I
    .local v5, "validationResult":I
    :goto_11
    return v5

    .line 345
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_12
    iget-object v6, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 346
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_1e

    .line 347
    const/16 v4, 0x6c

    move v5, v4

    .line 348
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_11

    .line 350
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_1e
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v6, v7, :cond_2a

    .line 351
    const/16 v4, 0x70

    move v5, v4

    .line 352
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_11

    .line 356
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_2a
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .line 357
    .local v3, "routeType":I
    if-nez v3, :cond_34

    .line 358
    const/16 v4, 0x6d

    move v5, v4

    .line 359
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_11

    .line 362
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_34
    iget-object v6, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->isWideVpnExists(I)Z

    move-result v6

    if-eqz v6, :cond_92

    .line 363
    iget-object v6, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getAdminIdForUserVpn(I)I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-ne v6, v7, :cond_6f

    .line 366
    iget-object v6, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget-object v7, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v8, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->personaId:I

    const-string v9, "ADD_ALL_PACKAGES"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getProfileOwningThePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, "profileOwningPackage":Ljava/lang/String;
    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_92

    .line 368
    iget-object v6, p0, mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v6, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->checkIfProfileHasChainingFeature(Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_65} :catch_73

    move-result v6

    packed-switch v6, :pswitch_data_ae

    .line 372
    const/16 v4, 0x79

    move v5, v4

    .line 373
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_11

    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :pswitch_6d
    move v5, v4

    .line 370
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_11

    .line 378
    .end local v2    # "profileOwningPackage":Ljava/lang/String;
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_6f
    const/16 v4, 0x7a

    move v5, v4

    .line 379
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_11

    .line 383
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "routeType":I
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :catch_73
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at removePackagesFromVpnValidation API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/16 v4, 0x65

    .line 387
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_92
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removePackagesFromVpnValidation : validationResult value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 388
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto/16 :goto_11

    .line 368
    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_6d
    .end packed-switch
.end method

.method public removeVpnProfileValidation(Lcom/sec/enterprise/knox/KnoxVpnContext;Ljava/lang/String;)I
    .registers 12
    .param p1, "vpnContext"    # Lcom/sec/enterprise/knox/KnoxVpnContext;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 243
    const/16 v4, 0x64

    .line 246
    .local v4, "validationResult":I
    if-eqz p2, :cond_9

    :try_start_5
    iget-object v6, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->vendorName:Ljava/lang/String;

    if-nez v6, :cond_d

    .line 247
    :cond_9
    const/16 v4, 0x68

    move v5, v4

    .line 273
    .end local v4    # "validationResult":I
    .local v5, "validationResult":I
    :goto_c
    return v5

    .line 251
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_d
    iget-object v6, p0, vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 252
    .local v1, "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-nez v1, :cond_19

    .line 253
    const/16 v4, 0x6c

    move v5, v4

    .line 254
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_c

    .line 256
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_19
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getAdminId()I

    move-result v6

    iget v7, p1, Lcom/sec/enterprise/knox/KnoxVpnContext;->adminId:I

    if-eq v6, v7, :cond_25

    .line 257
    const/16 v4, 0x70

    move v5, v4

    .line 258
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_c

    .line 262
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :cond_25
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getRouteType()I

    move-result v3

    .line 263
    .local v3, "routeType":I
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_4e

    move-result v2

    .line 264
    .local v2, "profileState":I
    if-ne v3, v8, :cond_33

    if-ne v2, v8, :cond_33

    .line 265
    const/16 v4, 0x7d

    .line 272
    .end local v1    # "profileInfo":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v2    # "profileState":I
    .end local v3    # "routeType":I
    :cond_33
    :goto_33
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeVpnProfileValidation : validationResult value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 273
    .end local v4    # "validationResult":I
    .restart local v5    # "validationResult":I
    goto :goto_c

    .line 268
    .end local v5    # "validationResult":I
    .restart local v4    # "validationResult":I
    :catch_4e
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxVpnApiValidation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception at removeVpnProfileValidation API "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/16 v4, 0x65

    goto :goto_33
.end method
