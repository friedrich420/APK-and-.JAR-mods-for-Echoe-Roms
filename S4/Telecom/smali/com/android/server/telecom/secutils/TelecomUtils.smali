.class public final Lcom/android/server/telecom/secutils/TelecomUtils;
.super Ljava/lang/Object;
.source "TelecomUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;
    }
.end annotation


# static fields
.field private static EXTRA_SIM_ID:Ljava/lang/String;

.field private static LGTSendEmptyFlash:Z

.field private static mHandler:Landroid/os/Handler;

.field private static mInCallUiHasFocused:Z

.field private static mIsIncomingCallAnswered:Z

.field private static mIsPSBarring:Z

.field private static mLock:Ljava/lang/Object;

.field private static mPlayingSecCallEndTone:Z

.field public static mRedialNumber:Ljava/lang/String;

.field private static mState:I

.field private static mToast:Landroid/widget/Toast;

.field public static mVolteRedialNumber:Ljava/lang/String;

.field private static mediaPlayer:Landroid/media/MediaPlayer;

.field private static sLastMoCallCloneIntent:Landroid/content/Intent;

.field private static sLastMoCallIntent:Landroid/content/Intent;

.field public static secondEndCall:Z

.field public static secondMWEndCall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 169
    sput-boolean v1, Lcom/android/server/telecom/secutils/TelecomUtils;->secondEndCall:Z

    .line 170
    sput-boolean v1, Lcom/android/server/telecom/secutils/TelecomUtils;->secondMWEndCall:Z

    .line 184
    sput-boolean v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mInCallUiHasFocused:Z

    .line 187
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mLock:Ljava/lang/Object;

    .line 188
    sput-object v2, Lcom/android/server/telecom/secutils/TelecomUtils;->mToast:Landroid/widget/Toast;

    .line 190
    sput-boolean v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsPSBarring:Z

    .line 191
    sput-boolean v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mPlayingSecCallEndTone:Z

    .line 193
    sput-object v2, Lcom/android/server/telecom/secutils/TelecomUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 195
    sput-object v2, Lcom/android/server/telecom/secutils/TelecomUtils;->mRedialNumber:Ljava/lang/String;

    .line 197
    sput-object v2, Lcom/android/server/telecom/secutils/TelecomUtils;->mVolteRedialNumber:Ljava/lang/String;

    .line 200
    sput v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mState:I

    .line 202
    sput-boolean v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsIncomingCallAnswered:Z

    .line 205
    const-string v0, "simSlot"

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->EXTRA_SIM_ID:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public static CheckDisplayPLettrering()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3511
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oneline_greeting"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3513
    const-string v3, "ims_support_multimedia_caller_id"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3514
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "photoring_reject_all"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 3515
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "photoring reject all : "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v3, :cond_1

    const-string v0, "false"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->log(Ljava/lang/String;)V

    .line 3516
    if-ne v3, v1, :cond_2

    move v1, v2

    .line 3526
    :cond_0
    :goto_1
    const-string v0, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CheckDisplayPLettrering, bEnableLettering : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3528
    return v1

    .line 3515
    :cond_1
    const-string v0, "true"

    goto :goto_0

    .line 3518
    :cond_2
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isMcidBlockedNumber()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    move v1, v0

    .line 3520
    goto :goto_1

    :cond_3
    const-string v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3522
    if-eq v0, v1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public static InCallUIWindowFocusChangeNotify(Z)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2645
    const-string v2, "TelecomUtils"

    const-string v3, "InCallUIWindowFocusChangeNotify hasfocus(%b)"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2646
    const-string v2, "incoming_call_popup_osup"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p0, :cond_0

    .line 2648
    if-nez p0, :cond_1

    :goto_0
    sput-boolean v0, Lcom/android/server/telecom/CallAudioManager;->mIsInCallUIFocused:Z

    .line 2650
    :cond_0
    sput-boolean p0, Lcom/android/server/telecom/secutils/TelecomUtils;->mInCallUiHasFocused:Z

    .line 2651
    return-void

    :cond_1
    move v0, v1

    .line 2648
    goto :goto_0
.end method

.method static synthetic access$002(Z)Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mPlayingSecCallEndTone:Z

    return v0
.end method

.method public static addCallLogForNotRegisteredCall$44b8cb48(Lcom/android/server/telecom/Call;I)V
    .locals 5

    .prologue
    const/4 v1, 0x6

    const/4 v2, 0x3

    .line 1452
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    .line 1453
    :cond_0
    const-string v0, "TelecomUtils"

    const-string v1, "addCallLogForNotRegisteredCall : Do not make a log for not registered MO call"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1493
    :goto_0
    return-void

    .line 1457
    :cond_1
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    .line 1458
    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 1459
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v3

    .line 1462
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCdmaCallIncomingBarringOn(Lcom/android/server/telecom/Call;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    .line 1486
    :goto_1
    const-string v3, "dcm_not_support_extra_callog_type"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-ne v0, v1, :cond_8

    .line 1488
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/telecom/CallsManager;->mSecCallLogManager:Lcom/android/server/telecom/secutils/SecCallLogManager;

    invoke-virtual {v0, p0, v2}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logCall(Lcom/android/server/telecom/Call;I)V

    goto :goto_0

    .line 1464
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->hasAutoRejectBundleExtra(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    .line 1465
    goto :goto_1

    .line 1466
    :cond_3
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAccessControlOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    .line 1467
    goto :goto_1

    .line 1473
    :cond_4
    invoke-static {p0}, Lcom/android/server/telecom/LowBatteryManager;->supportLowBatteryManager(Lcom/android/server/telecom/Call;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/telecom/LowBatteryManager;->isLowBatt()Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v2

    .line 1475
    goto :goto_1

    .line 1476
    :cond_5
    const-string v4, "vt_missed_noti_during_call"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v3, :cond_6

    if-nez v3, :cond_7

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v0, v2

    .line 1479
    goto :goto_1

    .line 1480
    :cond_7
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkVoiceRecorder()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1481
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVoiceRecoderBlockCall()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 1482
    goto :goto_1

    .line 1491
    :cond_8
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/telecom/CallsManager;->mSecCallLogManager:Lcom/android/server/telecom/secutils/SecCallLogManager;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logCall(Lcom/android/server/telecom/Call;I)V

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto :goto_1
.end method

.method public static canUseHoldInVoIP()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2981
    :try_start_0
    const-string v0, "voip"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .line 2982
    if-eqz v0, :cond_0

    .line 2983
    invoke-interface {v0}, Landroid/os/IVoIPInterface;->canUseHoldInVoIP()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    .line 2985
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "canUseHoldInVoIP - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->log(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2989
    :goto_1
    return v0

    .line 2986
    :catch_0
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 2987
    :goto_2
    :try_start_2
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "canUseHoldInVoIP - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/server/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2989
    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 2986
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static changeEPDGAudioPath(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 686
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 687
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 689
    :cond_0
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 691
    invoke-static {v4, v0}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    .line 693
    if-eqz v0, :cond_1

    .line 695
    :try_start_0
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Change ePDG audio path = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 696
    invoke-interface {v0, p0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;->changeEPDGAudioPath(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    :cond_1
    :goto_0
    return-void

    .line 697
    :catch_0
    move-exception v0

    .line 698
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "changeEPDGAudioPath exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static changeRtsMEssage(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v2, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1135
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1140
    const-string v1, "ril.skt.network_regist"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Idle"

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_5

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Integer;

    const-string v4, ";"

    invoke-virtual {v3, v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, v2

    const-string v6, "Status"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    aget-object v4, v3, v7

    const-string v6, "Idle"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v7

    aget-object v4, v3, v8

    const-string v6, "CS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v8

    aget-object v3, v3, v9

    const-string v4, "PS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v9

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v10

    .line 1142
    :goto_0
    if-eqz v1, :cond_1b

    .line 1143
    aget-object v3, v1, v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1144
    aget-object v3, v1, v8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1145
    aget-object v1, v1, v9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1148
    :goto_1
    const v6, 0x7f080059

    if-eq p1, v6, :cond_0

    const v6, 0x7f08005a

    if-ne p1, v6, :cond_6

    .line 1150
    :cond_0
    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v2

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1167
    :cond_1
    :goto_2
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1168
    const v2, 0x7f080054

    if-eq p1, v2, :cond_2

    const v2, 0x7f080055

    if-eq p1, v2, :cond_2

    const v2, 0x7f080063

    if-ne p1, v2, :cond_b

    .line 1170
    :cond_2
    if-nez v3, :cond_a

    .line 1171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1214
    :cond_3
    :goto_3
    const-string v1, "feature_kor_open"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1215
    const-string v0, "%d"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1218
    :cond_4
    return-object v0

    .line 1140
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 1151
    :cond_6
    const v2, 0x7f080053

    if-eq p1, v2, :cond_7

    const v2, 0x7f080057

    if-ne p1, v2, :cond_9

    .line 1152
    :cond_7
    const-string v0, "ril.currentplmn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1154
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1157
    const-string v0, "%s"

    const-string v2, "1599-0011"

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1162
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1159
    :cond_8
    const-string v0, "%s"

    const-string v2, "+82-2-6343-9000"

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1163
    :cond_9
    const v2, 0x7f080056

    if-ne p1, v2, :cond_1

    .line 1164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1173
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 1174
    :cond_b
    const v2, 0x7f08005f

    if-ne p1, v2, :cond_f

    .line 1175
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1176
    const-string v0, "%s"

    const-string v2, "1544-0010"

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1180
    :goto_5
    if-eqz v4, :cond_c

    if-ne v4, v8, :cond_e

    :cond_c
    if-nez v3, :cond_e

    if-ne v1, v8, :cond_e

    .line 1181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 1178
    :cond_d
    const-string v0, "%s"

    const-string v2, "+82-2-3416-7010"

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1183
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 1185
    :cond_f
    const v2, 0x7f080060

    if-eq p1, v2, :cond_10

    const v2, 0x7f080061

    if-eq p1, v2, :cond_10

    const v2, 0x7f080062

    if-eq p1, v2, :cond_10

    const v2, 0x7f080066

    if-ne p1, v2, :cond_13

    .line 1187
    :cond_10
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1188
    const-string v0, "%s"

    const-string v2, "1544-0010"

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1193
    :goto_6
    if-nez v3, :cond_12

    .line 1194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 1190
    :cond_11
    const-string v0, "%s"

    const-string v2, "+82-2-3416-7010"

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 1196
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 1197
    :cond_13
    const v2, 0x7f080072

    if-eq p1, v2, :cond_14

    const v2, 0x7f080071

    if-eq p1, v2, :cond_14

    const v2, 0x7f080070

    if-ne p1, v2, :cond_15

    .line 1198
    :cond_14
    const-string v0, "%s"

    const-string v1, "1544-0010"

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 1199
    :cond_15
    const v2, 0x7f080064

    if-ne p1, v2, :cond_16

    .line 1200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 1201
    :cond_16
    const v2, 0x7f080067

    if-eq p1, v2, :cond_17

    const v2, 0x7f080069

    if-eq p1, v2, :cond_17

    const v2, 0x7f08006a

    if-eq p1, v2, :cond_17

    const v2, 0x7f080068

    if-ne p1, v2, :cond_3

    .line 1203
    :cond_17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08006b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1204
    const-string v2, "%s"

    const-string v6, "+82-2-3416-7010"

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1205
    if-eqz v4, :cond_18

    if-ne v4, v8, :cond_19

    :cond_18
    if-nez v3, :cond_19

    if-ne v1, v8, :cond_19

    .line 1206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": 2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 1207
    :cond_19
    if-nez v3, :cond_1a

    .line 1208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 1210
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_1b
    move v1, v2

    move v3, v2

    move v4, v2

    goto/16 :goto_1
.end method

.method public static checkActiveHoldCallExist()Z
    .locals 2

    .prologue
    .line 3540
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    .line 3541
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 3542
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3541
    :array_0
    .array-data 4
        0x5
        0x6
    .end array-data
.end method

.method public static checkAndCopyExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 2723
    const-string v0, "support_emergency_report_helper_app"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2724
    const-string v0, "startFlag"

    const-string v1, "startFlag"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2726
    :cond_0
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "getNumFromIntentIfResultDataIsNull"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2727
    const-string v0, "getNumFromIntentIfResultDataIsNull"

    const-string v1, "getNumFromIntentIfResultDataIsNull"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2729
    :cond_1
    return-void
.end method

.method public static checkAndParseNumberDuringCSVTCall(Landroid/content/Intent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3198
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 3199
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 3200
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 3201
    const-string v0, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Phone Number : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3202
    const-string v4, "TelecomUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "Check number starts with * or # :"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "*"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3203
    const-string v0, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Check number ends with # :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3204
    const-string v0, "*"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    return v1

    :cond_2
    move v0, v2

    .line 3202
    goto :goto_0

    :cond_3
    move v1, v2

    .line 3204
    goto :goto_1
.end method

.method public static checkDriveLink$304ff7b3(Landroid/content/Context;Z)V
    .locals 8

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1558
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "drivelink_navigation"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1561
    const-string v4, "TelecomUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[DRIVELINK]navigation : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1563
    if-nez p1, :cond_4

    .line 1564
    sget-boolean v4, Lcom/android/server/telecom/secutils/TelecomUtils;->secondEndCall:Z

    if-eqz v4, :cond_0

    .line 1565
    const-string v0, "TelecomUtils"

    const-string v3, "[DRIVELINK] CallFromEndCallButton"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1567
    sput-boolean v2, Lcom/android/server/telecom/secutils/TelecomUtils;->secondEndCall:Z

    move v0, v1

    .line 1583
    :goto_0
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[DRIVELINK]drivelink_mode:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1584
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "drivelink_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1586
    return-void

    .line 1568
    :cond_0
    sget-boolean v4, Lcom/android/server/telecom/secutils/TelecomUtils;->secondMWEndCall:Z

    if-eqz v4, :cond_1

    .line 1569
    const-string v3, "TelecomUtils"

    const-string v4, "[DRIVELINK] CallFromMWEndCallButton"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1571
    sput-boolean v2, Lcom/android/server/telecom/secutils/TelecomUtils;->secondMWEndCall:Z

    goto :goto_0

    .line 1572
    :cond_1
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDriveLinkEnable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1573
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "drive_link_multi_setting"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "TelecomUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[DRIVELINK]checkDriveNaviLink flagDriveLink : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "TelecomUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[DRIVELINK]checkDriveNaviLink isRunningProcess : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRunningProcess(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne v4, v1, :cond_2

    invoke-static {p0, v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRunningProcess(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    :goto_1
    if-eqz v3, :cond_3

    .line 1575
    const-string v3, "TelecomUtils"

    const-string v4, "[DRIVELINK] DLIVELINK_NAVIGATION mode"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    move v3, v2

    .line 1573
    goto :goto_1

    .line 1578
    :cond_3
    const-string v0, "TelecomUtils"

    const-string v3, "[DRIVELINK] DLIVELINK_ONLY mode "

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto/16 :goto_0
.end method

.method public static checkForLGTCDMA(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3592
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->phoneIsCdma()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3593
    const-string v2, "com.android.phone.extra.FLASH_DTMF"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 3594
    const-string v3, "videocall"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 3595
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    .line 3596
    const-string v5, "TelecomUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bDTMFflag : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3597
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getState()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    if-nez v3, :cond_3

    .line 3598
    if-eqz v2, :cond_1

    .line 3599
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "TelecomUtils"

    const-string v4, "sendEmptyFlash"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->sendEmptyFlash()V

    .line 3600
    :cond_0
    sput-boolean v0, Lcom/android/server/telecom/secutils/TelecomUtils;->LGTSendEmptyFlash:Z

    .line 3624
    :goto_0
    return v0

    .line 3603
    :cond_1
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3604
    const v1, 0x7f0800a3

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3607
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3608
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 3609
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 3611
    const-string v4, "*22"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/android/server/telecom/secutils/TelecomUtils;->LGTSendEmptyFlash:Z

    if-nez v3, :cond_3

    .line 3612
    const v2, 0x7f0800a4

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3617
    :cond_3
    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->isInCall()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3618
    const-string v2, "TelecomUtils"

    const-string v3, "in idle cannot flash with dtmf"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 3624
    goto :goto_0
.end method

.method public static checkMultiSimDsda()Z
    .locals 2

    .prologue
    .line 2626
    const-string v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2627
    const-string v1, "dsda"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2628
    const/4 v0, 0x1

    .line 2630
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkOperatorAddCallCapable(Lcom/android/server/telecom/Call;)Z
    .locals 1

    .prologue
    .line 3074
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3075
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->isEmergencyCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3076
    const/4 v0, 0x0

    .line 3079
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkResultNumber(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2732
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    const-string v0, "getNumFromIntentIfResultDataIsNull"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2735
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "num : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getNumFromIntentIfResultDataIsNull extra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getNumFromIntentIfResultDataIsNull"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2736
    const-string v0, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2739
    :cond_0
    return-object p0
.end method

.method public static checkServiceState(Lcom/android/server/telecom/Call;)I
    .locals 5

    .prologue
    .line 3354
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getSubId(Lcom/android/server/telecom/Call;)J

    move-result-wide v2

    .line 3355
    const/4 v1, 0x0

    .line 3356
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3357
    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3358
    if-eqz v0, :cond_0

    .line 3359
    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->getServiceState(J)I

    move-result v0

    .line 3361
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static checkToInitiateOutgoingCall(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 8

    .prologue
    const/4 v3, 0x3

    const/16 v4, 0x9

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3208
    const-string v0, "videocall"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3209
    const-string v0, "videocall"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    move v5, v0

    .line 3212
    :goto_0
    if-eqz v5, :cond_c

    .line 3213
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3214
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v0

    if-nez v0, :cond_6

    .line 3215
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3216
    :cond_0
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v3

    .line 3288
    :cond_1
    :goto_1
    return v1

    .line 3219
    :cond_2
    const-string v0, "handle_not_registered"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailablePSVT()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3220
    const/4 v1, 0x2

    goto :goto_1

    .line 3224
    :cond_3
    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3225
    const-string v0, "ril.ims.ltevoicesupport"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    .line 3226
    :goto_2
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailablePSVT()Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v0, :cond_6

    .line 3227
    :cond_4
    const v0, 0x7f080081

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3229
    const/4 v1, 0x4

    goto :goto_1

    :cond_5
    move v0, v2

    .line 3225
    goto :goto_2

    .line 3234
    :cond_6
    const-string v0, "dcm_not_support_vt_emr_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isEmergnecyCall(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3235
    const/4 v1, 0x6

    goto :goto_1

    .line 3238
    :cond_7
    const-string v0, "dcm_volte_popup_message"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "persist.radio.wifi_test"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_c

    .line 3240
    const-string v0, "persist.radio.setnwkmode"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3241
    const-string v6, "true"

    const-string v7, "gsm.operator.isroaming"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 3242
    if-eqz v6, :cond_8

    .line 3244
    const/4 v1, 0x7

    goto :goto_1

    .line 3245
    :cond_8
    if-eq v0, v4, :cond_9

    const/16 v6, 0xc

    if-eq v0, v6, :cond_9

    .line 3247
    const/16 v1, 0x8

    goto :goto_1

    .line 3248
    :cond_9
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSVoiceCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v1, v4

    .line 3250
    goto :goto_1

    .line 3251
    :cond_a
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDeviceOnLTE()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3253
    const/16 v1, 0xa

    goto/16 :goto_1

    .line 3254
    :cond_b
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailablePSVT()Z

    move-result v0

    if-nez v0, :cond_c

    .line 3256
    const/16 v1, 0xb

    goto/16 :goto_1

    .line 3261
    :cond_c
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->hasAnyCalls()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3262
    const-string v0, "us_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    .line 3263
    if-eqz v5, :cond_d

    if-eqz v0, :cond_1

    .line 3266
    :cond_d
    const-string v0, "ui_for_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3267
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 3268
    if-eqz v0, :cond_e

    .line 3269
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    .line 3270
    if-eqz v0, :cond_e

    .line 3271
    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v0

    if-eq v0, v3, :cond_1

    :cond_e
    move v1, v2

    .line 3288
    goto/16 :goto_1

    .line 3278
    :cond_f
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 3279
    if-eqz v0, :cond_10

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkAndParseNumberDuringCSVTCall(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    :cond_10
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->hasRingingCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3281
    const-string v0, "support_easy_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3282
    const-string v0, "TelecomUtils"

    const-string v3, "Cannot place second call during easy mode"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_11
    move v5, v2

    goto/16 :goto_0
.end method

.method public static checkVideoRecorder()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2204
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2205
    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2209
    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2210
    const-string v0, "service.camera.rec.running"

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 2216
    :goto_0
    const-string v1, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkVideoRecorder: video recording = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2217
    return v0

    .line 2214
    :cond_0
    const-string v0, "TelecomUtils"

    const-string v1, "checkVideoRecorder: isRecordActive() is false"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static checkVoiceRecorder()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2182
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2183
    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2185
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isRecordingVoiceNote()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2186
    const-string v0, "TelecomUtils"

    const-string v3, "checkVoiceRecorder: VoiceNote is running"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 2200
    :goto_0
    return v0

    .line 2189
    :cond_0
    const-string v3, "voicenote_recording_enable"

    invoke-static {v3, v2}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v3

    .line 2190
    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v4

    if-eqz v4, :cond_1

    if-ne v3, v1, :cond_1

    .line 2191
    const-string v0, "TelecomUtils"

    const-string v3, "checkVoiceRecorder VoiceRecorder is running"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 2192
    goto :goto_0

    .line 2195
    :cond_1
    const-string v3, "fm_record_enable"

    invoke-static {v3, v2}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v3

    .line 2196
    invoke-virtual {v0}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne v3, v1, :cond_2

    .line 2197
    const-string v0, "TelecomUtils"

    const-string v3, "checkVoiceRecorder: FM radio is running"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 2198
    goto :goto_0

    :cond_2
    move v0, v2

    .line 2200
    goto :goto_0
.end method

.method public static clearLGTSendEmptyFlashFlag()V
    .locals 1

    .prologue
    .line 3588
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/telecom/secutils/TelecomUtils;->LGTSendEmptyFlash:Z

    .line 3589
    return-void
.end method

.method public static convertToneGeneratorVolume(Landroid/media/ToneGenerator;I)Landroid/media/ToneGenerator;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2816
    const-string v0, "support_function_sound_tuning"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2817
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 2819
    :try_start_0
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/TelecomApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2820
    const-string v1, "situation=12"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 2821
    invoke-virtual {p0, v0}, Landroid/media/ToneGenerator;->setVolume(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2828
    :cond_0
    :goto_0
    const-string v0, "use_second_waiting_call_tone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "use_second_call_end_tone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2830
    :cond_1
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volume_waiting_tone"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2831
    const-string v1, "TelecomUtils"

    const-string v2, "convertToneGeneratorVolume..."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2832
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "- rate: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2833
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-int/lit8 v0, v0, -0x2

    int-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v1, v0

    .line 2835
    const/16 v0, 0x14

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-ne p1, v0, :cond_3

    .line 2837
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/TelecomApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2838
    const-string v2, "situation=15;device=0"

    .line 2839
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr v0, v1

    .line 2840
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "- situationVolume: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2841
    invoke-virtual {p0, v0}, Landroid/media/ToneGenerator;->setVolume(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2847
    :cond_3
    :goto_1
    return-object p0

    .line 2822
    :catch_0
    move-exception v0

    .line 2823
    const-string v1, "TelecomUtils"

    const-string v2, "convertToneGeneratorVolume: "

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2842
    :catch_1
    move-exception v0

    .line 2843
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "convertToneGeneratorVolume: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static displayToast(I)V
    .locals 3

    .prologue
    .line 3043
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/TelecomApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    :cond_0
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3044
    return-void
.end method

.method public static formatNumberForVideoConference(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v2, 0x0

    .line 2779
    const-string v0, ""

    .line 2780
    if-eqz p0, :cond_2

    const/16 v1, 0x24

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 2781
    const-string v1, "\\$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v1, v2

    .line 2782
    :goto_0
    array-length v3, v4

    if-ge v1, v3, :cond_3

    .line 2783
    aget-object v3, v4, v1

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2784
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_0

    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2785
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 2786
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "$"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2788
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2782
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object v0, p0

    .line 2793
    :cond_3
    return-object v0
.end method

.method public static getAccoutSubId(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 2634
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 2641
    :goto_0
    return-wide v0

    .line 2637
    :catch_0
    move-exception v0

    .line 2638
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAccoutSubId failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2639
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getAudioMode(Lcom/android/server/telecom/Call;)I
    .locals 4

    .prologue
    const/4 v0, 0x3

    .line 720
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 722
    const/4 v0, 0x4

    .line 732
    :cond_0
    :goto_0
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getAudioMode : mode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 733
    return v0

    .line 723
    :cond_1
    const-string v1, "psvt_audio_processing_on_ap"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 725
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isEpdgCall(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 727
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isWFCRegistered()Z

    move-result v1

    if-nez v1, :cond_0

    .line 730
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getIsVoipAudioMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getAudioStream(Lcom/android/server/telecom/Call;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 712
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    const/16 v0, 0xb

    .line 715
    :goto_0
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAudioStream : stream = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 716
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getCurrentToneStream()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1793
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    .line 1795
    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 1796
    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    iget v0, v0, Landroid/telecom/AudioState;->route:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 1797
    const/4 v0, 0x6

    .line 1803
    :goto_0
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getCurrentToneStream : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1804
    return v0

    .line 1798
    :cond_0
    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1800
    const/16 v0, 0xb

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static getDriveLinkLocale(Landroid/content/Context;)I
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 1610
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1611
    const-string v0, "ko-KR"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1612
    const-string v0, "en-US"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1613
    const-string v0, "zh-CN"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1614
    const-string v0, "es-ES"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    const-string v0, "fr-FR"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    const-string v0, "de-DE"

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    const-string v0, "it-IT"

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    const-string v0, "ja-JP"

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    const-string v0, "ru-RU"

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    const-string v0, "pt-BR"

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    const-string v0, "en-GB"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    const-string v0, "es-US"

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1625
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "carmode_language"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1630
    const-string v1, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "drivelinkLocale = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1632
    if-nez v0, :cond_1

    .line 1633
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1636
    :goto_0
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1637
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1640
    :goto_1
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getDriveLinkLocale - drivelinkLocale : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " setLanguage : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1642
    return v0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public static getHasBeenVideoCall(Lcom/android/server/telecom/Call;)Z
    .locals 1

    .prologue
    .line 535
    if-eqz p0, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    .line 537
    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getHasBeenVideoCall()Z

    move-result v0

    .line 541
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInCallUIhasFocused()Z
    .locals 1

    .prologue
    .line 2654
    sget-boolean v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mInCallUiHasFocused:Z

    return v0
.end method

.method private static getInitialVTSpeakerState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2592
    const-string v1, "initial_speaker_settings"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2593
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2594
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "videocall_speaker"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 2597
    :cond_0
    return v0
.end method

.method public static getIsTTYOn()Z
    .locals 1

    .prologue
    .line 545
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getTtySetting()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getLastMoCallIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1229
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLastMoCallIntent(Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getLastMoCallIntent(Z)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1233
    if-eqz p0, :cond_0

    .line 1234
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->sLastMoCallCloneIntent:Landroid/content/Intent;

    .line 1236
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->sLastMoCallIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getLine1Number(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2561
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2562
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 2563
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNameOrNumberFromCall(Lcom/android/server/telecom/Call;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2710
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2711
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2718
    :goto_0
    return-object v0

    .line 2714
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getCallerInfo()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 2715
    if-eqz v0, :cond_1

    .line 2716
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 2718
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNeedtoSetMode(Lcom/android/server/telecom/Call;Landroid/media/AudioManager;I)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x2

    const/4 v2, 0x0

    .line 738
    const-string v0, "VoLTEstate"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 741
    const-string v0, "VoLTEstate=voice"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p2, v6, :cond_3

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSDomain(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 744
    const-string v0, "TelecomUtils"

    const-string v4, "getNeedtoSetMode : VoLTEstate=off"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 745
    const-string v0, "VoLTEstate=off"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    move v0, v1

    .line 749
    :goto_0
    const-string v4, "us_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 752
    const-string v4, "VoLTEstate=video"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVoiceCall(Lcom/android/server/telecom/Call;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eq p2, v6, :cond_1

    :cond_0
    const-string v4, "VoLTEstate=voice"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne p2, v6, :cond_2

    .line 754
    :cond_1
    const-string v0, "TelecomUtils"

    const-string v3, "neet to setParameters on setAudioParameters()"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 755
    const-string v0, "VoLTEstate=off"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    move v0, v1

    .line 760
    :cond_2
    return v0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public static getOperatorCallerDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2995
    if-nez p0, :cond_1

    .line 3004
    :cond_0
    :goto_0
    return-object p1

    .line 2996
    :cond_1
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2997
    const-string v0, "unknown"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "unknown"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    const-string v0, "anonymous"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "anonymous"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "anonymous"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Anonymous"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3000
    :cond_4
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KTT PRESENTATION_RESTRICTED -number="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cnap ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3001
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1308
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1309
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1317
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v0

    .line 1318
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPhoneTypeFromCall : PhoneType = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1319
    return v0

    .line 1311
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 1313
    :catch_0
    move-exception v0

    .line 1314
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPhoneTypeFromCall failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1315
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getPresentationString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2880
    const-string v0, "usa_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2881
    invoke-static {p0, p1, p2}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getPresentationString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2892
    :cond_0
    :goto_0
    return-object p2

    .line 2884
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eqz p2, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "anonymous"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const-string v0, "singapore_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2885
    :cond_3
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2886
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2887
    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 2889
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2890
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static getPreviousState()I
    .locals 1

    .prologue
    .line 3532
    sget v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mState:I

    return v0
.end method

.method public static getTelephonyDisconnectCause(Landroid/telecom/DisconnectCause;)I
    .locals 1

    .prologue
    .line 969
    invoke-virtual {p0}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getTelephonyDisconnectCause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/DisconnectCause;->disconnectCauseId(Ljava/lang/String;)I

    move-result v0

    .line 972
    return v0
.end method

.method private static getTelephonyDisconnectCause(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 976
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 977
    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 978
    array-length v1, v0

    .line 979
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    aget-object p0, v0, v1

    .line 981
    :cond_0
    return-object p0
.end method

.method public static getVoiceCallSubId(Landroid/content/Intent;)J
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 482
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v2

    .line 483
    const-string v0, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    const-string v0, "TelecomUtils"

    const-string v1, "For multisim models, add subId secCallExtra"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    const-string v0, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 486
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 487
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getAccoutSubId(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    move-wide v2, v0

    .line 505
    :cond_0
    :goto_1
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getVoiceCallSubId subId = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    return-wide v2

    .line 489
    :cond_1
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->EXTRA_SIM_ID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    const-string v0, "TelecomUtils"

    const-string v1, "For multisim models, add subId secCallExtra by simSlotExtra"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->EXTRA_SIM_ID:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 492
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 493
    const/4 v0, 0x0

    .line 494
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/telecom/TelecomApp;->getPhoneAccountRegistrar()Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getCallCapablePhoneAccounts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 496
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v7, :cond_3

    if-ne v1, v7, :cond_3

    .line 497
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 501
    :cond_2
    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 502
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getAccoutSubId(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_1

    .line 498
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v7, :cond_2

    if-nez v1, :cond_2

    .line 499
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    goto :goto_2

    :cond_4
    move-wide v0, v2

    goto :goto_0
.end method

.method public static getVoicetalkLocale()Ljava/util/Locale;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1723
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1724
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 1725
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 1727
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDriveLinkModeOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1730
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voicetalk_language"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1740
    :goto_0
    if-nez v0, :cond_6

    .line 1741
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1750
    :cond_0
    :goto_1
    const-string v1, "en-gb_GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1751
    const-string v0, "en_GB"

    .line 1753
    :cond_1
    const-string v1, "feature_hktw"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1754
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1755
    const-string v0, "en-US"

    .line 1759
    :cond_2
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1762
    const/4 v1, 0x2

    array-length v4, v3

    if-ne v1, v4, :cond_8

    .line 1763
    new-instance v1, Ljava/util/Locale;

    aget-object v4, v3, v6

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-direct {v1, v4, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    :goto_2
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getVoicetalkLocale - previousLocale : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " voiceLocale : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " voicetalkLocale : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1769
    return-object v1

    .line 1732
    :cond_3
    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1733
    :cond_4
    const-string v0, "en-US"

    goto :goto_0

    .line 1736
    :cond_5
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1742
    :cond_6
    const-string v1, "v-es-LA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1743
    const-string v0, "es"

    goto/16 :goto_1

    .line 1744
    :cond_7
    const-string v1, "feature_chn"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1745
    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1746
    const-string v0, "zh-CN"

    goto/16 :goto_1

    .line 1765
    :cond_8
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getWaitingTonePlayer(Lcom/android/server/telecom/InCallTonePlayer$Factory;)Lcom/android/server/telecom/InCallTonePlayer;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2851
    if-nez p0, :cond_0

    .line 2864
    :goto_0
    return-object v0

    .line 2853
    :cond_0
    const-string v1, "disable_waiting_tone"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2854
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVoiceCall(Lcom/android/server/telecom/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2855
    const-string v1, "TelecomUtils"

    const-string v2, "getWaitingTonePlayer: return null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2860
    :cond_1
    const-string v0, "use_second_waiting_call_tone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2861
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/InCallTonePlayer$Factory;->createPlayer(I)Lcom/android/server/telecom/InCallTonePlayer;

    move-result-object v0

    goto :goto_0

    .line 2864
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/InCallTonePlayer$Factory;->createPlayer(I)Lcom/android/server/telecom/InCallTonePlayer;

    move-result-object v0

    goto :goto_0
.end method

.method public static handleModifyCallException(Ljava/lang/String;I)V
    .locals 5

    .prologue
    const v3, 0x7f080088

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 2902
    if-eqz p0, :cond_5

    .line 2903
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2906
    :goto_0
    const/16 v2, 0x456

    if-ne v0, v2, :cond_1

    .line 2907
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2908
    const v0, 0x7f080086

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    .line 2922
    :cond_0
    :goto_1
    return-void

    .line 2910
    :cond_1
    const/16 v2, 0x455

    if-ne v0, v2, :cond_3

    .line 2911
    if-nez p1, :cond_2

    .line 2912
    const v0, 0x7f080087

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    goto :goto_1

    .line 2914
    :cond_2
    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    goto :goto_1

    .line 2915
    :cond_3
    const-string v2, "dcm_volte_popup_message"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x1e8

    if-ne v0, v2, :cond_4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 2918
    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    goto :goto_1

    .line 2920
    :cond_4
    const-string v0, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleModifyCallException Error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private static hasAutoRejectBundleExtra(Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1251
    if-nez p0, :cond_1

    .line 1258
    :cond_0
    :goto_0
    return v0

    .line 1254
    :cond_1
    invoke-static {p0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    .line 1255
    if-eqz v1, :cond_0

    .line 1256
    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->isAutoRejectCall()Z

    move-result v0

    goto :goto_0
.end method

.method public static iSInCallUITopActivity()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 3367
    :try_start_0
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3370
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.incallui.InCallActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3372
    :try_start_1
    const-string v1, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isTopActivity: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3376
    :goto_0
    return v0

    .line 3373
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 3374
    :goto_1
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "answerRingingCall: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3373
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private static isAccessControlOn(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1325
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "access_control_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1327
    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1329
    :goto_0
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isAccessControlOn = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1330
    return v0

    :cond_0
    move v0, v1

    .line 1327
    goto :goto_0
.end method

.method public static isAvailableInternationCall(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2505
    const-string v0, "restrict_international_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "extended_restrict_international_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2507
    :cond_0
    invoke-static {p1, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 2508
    if-eqz v4, :cond_3

    invoke-static {p0, v4}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 2509
    :goto_0
    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    const-string v3, "00"

    aput-object v3, v5, v2

    const-string v3, "*23#00"

    aput-object v3, v5, v1

    const-string v3, "+"

    aput-object v3, v5, v8

    const-string v6, "+"

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/TelecomApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "internationalcall_settings"

    invoke-static {v3, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string v7, "extended_restrict_international_call"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/TelecomApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "outging_intcall_lock"

    invoke-static {v3, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    :cond_1
    if-lez v3, :cond_9

    const-string v3, "emergency_find_lost_phone"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    const-string v3, "+82263439000"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "0000"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    move v3, v1

    .line 2510
    :goto_1
    const-string v5, "TelecomUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "processOutgoingCallIntent number : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " emergencyNumber :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " canCallAbroad : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2513
    if-nez v0, :cond_a

    if-nez v3, :cond_a

    .line 2517
    :goto_2
    return v2

    :cond_3
    move v0, v2

    .line 2508
    goto/16 :goto_0

    .line 2509
    :cond_4
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "+82"

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_5
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingAutoDialEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_6

    move v3, v2

    goto :goto_1

    :cond_6
    move v3, v2

    :goto_3
    array-length v6, v5

    if-ge v3, v6, :cond_8

    aget-object v6, v5, v3

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_7

    move v3, v2

    goto :goto_1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    move v3, v1

    goto :goto_1

    :cond_9
    move v3, v1

    goto :goto_1

    :cond_a
    move v2, v1

    .line 2517
    goto :goto_2
.end method

.method public static isAvailablePSVT()Z
    .locals 1

    .prologue
    .line 2272
    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2273
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isServiceRegistered(I)Z

    move-result v0

    .line 2275
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAvailableVoLTE()Z
    .locals 1

    .prologue
    .line 2265
    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2266
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isServiceRegistered(I)Z

    move-result v0

    .line 2268
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCSDomain(Lcom/android/server/telecom/Call;)Z
    .locals 3

    .prologue
    .line 648
    const/4 v0, 0x1

    .line 650
    if-eqz p0, :cond_0

    .line 651
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    .line 652
    if-eqz v1, :cond_0

    .line 653
    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 654
    const/4 v0, 0x0

    .line 658
    :cond_0
    return v0
.end method

.method public static isCSVideoCall(Landroid/os/Bundle;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 603
    const/4 v1, 0x0

    .line 605
    if-eqz p0, :cond_0

    .line 606
    invoke-static {p0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    .line 607
    if-eqz v2, :cond_0

    .line 608
    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 614
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isCSVideoCall(Lcom/android/server/telecom/Call;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 588
    const/4 v1, 0x0

    .line 590
    if-eqz p0, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    .line 592
    if-eqz v2, :cond_0

    .line 593
    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 599
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isCSVoiceCall(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 440
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voicecall_type"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 441
    if-ne v2, v0, :cond_0

    .line 442
    const-string v2, "TelecomUtils"

    const-string v3, "VOICECALL_TYPE = isCSVoiceCall  : "

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isCdmaCallIncomingBarringOn(Lcom/android/server/telecom/Call;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 1263
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1264
    :try_start_0
    const-string v2, "com.android.phone"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1272
    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v2

    if-ne v2, v4, :cond_0

    if-eqz v1, :cond_0

    .line 1275
    const-string v2, "cb_incoming_key"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1276
    const-string v2, "cb_incoming_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1277
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isCdmaCallIncomingBarringOn : cbIncomingKey = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1278
    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1280
    :cond_0
    :goto_0
    return v0

    .line 1269
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isCdmaCallOutgoingBarringOn(Lcom/android/server/telecom/Call;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 1285
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1286
    :try_start_0
    const-string v2, "com.android.phone"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1294
    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v2

    if-ne v2, v4, :cond_0

    if-eqz v1, :cond_0

    .line 1297
    const-string v2, "cb_outgoing_key"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1298
    const-string v2, "cb_outgoing_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1299
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isCdmaCallIncomingBarringOn : cbOutgoingKey = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1300
    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1302
    :cond_0
    :goto_0
    return v0

    .line 1291
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isCoverClosed(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2601
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 2603
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v3

    .line 2605
    if-nez v3, :cond_0

    .line 2606
    const-string v0, "TelecomUtils"

    const-string v3, "isCoverClosed : coverState is null"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2622
    :goto_0
    return v1

    .line 2610
    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 2616
    :goto_1
    iget v3, v3, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    if-nez v3, :cond_2

    .line 2617
    const-string v0, "TelecomUtils"

    const-string v3, "isCoverClosed : TYPE_FLIP_COVER "

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2613
    goto :goto_1

    .line 2621
    :cond_2
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isCoverClosed "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v0

    .line 2622
    goto :goto_0
.end method

.method private static isDeviceOnLTE()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2766
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2767
    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2768
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 2769
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isDeviceOnLTE() type = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2771
    const/16 v3, 0xd

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 2774
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public static isDriveLinkEnable(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1532
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "car_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1534
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[DRIVELINK]checkDriveLink flagDriveLink : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1535
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[DRIVELINK]checkDriveLink isRunningProcess : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "com.sec.android.automotive.drivelink"

    invoke-static {p0, v5}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRunningProcess(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1536
    if-ne v2, v0, :cond_0

    const-string v2, "com.sec.android.automotive.drivelink"

    invoke-static {p0, v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRunningProcess(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1539
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isDriveLinkModeOn(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1601
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "drivelink_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1604
    :goto_0
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isDriveLinkModeOn = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1606
    return v0

    :cond_0
    move v0, v1

    .line 1601
    goto :goto_0
.end method

.method public static isDrivingModeOn(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1589
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_incoming_call_notification"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1596
    :goto_0
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isDrivingModeOn : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1597
    return v0

    :cond_0
    move v0, v1

    .line 1589
    goto :goto_0
.end method

.method private static isEmergnecyCall(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 510
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 511
    const/4 v0, 0x0

    .line 512
    if-eqz p0, :cond_0

    .line 513
    invoke-static {p0, v1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 514
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 517
    :cond_0
    return v0
.end method

.method private static isEpdgCall(Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 662
    const/4 v0, 0x0

    .line 663
    if-eqz p0, :cond_0

    .line 664
    invoke-static {p0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    .line 665
    if-eqz v1, :cond_0

    .line 666
    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getEpdgCall()Z

    move-result v0

    .line 669
    :cond_0
    return v0
.end method

.method public static isIncomingCallAnswered()Z
    .locals 1

    .prologue
    .line 3567
    sget-boolean v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsIncomingCallAnswered:Z

    return v0
.end method

.method public static isIntIncomingCallVoiceNoti()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2542
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    new-array v1, v3, [I

    const/4 v5, 0x4

    aput v5, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 2543
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getCallerInfo()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2544
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getCallerInfo()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v1, v0

    .line 2549
    :goto_0
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "intcall_voice_noti"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2550
    const-string v5, "TelecomUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " IntIncomingCallVoiceNoti checkSetting : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2552
    if-lez v0, :cond_3

    .line 2553
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    const-string v5, "phone"

    invoke-virtual {v0, v5}, Lcom/android/server/telecom/TelecomApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_0

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v0, "TelecomUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " Check prefix of incoming call number : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_4

    const-string v0, "00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "+"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const-string v0, "450"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    move v0, v3

    .line 2557
    :goto_2
    return v0

    .line 2546
    :cond_2
    const-string v0, "TelecomUtils"

    const-string v1, " call == null "

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v5}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    goto/16 :goto_0

    :cond_3
    move v0, v4

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_1
.end method

.method public static isIntent_PSVT(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2925
    const-string v1, "common_vt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2926
    if-eqz p0, :cond_0

    const-string v1, "videocall"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2927
    const-string v1, "videocall"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2930
    :cond_0
    return v0
.end method

.method public static isModifyReceiveState(Lcom/android/server/telecom/Call;)Z
    .locals 3

    .prologue
    .line 549
    const/4 v0, 0x0

    .line 551
    if-eqz p0, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    .line 553
    if-eqz v1, :cond_0

    .line 554
    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 555
    const/4 v0, 0x1

    .line 559
    :cond_0
    return v0
.end method

.method private static isNoSim()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 864
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/TelecomApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 866
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNumberExists(I)Z
    .locals 1

    .prologue
    .line 2897
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOneTouchReportEnabled(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 2444
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2446
    :try_start_0
    const-string v1, "go.police.report"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2448
    const-string v1, "com.android.vending"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2449
    const-string v0, "TelecomUtils"

    const-string v1, "isOneTouchReportEnabled package is not installed.."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2484
    :goto_0
    return v6

    .line 2452
    :catch_0
    move-exception v0

    .line 2453
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isOneTouchReportEnabled package is not installed / "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2459
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2462
    if-eqz v0, :cond_5

    .line 2463
    const-string v1, "content://go.police.provider.report"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2465
    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2466
    const-string v0, "customer_agreement"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2468
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2469
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2470
    if-ne v7, v0, :cond_1

    move v6, v7

    .line 2472
    :cond_1
    const-string v1, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isOneTouchReportEnabled customerAgreementValue = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move v0, v6

    .line 2478
    if-eqz v2, :cond_3

    .line 2479
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move v6, v0

    .line 2484
    goto :goto_0

    .line 2475
    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v6

    .line 2476
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2478
    if-eqz v2, :cond_3

    .line 2479
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2478
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    .line 2479
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    move v0, v6

    goto :goto_1
.end method

.method public static isPSBarring()Z
    .locals 1

    .prologue
    .line 2662
    sget-boolean v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsPSBarring:Z

    return v0
.end method

.method public static isPSVideoCall(Lcom/android/server/telecom/Call;)Z
    .locals 4

    .prologue
    .line 618
    const/4 v0, 0x0

    .line 620
    if-eqz p0, :cond_0

    .line 621
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    .line 622
    if-eqz v1, :cond_0

    .line 623
    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 625
    const/4 v0, 0x1

    .line 629
    :cond_0
    return v0
.end method

.method public static isPSVoiceCall(Lcom/android/server/telecom/Call;)Z
    .locals 3

    .prologue
    .line 633
    const/4 v0, 0x0

    .line 635
    if-eqz p0, :cond_0

    .line 636
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    .line 637
    if-eqz v1, :cond_0

    .line 638
    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 640
    const/4 v0, 0x1

    .line 644
    :cond_0
    return v0
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3576
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3578
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3582
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 3580
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isPlayingWaitingToneByNetwork()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 3301
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3304
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 3305
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    .line 3306
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    move v3, v4

    .line 3307
    goto :goto_0

    .line 3308
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v6, 0x4

    if-ne v0, v6, :cond_3

    move v0, v4

    :goto_1
    move v1, v0

    .line 3312
    goto :goto_0

    .line 3313
    :cond_1
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 3315
    :goto_2
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isPlayingWaitingToneByNetwork : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3316
    return v4

    :cond_2
    move v4, v2

    .line 3313
    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v4, v2

    goto :goto_2
.end method

.method public static isReadOutNotificatonOn(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1504
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 1505
    if-eqz v2, :cond_0

    .line 1506
    const-string v0, "TelecomUtils"

    const-string v2, "activeCall is not null do not play tts"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1514
    :goto_0
    return v1

    .line 1509
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_incoming_call_notification"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 1513
    :goto_1
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isReadOutNotificatonOn : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v0

    .line 1514
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1509
    goto :goto_1
.end method

.method public static isRoamingArea()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2368
    const-string v0, "ril.currentplmn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2371
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Lcom/android/server/telecom/TelecomApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string v4, "357858010034783"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "000000000000000"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "004400152020002"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const-string v0, "TelecomUtils"

    const-string v4, "International Mobile Equipment Identity is initial state"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    :cond_1
    move v0, v2

    .line 2386
    :cond_2
    :goto_1
    return v0

    :cond_3
    move v0, v2

    .line 2371
    goto :goto_0

    .line 2375
    :cond_4
    const-string v0, "oversea"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "gsm.sim.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "READY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    if-eqz v0, :cond_6

    move v0, v1

    .line 2377
    :goto_3
    if-nez v0, :cond_2

    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2378
    const-string v3, "ril.rejectedPlmn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2379
    const-string v4, "TelecomUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rejected PLMN = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2380
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2381
    const-string v4, "450"

    const/4 v5, 0x3

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/server/telecom/operator/OperatorUtils;->isLGTSIM()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 2382
    goto :goto_1

    :cond_5
    move v0, v2

    .line 2375
    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3
.end method

.method public static isRoamingAutoDialEnabled()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2360
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v2

    .line 2361
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getRoamingAutoDialSetting()I

    move-result v3

    .line 2362
    const-string v4, "TelecomUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isRoamingAutoDialEnabled: isRoaming = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", RAD option = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2363
    if-eqz v2, :cond_0

    if-eq v3, v0, :cond_0

    .line 2364
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2363
    goto :goto_0
.end method

.method private static isRunningProcess(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 1518
    const/4 v1, 0x0

    .line 1519
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1520
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 1522
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1523
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1524
    const/4 v0, 0x1

    .line 1528
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isScreenOn(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 1246
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1247
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    return v0
.end method

.method private static isServiceRegistered(I)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2280
    const-string v0, "enabled"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2282
    const/4 v2, 0x0

    .line 2284
    const/4 v0, 0x7

    :try_start_0
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2290
    :goto_0
    if-eqz v0, :cond_1

    .line 2291
    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getFeatureMask()I

    move-result v0

    .line 2293
    :goto_1
    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    .line 2294
    const/4 v0, 0x1

    .line 2296
    :goto_2
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isServiceRegistered:isServiceRegistered :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2297
    return v0

    .line 2286
    :catch_0
    move-exception v0

    .line 2287
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isServiceRegistered:RuntimeException "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static isSingTelSIM()Z
    .locals 3

    .prologue
    .line 3500
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3501
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gsm.sim.operator.numeric ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->log(Ljava/lang/String;)V

    .line 3502
    const-string v1, "52501"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "52502"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3503
    :cond_0
    const/4 v0, 0x1

    .line 3505
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSplitFromConference(Lcom/android/server/telecom/Call;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 563
    const/4 v1, 0x0

    .line 564
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getCallCapabilities()I

    move-result v2

    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    .line 569
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isSupportUsimMobiltyforKOR$14d1abca()Z
    .locals 1

    .prologue
    .line 3026
    const/4 v0, 0x1

    return v0
.end method

.method private static isValidPhoneId(I)I
    .locals 1

    .prologue
    .line 475
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    .line 476
    if-nez v0, :cond_0

    .line 477
    const/4 p0, 0x0

    .line 478
    :cond_0
    return p0
.end method

.method public static isVideoCall(Landroid/os/Bundle;)Z
    .locals 3

    .prologue
    .line 573
    const/4 v0, 0x0

    .line 575
    if-eqz p0, :cond_0

    .line 576
    invoke-static {p0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    .line 577
    if-eqz v1, :cond_0

    .line 578
    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 579
    const/4 v0, 0x1

    .line 583
    :cond_0
    return v0
.end method

.method public static isVideoCall(Lcom/android/server/telecom/Call;)Z
    .locals 3

    .prologue
    .line 521
    const/4 v0, 0x0

    .line 523
    if-eqz p0, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    .line 525
    if-eqz v1, :cond_0

    .line 526
    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 527
    const/4 v0, 0x1

    .line 531
    :cond_0
    return v0
.end method

.method public static isVoIPActivated()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2936
    :try_start_0
    const-string v0, "voip"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .line 2937
    if-eqz v0, :cond_0

    .line 2938
    invoke-interface {v0}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    .line 2940
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isVoIPActivated - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->log(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2944
    :goto_1
    return v0

    .line 2941
    :catch_0
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 2942
    :goto_2
    :try_start_2
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isVoIPActivated - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/server/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2944
    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 2941
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isVoIPRingOrDialing()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2951
    :try_start_0
    const-string v0, "voip"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .line 2952
    if-eqz v0, :cond_0

    .line 2953
    invoke-interface {v0}, Landroid/os/IVoIPInterface;->isVoIPRingOrDialing()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    .line 2955
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isVoIPRingOrDialing - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->log(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2959
    :goto_1
    return v0

    .line 2956
    :catch_0
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 2957
    :goto_2
    :try_start_2
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isVoIPRingOrDialing - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/server/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2959
    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 2956
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isVoIPRingOrOffhook()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2966
    :try_start_0
    const-string v2, "voip"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 2967
    if-eqz v2, :cond_1

    .line 2968
    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPRingOrDialing()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 2970
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isVoIPRingOrOffhook - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2974
    :goto_0
    return v0

    .line 2971
    :catch_0
    move-exception v1

    .line 2972
    :try_start_1
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isVoIPRingOrOffhook - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/android/server/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2974
    :catchall_0
    move-exception v1

    goto :goto_0
.end method

.method public static isVoiceControlOn(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1496
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "voice_input_control_incomming_calls"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1498
    :goto_0
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isVoiceControlOnForIncomingCall = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1500
    return v0

    :cond_0
    move v0, v1

    .line 1496
    goto :goto_0
.end method

.method private static isVoiceRecoderBlockCall()Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 2164
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2166
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "com.sec.android.app.voicenote"

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 2167
    const-string v4, "Interview_RejectCall"

    const/4 v5, 0x5

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2168
    const-string v4, "Enable_Reject_Call"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 2169
    const-string v5, "Expired_Time"

    const-wide/16 v6, 0x0

    invoke-interface {v1, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 2171
    if-eqz v4, :cond_0

    cmp-long v1, v2, v6

    if-gez v1, :cond_0

    .line 2172
    const-string v1, "TelecomUtils"

    const-string v2, "Voice Recoder Block Call!!!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2173
    const/4 v0, 0x1

    .line 2178
    :cond_0
    :goto_0
    return v0

    .line 2175
    :catch_0
    move-exception v1

    .line 2176
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static isWFCRegistered()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3561
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/TelecomApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.oem.smartwifisupport.vowifi_pref_state"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 3562
    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static launchDriveLinkDialogActivity(Landroid/content/Context;Lcom/android/server/telecom/Call;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const v6, 0x7f080009

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1646
    const-string v0, "TelecomUtils"

    const-string v3, "launchDriveLinkDialogActivity"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1648
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCallerInfo()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 1653
    if-eqz v0, :cond_8

    .line 1654
    iget-object v4, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1656
    const-string v3, "ui_for_kor"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1657
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v3

    .line 1659
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 1661
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 1674
    :goto_0
    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1676
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1677
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move v0, v1

    move v1, v2

    .line 1684
    :goto_1
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/server/telecom/secutils/DriveLinkDialogActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1685
    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1686
    const-string v6, "name_number_extra"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1687
    const-string v3, "number_saved_extra"

    invoke-virtual {v5, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1688
    const-string v1, "private_num"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1689
    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1691
    if-nez v0, :cond_1

    .line 1692
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "drivelink_rejectmessage_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1693
    if-lez v0, :cond_6

    .line 1694
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "drivelink_rejectmessage_body"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1695
    invoke-static {p0, v4, v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->sendSMSAsBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    :cond_1
    :goto_2
    return-void

    .line 1663
    :cond_2
    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    .line 1664
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 1665
    goto :goto_0

    .line 1667
    :cond_3
    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move v0, v2

    .line 1669
    goto :goto_0

    .line 1670
    :cond_4
    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move v0, v2

    goto :goto_0

    :cond_5
    move-object v3, v4

    .line 1680
    goto :goto_1

    .line 1697
    :cond_6
    const v0, 0x7f08007a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v4, v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->sendSMSAsBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_1

    :cond_8
    move v0, v2

    move-object v3, v4

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 3492
    const-string v0, "TelecomUtils"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3493
    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3496
    const-string v0, "TelecomUtils"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3497
    return-void
.end method

.method public static makeConferenceSecCallExtra(Ljava/lang/String;Lcom/android/server/telecom/Call;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 273
    invoke-static {p2}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    .line 274
    const/4 v0, 0x0

    .line 276
    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getTelecomCallId()Ljava/lang/String;

    move-result-object v0

    .line 280
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    .line 285
    if-eqz v2, :cond_3

    .line 286
    new-instance v1, Lcom/android/services/telephony/common/SecCallExtra;

    invoke-direct {v1, v2}, Lcom/android/services/telephony/common/SecCallExtra;-><init>(Lcom/android/services/telephony/common/SecCallExtra;)V

    .line 295
    :cond_1
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setTelecomCallId(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v1, p0}, Lcom/android/services/telephony/common/SecCallExtra;->setConnectionCallId(Ljava/lang/String;)V

    .line 298
    const-string v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    const-string v0, "TelecomUtils"

    const-string v3, "setLineCtrl to show call time title for Conference"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setLineCtrl(Z)V

    .line 303
    :cond_2
    const-string v0, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "makeConferenceSecCallExtra : child = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    const-string v0, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "makeConferenceSecCallExtra : conf = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->createSecCallExtraBundle(Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 288
    :cond_3
    new-instance v1, Lcom/android/services/telephony/common/SecCallExtra;

    invoke-direct {v1}, Lcom/android/services/telephony/common/SecCallExtra;-><init>()V

    .line 289
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 290
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "if childSecCallExtra = null, we need set subId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/telecom/secutils/TelecomUtils;->getAccoutSubId(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->getAccoutSubId(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/android/services/telephony/common/SecCallExtra;->setSubId(J)V

    goto/16 :goto_0
.end method

.method public static makeIpCallNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 3450
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v2

    .line 3451
    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v2

    .line 3453
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3454
    const/4 v0, 0x1

    if-ne v2, v0, :cond_3

    .line 3455
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "IP_CALL_NUMBER_SIM2"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3462
    :goto_0
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "makeIpCallNum() : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3464
    if-eqz v0, :cond_0

    const-string v2, "AUTO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3465
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "operatorNumeric : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->OTHERS:Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    :goto_2
    sget-object v2, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->CMCC:Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v0, "17951"

    .line 3468
    :cond_1
    :goto_3
    const-string v2, "P"

    const-string v3, ","

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 3469
    const-string v3, "+86"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 3470
    const-string v3, "+86"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 3474
    :cond_2
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3475
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mIpCallNumber = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " numberIpCall = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3476
    return-object v2

    .line 3457
    :cond_3
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "IP_CALL_NUMBER"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3460
    :cond_4
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "IP_CALL_NUMBER"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 3465
    goto/16 :goto_1

    :pswitch_1
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->CMCC:Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    goto :goto_2

    :pswitch_2
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->CU:Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    goto :goto_2

    :pswitch_3
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->CTC:Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    goto :goto_2

    :cond_6
    sget-object v2, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->CU:Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->CTC:Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/secutils/TelecomUtils$NetworkOperator;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->phoneIsCdma()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "17901"

    goto/16 :goto_3

    :cond_7
    const-string v0, "17911"

    goto/16 :goto_3

    :cond_8
    const-string v0, "CHM"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "17951"

    goto/16 :goto_3

    :cond_9
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->phoneIsCdma()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "17901"

    goto/16 :goto_3

    :cond_a
    const-string v0, "17911"

    goto/16 :goto_3

    :cond_b
    const-string v0, "CHU"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_c
    const-string v0, "17911"

    goto/16 :goto_3

    .line 3471
    :cond_d
    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3472
    const-string v3, "+"

    const-string v4, "00"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 3465
    :pswitch_data_0
    .packed-switch 0xb3b0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static makeOutgoingSecCallExtra(Landroid/content/Context;Landroid/net/Uri;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 309
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 313
    const-string v3, "sip"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 419
    :goto_0
    return-object v0

    .line 318
    :cond_0
    const-string v0, "videocall"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 319
    const-string v0, "videocall"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    move v4, v0

    .line 321
    :goto_1
    if-eqz v4, :cond_5

    const-string v0, ""

    const-string v3, "support_emergency_number"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    :goto_2
    if-eqz p1, :cond_1b

    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "119"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isNoSim()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    const-string v5, "TelecomUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "shouldProcessAsEmergencyVT number : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v3, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_5

    move v0, v1

    .line 322
    :goto_4
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailableVoLTE()Z

    move-result v3

    if-eqz v3, :cond_1a

    move v3, v1

    :goto_5
    const-string v5, "TelecomUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "shouldProcessAsEmergencyVolte emergencyVolte : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5, v6, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    invoke-static {p0, p1}, Lcom/android/server/telecom/TelephonyUtil;->shouldProcessAsEmergency(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v0, :cond_6

    if-nez v3, :cond_6

    .line 325
    if-nez p3, :cond_1

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_1
    invoke-static {p3}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/services/telephony/common/SecCallExtra;

    invoke-direct {v0}, Lcom/android/services/telephony/common/SecCallExtra;-><init>()V

    :cond_2
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->setSecCallExtraSubID(Landroid/content/Intent;Lcom/android/services/telephony/common/SecCallExtra;)V

    :cond_3
    const-string v1, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setSecCallExtraForEmergencyCall : secCallExtra - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p3, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 321
    goto/16 :goto_3

    :cond_5
    move v0, v2

    goto :goto_4

    .line 328
    :cond_6
    invoke-static {p3}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v3

    .line 330
    if-nez v3, :cond_7

    .line 331
    new-instance v3, Lcom/android/services/telephony/common/SecCallExtra;

    invoke-direct {v3}, Lcom/android/services/telephony/common/SecCallExtra;-><init>()V

    .line 334
    :cond_7
    if-eqz v4, :cond_c

    .line 335
    invoke-static {p2}, Lcom/android/server/telecom/secutils/TelecomUtils;->isEmergnecyCall(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v0, :cond_c

    .line 336
    :cond_8
    invoke-virtual {v3, v10}, Lcom/android/services/telephony/common/SecCallExtra;->setType(I)V

    .line 337
    invoke-virtual {v3, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setDomain(I)V

    .line 338
    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "singapore_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 339
    const-string v0, "support_both_csps_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailablePSVT()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    invoke-static {p2, p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->shouldProcessAsCs(Landroid/content/Intent;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 341
    invoke-virtual {v3, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setDomain(I)V

    .line 342
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDeviceOnLTE()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 343
    invoke-virtual {v3, v10}, Lcom/android/services/telephony/common/SecCallExtra;->setVideoResolution(I)V

    .line 346
    :cond_a
    const-string v0, "volte_jpn_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 348
    invoke-virtual {v3, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setVideoResolution(I)V

    .line 352
    :cond_b
    const-string v0, "android.telecom.extra.START_CALL_WITH_SPEAKERPHONE"

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getInitialVTSpeakerState()Z

    move-result v4

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 353
    const-string v0, "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

    invoke-virtual {p2, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 354
    const-string v0, "TelecomUtils"

    const-string v4, "makeOutgoingSecCallExtra : outgoingVideoCall"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    :cond_c
    invoke-virtual {v3}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v0

    if-nez v0, :cond_d

    .line 359
    invoke-static {p2, p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->shouldProcessAsCs(Landroid/content/Intent;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 360
    invoke-virtual {v3, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setDomain(I)V

    .line 373
    :cond_d
    :goto_6
    const-string v0, "roaming_auto_dial"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 374
    const-string v0, "extra_rad_convert_number"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 375
    invoke-virtual {v3, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setRadConvertNumber(Z)V

    .line 376
    const-string v0, "extra_rad_original_number"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-virtual {v3, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setRadOriginalNumber(Ljava/lang/String;)V

    .line 379
    :cond_e
    const-string v0, "ip_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 380
    const-string v0, "ipcall"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 381
    invoke-virtual {v3, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setIPCall(Z)V

    .line 384
    :cond_f
    const-string v0, "ims_call_message"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 385
    const-string v0, "callmessage"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_10

    .line 387
    invoke-virtual {v3, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setOutgoingCallMessage(Ljava/lang/String;)V

    .line 390
    :cond_10
    const-string v0, "ims_voice_conference"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "video_conference"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 392
    :cond_11
    const-string v0, "IS_CONF_CALL"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 393
    :goto_7
    invoke-virtual {v3, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceCall(B)V

    .line 394
    invoke-virtual {v3, v2}, Lcom/android/services/telephony/common/SecCallExtra;->setReceivedCall(B)V

    .line 397
    :cond_12
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 398
    invoke-static {p2, v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->setSecCallExtraSubID(Landroid/content/Intent;Lcom/android/services/telephony/common/SecCallExtra;)V

    .line 401
    :cond_13
    const-string v0, "assisted_dialing_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 402
    invoke-static {v3}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->setAssisted(Lcom/android/services/telephony/common/SecCallExtra;)V

    .line 406
    :cond_14
    :try_start_0
    const-string v0, "touchPoint"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_19

    instance-of v1, v0, Landroid/graphics/Point;

    if-eqz v1, :cond_19

    .line 408
    check-cast v0, Landroid/graphics/Point;

    .line 409
    const-string v1, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "touchPoint: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setTouchPoint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_8
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "makeOutgoingSecCallExtra : secCallExtra - "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    invoke-static {p3, v3}, Lcom/android/services/telephony/common/SecCallExtra;->setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_0

    .line 361
    :cond_15
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailableVoLTE()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 362
    const-string v0, "singapore_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSVoiceCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 363
    const-string v0, "TelecomUtils"

    const-string v4, "keep default domain call (Domain.CS)"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 365
    :cond_16
    invoke-virtual {v3, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setDomain(I)V

    goto/16 :goto_6

    .line 367
    :cond_17
    const-string v0, "single_lte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/android/server/telecom/operator/OperatorUtils;->isLGTSIM()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 369
    invoke-virtual {v3, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setDomain(I)V

    goto/16 :goto_6

    :cond_18
    move v1, v2

    .line 392
    goto/16 :goto_7

    .line 412
    :cond_19
    :try_start_1
    const-string v0, "TelecomUtils"

    const-string v1, "can not get touch point"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    .line 414
    :catch_0
    move-exception v0

    .line 415
    const-string v1, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "can not get touch point"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v4}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1a
    move v3, v2

    goto/16 :goto_5

    :cond_1b
    move v0, v2

    goto/16 :goto_3

    :cond_1c
    move-object v3, v0

    goto/16 :goto_2

    :cond_1d
    move-object v3, v0

    move v0, v2

    goto/16 :goto_3

    :cond_1e
    move v4, v2

    goto/16 :goto_1
.end method

.method public static makeSecCall(Lcom/android/server/telecom/Call;Landroid/os/Bundle;)Lcom/android/server/telecom/Call;
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 2684
    invoke-static {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    .line 2685
    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 2686
    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2687
    invoke-virtual {p0, v1}, Lcom/android/server/telecom/Call;->setVideoState(I)V

    .line 2688
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getInitialVTSpeakerState()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->setStartWithSpeakerphoneOn(Z)V

    .line 2692
    :cond_0
    return-object p0
.end method

.method public static makeSecCall(Lcom/android/server/telecom/Call;Lcom/android/services/telephony/common/SecCallExtra;)Lcom/android/server/telecom/Call;
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 2698
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 2699
    invoke-virtual {p1}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 2700
    invoke-virtual {p0, v1}, Lcom/android/server/telecom/Call;->setVideoState(I)V

    .line 2706
    :cond_0
    :goto_0
    return-object p0

    .line 2702
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->setVideoState(I)V

    goto :goto_0
.end method

.method public static needPlaySecCallEndTone(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1929
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "call_end_tone"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1931
    if-gtz v2, :cond_1

    .line 1933
    const-string v1, "TelecomUtils"

    const-string v2, "call disconnect tone is unchecked"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1951
    :cond_0
    :goto_0
    return v0

    .line 1937
    :cond_1
    sget-boolean v2, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsPSBarring:Z

    if-nez v2, :cond_0

    .line 1941
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    .line 1942
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/server/telecom/CallAudioManager;->isBluetoothAudioOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1943
    const-string v1, "TelecomUtils"

    const-string v2, "- BT Audio on: do not play end tone"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1947
    :cond_2
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1951
    goto :goto_0
.end method

.method public static needToPlayEndToneForIMS(Lcom/android/server/telecom/Call;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1977
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 1988
    :goto_0
    return v0

    .line 1980
    :cond_1
    const-string v0, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "call.getDisconnectCause() = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1981
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v3

    const-string v0, "0"

    const-string v4, "TelecomUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "reason = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_2

    const-string v4, "\\, "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-le v5, v1, :cond_2

    const-string v5, "IMS_ERROR"

    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->getTelephonyDisconnectCause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v0, v4, v2

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1982
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sip_error = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1984
    sparse-switch v0, :sswitch_data_0

    move v0, v2

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 1987
    goto :goto_0

    .line 1984
    :sswitch_data_0
    .sparse-switch
        0x44d -> :sswitch_0
        0x579 -> :sswitch_0
    .end sparse-switch
.end method

.method public static notVibrateDuringVideoRecording(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2223
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isIncomingCallPopUPEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2224
    const-string v0, "TelecomUtils"

    const-string v3, "IncomingCall pop-up is currently disabled. not vibrate"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 2261
    :goto_0
    return v0

    .line 2228
    :cond_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isDriveLinkNaviMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2229
    const-string v0, "TelecomUtils"

    const-string v3, "isDriveLinkNaviMode not vibrate"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 2230
    goto :goto_0

    .line 2233
    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->enabledKidsModeCallApp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2234
    const-string v0, "TelecomUtils"

    const-string v3, "enabledKidsModeCallApp not vibrate"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 2235
    goto :goto_0

    .line 2238
    :cond_2
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2239
    const-string v0, "TelecomUtils"

    const-string v3, "IncomingCall pop-up is currently disabled in easy mode. not vibrate."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 2240
    goto :goto_0

    .line 2243
    :cond_3
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 2244
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2245
    const-string v0, "TelecomUtils"

    const-string v3, "isKeyguardLocked. not vibrate"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 2246
    goto :goto_0

    .line 2249
    :cond_4
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    .line 2250
    if-eqz v0, :cond_5

    .line 2251
    const-string v0, "TelecomUtils"

    const-string v3, "isVideoCalling. not vibrate"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 2252
    goto/16 :goto_0

    .line 2255
    :cond_5
    const-string v0, "disable_incoming_call_popup_during_camera"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "play_ring_during_video_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2257
    :cond_6
    const-string v0, "TelecomUtils"

    const-string v3, "PhoneFeature. not vibrate"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 2258
    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 2261
    goto/16 :goto_0
.end method

.method public static onSecMediaButton(I)Z
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1813
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v6

    .line 1814
    const-string v0, "support_easy_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1816
    :goto_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1819
    const-string v0, "TelecomUtils"

    const-string v3, "TPhone RelaxMode: Don\'t handleHeadsetHook"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1868
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 1814
    goto :goto_0

    .line 1823
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/telecom/CallsManager;->hasAnyCalls()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1824
    if-ne v1, p0, :cond_8

    .line 1825
    const-string v3, "feature_multisim_dsda"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1829
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getMultiSimDSDAForegoundPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getRingingCall(I)Lcom/android/server/telecom/Call;

    move-result-object v4

    .line 1830
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getMultiSimDSDAForegoundPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getActiveCall(I)Lcom/android/server/telecom/Call;

    move-result-object v3

    .line 1831
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getMultiSimDSDAForegoundPhoneId()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getHeldCall(I)Lcom/android/server/telecom/Call;

    move-result-object v5

    .line 1837
    :goto_2
    invoke-virtual {v6}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v7

    .line 1838
    if-eqz v4, :cond_6

    .line 1839
    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v2

    .line 1840
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    if-eq v2, v1, :cond_3

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v0

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v2

    if-eq v0, v2, :cond_4

    .line 1843
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->disconnect()V

    .line 1844
    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v0

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 1847
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getVideoState()I

    move-result v0

    invoke-virtual {v6, v4, v0}, Lcom/android/server/telecom/CallsManager;->answerCall(Lcom/android/server/telecom/Call;I)V

    goto :goto_1

    .line 1833
    :cond_5
    new-array v3, v1, [I

    aput v7, v3, v2

    invoke-virtual {v6, v3}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v4

    .line 1834
    new-array v3, v5, [I

    fill-array-data v3, :array_0

    invoke-virtual {v6, v3}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v3

    .line 1835
    new-array v5, v1, [I

    const/4 v7, 0x6

    aput v7, v5, v2

    invoke-virtual {v6, v5}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v5

    goto :goto_2

    .line 1850
    :cond_6
    if-eqz v3, :cond_7

    if-eqz v5, :cond_7

    .line 1852
    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->hold()V

    goto :goto_1

    .line 1854
    :cond_7
    if-eqz v7, :cond_9

    .line 1855
    invoke-virtual {v7}, Lcom/android/server/telecom/Call;->disconnect()V

    goto/16 :goto_1

    .line 1858
    :cond_8
    if-ne v5, p0, :cond_9

    .line 1859
    const-string v0, "TelecomUtils"

    const-string v3, "handleHeadsetHook: longpress -> hangup"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1860
    new-array v0, v7, [I

    fill-array-data v0, :array_1

    invoke-virtual {v6, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 1862
    if-eqz v0, :cond_9

    .line 1863
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->disconnect()V

    goto/16 :goto_1

    :cond_9
    move v1, v2

    .line 1868
    goto/16 :goto_1

    .line 1834
    :array_0
    .array-data 4
        0x3
        0x5
    .end array-data

    .line 1860
    :array_1
    .array-data 4
        0x4
        0x3
        0x5
        0x6
    .end array-data
.end method

.method public static phoneIsCdma()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 3404
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3405
    if-eqz v1, :cond_0

    .line 3406
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v2

    .line 3407
    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneTypeForSubscriber(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 3413
    :cond_0
    :goto_0
    return v0

    .line 3409
    :catch_0
    move-exception v1

    .line 3410
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "phone.getActivePhoneType() failed:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static playCallEndTone(Landroid/content/Context;Lcom/android/server/telecom/Call;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2003
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->needPlaySecCallEndTone(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2038
    :goto_0
    return v2

    .line 2009
    :cond_0
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 2017
    :goto_1
    sput-boolean v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mPlayingSecCallEndTone:Z

    .line 2018
    const-string v3, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "playCallEndTone mMediaType:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2019
    const v2, 0x7f060001

    new-instance v3, Lcom/android/server/telecom/secutils/TelecomUtils$3;

    invoke-direct {v3}, Lcom/android/server/telecom/secutils/TelecomUtils$3;-><init>()V

    new-instance v4, Lcom/android/server/telecom/secutils/TelecomUtils$4;

    invoke-direct {v4}, Lcom/android/server/telecom/secutils/TelecomUtils$4;-><init>()V

    invoke-static {p0, v2, v3, v0, v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->playMediaTone(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;ILandroid/media/MediaPlayer$OnErrorListener;)Landroid/media/MediaPlayer;

    move v2, v1

    .line 2038
    goto :goto_0

    :cond_1
    move v0, v2

    .line 2012
    goto :goto_1
.end method

.method public static playDisconnectToneAboutRingingCall(Lcom/android/server/telecom/InCallTonePlayer$Factory;Landroid/telecom/DisconnectCause;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2804
    const-string v0, "use_second_call_end_tone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2805
    const-string v0, "TelecomUtils"

    const-string v1, "playDisconnectToneAboutRingingCall..."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2806
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2807
    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 2808
    :cond_0
    const-string v0, "TelecomUtils"

    const-string v1, "- TONE_SECOND_CALL_END"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2809
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/InCallTonePlayer$Factory;->createPlayer(I)Lcom/android/server/telecom/InCallTonePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/InCallTonePlayer;->startTone()V

    .line 2813
    :cond_1
    return-void
.end method

.method private static playMediaTone(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;ILandroid/media/MediaPlayer$OnErrorListener;)Landroid/media/MediaPlayer;
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2043
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 2045
    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_5

    .line 2048
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 2049
    if-nez v7, :cond_0

    .line 2050
    :try_start_1
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    move-object v0, v6

    .line 2143
    :goto_1
    return-object v0

    .line 2137
    :catch_0
    move-exception v0

    .line 2138
    const-string v1, "TelecomUtils"

    const-string v2, "close failed:"

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2051
    :cond_0
    :try_start_2
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 2053
    if-nez p3, :cond_4

    .line 2054
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 2060
    :cond_1
    :goto_2
    const-string v0, "support_function_sound_tuning"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2061
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2062
    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    const-string v2, "situation=14;device=0"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const-string v3, "situation=14;device=0"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 2067
    const-string v1, "TelecomUtils"

    const-string v2, "playMediaTone->Call Connection Gain: "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "situation=14;device=0"

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2072
    :cond_2
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 2079
    if-nez p2, :cond_3

    .line 2080
    new-instance p2, Lcom/android/server/telecom/secutils/TelecomUtils$5;

    invoke-direct {p2}, Lcom/android/server/telecom/secutils/TelecomUtils$5;-><init>()V

    .line 2103
    :cond_3
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2106
    if-nez p4, :cond_6

    .line 2107
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/server/telecom/secutils/TelecomUtils$6;

    invoke-direct {v1}, Lcom/android/server/telecom/secutils/TelecomUtils$6;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 2120
    :goto_3
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 2121
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mediaPlayer:Landroid/media/MediaPlayer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2136
    :try_start_3
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 2137
    :catch_1
    move-exception v1

    .line 2138
    const-string v2, "TelecomUtils"

    const-string v3, "close failed:"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v1, v4, v9

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2055
    :cond_4
    if-ne p3, v8, :cond_1

    .line 2056
    :try_start_4
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_2

    .line 2122
    :catch_2
    move-exception v0

    move-object v1, v7

    .line 2123
    :goto_4
    :try_start_5
    const-string v2, "TelecomUtils"

    const-string v3, "create failed:"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2136
    :try_start_6
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :cond_5
    :goto_5
    move-object v0, v6

    .line 2143
    goto/16 :goto_1

    .line 2117
    :cond_6
    :try_start_7
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 2125
    :catch_3
    move-exception v0

    .line 2126
    :goto_6
    :try_start_8
    const-string v1, "TelecomUtils"

    const-string v2, "create failed:"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2136
    :try_start_9
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_5

    .line 2137
    :catch_4
    move-exception v0

    .line 2138
    const-string v1, "TelecomUtils"

    const-string v2, "close failed:"

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 2137
    :catch_5
    move-exception v0

    .line 2138
    const-string v1, "TelecomUtils"

    const-string v2, "close failed:"

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 2128
    :catch_6
    move-exception v0

    move-object v7, v6

    .line 2129
    :goto_7
    :try_start_a
    const-string v1, "TelecomUtils"

    const-string v2, "create failed:"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2136
    :try_start_b
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_5

    .line 2137
    :catch_7
    move-exception v0

    .line 2138
    const-string v1, "TelecomUtils"

    const-string v2, "close failed:"

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 2131
    :catch_8
    move-exception v0

    move-object v7, v6

    .line 2132
    :goto_8
    :try_start_c
    const-string v1, "TelecomUtils"

    const-string v2, "create failed:"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 2136
    :try_start_d
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    goto/16 :goto_5

    .line 2137
    :catch_9
    move-exception v0

    .line 2138
    const-string v1, "TelecomUtils"

    const-string v2, "close failed:"

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2135
    :catchall_0
    move-exception v0

    move-object v7, v6

    .line 2136
    :goto_9
    :try_start_e
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 2140
    :goto_a
    throw v0

    .line 2137
    :catch_a
    move-exception v1

    .line 2138
    const-string v2, "TelecomUtils"

    const-string v3, "close failed:"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v1, v4, v9

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    .line 2135
    :catchall_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_9

    .line 2131
    :catch_b
    move-exception v0

    goto :goto_8

    .line 2128
    :catch_c
    move-exception v0

    goto :goto_7

    .line 2125
    :catch_d
    move-exception v0

    move-object v7, v6

    goto/16 :goto_6

    .line 2122
    :catch_e
    move-exception v0

    move-object v1, v6

    goto/16 :goto_4
.end method

.method public static playingSecCallEndTone()Z
    .locals 1

    .prologue
    .line 1955
    sget-boolean v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mPlayingSecCallEndTone:Z

    return v0
.end method

.method public static rejectCallIfShouldBe(Lcom/android/server/telecom/Call;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1390
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    .line 1391
    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 1392
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v3

    .line 1396
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCdmaCallIncomingBarringOn(Lcom/android/server/telecom/Call;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1397
    const-string v2, "TelecomUtils"

    const-string v3, "Cdma incoming barring!: %s."

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    .line 1441
    :goto_0
    if-eqz v2, :cond_b

    .line 1442
    if-eqz p0, :cond_0

    .line 1443
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/Call;->setState(I)V

    .line 1444
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->reject$2598ce09()V

    .line 1448
    :cond_0
    :goto_1
    return v0

    .line 1399
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->hasAutoRejectBundleExtra(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1400
    const-string v2, "TelecomUtils"

    const-string v3, "Auto reject!: %s."

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    .line 1401
    goto :goto_0

    .line 1402
    :cond_2
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAccessControlOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1404
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getMissedCallNotifier()Lcom/android/server/telecom/MissedCallNotifier;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    move v2, v0

    goto :goto_0

    .line 1412
    :cond_3
    invoke-static {p0}, Lcom/android/server/telecom/LowBatteryManager;->supportLowBatteryManager(Lcom/android/server/telecom/Call;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/telecom/LowBatteryManager;->isLowBatt()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1414
    const-string v2, "TelecomUtils"

    const-string v3, "Reject Video Call on Low Battery!: %s."

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1415
    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/telecom/LowBatteryManager;->performBatteryLowProcess(Z)V

    .line 1417
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/TelecomApp;->getMissedCallNotifier()Lcom/android/server/telecom/MissedCallNotifier;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    move v2, v0

    goto :goto_0

    .line 1418
    :cond_4
    const-string v4, "vt_missed_noti_during_call"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v3, :cond_5

    if-nez v3, :cond_6

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1421
    :cond_5
    const-string v2, "TelecomUtils"

    const-string v3, "VT_MISSED_NOTI_DURING_CALL Reject incoming Call!: %s."

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1423
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/TelecomApp;->getMissedCallNotifier()Lcom/android/server/telecom/MissedCallNotifier;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    move v2, v0

    goto/16 :goto_0

    .line 1424
    :cond_6
    const-string v2, "voip_interworking"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVoIPRingOrDialing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1426
    const-string v2, "TelecomUtils"

    const-string v3, "rejecting incoming call: VOIP call is ringing or dialing"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1428
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/TelecomApp;->getMissedCallNotifier()Lcom/android/server/telecom/MissedCallNotifier;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    move v2, v0

    goto/16 :goto_0

    .line 1429
    :cond_7
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkVoiceRecorder()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1430
    const-string v2, "TelecomUtils"

    const-string v3, "during voice record"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1431
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVoiceRecoderBlockCall()Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v0

    .line 1432
    goto/16 :goto_0

    .line 1435
    :cond_8
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_9

    move v2, v0

    :goto_2
    if-nez v2, :cond_a

    move v2, v0

    :goto_3
    if-eqz v2, :cond_c

    .line 1436
    const-string v2, "TelecomUtils"

    const-string v3, "rejecting incoming call if the device isn\'t provisioned yet"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1438
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/TelecomApp;->getMissedCallNotifier()Lcom/android/server/telecom/MissedCallNotifier;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    move v2, v0

    goto/16 :goto_0

    :cond_9
    move v2, v1

    .line 1435
    goto :goto_2

    :cond_a
    move v2, v1

    goto :goto_3

    :cond_b
    move v0, v1

    .line 1448
    goto/16 :goto_1

    :cond_c
    move v2, v1

    goto/16 :goto_0
.end method

.method public static rejectCtcCdmaMultiInComingCall(Lcom/android/server/telecom/Call;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3546
    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 3548
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getPhoneId(Lcom/android/server/telecom/Call;)I

    move-result v2

    new-array v3, v0, [I

    const/4 v4, 0x4

    aput v4, v3, v1

    invoke-static {v2, v3}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getFirstCallWithState(I[I)Lcom/android/server/telecom/Call;

    move-result-object v2

    .line 3549
    const-string v3, "TelecomUtils"

    const-string v4, "reject the earliest call for CTC Cdma"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3550
    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->reject$2598ce09()V

    .line 3553
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getMissedCallNotifier()Lcom/android/server/telecom/MissedCallNotifier;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    .line 3556
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static removeVideoCallExtra(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 704
    if-eqz p0, :cond_0

    .line 705
    const-string v0, "videocall"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 706
    const-string v0, "android.telecom.extra.START_CALL_WITH_SPEAKERPHONE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 708
    :cond_0
    return-void
.end method

.method public static requestTPhoneRingtoneUri(Lcom/android/server/telecom/Call;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 3036
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3037
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->requestTPhoneRingtoneUri()Ljava/lang/String;

    move-result-object v0

    .line 3039
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static requestTPhoneStart(Lcom/android/server/telecom/Call;I)V
    .locals 1

    .prologue
    .line 3030
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3031
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->requestTPhoneStart(I)V

    .line 3033
    :cond_0
    return-void
.end method

.method public static selectAccountBySimSlotIDExtra(Landroid/content/Intent;)Landroid/telecom/PhoneAccountHandle;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 870
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 871
    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtils;->EXTRA_SIM_ID:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 872
    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtils;->EXTRA_SIM_ID:Ljava/lang/String;

    invoke-virtual {p0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 873
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "selectAccountBySimSlotIDExtra - simSlotID : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 874
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 876
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/TelecomApp;->getPhoneAccountRegistrar()Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getCallCapablePhoneAccounts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 878
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_1

    if-ne v1, v5, :cond_1

    .line 879
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 886
    :cond_0
    :goto_0
    return-object v0

    .line 880
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_0

    if-nez v1, :cond_0

    .line 881
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    goto :goto_0
.end method

.method public static sendAcceptIntentForRecorder(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 2147
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkVoiceRecorder()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2148
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 2149
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    .line 2150
    if-nez v0, :cond_0

    const-string v1, "enbale_voicerecording_popup_when_incoming"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    const-string v0, "vt_audio_processing_on_ap"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2152
    :cond_1
    const-string v0, "TelecomUtils"

    const-string v1, "send accept intent for voice recorder"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2153
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.voicerecorder.rec_save"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.voicenote.rec_save"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.media.fmradio.rec_save"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2158
    :cond_2
    return-void
.end method

.method public static sendRequestLastCall()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3084
    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3085
    const-string v0, "TelecomUtils"

    const-string v1, " LAST CALL"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3087
    const-string v0, "gsm.nitz.time"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3088
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 3089
    const-string v2, "gsm.nitz.time-elapsedtime"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3090
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 3091
    const-string v4, "ril.timezoneID"

    const-string v5, "GMT"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3092
    new-instance v5, Landroid/text/format/Time;

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 3093
    add-long/2addr v0, v2

    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 3095
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3096
    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3097
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3098
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3099
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3100
    iget v1, v5, Landroid/text/format/Time;->year:I

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3101
    iget v1, v5, Landroid/text/format/Time;->year:I

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3102
    iget v1, v5, Landroid/text/format/Time;->month:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3103
    iget v1, v5, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3104
    iget v1, v5, Landroid/text/format/Time;->hour:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3105
    iget v1, v5, Landroid/text/format/Time;->minute:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3106
    iget v1, v5, Landroid/text/format/Time;->second:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3109
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3110
    if-eqz v1, :cond_1

    .line 3111
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/ITelephony;->sendRequestRawToRIL([BLandroid/os/Message;)I

    .line 3112
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDisconnect time -"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3123
    :cond_0
    :goto_0
    return-void

    .line 3114
    :cond_1
    const-string v0, "TelecomUtils"

    const-string v1, "onDisconnect ITelephony service is null"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3117
    :catch_0
    move-exception v0

    const-string v0, "TelecomUtils"

    const-string v1, "onDisconnect ITelephony service remote exception"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3118
    :catch_1
    move-exception v0

    .line 3119
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static sendSMSAsBackground(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1703
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendSMSAsBackground... number : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1705
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/telecom/secutils/TelecomUtils$2;

    invoke-direct {v1, p2, p0, p1}, Lcom/android/server/telecom/secutils/TelecomUtils$2;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1720
    return-void
.end method

.method public static setAudioEffect(ZZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3638
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 3639
    if-eqz v0, :cond_0

    .line 3640
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3641
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setAudioEffect - enable = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", force = false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3642
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0, v4}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->setAudioEffect(ZZ)V

    .line 3645
    :cond_0
    return-void
.end method

.method public static setAudioParameters(Lcom/android/server/telecom/Call;Landroid/media/AudioManager;I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 764
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setAudioParameters : mode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 765
    packed-switch p2, :pswitch_data_0

    .line 806
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    .line 807
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 808
    const-string v1, "TelecomUtils"

    const-string v2, "isInCall alive "

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 830
    :goto_0
    return-void

    .line 768
    :pswitch_0
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVoiceCall(Lcom/android/server/telecom/Call;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 769
    const-string v1, "VoLTEstate=voice"

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 773
    :cond_0
    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getEpdgW2L()Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    .line 774
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->changeEPDGAudioPath(I)V

    .line 776
    :cond_2
    const-string v0, "realcall=on"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 770
    :cond_3
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    const-string v1, "VoLTEstate=video"

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_1

    .line 780
    :pswitch_1
    const-string v1, "psvt_audio_processing_on_ap"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 781
    const-string v0, "VoLTEstate=video"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 782
    :cond_4
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isEpdgCall(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 783
    const-string v1, "realcall=off"

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 784
    const-string v1, "VoLTEstate=off"

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 785
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 786
    const-string v1, "voipWifiCalling=on"

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 787
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->changeEPDGAudioPath(I)V

    goto :goto_0

    .line 789
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isWFCRegistered()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 790
    const-string v1, "TelecomUtils"

    const-string v2, "Set Audio Parameter to voipWifiCalling=on"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    const-string v1, "realcall=off"

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 793
    const-string v0, "voipWifiCalling=on"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 796
    :cond_6
    const-string v0, "voipWifiCalling=on"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 801
    :pswitch_2
    const-string v0, "realcall=on"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 812
    :cond_7
    const-string v1, "VoLTEstate"

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 813
    const-string v2, "TelecomUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VolteState = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 814
    const-string v2, "VoLTEstate=voice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "VoLTEstate=video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 815
    :cond_8
    const-string v1, "VoLTEstate=off"

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 817
    :cond_9
    const-string v1, "voipWifiCalling"

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 821
    const-string v2, "voipWifiCalling=on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_Sprint_Vowifi"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 822
    :cond_a
    const-string v1, "TelecomUtils"

    const-string v2, "Set Audio Parameter to voipWifiCalling=off"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 823
    const-string v0, "voipWifiCalling=off"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 827
    :cond_b
    const-string v0, "realcall=off"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 765
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setAudioparamWBAMR(I)V
    .locals 2

    .prologue
    .line 2756
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2757
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2758
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 2759
    const-string v1, "wb_amr=on"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2763
    :goto_0
    return-void

    .line 2761
    :cond_0
    const-string v1, "wb_amr=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 4

    .prologue
    .line 1779
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1781
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1782
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 1783
    iput-object p0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1784
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1786
    const-string v1, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setConfigurationLocale - previousLocale : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " locale : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1788
    return-object v0
.end method

.method public static setConnectionCallId(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2666
    invoke-static {p0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    .line 2667
    if-nez v0, :cond_0

    .line 2671
    :goto_0
    return-void

    .line 2670
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setConnectionCallId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setIMSPreRegState(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 3322
    const-string v0, "single_lte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3324
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setIMSPreRegState : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3326
    if-eqz p0, :cond_3

    .line 3327
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3328
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3329
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v0

    .line 3330
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isDeviceOnLTE()Z

    move-result v1

    .line 3332
    if-ne v0, v5, :cond_1

    .line 3333
    const-string v0, "ril.ims.pre_regstate"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3341
    :cond_0
    :goto_0
    return-void

    .line 3334
    :cond_1
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailableVoLTE()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 3335
    :cond_2
    const-string v0, "ril.ims.pre_regstate"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3338
    :cond_3
    const-string v0, "ril.ims.pre_regstate"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setIncomingCallAnswered(Z)V
    .locals 0

    .prologue
    .line 3571
    sput-boolean p0, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsIncomingCallAnswered:Z

    .line 3573
    return-void
.end method

.method public static setLastMoCallIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1224
    sput-object p0, Lcom/android/server/telecom/secutils/TelecomUtils;->sLastMoCallIntent:Landroid/content/Intent;

    .line 1225
    invoke-virtual {p0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->sLastMoCallCloneIntent:Landroid/content/Intent;

    .line 1226
    return-void
.end method

.method public static setPSBarring(Z)V
    .locals 0

    .prologue
    .line 2658
    sput-boolean p0, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsPSBarring:Z

    .line 2659
    return-void
.end method

.method public static setPreviousState(I)V
    .locals 0

    .prologue
    .line 3536
    sput p0, Lcom/android/server/telecom/secutils/TelecomUtils;->mState:I

    .line 3537
    return-void
.end method

.method public static setRouteSpeakerWithStartphoneOn(Lcom/android/server/telecom/Call;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3055
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getStartWithSpeakerphoneOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3056
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    .line 3057
    iget-object v1, v0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    .line 3058
    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v2

    iget v2, v2, Landroid/telecom/AudioState;->route:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/server/telecom/CallAudioManager;->isBluetoothAudioOn()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/telecom/CallAudioManager;->isWiredHeadsetPluggedIn()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3064
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/telecom/CallAudioManager;->mWasSpeakerOn:Z

    .line 3068
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/server/telecom/Call;->setStartWithSpeakerphoneOn(Z)V

    .line 3070
    :cond_2
    sput-boolean v4, Lcom/android/server/telecom/secutils/TelecomUtils;->mIsIncomingCallAnswered:Z

    .line 3071
    return-void

    .line 3066
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->setAudioRoute(I)V

    goto :goto_0
.end method

.method private static setSecCallExtraSubID(Landroid/content/Intent;Lcom/android/services/telephony/common/SecCallExtra;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 451
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v0

    .line 454
    :try_start_0
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->isValidPhoneId(I)I

    move-result v2

    .line 455
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v3

    .line 456
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v4

    .line 457
    const/4 v5, 0x0

    aget-wide v6, v3, v5

    invoke-static {v6, v7}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v5

    invoke-static {v5}, Lcom/android/server/telecom/secutils/TelecomUtils;->isValidPhoneId(I)I

    move-result v5

    .line 458
    const/4 v6, 0x0

    aget-wide v6, v4, v6

    invoke-static {v6, v7}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v6

    invoke-static {v6}, Lcom/android/server/telecom/secutils/TelecomUtils;->isValidPhoneId(I)I

    move-result v6

    .line 460
    const-string v7, "TelecomUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SubscriptionManager.getDefaultVoiceSubId() : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "SubscriptionManager.getPhoneId(subId): "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SubscriptionManager.getSubId(0):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-wide v2, v3, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SubscriptionManager.getSubId(1):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget-wide v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SubscriptionManager.getPhoneId(subId1[0]):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    const-string v0, "TelecomUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SubscriptionManager.getPhoneId(subId2[0]):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :goto_0
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getVoiceCallSubId(Landroid/content/Intent;)J

    move-result-wide v0

    .line 471
    invoke-virtual {p1, v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setSubId(J)V

    .line 473
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 467
    const-string v1, "TelecomUtils"

    const-string v2, "setSecCallExtraSubID: e - "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v10

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v11

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setTelecomCallId(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2674
    invoke-static {p0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    .line 2675
    if-nez v0, :cond_0

    .line 2679
    :goto_0
    return-void

    .line 2678
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->setTelecomCallId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setVoicetalkLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 1775
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getVoicetalkLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private static shouldProcessAsCs(Landroid/content/Intent;Landroid/net/Uri;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3155
    const/4 v0, 0x0

    .line 3156
    if-eqz p1, :cond_0

    .line 3157
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 3160
    :cond_0
    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "tmo_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    const-string v1, "*272"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3162
    const-string v1, "TelecomUtils"

    const-string v4, "shouldProcessAsCs : WPS Call"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    .line 3166
    :goto_0
    const-string v4, "cs_voice_call_outgoing"

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3167
    const-string v1, "TelecomUtils"

    const-string v4, "shouldProcessAsCs : forcely CS Call"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    .line 3171
    :cond_2
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v4

    if-ne v4, v3, :cond_5

    move v4, v3

    :goto_1
    if-eqz v4, :cond_3

    .line 3172
    const-string v1, "TelecomUtils"

    const-string v4, "shouldProcessAsCs : alreadyHaveCsCalls"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    .line 3176
    :cond_3
    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "single_lte"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "114"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3177
    const-string v0, "TelecomUtils"

    const-string v1, "shouldProcessAsCs : 114 for non single lte"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    .line 3181
    :cond_4
    const-string v0, "TelecomUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "shouldProcessAsCs : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v0, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3182
    return v1

    :cond_5
    move v4, v2

    .line 3171
    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_0
.end method

.method public static startCallFailDialogActivity(Landroid/telecom/DisconnectCause;)V
    .locals 10

    .prologue
    const v4, 0x7f080062

    const/4 v0, 0x1

    const v3, 0x7f080067

    const/4 v1, 0x0

    const v2, 0x7f08002e

    .line 890
    const-string v5, "TelecomUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "startCallFailDialogActivity(): errorDisconnectCause = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 892
    invoke-virtual {p0}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    move v5, v0

    :goto_0
    if-eqz v5, :cond_1

    .line 893
    const-string v0, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startCallFailDialogActivity(): shouldSkipCallFailDialog = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 955
    :cond_0
    :goto_1
    return-void

    :sswitch_0
    move v5, v1

    .line 892
    goto :goto_0

    .line 897
    :cond_1
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 898
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/android/server/telecom/ErrorDialogActivity;

    invoke-direct {v6, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 902
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getTelephonyDisconnectCause(Landroid/telecom/DisconnectCause;)I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    .line 936
    const/4 v0, -0x2

    invoke-virtual {p0}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/telecom/secutils/TelecomUtils;->getTelephonyDisconnectCause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "RESTRICT_CALL_FACTORY_MODE"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const v0, 0x7f080010

    .line 937
    :cond_2
    :goto_2
    const/4 v3, -0x2

    if-ne v0, v3, :cond_2b

    move v0, v1

    move v1, v2

    .line 945
    :goto_3
    if-ne v1, v2, :cond_2a

    if-nez v0, :cond_2a

    .line 946
    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    goto :goto_1

    .line 904
    :sswitch_1
    const v0, 0x7f08002b

    move v9, v1

    move v1, v0

    move v0, v9

    .line 905
    goto :goto_3

    .line 909
    :sswitch_2
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isNoSim()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 910
    const v0, 0x7f08002c

    .line 911
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "feature_att"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 913
    :cond_3
    const v0, 0x7f08002d

    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_3

    .line 920
    :sswitch_3
    const-string v1, "show_missing_voicemail"

    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move v1, v2

    .line 921
    goto :goto_3

    .line 923
    :sswitch_4
    const v0, 0x7f08002c

    .line 924
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "feature_att"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 926
    :cond_4
    const v0, 0x7f08002d

    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_3

    .line 930
    :sswitch_5
    const v0, 0x7f08002f

    move v9, v1

    move v1, v0

    move v0, v9

    .line 931
    goto :goto_3

    .line 933
    :sswitch_6
    const v0, 0x7f080038

    move v9, v1

    move v1, v0

    move v0, v9

    .line 934
    goto :goto_3

    .line 936
    :cond_5
    const-string v8, "ETC_CAUSE_REJECT"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v3, "ril.currentplmn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "domestic"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const v0, 0x7f080064

    goto/16 :goto_2

    :cond_6
    const-string v4, "oversea"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v0, 0x7f080069

    goto/16 :goto_2

    :cond_7
    const-string v8, "NOT_REGISTERED_NUMBER"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {}, Lcom/android/server/telecom/operator/OperatorUtils;->isSKTSIM()Z

    move-result v0

    if-nez v0, :cond_8

    const v0, 0x7f080056

    goto/16 :goto_2

    :cond_8
    const v0, 0x7f080057

    goto/16 :goto_2

    :cond_9
    const-string v8, "IMSI_UNKNOWN"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    goto/16 :goto_2

    :cond_a
    const v0, 0x7f08005f

    goto/16 :goto_2

    :cond_b
    const v0, 0x7f080058

    goto/16 :goto_2

    :cond_c
    const-string v8, "ILLEGAL_MS"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v3

    goto/16 :goto_2

    :cond_d
    const v0, 0x7f080060

    goto/16 :goto_2

    :cond_e
    const-string v0, "feature_kor_open"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x7f08006c

    goto/16 :goto_2

    :cond_f
    const v0, 0x7f08005d

    goto/16 :goto_2

    :cond_10
    const-string v8, "ILLEGAL_ME"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v3

    goto/16 :goto_2

    :cond_11
    const v0, 0x7f080061

    goto/16 :goto_2

    :cond_12
    const v0, 0x7f08005e

    goto/16 :goto_2

    :cond_13
    const-string v8, "LOCATION_REG_FAIL"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_14

    const v0, 0x7f080069

    goto/16 :goto_2

    :cond_14
    move v0, v4

    goto/16 :goto_2

    :cond_15
    const-string v0, "feature_kor_open"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const v0, 0x7f08006f

    goto/16 :goto_2

    :cond_16
    const v0, 0x7f080059

    goto/16 :goto_2

    :cond_17
    const-string v8, "LOCATION_REGSTERING"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_18

    const v0, 0x7f08006a

    goto/16 :goto_2

    :cond_18
    const v0, 0x7f080063

    goto/16 :goto_2

    :cond_19
    const-string v0, "feature_kor_open"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const v0, 0x7f08006e

    goto/16 :goto_2

    :cond_1a
    const v0, 0x7f08005a

    goto/16 :goto_2

    :cond_1b
    const-string v8, "FREQ_SEARCHING"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    const v0, 0x7f08005b

    goto/16 :goto_2

    :cond_1c
    const-string v8, "NETWORK_REG_FAIL"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_1d

    const v0, 0x7f080069

    goto/16 :goto_2

    :cond_1d
    move v0, v4

    goto/16 :goto_2

    :cond_1e
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSDomain(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-nez v0, :cond_1f

    const v0, 0x7f08005c

    goto/16 :goto_2

    :cond_1f
    const v0, 0x7f080059

    goto/16 :goto_2

    :cond_20
    const-string v8, "GPRS_SERVICE_NOT_ALLOWED"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    const-string v0, "ril.currentplmn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "domestic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "single_lte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const v0, 0x7f080065

    goto/16 :goto_2

    :cond_21
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_22

    const v0, 0x7f080068

    goto/16 :goto_2

    :cond_22
    const v0, 0x7f080054

    goto/16 :goto_2

    :cond_23
    const-string v3, "feature_kor_open"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v0, 0x7f08006d

    goto/16 :goto_2

    :cond_24
    const-string v8, "GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_25

    const v0, 0x7f080068

    goto/16 :goto_2

    :cond_25
    const v0, 0x7f080055

    goto/16 :goto_2

    :cond_26
    const-string v8, "GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    const-string v7, "feature_lgt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_27

    move v0, v3

    goto/16 :goto_2

    :cond_27
    move v0, v4

    goto/16 :goto_2

    :cond_28
    const-string v3, "IMS_NOT_REGISTERED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, -0x1

    goto/16 :goto_2

    :cond_29
    const-string v3, "RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v0, 0x7f080094

    goto/16 :goto_2

    .line 950
    :cond_2a
    const/high16 v0, 0x10800000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 951
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 952
    const-string v0, "error_message_id"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 953
    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_2b
    move v9, v1

    move v1, v0

    move v0, v9

    goto/16 :goto_3

    :cond_2c
    move v0, v1

    move v1, v2

    goto/16 :goto_3

    .line 892
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch

    .line 902
    :sswitch_data_1
    .sparse-switch
        0x11 -> :sswitch_1
        0x12 -> :sswitch_5
        0x25 -> :sswitch_4
        0x28 -> :sswitch_3
        0x2b -> :sswitch_2
        0xc8 -> :sswitch_6
    .end sparse-switch
.end method

.method public static startCallVibration(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1872
    const-string v2, "call_answer_vib"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "call_end_vib"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1876
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1882
    if-gtz v2, :cond_2

    .line 1889
    :goto_0
    return v0

    .line 1878
    :cond_1
    const-string v1, "TelecomUtils"

    const-string v2, "startCallVibration : There are no machted type "

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1885
    :cond_2
    if-ne v2, v1, :cond_3

    .line 1886
    new-instance v0, Landroid/os/SystemVibrator;

    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    .line 1887
    const/16 v2, 0xa

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/SystemVibrator;->vibrateImmVibe(II)V

    :cond_3
    move v0, v1

    .line 1889
    goto :goto_0
.end method

.method public static startDtmfTone(Lcom/android/server/telecom/Call;C)V
    .locals 1

    .prologue
    .line 3292
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/telecom/CallsManager;->playDtmfTonePlayer(Lcom/android/server/telecom/Call;C)V

    .line 3293
    return-void
.end method

.method public static startWaitingTone()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2868
    const-string v1, "use_second_waiting_call_tone"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2869
    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/telecom/secutils/TelecomUtils;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/server/telecom/secutils/TelecomUtils;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    new-instance v0, Lcom/android/server/telecom/secutils/TelecomUtils$1;

    invoke-direct {v0}, Lcom/android/server/telecom/secutils/TelecomUtils$1;-><init>()V

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mHandler:Landroid/os/Handler;

    :cond_1
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_3

    const-string v0, "TelecomUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Message %d skipped because there is no handler. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    monitor-exit v1

    .line 2871
    :cond_2
    return-void

    .line 2869
    :cond_3
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/telecom/secutils/TelecomUtils;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x3a98

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static stopDtmfTone(Lcom/android/server/telecom/Call;)V
    .locals 1

    .prologue
    .line 3296
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/CallsManager;->stopDtmfTonePlayer(Lcom/android/server/telecom/Call;)V

    .line 3297
    return-void
.end method

.method public static stopWaitingTone()V
    .locals 2

    .prologue
    .line 2874
    const-string v0, "use_second_waiting_call_tone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2875
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2877
    :cond_0
    return-void
.end method

.method public static updateRingbackToneVolume(Landroid/media/AudioManager;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 833
    const-string v0, "support_function_sound_tuning"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    :try_start_0
    const-string v0, "situation=12"

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 836
    new-instance v1, Lcom/android/server/telecom/InCallTonePlayer$Factory;

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-direct {v1, v2}, Lcom/android/server/telecom/InCallTonePlayer$Factory;-><init>(Lcom/android/server/telecom/CallAudioManager;)V

    .line 838
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/InCallTonePlayer$Factory;->createPlayer(I)Lcom/android/server/telecom/InCallTonePlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/InCallTonePlayer;->setVolume(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 839
    :catch_0
    move-exception v0

    .line 840
    const-string v1, "TelecomUtils"

    const-string v2, "SUPPORT_FUNCTION_SOUND_TUNING: "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static updateRingbackToneVolume(Landroid/media/AudioManager;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 846
    const-string v0, "support_function_sound_tuning"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    if-eqz p1, :cond_1

    .line 850
    :try_start_0
    const-string v0, "situation=12;device=2"

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 854
    :goto_0
    new-instance v1, Lcom/android/server/telecom/InCallTonePlayer$Factory;

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-direct {v1, v2}, Lcom/android/server/telecom/InCallTonePlayer$Factory;-><init>(Lcom/android/server/telecom/CallAudioManager;)V

    .line 856
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/InCallTonePlayer$Factory;->createPlayer(I)Lcom/android/server/telecom/InCallTonePlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/InCallTonePlayer;->setVolume(F)V

    .line 861
    :cond_0
    :goto_1
    return-void

    .line 852
    :cond_1
    const-string v0, "situation=12;device=1"

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 857
    :catch_0
    move-exception v0

    .line 858
    const-string v1, "TelecomUtils"

    const-string v2, "SUPPORT_FUNCTION_SOUND_TUNING: "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static updateWideBand(Lcom/android/server/telecom/Call;Z)V
    .locals 2

    .prologue
    .line 2743
    if-nez p0, :cond_1

    .line 2744
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallsManager;->setWBAMRstate(Z)V

    .line 2753
    :cond_0
    :goto_0
    return-void

    .line 2746
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    .line 2747
    if-eqz v1, :cond_0

    .line 2748
    const-string v0, "wide_band_for_hd_icon"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2749
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setHDIcon(I)V

    .line 2750
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->updateExtras(Landroid/os/Bundle;)V

    goto :goto_0

    .line 2749
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static wakeUpScreen(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 1240
    const-string v0, "TelecomUtils"

    const-string v1, "wakeUpScreen()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1241
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1242
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 1243
    return-void
.end method
