.class public Lcom/android/settings/powersavingmode/PowerNotiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerNotiReceiver.java"


# static fields
.field private static basic_powersaving:I

.field private static black_grey_powersaving:I

.field private static data_powersaving:I

.field private static datapowersavingState:I

.field private static mArmFreqLimitHelper:Landroid/os/DVFSHelper;

.field private static mSupportedArmFrequency:[I

.field private static notiID:I

.field private static powersavingState:I

.field private static powersavingState2014:I

.field private static ultra_powersaving:I


# instance fields
.field private autoEnableState:I

.field private isEmergencyMode:Z

.field private isLowLevel:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private notiManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 428
    sput-object v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mArmFreqLimitHelper:Landroid/os/DVFSHelper;

    .line 429
    sput-object v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mSupportedArmFrequency:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isEmergencyMode:Z

    return-void
.end method

.method private doDisplayPowersaving()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 463
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_display"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 464
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 465
    .local v0, "mPowerManager":Landroid/os/PowerManager;
    const-string v1, "PowerNotiReceiver"

    const-string v2, "doAction : doDisplayPowersaving"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-static {v4}, Lcom/sec/android/hardware/SecHardwareInterface;->setPowerSaveFPS(Z)V

    .line 468
    invoke-virtual {v0, v4}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    .line 473
    .end local v0    # "mPowerManager":Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 470
    :cond_0
    const-string v1, "PowerNotiReceiver"

    const-string v2, "[PSM_DISPLAY] , do not change UI rendering and brightness because PSM_DISPLAY is unchecked"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->restoreDisplayPowersaving()V

    goto :goto_0
.end method

.method private doPowerSaveAction()V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doDisplayPowersaving()V

    .line 414
    return-void
.end method

.method private isAllOptionDisabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 767
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "powersaving_switch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 768
    .local v3, "powersavingState":I
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_switch"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 769
    .local v0, "basic_powersaving":I
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_powersaving_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 770
    .local v2, "data_powersaving":I
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "blackgrey_powersaving_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 772
    .local v1, "black_grey_powersaving":I
    const-string v5, "PowerNotiReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAllOptionDisabled(), powersavingState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", basic : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", data : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", black_grey : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    const/4 v4, 0x1

    .line 774
    .local v4, "retVal":Z
    :cond_0
    return v4
.end method

.method private isAutoEnable()Z
    .locals 4

    .prologue
    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, "ret":Z
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->autoEnableState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 400
    const/4 v0, 0x1

    .line 402
    :cond_0
    const-string v1, "PowerNotiReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutoEnable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return v0
.end method

.method public static isInVoLTECall()Z
    .locals 1

    .prologue
    .line 690
    const/4 v0, 0x0

    return v0
.end method

.method public static isOnCall()Z
    .locals 6

    .prologue
    .line 723
    const/4 v2, 0x0

    .line 724
    .local v2, "isOnCall":Z
    const/4 v1, 0x0

    .line 727
    .local v1, "isAletingCall":Z
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 728
    .local v3, "phoneServ":Lcom/android/internal/telephony/ITelephony;
    if-nez v3, :cond_1

    .line 729
    const-string v4, "PowerNotiReceiver"

    const-string v5, "Null Pointer Exception set isOnCall as false"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/4 v2, 0x0

    .line 751
    .end local v3    # "phoneServ":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    if-nez v2, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    const/4 v4, 0x1

    :goto_1
    return v4

    .line 732
    .restart local v3    # "phoneServ":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v2

    .line 733
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 746
    .end local v3    # "phoneServ":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 748
    .local v0, "e1":Landroid/os/RemoteException;
    const/4 v2, 0x0

    .line 749
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 751
    .end local v0    # "e1":Landroid/os/RemoteException;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isOnChatonCall()Z
    .locals 1

    .prologue
    .line 762
    const/4 v0, 0x0

    return v0
.end method

.method private restoreDisplayPowersaving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 476
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 477
    .local v0, "mPowerManager":Landroid/os/PowerManager;
    const-string v1, "PowerNotiReceiver"

    const-string v2, "restoreDisplayPowersaving"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setPowerSaveFPS(Z)V

    .line 483
    invoke-virtual {v0, v3}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    .line 484
    return-void
.end method

.method private restorePowerSaveAction()V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->restoreDisplayPowersaving()V

    .line 426
    return-void
.end method

.method private setUidAllowedForData([Ljava/lang/String;Z)V
    .locals 6
    .param p1, "appList"    # [Ljava/lang/String;
    .param p2, "set"    # Z

    .prologue
    .line 627
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    .line 629
    .local v2, "mPolicyManager":Landroid/net/NetworkPolicyManager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 630
    const-string v3, "PowerNotiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AllowedForData getUid(appList[i])="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->getUid(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Applist is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    if-eqz p2, :cond_0

    .line 633
    :try_start_0
    aget-object v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->getUid(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/NetworkPolicyManager;->setUidAllowedForData(II)V

    .line 629
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 635
    :cond_0
    aget-object v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->getUid(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/net/NetworkPolicyManager;->setUidAllowedForData(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 639
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 640
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 644
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    return-void
.end method

.method private updateBlackGreyModeChanged(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/4 v6, 0x0

    .line 507
    const-string v4, "PowerNotiReceiver"

    const-string v5, "updateBlackGreyModeChanged"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const-string v4, "accessibility"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v3

    .line 510
    .local v3, "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    if-eqz p1, :cond_1

    .line 512
    const/4 v4, 0x1

    :try_start_0
    sget-object v5, Lcom/sec/android/emergencymode/EmergencyConstants;->RGBCMYArray:[I

    invoke-interface {v3, v4, v5}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeColorBlind(Z[I)Z

    .line 513
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "high_contrast"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 514
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "color_blind"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 515
    :catch_0
    move-exception v2

    .line 516
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 519
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "high_contrast"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 520
    .local v1, "HigtContrast":I
    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "color_blind"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 522
    .local v0, "ColorBinde":I
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    :try_start_1
    sget-object v5, Lcom/sec/android/emergencymode/EmergencyConstants;->RGBCMYArray:[I

    invoke-interface {v3, v4, v5}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 523
    :catch_1
    move-exception v2

    .line 524
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateDataServiceChanged(I)V
    .locals 6
    .param p1, "datapowersavingState"    # I

    .prologue
    const/4 v4, 0x1

    .line 553
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    .line 554
    .local v2, "mPolicyManager":Landroid/net/NetworkPolicyManager;
    invoke-virtual {v2}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v5

    if-eqz p1, :cond_1

    move v3, v4

    :goto_0
    if-eq v5, v3, :cond_0

    .line 555
    sget v3, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->ultra_powersaving:I

    if-ne v3, v4, :cond_2

    .line 556
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/settings/powersavingmode/PowerNotiService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 557
    .local v0, "Intent":Landroid/content/Intent;
    const-string v3, "data"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 558
    const-string v3, "limit_bgdata"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 559
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 585
    .end local v0    # "Intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 554
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 561
    :cond_2
    invoke-static {}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isInVoLTECall()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isOnCall()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isOnChatonCall()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 562
    :cond_3
    if-ne p1, v4, :cond_4

    .line 564
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const v5, 0x7f0a1d54

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 571
    :goto_2
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/settings/powersavingmode/PowerNotiService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 572
    .restart local v0    # "Intent":Landroid/content/Intent;
    const-string v3, "data"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 573
    const-string v3, "limit_bgdata"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 574
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 568
    .end local v0    # "Intent":Landroid/content/Intent;
    :cond_4
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const v5, 0x7f0a1d55

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 576
    :cond_5
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/settings/powersavingmode/PowerNotiDataDialog;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 577
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v3, "BgDataChanged"

    const-string v4, "PowerSaving"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    const-string v3, "limit_bgdata"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 579
    const/high16 v3, 0x10800000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 580
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private updateDataServiceListChanged(I)V
    .locals 12
    .param p1, "datapowersavingState"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 588
    const-string v7, "PowerNotiReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateDataServiceListChanged state:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isLowLevel:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isLowLevel:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    .line 591
    .local v2, "mPolicyManager":Landroid/net/NetworkPolicyManager;
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "power_saving_data_allowed_apps"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "allowedApplist":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "power_saving_data_service_apps"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 593
    .local v6, "serviceApplist":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "power_saving_data_ristricted_apps"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 595
    .local v5, "restrictApplist":Ljava/lang/String;
    const/4 v1, 0x0

    .line 596
    .local v1, "mAllowedApplist":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 597
    .local v4, "mServiceApplist":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 599
    .local v3, "mRestrictApplist":[Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 600
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 602
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 603
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 604
    if-ne p1, v10, :cond_1

    .line 605
    invoke-direct {p0, v3, v11}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->setUidAllowedForData([Ljava/lang/String;Z)V

    .line 620
    :cond_1
    :goto_0
    const-string v7, "PowerNotiReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateDataServiceListChanged mAllowedApplist :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const-string v7, "PowerNotiReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateDataServiceListChanged mServiceApplist :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    return-void

    .line 609
    :cond_2
    const-string v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 612
    if-ne p1, v10, :cond_1

    .line 613
    invoke-direct {p0, v1, v10}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->setUidAllowedForData([Ljava/lang/String;Z)V

    .line 614
    if-eqz v3, :cond_1

    .line 615
    invoke-direct {p0, v3, v11}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->setUidAllowedForData([Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public disablePowerSavingMode(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 389
    sget v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->data_powersaving:I

    if-ne v1, v3, :cond_0

    invoke-direct {p0, v2}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->updateDataServiceChanged(I)V

    .line 390
    :cond_0
    sget v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->black_grey_powersaving:I

    if-ne v1, v3, :cond_1

    invoke-direct {p0, v2}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->updateBlackGreyModeChanged(I)V

    .line 392
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v0, "i":Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 394
    return-void
.end method

.method public enablePowerSavingMode(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 375
    sget v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->data_powersaving:I

    if-ne v1, v3, :cond_1

    .line 376
    sget v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->data_powersaving:I

    invoke-direct {p0, v1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->updateDataServiceChanged(I)V

    .line 382
    :cond_0
    :goto_0
    sget v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->black_grey_powersaving:I

    invoke-direct {p0, v1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->updateBlackGreyModeChanged(I)V

    .line 384
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .local v0, "i":Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 386
    return-void

    .line 378
    .end local v0    # "i":Landroid/content/Intent;
    :cond_1
    sget v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->data_powersaving:I

    invoke-direct {p0, v1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->updateDataServiceChanged(I)V

    .line 379
    sget v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->black_grey_powersaving:I

    if-eq v1, v3, :cond_2

    sget v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->basic_powersaving:I

    if-ne v1, v3, :cond_0

    .line 380
    :cond_2
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    const v2, 0x7f0a107d

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public getUid(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 649
    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 652
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 658
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v3

    .line 653
    :catch_0
    move-exception v0

    .line 655
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 656
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public notificationClear(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 807
    const v0, 0x7f0205fb

    .line 809
    .local v0, "notiID":I
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->notiManager:Landroid/app/NotificationManager;

    .line 810
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->notiManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 811
    return-void
.end method

.method public notificationCreate(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f0205fb

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 779
    sput v9, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->notiID:I

    .line 780
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a107d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 781
    .local v3, "message":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a107f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 783
    .local v4, "title":Ljava/lang/CharSequence;
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->notiManager:Landroid/app/NotificationManager;

    .line 785
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 786
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.Settings$PowerSavingModeSettings2014Activity"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 788
    invoke-static {p1, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 790
    .local v2, "launchIntent":Landroid/app/PendingIntent;
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, -0x2

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 803
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v5, p0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->notiManager:Landroid/app/NotificationManager;

    sget v6, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->notiID:I

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 804
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "action":Ljava/lang/String;
    const-string v17, "PowerNotiReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "action="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    .line 110
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 111
    new-instance v17, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x103012b

    invoke-direct/range {v17 .. v19}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    .line 116
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "psm_switch"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    sput v17, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->powersavingState:I

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "powersaving_switch"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    sput v17, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->powersavingState2014:I

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "psm_switch"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    sput v17, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->basic_powersaving:I

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "data_powersaving_mode"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    sput v17, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->data_powersaving:I

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "blackgrey_powersaving_mode"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    sput v17, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->black_grey_powersaving:I

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "ultra_powersaving_mode"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    sput v17, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->ultra_powersaving:I

    .line 124
    const/4 v12, 0x0

    .line 125
    .local v12, "isBasicpowersavingEnabled":Z
    const-string v17, "PowerNotiReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "powersavingState="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->powersavingState:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "data_powersaving_mode"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    sput v17, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->datapowersavingState:I

    .line 128
    const-string v17, "PowerNotiReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "datapowersavingState="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget v19, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->datapowersavingState:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "psm_auto_turn_on"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->autoEnableState:I

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "isLowLevel"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isLowLevel:I

    .line 132
    const-string v17, "PowerNotiReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "autoEnableState="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->autoEnableState:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v17, "PowerNotiReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "isLowLevel : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isLowLevel:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v7

    .line 138
    .local v7, "emergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v7}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isEmergencyMode:Z

    .line 142
    sget v17, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->powersavingState2014:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 143
    const/4 v12, 0x1

    .line 148
    :cond_1
    const-string v17, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isAutoEnable()Z

    move-result v17

    if-nez v17, :cond_5

    .line 151
    sget v17, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->powersavingState2014:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 152
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doPowerSaveAction()V

    .line 153
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->notificationCreate(Landroid/content/Context;)V

    .line 154
    const-string v17, "PowerNotiReceiver"

    const-string v18, "doPowerSaveAction()"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget v17, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->data_powersaving:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    sget v17, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->data_powersaving:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->updateDataServiceChanged(I)V

    .line 156
    :cond_2
    sget v17, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->black_grey_powersaving:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    sget v17, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->black_grey_powersaving:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->updateBlackGreyModeChanged(I)V

    .line 372
    :cond_3
    :goto_1
    return-void

    .line 112
    .end local v7    # "emergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    .end local v12    # "isBasicpowersavingEnabled":Z
    :cond_4
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 113
    new-instance v17, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0b004e

    invoke-direct/range {v17 .. v19}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    goto/16 :goto_0

    .line 163
    .restart local v7    # "emergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    .restart local v12    # "isBasicpowersavingEnabled":Z
    :cond_5
    const-string v17, "android.settings.POWERSAVING_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 164
    if-eqz v12, :cond_f

    .line 165
    const-string v17, "changed"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 167
    .local v16, "strMsg":Ljava/lang/String;
    sget v17, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->powersavingState2014:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isEmergencyMode:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 168
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isAutoEnable()Z

    move-result v17

    if-nez v17, :cond_7

    .line 169
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->notificationCreate(Landroid/content/Context;)V

    .line 179
    :cond_6
    :goto_2
    if-eqz v16, :cond_c

    .line 180
    const-string v17, "true"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 181
    const-string v17, "PowerNotiReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onReceive POWERSAVING_CHANGED="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isAutoEnable()Z

    move-result v17

    if-nez v17, :cond_9

    .line 184
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doPowerSaveAction()V

    goto :goto_1

    .line 171
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isLowLevel:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 172
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->notificationCreate(Landroid/content/Context;)V

    goto :goto_2

    .line 174
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->notificationClear(Landroid/content/Context;)V

    goto :goto_2

    .line 186
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isLowLevel:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 187
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doPowerSaveAction()V

    goto/16 :goto_1

    .line 189
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->restorePowerSaveAction()V

    goto/16 :goto_1

    .line 194
    :cond_b
    const-string v17, "PowerNotiReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onReceive POWERSAVING_CHANGED="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 198
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isAutoEnable()Z

    move-result v17

    if-nez v17, :cond_d

    .line 199
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doPowerSaveAction()V

    goto/16 :goto_1

    .line 201
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isLowLevel:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 202
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->doPowerSaveAction()V

    goto/16 :goto_1

    .line 204
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->restorePowerSaveAction()V

    goto/16 :goto_1

    .line 210
    .end local v16    # "strMsg":Ljava/lang/String;
    :cond_f
    const-string v17, "changed"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 212
    .restart local v16    # "strMsg":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->notificationClear(Landroid/content/Context;)V

    .line 214
    if-eqz v16, :cond_12

    .line 215
    const-string v17, "true"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 216
    const-string v17, "PowerNotiReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onReceive POWERSAVING_CHANGED="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isAutoEnable()Z

    move-result v17

    if-nez v17, :cond_10

    .line 219
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->restorePowerSaveAction()V

    goto/16 :goto_1

    .line 221
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isLowLevel:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 222
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->restorePowerSaveAction()V

    goto/16 :goto_1

    .line 227
    :cond_11
    const-string v17, "PowerNotiReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onReceive POWERSAVING_CHANGED="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 231
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isAutoEnable()Z

    move-result v17

    if-nez v17, :cond_13

    .line 232
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->restorePowerSaveAction()V

    goto/16 :goto_1

    .line 234
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isLowLevel:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 235
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->restorePowerSaveAction()V

    goto/16 :goto_1

    .line 243
    .end local v16    # "strMsg":Ljava/lang/String;
    :cond_14
    const-string v17, "android.settings.POWERSAVING_AUTO_ENABLE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isAutoEnable()Z

    move-result v17

    if-eqz v17, :cond_16

    .line 245
    sget v17, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->powersavingState2014:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 246
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isLowLevel:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 247
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->enablePowerSavingMode(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 249
    :cond_15
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->disablePowerSavingMode(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 264
    :cond_16
    const-string v17, "android.settings.POWERSAVING_DATA_SERVICE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 265
    sget v17, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->datapowersavingState:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->updateDataServiceChanged(I)V

    goto/16 :goto_1

    .line 268
    :cond_17
    const-string v17, "android.settings.POWERSAVING_DATA_SERVICELIST_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 269
    sget v17, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->datapowersavingState:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->updateDataServiceListChanged(I)V

    goto/16 :goto_1

    .line 271
    :cond_18
    const-string v17, "android.settings.POWERSAVINGMODE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 272
    const-string v17, "changed"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 273
    .restart local v16    # "strMsg":Ljava/lang/String;
    const-string v17, "from"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 274
    .local v15, "strFrom":Ljava/lang/String;
    const/4 v13, 0x1

    .line 276
    .local v13, "is_PowerSavingMode_Changed":Z
    sget v17, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->ultra_powersaving:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1a

    .line 277
    sget v17, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->powersavingState2014:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "powersaving_switch"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 279
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->disablePowerSavingMode(Landroid/content/Context;)V

    .line 281
    :cond_19
    new-instance v10, Landroid/content/Intent;

    const-string v17, "android.settings.POWERSAVING_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v10, "i":Landroid/content/Intent;
    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 288
    .end local v10    # "i":Landroid/content/Intent;
    :cond_1a
    const-string v17, "PowerNotiReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "POWERSAVING_MODE_CHANGED from: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v17, "quickpanel"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b

    sget v17, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->powersavingState2014:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isAllOptionDisabled()Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "powersaving_switch"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0a1680

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 293
    :cond_1b
    const-string v17, "false"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    const/4 v13, 0x0

    .line 294
    :cond_1c
    if-eqz v13, :cond_21

    .line 295
    sget v17, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->powersavingState2014:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isAutoEnable()Z

    move-result v17

    if-nez v17, :cond_1d

    .line 297
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->enablePowerSavingMode(Landroid/content/Context;)V

    .line 310
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "powersaving_switch"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 311
    .local v8, "enablePowersavingmode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "psm_switch"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 312
    .local v9, "enableRestrictPerformance":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_20

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v9, v0, :cond_20

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "psm_haptic_feedback"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    :goto_4
    new-instance v10, Landroid/content/Intent;

    const-string v17, "android.settings.POWERSAVING_CHANGED"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .restart local v10    # "i":Landroid/content/Intent;
    sget-object v17, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 299
    .end local v8    # "enablePowersavingmode":I
    .end local v9    # "enableRestrictPerformance":I
    .end local v10    # "i":Landroid/content/Intent;
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isLowLevel:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1e

    .line 300
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->enablePowerSavingMode(Landroid/content/Context;)V

    goto :goto_3

    .line 302
    :cond_1e
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->disablePowerSavingMode(Landroid/content/Context;)V

    goto :goto_3

    .line 306
    :cond_1f
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->disablePowerSavingMode(Landroid/content/Context;)V

    goto :goto_3

    .line 315
    .restart local v8    # "enablePowersavingmode":I
    .restart local v9    # "enableRestrictPerformance":I
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "psm_haptic_feedback"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 322
    .end local v8    # "enablePowersavingmode":I
    .end local v9    # "enableRestrictPerformance":I
    :cond_21
    sget v17, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->powersavingState2014:I

    if-nez v17, :cond_3

    .line 323
    const-string v17, "PowerNotiReceiver"

    const-string v18, "updateBlackGreyModeChanged-false"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v17, "accessibility"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v11

    .line 326
    .local v11, "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    const-string v18, "high_contrast"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 327
    .local v4, "HigtContrast":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    const-string v18, "color_blind"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 329
    .local v3, "ColorBinde":I
    if-nez v4, :cond_3

    if-nez v3, :cond_3

    const/16 v17, 0x0

    :try_start_0
    sget-object v18, Lcom/sec/android/emergencymode/EmergencyConstants;->RGBCMYArray:[I

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 330
    :catch_0
    move-exception v6

    .line 331
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 337
    .end local v3    # "ColorBinde":I
    .end local v4    # "HigtContrast":I
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v11    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    .end local v13    # "is_PowerSavingMode_Changed":Z
    .end local v15    # "strFrom":Ljava/lang/String;
    .end local v16    # "strMsg":Ljava/lang/String;
    :cond_22
    const-string v17, "android.intent.action.EMERGENCY_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_26

    .line 338
    const-string v17, "reason"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 340
    .local v14, "reason":I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v14, v0, :cond_23

    .line 341
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->notificationClear(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 342
    :cond_23
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v14, v0, :cond_3

    .line 343
    sget v17, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->powersavingState2014:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isEmergencyMode:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 344
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isAutoEnable()Z

    move-result v17

    if-nez v17, :cond_24

    .line 345
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->notificationCreate(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 347
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isLowLevel:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_25

    .line 348
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->notificationCreate(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 350
    :cond_25
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->notificationClear(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 356
    .end local v14    # "reason":I
    :cond_26
    const-string v17, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 357
    const-string v17, "PowerNotiReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onReceive ACTION_LOCALE_CHANGED="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    sget v17, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->powersavingState2014:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isEmergencyMode:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 360
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isAutoEnable()Z

    move-result v17

    if-nez v17, :cond_27

    .line 361
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->notificationCreate(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 363
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->isLowLevel:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_28

    .line 364
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->notificationCreate(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 366
    :cond_28
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/powersavingmode/PowerNotiReceiver;->notificationClear(Landroid/content/Context;)V

    goto/16 :goto_1
.end method
