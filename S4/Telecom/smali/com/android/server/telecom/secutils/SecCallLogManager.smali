.class public final Lcom/android/server/telecom/secutils/SecCallLogManager;
.super Lcom/android/server/telecom/CallsManager$CallsManagerListener;
.source "SecCallLogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;,
        Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;
    }
.end annotation


# static fields
.field private static SERVICE_TYPE_MODIFIED_CALL:I

.field private static SERVICE_TYPE_MODIFIED_CALL_DISCONNECT:I

.field private static final TAG:Ljava/lang/String;

.field private static serviceType:I


# instance fields
.field private cdnipNumber:Ljava/lang/String;

.field private cnapName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private recordSaveFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x1e

    sput v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->SERVICE_TYPE_MODIFIED_CALL_DISCONNECT:I

    .line 73
    const/16 v0, 0x1f

    sput v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->SERVICE_TYPE_MODIFIED_CALL:I

    .line 75
    const/4 v0, 0x2

    sput v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->serviceType:I

    .line 139
    const-class v0, Lcom/android/server/telecom/secutils/SecCallLogManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->cnapName:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->cdnipNumber:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->recordSaveFilePath:Ljava/lang/String;

    .line 150
    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    .line 151
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/secutils/SecCallLogManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->cnapName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/telecom/secutils/SecCallLogManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->cnapName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/telecom/secutils/SecCallLogManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->cdnipNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/telecom/secutils/SecCallLogManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->recordSaveFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->serviceType:I

    return v0
.end method

.method private static getCallFeatures(I)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 557
    and-int/lit8 v1, p0, 0x1

    if-ne v1, v0, :cond_0

    .line 561
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLogNumber(Lcom/android/server/telecom/Call;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 572
    invoke-static {p1}, Lcom/android/server/telecom/secutils/SecCallLogManager;->getOriginalNumber(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    .line 574
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 575
    invoke-static {v0}, Lcom/android/server/telecom/operator/OperatorUtils;->getSKTCallLogNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 579
    :cond_0
    :goto_0
    return-object v0

    .line 576
    :cond_1
    const-string v1, "singapore_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPresentationString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getOriginalNumber(Lcom/android/server/telecom/Call;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getOriginalHandle()Landroid/net/Uri;

    move-result-object v0

    .line 585
    if-nez v0, :cond_1

    .line 586
    const/4 v0, 0x0

    .line 593
    :cond_0
    :goto_0
    return-object v0

    .line 589
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 590
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 591
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getPresentation(Lcom/android/server/telecom/Call;)I
    .locals 1

    .prologue
    .line 608
    const-string v0, "usa_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ctc_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v0

    invoke-static {v0, p0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getPresentation(ILcom/android/server/telecom/Call;)I

    move-result v0

    .line 612
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v0

    goto :goto_0
.end method

.method private logCall(Lcom/android/server/telecom/Call;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JJLjava/lang/Long;)V
    .locals 18

    .prologue
    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0a0000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 291
    if-eqz v2, :cond_0

    if-eqz v3, :cond_d

    :cond_0
    const/4 v2, 0x1

    .line 292
    :goto_0
    const-string v3, "feature_cdma_us"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isOkToLogThisCall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 294
    :cond_1
    const-string v3, "roaming_auto_dial"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v3

    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v4, 0x2

    move/from16 v0, p5

    if-ne v0, v4, :cond_f

    invoke-virtual {v3}, Lcom/android/services/telephony/common/SecCallExtra;->isRadConvertNumber()Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 p5, 0xb

    move/from16 v7, p5

    .line 295
    :goto_1
    const-string v3, "roaming_auto_dial"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v3

    if-eqz v3, :cond_18

    sget-object v3, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "roaming area : changeNumber before = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v3

    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_13

    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    if-eqz v3, :cond_12

    iget-object v4, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    sget-object v4, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "roaming area : changeNumber contactsNum.phoneNumber : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_2
    :goto_2
    sget-object v3, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "roaming area : changeNumber after = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v5, p3

    .line 296
    :goto_3
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.server.telecom.intent.action.CALLS_ADD_ENTRY"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "callType"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "duration"

    move-wide/from16 v0, p10

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.PROCESS_CALLLOG_INFO"

    invoke-virtual {v4, v3, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 298
    if-eqz v2, :cond_29

    .line 299
    sget-object v2, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Logging Calllog entry: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p8

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p10

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 303
    const/4 v2, 0x0

    .line 304
    if-eqz v3, :cond_3

    .line 305
    const-string v2, "key_photoring_mt_content_url"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 307
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v3

    if-nez v3, :cond_1b

    const/16 v16, 0x0

    .line 308
    :goto_4
    if-nez v2, :cond_1c

    const/4 v15, 0x0

    .line 310
    :goto_5
    const-string v2, "cnap_supplementary_service"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 311
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->cnapName:Ljava/lang/String;

    .line 313
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->CheckDisplayPLettrering()Z

    move-result v2

    if-nez v2, :cond_4

    .line 314
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->cnapName:Ljava/lang/String;

    .line 317
    :cond_4
    sget-object v2, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "logCall - cnapName = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->cnapName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    .line 320
    const-string v3, "cdnip_supplementary_service"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 321
    if-eqz v2, :cond_6

    .line 322
    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getCdnipNumber()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->cdnipNumber:Ljava/lang/String;

    .line 323
    sget-object v3, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "logCall - cdnipNumber = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->cdnipNumber:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    :cond_6
    const-string v3, "voice_call_recording_call_log"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 327
    if-eqz v2, :cond_7

    .line 328
    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getRecordSaveFilePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->recordSaveFilePath:Ljava/lang/String;

    .line 329
    sget-object v2, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "logCall - recordSaveFilePath = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->recordSaveFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    :cond_7
    const-string v2, "usa_cdma_smc_fac_req"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 333
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->updateCallerInfo(Lcom/android/internal/telephony/CallerInfo;Lcom/android/server/telecom/Call;)V

    .line 335
    :cond_8
    const-string v2, "ltn_sdnname_display"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 336
    if-eqz p2, :cond_9

    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v2, :cond_9

    if-eqz p1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 338
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 342
    :cond_9
    new-instance v2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    move-object/from16 v4, p2

    move/from16 v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    invoke-direct/range {v2 .. v16}, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JJLjava/lang/Long;Ljava/lang/String;Z)V

    .line 344
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v6

    if-nez v6, :cond_1d

    sget-object v3, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v4, "setAdditionalInfo default Uri.parse = content://logs/call "

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "content://logs/call"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v4, "setAdditionalInfo error. secCallExtra is null"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    :cond_a
    :goto_6
    invoke-static {}, Lcom/android/server/telecom/secutils/SecActionMemoManager;->getInstance()Lcom/android/server/telecom/secutils/SecActionMemoManager;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3, v5}, Lcom/android/server/telecom/secutils/SecActionMemoManager;->getActionMemoFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    const-string v4, "sec_custom1"

    iget-object v5, v2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->extraValues:Ljava/util/Map;

    if-nez v5, :cond_b

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->extraValues:Ljava/util/Map;

    :cond_b
    iget-object v5, v2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->extraValues:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setMemoPathInfo : memoPath="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    :cond_c
    new-instance v3, Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;-><init>(Lcom/android/server/telecom/secutils/SecCallLogManager;B)V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 350
    :goto_7
    return-void

    .line 291
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 294
    :cond_e
    const/16 p5, 0xc

    move/from16 v7, p5

    goto/16 :goto_1

    :cond_f
    const/4 v3, 0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_10

    const/16 p5, 0xd

    move/from16 v7, p5

    goto/16 :goto_1

    :cond_10
    const/4 v3, 0x5

    move/from16 v0, p5

    if-ne v0, v3, :cond_11

    const/16 p5, 0xf

    move/from16 v7, p5

    goto/16 :goto_1

    :cond_11
    const/4 v3, 0x3

    move/from16 v0, p5

    if-ne v0, v3, :cond_2b

    const/16 p5, 0xe

    move/from16 v7, p5

    goto/16 :goto_1

    .line 295
    :cond_12
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_2

    :cond_13
    invoke-virtual {v3}, Lcom/android/services/telephony/common/SecCallExtra;->isRadConvertNumber()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual {v3}, Lcom/android/services/telephony/common/SecCallExtra;->getRadOriginalNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    :cond_14
    invoke-virtual {v3}, Lcom/android/services/telephony/common/SecCallExtra;->getRadOriginalNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_2

    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-static/range {p3 .. p3}, Lcom/android/server/telecom/operator/OperatorUtils;->getSKTRADisplayNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_2

    :cond_16
    invoke-virtual {v3}, Lcom/android/services/telephony/common/SecCallExtra;->isRadConvertNumber()Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {v3}, Lcom/android/services/telephony/common/SecCallExtra;->getRadOriginalNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    :cond_17
    invoke-virtual {v3}, Lcom/android/services/telephony/common/SecCallExtra;->getRadOriginalNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_2

    :cond_18
    const-string v3, "get_orig_dial_string_enable"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz p3, :cond_1a

    const-string v3, ","

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    const-string v3, ";"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_19
    if-eqz p1, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    const-string v3, "tel"

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static/range {p3 .. p3}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    sget-object v3, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "orign number is not Global phone number, changeNumber after = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    move-object/from16 v5, p3

    goto/16 :goto_3

    .line 307
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/services/telephony/common/SecCallExtra;->isAutoRejectCall()Z

    move-result v16

    goto/16 :goto_4

    .line 308
    :cond_1c
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5

    .line 344
    :cond_1d
    invoke-virtual {v6}, Lcom/android/services/telephony/common/SecCallExtra;->getLogServiceType()I

    move-result v3

    sget v4, Lcom/android/server/telecom/secutils/SecCallLogManager;->SERVICE_TYPE_MODIFIED_CALL_DISCONNECT:I

    if-ne v3, v4, :cond_1f

    invoke-virtual {v6}, Lcom/android/services/telephony/common/SecCallExtra;->getModifiedLogType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1e

    const-string v3, "content://logs/video_call"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    :goto_8
    invoke-virtual {v6}, Lcom/android/services/telephony/common/SecCallExtra;->getLogServiceType()I

    move-result v3

    iput v3, v2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->service_type:I

    sget-object v3, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "setAdditionalInfo : service_type "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->service_type:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "ctc_call_time_duration"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static/range {p1 .. p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_28

    if-eqz v6, :cond_28

    invoke-virtual {v6}, Lcom/android/services/telephony/common/SecCallExtra;->isLineCtrl()Z

    move-result v3

    if-nez v3, :cond_28

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->isCallOutDuration:Z

    goto/16 :goto_6

    :cond_1e
    const-string v3, "content://logs/volte"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    goto :goto_8

    :cond_1f
    const-string v3, "hdvoice_call_status"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v6}, Lcom/android/services/telephony/common/SecCallExtra;->getHDIcon()I

    move-result v3

    if-lez v3, :cond_20

    sget-object v3, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v4, "setAdditionalInfo : is HDcall log"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "content://logs/hdcall"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    goto :goto_8

    :cond_20
    invoke-virtual {v6}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_21

    sget-object v3, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v4, "setAdditionalInfo : is video call"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "content://logs/video_call"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    goto :goto_8

    :cond_21
    invoke-virtual {v6}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_27

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    if-nez v3, :cond_22

    const/4 v3, 0x0

    :goto_9
    if-eqz v3, :cond_26

    sget-object v3, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v4, "VoWiFi call"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "content://logs/vowifi"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    goto/16 :goto_8

    :cond_22
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    if-nez v3, :cond_23

    const/4 v3, 0x0

    :goto_a
    if-eqz v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_25

    const/4 v3, 0x1

    :goto_b
    sget-object v4, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "isVoWifiAvailable : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v7, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_23
    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-nez v3, :cond_24

    const/4 v3, 0x0

    goto :goto_a

    :cond_24
    invoke-interface {v3}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isRegistered()Z

    move-result v3

    goto :goto_a

    :cond_25
    const/4 v3, 0x0

    goto :goto_b

    :cond_26
    sget-object v3, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v4, "VoLTE call"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "content://logs/volte"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    goto/16 :goto_8

    :cond_27
    const-string v3, "content://logs/call"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    goto/16 :goto_8

    :cond_28
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->isCallOutDuration:Z

    goto/16 :goto_6

    .line 348
    :cond_29
    sget-object v2, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v3, "Not adding emergency call to call log."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_2a
    move v3, v4

    goto :goto_b

    :cond_2b
    move/from16 v7, p5

    goto/16 :goto_1
.end method


# virtual methods
.method public final logCall(Lcom/android/server/telecom/Call;I)V
    .locals 13

    .prologue
    .line 229
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCreationTimeMillis()J

    move-result-wide v8

    .line 230
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getConnectTimeMillis()J

    move-result-wide v10

    .line 231
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-nez v0, :cond_0

    .line 233
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/SecCallLogManager;->getLogNumber(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v3

    .line 235
    sget-object v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v1, "logNumber set to: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v3}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    invoke-static {p1}, Lcom/android/server/telecom/secutils/SecCallLogManager;->getPresentation(Lcom/android/server/telecom/Call;)I

    move-result v4

    .line 238
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v7

    .line 241
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getVideoStateHistory()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecCallLogManager;->getCallFeatures(I)I

    move-result v6

    .line 242
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCallerInfo()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v12}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logCall(Lcom/android/server/telecom/Call;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JJLjava/lang/Long;)V

    .line 244
    return-void

    .line 231
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v10, v0, v10

    goto :goto_0
.end method

.method public final logCall(Lcom/android/server/telecom/Call;Ljava/lang/String;JJ)V
    .locals 13

    .prologue
    .line 247
    invoke-static {p1}, Lcom/android/server/telecom/secutils/SecCallLogManager;->getPresentation(Lcom/android/server/telecom/Call;)I

    move-result v4

    .line 248
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v7

    .line 249
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getVideoStateHistory()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecCallLogManager;->getCallFeatures(I)I

    move-result v6

    .line 250
    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/SecCallLogManager;->getLogNumber(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    .line 253
    sget-object v1, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v2, "Conference logNumber set to: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCallerInfo()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    const/4 v5, 0x2

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v0 .. v12}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logCall(Lcom/android/server/telecom/Call;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JJLjava/lang/Long;)V

    .line 258
    return-void
.end method

.method public final logModifyCall(Lcom/android/server/telecom/Call;)V
    .locals 14

    .prologue
    .line 505
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_1

    .line 506
    const/4 v5, 0x2

    .line 511
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v13

    .line 512
    if-nez v13, :cond_2

    .line 513
    sget-object v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v1, "logModifyCall error. secCallExtra is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    :cond_0
    :goto_1
    return-void

    .line 508
    :cond_1
    const/4 v5, 0x1

    goto :goto_0

    .line 516
    :cond_2
    sget-object v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "logModifyCall "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCreationTimeMillis()J

    move-result-wide v8

    .line 519
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getConnectTimeMillis()J

    move-result-wide v0

    .line 520
    invoke-virtual {v13}, Lcom/android/services/telephony/common/SecCallExtra;->getModifiedTimeMillis()J

    move-result-wide v2

    .line 522
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 523
    const-wide/16 v10, 0x0

    cmp-long v4, v0, v10

    if-nez v4, :cond_6

    move-wide v10, v0

    .line 524
    :goto_2
    cmp-long v0, v2, v0

    if-lez v0, :cond_3

    .line 525
    sub-long v10, v6, v2

    .line 527
    :cond_3
    const-wide/16 v0, 0x3e8

    rem-long v0, v10, v0

    sub-long v0, v6, v0

    .line 528
    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/SecCallLogManager;->getLogNumber(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v3

    .line 529
    invoke-static {p1}, Lcom/android/server/telecom/secutils/SecCallLogManager;->getPresentation(Lcom/android/server/telecom/Call;)I

    move-result v4

    .line 530
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v7

    .line 531
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v2

    const/4 v6, 0x5

    if-ne v2, v6, :cond_5

    .line 532
    invoke-virtual {v13}, Lcom/android/services/telephony/common/SecCallExtra;->getLogServiceType()I

    move-result v2

    if-nez v2, :cond_4

    .line 533
    invoke-virtual {v13}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/android/services/telephony/common/SecCallExtra;->setModifiedLogType(I)V

    .line 534
    sget v2, Lcom/android/server/telecom/secutils/SecCallLogManager;->SERVICE_TYPE_MODIFIED_CALL:I

    invoke-virtual {v13, v2}, Lcom/android/services/telephony/common/SecCallExtra;->setLogServiceType(I)V

    .line 536
    :cond_4
    invoke-virtual {v13, v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setModifiedTimeMillis(J)V

    .line 537
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, v13}, Lcom/android/services/telephony/common/SecCallExtra;->setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/telecom/Call;->setExtras(Landroid/os/Bundle;)V

    .line 541
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getVideoStateHistory()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecCallLogManager;->getCallFeatures(I)I

    move-result v6

    .line 542
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCallerInfo()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logCall(Lcom/android/server/telecom/Call;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JJLjava/lang/Long;)V

    .line 545
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 546
    sget v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->SERVICE_TYPE_MODIFIED_CALL_DISCONNECT:I

    invoke-virtual {v13, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setLogServiceType(I)V

    .line 547
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, v13}, Lcom/android/services/telephony/common/SecCallExtra;->setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/telecom/Call;->setExtras(Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 523
    :cond_6
    sub-long v10, v6, v0

    goto :goto_2
.end method

.method public final onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 155
    const/4 v0, 0x7

    if-eq p3, v0, :cond_0

    const/16 v0, 0x8

    if-ne p3, v0, :cond_4

    :cond_0
    move v0, v2

    .line 157
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v6

    .line 158
    if-eqz v0, :cond_5

    invoke-virtual {v6}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v3

    if-eq v3, v9, :cond_1

    invoke-virtual {v6}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v3

    const/16 v7, 0x9

    if-ne v3, v7, :cond_5

    :cond_1
    move v3, v2

    .line 160
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v7}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v7

    .line 166
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/android/services/telephony/common/SecCallExtra;->isIMSConferenceCall()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSBarring()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 217
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v0, v1

    .line 155
    goto :goto_0

    :cond_5
    move v3, v1

    .line 158
    goto :goto_1

    .line 170
    :cond_6
    if-eqz v0, :cond_3

    if-eq p2, v4, :cond_3

    if-eq p2, v2, :cond_3

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isConference()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez v3, :cond_3

    .line 176
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_a

    .line 178
    const-string v0, "feature_logs_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 179
    invoke-static {p1}, Lcom/android/server/telecom/secutils/SecCallLogManager;->getOriginalNumber(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/android/server/telecom/operator/OperatorUtils;->getCallLogType(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->serviceType:I

    move v0, v4

    .line 199
    :goto_3
    const-string v3, "feature_logs_kor"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 200
    sput v4, Lcom/android/server/telecom/secutils/SecCallLogManager;->serviceType:I

    .line 202
    :cond_7
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/android/services/telephony/common/SecCallExtra;->getLogServiceType()I

    move-result v3

    sget v4, Lcom/android/server/telecom/secutils/SecCallLogManager;->SERVICE_TYPE_MODIFIED_CALL:I

    if-ne v3, v4, :cond_8

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logModifyCall(Lcom/android/server/telecom/Call;)V

    .line 206
    :cond_8
    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 207
    iget-object v3, p0, Lcom/android/server/telecom/secutils/SecCallLogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isAutoAnswered"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 209
    if-ne v3, v2, :cond_9

    .line 210
    sget-object v0, Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;

    const-string v2, "Auto answer is true, so change to MISSED_TYPE"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v5

    .line 215
    :cond_9
    invoke-virtual {p0, p1, v0}, Lcom/android/server/telecom/secutils/SecCallLogManager;->logCall(Lcom/android/server/telecom/Call;I)V

    goto :goto_2

    .line 182
    :cond_a
    if-ne p2, v9, :cond_e

    .line 183
    invoke-virtual {v6}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_d

    .line 184
    const-string v0, "dcm_not_support_extra_callog_type"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v5

    .line 185
    goto :goto_3

    .line 186
    :cond_b
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v0

    if-ne v0, v4, :cond_c

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getPhoneId(Lcom/android/server/telecom/Call;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getRingingCall(I)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_c

    move v0, v5

    .line 189
    goto :goto_3

    .line 191
    :cond_c
    const/4 v0, 0x5

    goto :goto_3

    :cond_d
    move v0, v5

    .line 194
    goto :goto_3

    :cond_e
    move v0, v2

    .line 197
    goto :goto_3

    :cond_f
    move v0, v4

    goto :goto_3
.end method
