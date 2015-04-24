.class public final Lcom/android/services/telephony/common/SystemDBInterface;
.super Ljava/lang/Object;
.source "SystemDBInterface.java"


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static enabledKidsModeCallApp()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 351
    sget-object v1, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "kids_home_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 356
    if-lez v1, :cond_0

    .line 359
    :try_start_0
    sget-object v2, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 360
    if-eqz v2, :cond_0

    .line 361
    const-string v3, "com.sec.kidsplat.phone"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hasKidsModeCall activated = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemDBInterface"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    const/4 v0, 0x1

    .line 376
    :cond_0
    :goto_0
    return v0

    .line 370
    :catch_0
    move-exception v1

    goto :goto_0

    .line 368
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static getLGTRADCode()I
    .locals 3

    .prologue
    .line 635
    const-string v0, "country_code"

    const/16 v1, 0x52

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getLGTRADCode value : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemDBInterface"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return v0
.end method

.method public static getLGTRADSetting()I
    .locals 3

    .prologue
    .line 625
    const-string v0, "auto_dial_enable"

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    .line 626
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getLGTRADSetting value : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemDBInterface"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    return v0
.end method

.method public static getRoamingAutoDialSetting()I
    .locals 3

    .prologue
    .line 602
    const-string v0, "roaming_auto_dial"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    .line 603
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getRoamingAutoDialSetting: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemDBInterface"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    return v0
.end method

.method public static getSettingDB(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return p1

    :cond_0
    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method public static getTtySetting()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 769
    const-string v1, "preferred_tty_mode"

    sget-object v2, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 771
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTtySetting, setting: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemDBInterface"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    return v0

    .line 769
    :cond_0
    sget-object v2, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 84
    sput-object p0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method

.method public static isDockOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 810
    const-string v1, "dock_on"

    invoke-static {v1, v0}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    .line 811
    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isDriveLinkNaviMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 234
    const-string v1, "drivelink_mode"

    invoke-static {v1, v0}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    .line 238
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isEasyModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 130
    const-string v1, "easy_mode_switch"

    invoke-static {v1, v0}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    .line 133
    const-string v2, "easy_mode_contacts"

    invoke-static {v2, v0}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    .line 135
    const-string v3, "support_easy_mode"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIncomingCallPopUPEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 400
    const-string v3, "popup_incoming_call"

    const-string v0, "default_incomingcall_popup"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v3

    .line 404
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "isIncomingCallPopUPEnabled : "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SystemDBInterface"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    if-eqz v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 400
    goto :goto_0

    :cond_1
    move v0, v2

    .line 404
    goto :goto_1

    :cond_2
    move v1, v2

    .line 405
    goto :goto_2
.end method

.method public static isMcidBlockedNumber()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 678
    const-string v2, "mcid_rejected_number"

    invoke-static {v2, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    .line 680
    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isNsriSecureCallMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 539
    const-string v1, "nsri_secure_call_mode"

    invoke-static {v1, v0}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    .line 541
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isRecordingVoiceNote()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 551
    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 553
    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 554
    const-string v0, "Audiomanager.isRecordActive() is false"

    const-string v1, "SystemDBInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_0
    :goto_0
    return v2

    .line 557
    :cond_1
    const-string v0, "voicenote_recording_enable"

    invoke-static {v0, v2}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    .line 558
    sget-object v1, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "voiceRecorder_recording_enable"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 559
    if-ne v1, v3, :cond_2

    const-string v1, "j_device"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v3

    .line 560
    goto :goto_0

    .line 562
    :cond_2
    if-eq v0, v3, :cond_3

    .line 563
    const-string v0, "voicenote_recording is not set"

    const-string v1, "SystemDBInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 566
    :cond_3
    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 567
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 568
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    move v1, v2

    .line 569
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 570
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 571
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.sec.android.app.voicenote"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v3

    .line 572
    goto :goto_0

    .line 569
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public static isSafetyAssistanceMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 591
    sget-object v2, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    .line 592
    const-string v2, "ultra_powersaving_mode"

    invoke-static {v2, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 593
    :goto_0
    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    .line 594
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isSafetyAssistanceMode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemDBInterface"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return v0

    :cond_0
    move v2, v1

    .line 592
    goto :goto_0

    :cond_1
    move v0, v1

    .line 593
    goto :goto_1
.end method

.method public static isTPhoneEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 450
    const-string v2, "support_tphone"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 456
    :cond_0
    :goto_0
    return v0

    .line 453
    :cond_1
    const-string v2, "skt_phone20_settings"

    invoke-static {v2, v0}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    .line 456
    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isTPhoneMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 423
    const-string v2, "support_tphone"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 446
    :cond_0
    :goto_0
    return v0

    .line 426
    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 429
    sget-object v2, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 430
    const-string v1, "isTPhoneMode : emergency mode"

    const-string v2, "SystemDBInterface"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 433
    :cond_2
    const-string v2, "skt_phone20_installing_mode"

    invoke-static {v2, v0}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_3

    move v2, v1

    :goto_1
    if-eqz v2, :cond_4

    .line 434
    const-string v1, "isTPhoneMode : tphone istalling"

    const-string v2, "SystemDBInterface"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v2, v0

    .line 433
    goto :goto_1

    .line 437
    :cond_4
    const-string v2, "drivelink_mode"

    invoke-static {v2, v0}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_5

    move v2, v1

    :goto_2
    if-eqz v2, :cond_6

    .line 438
    const-string v1, "isTPhoneMode : drivelink mode"

    const-string v2, "SystemDBInterface"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move v2, v0

    .line 437
    goto :goto_2

    .line 441
    :cond_6
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->enabledKidsModeCallApp()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 442
    const-string v1, "isTPhoneMode : kids mode"

    const-string v2, "SystemDBInterface"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 445
    :cond_7
    const-string v0, "isTPhoneMode : true"

    const-string v2, "SystemDBInterface"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 446
    goto :goto_0
.end method

.method public static isTPhoneRADDialingToKorea()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 505
    const-string v1, "skt_phone20_rad_dialing_korea"

    invoke-static {v1, v0}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    .line 508
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isTPhoneRelaxMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 466
    const-string v1, "skt_phone20_relax_mode"

    invoke-static {v1, v0}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v1

    .line 469
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static setAirplainModeOn(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setAirplainModeOn -  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemDBInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 722
    return-void
.end method

.method public static setTPhoneRelaxMode(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 473
    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "skt_phone20_relax_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setTPhoneRelaxMode : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemDBInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return-void
.end method

.method public static setWideBandAMR(Z)V
    .locals 3

    .prologue
    .line 745
    sget-object v0, Lcom/android/services/telephony/common/SystemDBInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wb_amr_mode"

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setWideBandAMR : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemDBInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    return-void

    .line 745
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
