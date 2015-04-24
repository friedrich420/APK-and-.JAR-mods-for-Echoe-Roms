.class public final Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;
.super Ljava/lang/Object;
.source "TelecomUtilsMultiSIM.java"


# static fields
.field private static final LIVE_CALL_STATES:[I

.field private static final OUTGOING_CALL_STATES:[I

.field private static prevSubId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->LIVE_CALL_STATES:[I

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->OUTGOING_CALL_STATES:[I

    return-void

    .line 56
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x5
    .end array-data

    .line 63
    :array_1
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public static blockOtherSlotCallForCTCRoaming(Landroid/content/Intent;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 150
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 171
    :goto_0
    return v0

    .line 154
    :cond_0
    const-string v0, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 155
    goto :goto_0

    .line 158
    :cond_1
    const-string v0, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 159
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 160
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getAccoutSubId(Ljava/lang/String;)J

    move-result-wide v4

    .line 161
    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 162
    if-nez v0, :cond_2

    sget-object v3, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->LIVE_CALL_STATES:[I

    invoke-static {v2, v3}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getFirstCallWithState(I[I)Lcom/android/server/telecom/Call;

    move-result-object v3

    if-eqz v3, :cond_2

    move v0, v2

    .line 164
    goto :goto_0

    .line 166
    :cond_2
    if-ne v0, v2, :cond_3

    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->LIVE_CALL_STATES:[I

    invoke-static {v1, v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getFirstCallWithState(I[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 168
    goto :goto_0

    :cond_3
    move v0, v1

    .line 171
    goto :goto_0
.end method

.method public static canEmergencyCallOfCurrentSlot()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 361
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v2

    .line 362
    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLastMoCallIntent(Z)Landroid/content/Intent;

    move-result-object v0

    .line 365
    const-string v1, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    const-string v1, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 367
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 368
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getAccoutSubId(Ljava/lang/String;)J

    move-result-wide v0

    .line 371
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkServiceStateOfCurrentCall, subId : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelecomUtilsMultiSIM"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/telephony/TelephonyManager;->getServiceState(J)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/telephony/TelephonyManager;->getServiceState(J)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 375
    const/4 v0, 0x0

    .line 377
    :goto_1
    return v0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method public static checkServiceInStateOfCurrentCall()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 342
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v2

    .line 343
    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLastMoCallIntent(Z)Landroid/content/Intent;

    move-result-object v0

    .line 346
    const-string v1, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    const-string v1, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 348
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 349
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getAccoutSubId(Ljava/lang/String;)J

    move-result-wide v0

    .line 352
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkServiceStateOfCurrentCall, subId : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelecomUtilsMultiSIM"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/telephony/TelephonyManager;->getServiceState(J)I

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    const/4 v0, 0x0

    .line 357
    :goto_1
    return v0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method public static getActiveCall(I)Lcom/android/server/telecom/Call;
    .locals 3

    .prologue
    .line 250
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput v2, v0, v1

    invoke-static {p0, v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getFirstCallWithState(I[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getFirstCallWithState(I[I)Lcom/android/server/telecom/Call;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 258
    array-length v3, p1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_3

    aget v4, p1, v2

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v0

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v6

    if-ne p0, v6, :cond_1

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v6

    if-ne v4, v6, :cond_1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static getHeldCall(I)Lcom/android/server/telecom/Call;
    .locals 3

    .prologue
    .line 254
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput v2, v0, v1

    invoke-static {p0, v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getFirstCallWithState(I[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    return-object v0
.end method

.method private static getMultiSIMNetworkCombinationType()I
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 181
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    .line 182
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v5

    .line 184
    if-eqz v0, :cond_4

    .line 185
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    aget-wide v6, v0, v1

    invoke-virtual {v4, v6, v7}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v0

    move v4, v0

    .line 186
    :goto_0
    if-eqz v5, :cond_3

    .line 187
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    aget-wide v6, v5, v1

    invoke-virtual {v0, v6, v7}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v0

    .line 189
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "slot1_Type : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TelecomUtilsMultiSIM"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "slot2_Type : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TelecomUtilsMultiSIM"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    if-ne v4, v2, :cond_1

    if-ne v0, v2, :cond_1

    .line 200
    :cond_0
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getMultiSIMNetworkCombinationType : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TelecomUtilsMultiSIM"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return v1

    .line 194
    :cond_1
    if-ne v4, v3, :cond_2

    if-ne v0, v2, :cond_2

    move v1, v2

    .line 195
    goto :goto_2

    .line 196
    :cond_2
    if-ne v4, v2, :cond_0

    if-ne v0, v3, :cond_0

    move v1, v3

    .line 197
    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v4, v1

    goto :goto_0
.end method

.method public static getMultiSimDSDAForegoundPhoneId()I
    .locals 3

    .prologue
    .line 232
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimForegroundPhoneId()I

    move-result v0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getMultiSimDSDAForegoundPhoneId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelecomUtilsMultiSIM"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return v0
.end method

.method public static getMultiSimIccType(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 503
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    .line 504
    :try_start_0
    const-string v1, "ril.ICC_TYPE"

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const-string v0, "0"

    invoke-static {v1, v2, v3, v0}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 510
    :goto_0
    return-object v0

    .line 508
    :catch_0
    move-exception v0

    const-string v0, "0"

    goto :goto_0
.end method

.method private static varargs getNumMultiSimCallsWithState(Ljava/util/Collection;Lcom/android/server/telecom/Call;[I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;",
            "Lcom/android/server/telecom/Call;",
            "[I)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 76
    array-length v3, p2

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v4, p2, v2

    .line 77
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 78
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v6

    if-ne v6, v4, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v6

    if-ne v0, v6, :cond_2

    .line 81
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_2
    move v1, v0

    .line 83
    goto :goto_1

    .line 76
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_0

    .line 85
    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public static varargs getOtherSlotFirstCallWithState(Ljava/util/Collection;Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;",
            "Lcom/android/server/telecom/Call;",
            "[I)",
            "Lcom/android/server/telecom/Call;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getMultiSIMNetworkCombinationType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move-object v0, v1

    .line 145
    :goto_0
    return-object v0

    .line 131
    :cond_0
    array-length v3, p2

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    aget v4, p2, v2

    .line 132
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 133
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 134
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 138
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v6

    if-ne v4, v6, :cond_1

    goto :goto_0

    .line 131
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 145
    goto :goto_0
.end method

.method public static getPhoneId(Lcom/android/server/telecom/Call;)I
    .locals 2

    .prologue
    .line 205
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getSubId(Lcom/android/server/telecom/Call;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 207
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    .line 208
    if-nez v1, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 210
    :cond_0
    return v0
.end method

.method public static getRingingCall(I)Lcom/android/server/telecom/Call;
    .locals 3

    .prologue
    .line 246
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    invoke-static {p0, v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getFirstCallWithState(I[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    return-object v0
.end method

.method public static getSubId(Lcom/android/server/telecom/Call;)J
    .locals 5

    .prologue
    .line 214
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v0

    .line 215
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 217
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 222
    :cond_0
    :goto_0
    return-wide v0

    .line 218
    :catch_0
    move-exception v2

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSubId failed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelecomUtilsMultiSIM"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static hasMultiSimMaximumHoldingCalls(Ljava/util/Collection;Lcom/android/server/telecom/Call;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;",
            "Lcom/android/server/telecom/Call;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 93
    new-array v2, v0, [I

    const/4 v3, 0x6

    aput v3, v2, v1

    invoke-static {p0, p1, v2}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getNumMultiSimCallsWithState(Ljava/util/Collection;Lcom/android/server/telecom/Call;[I)I

    move-result v2

    if-gt v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static hasMultiSimMaximumLiveCalls(Ljava/util/Collection;Lcom/android/server/telecom/Call;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;",
            "Lcom/android/server/telecom/Call;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 89
    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->LIVE_CALL_STATES:[I

    invoke-static {p0, p1, v1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getNumMultiSimCallsWithState(Ljava/util/Collection;Lcom/android/server/telecom/Call;[I)I

    move-result v1

    if-gt v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasMultiSimMaximumOutgoingCalls(Ljava/util/Collection;Lcom/android/server/telecom/Call;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;",
            "Lcom/android/server/telecom/Call;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 101
    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->OUTGOING_CALL_STATES:[I

    invoke-static {p0, p1, v1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getNumMultiSimCallsWithState(Ljava/util/Collection;Lcom/android/server/telecom/Call;[I)I

    move-result v1

    if-gt v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasMultiSimMaximumRingingCalls(Ljava/util/Collection;Lcom/android/server/telecom/Call;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;",
            "Lcom/android/server/telecom/Call;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 97
    new-array v2, v0, [I

    const/4 v3, 0x4

    aput v3, v2, v1

    invoke-static {p0, p1, v2}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getNumMultiSimCallsWithState(Ljava/util/Collection;Lcom/android/server/telecom/Call;[I)I

    move-result v2

    if-gt v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isDualCallRinging(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 107
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 108
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 109
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    move v1, v4

    .line 114
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 115
    const-string v0, "isDualCallRinging return true..."

    const-string v1, "TelecomUtilsMultiSIM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 121
    :goto_2
    return v2

    :cond_0
    move v0, v4

    move v1, v3

    .line 112
    goto :goto_1

    :cond_1
    move v0, v1

    move v1, v3

    :cond_2
    move v3, v1

    move v1, v0

    .line 119
    goto :goto_0

    .line 120
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "isDualCallRinging: isSIM1Ringing = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " isSIM2Ringing="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelecomUtilsMultiSIM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static isDualSim()Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 566
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v3

    .line 567
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 568
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 569
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "phone1_on"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 570
    :goto_0
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "phone2_on"

    invoke-static {v3, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    .line 571
    :goto_1
    const-string v6, "feature_multisim"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    if-lt v4, v7, :cond_2

    if-lt v5, v7, :cond_2

    .line 573
    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 569
    goto :goto_0

    :cond_1
    move v3, v2

    .line 570
    goto :goto_1

    :cond_2
    move v1, v2

    .line 571
    goto :goto_2
.end method

.method public static isDualSimInCall(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 579
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 580
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 581
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getPhoneId()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    move v1, v4

    .line 586
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 587
    const-string v0, "isDualSimInCall return true..."

    const-string v1, "TelecomUtilsMultiSIM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 593
    :goto_2
    return v2

    :cond_1
    move v0, v4

    move v1, v3

    .line 584
    goto :goto_1

    :cond_2
    move v0, v1

    move v1, v3

    :cond_3
    move v3, v1

    move v1, v0

    .line 591
    goto :goto_0

    .line 592
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "isDualSimInCall: isSIM1InCall = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " isSIM2InCall="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelecomUtilsMultiSIM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static isSimCardStatusOn(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 412
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 413
    if-nez v3, :cond_0

    .line 428
    :goto_0
    return v1

    .line 418
    :cond_0
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getMultiSimIccType(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    :goto_1
    if-nez v2, :cond_6

    move v2, v1

    .line 423
    :goto_2
    if-ne v2, v0, :cond_4

    if-ne p0, v0, :cond_4

    .line 424
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone2_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    :cond_1
    :goto_3
    move v1, v0

    .line 428
    goto :goto_0

    :cond_2
    move v2, v0

    .line 418
    goto :goto_1

    :cond_3
    move v0, v1

    .line 424
    goto :goto_3

    .line 425
    :cond_4
    if-ne v2, v0, :cond_5

    if-nez p0, :cond_5

    .line 426
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone1_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_1

    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v2, v0

    goto :goto_2
.end method

.method public static selectPhoneAccountHandle(Landroid/net/Uri;Z)Landroid/telecom/PhoneAccountHandle;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 518
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    .line 519
    const-string v1, "TelecomUtilsMultiSIM"

    const-string v2, "selectPhoneAccountHandle().. "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isDualSim()Z

    move-result v2

    .line 522
    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->isInCall()Z

    move-result v0

    .line 523
    const/4 v1, 0x0

    .line 524
    const-string v4, "TelecomUtilsMultiSIM"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isInCall().. "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "isDualSim:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 526
    if-eqz p1, :cond_1

    .line 527
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "prefered_video_call"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 531
    :goto_0
    const-string v2, "TelecomUtilsMultiSIM"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "preferredSimCondition:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/TelecomApp;->getPhoneAccountRegistrar()Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v4

    .line 535
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 536
    :goto_1
    const/4 v5, 0x2

    if-lt v2, v5, :cond_4

    .line 537
    packed-switch v0, :pswitch_data_0

    .line 549
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getPhoneAccountRegistrar()Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 552
    if-eqz v0, :cond_4

    :goto_2
    move-object v1, v0

    .line 562
    :cond_0
    :goto_3
    :pswitch_0
    return-object v1

    .line 529
    :cond_1
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "prefered_voice_call"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 541
    :pswitch_1
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    move-object v1, v0

    .line 542
    goto :goto_3

    .line 544
    :pswitch_2
    const/4 v0, 0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    move-object v1, v0

    .line 545
    goto :goto_3

    .line 556
    :cond_2
    if-nez v0, :cond_3

    if-nez v2, :cond_0

    .line 557
    :cond_3
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getPhoneAccountRegistrar()Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 560
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_1

    .line 537
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static selectSimForEmergency$2563259(I)I
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 433
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v2

    .line 434
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v3

    .line 436
    new-array v4, v12, [I

    .line 437
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    aget-wide v6, v2, v1

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->getServiceState(J)I

    move-result v5

    aput v5, v4, v1

    .line 438
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    aget-wide v6, v3, v1

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->getServiceState(J)I

    move-result v5

    aput v5, v4, v0

    .line 440
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    .line 441
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v6

    .line 443
    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v7

    .line 444
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v8

    .line 446
    const-string v9, "eng"

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 447
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "selectSimForEmergency currentSimId:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", subId1:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-wide v10, v2, v1

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", subId2:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v10, v3, v1

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelecomUtilsMultiSIM"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "selectSimForEmergency serviceState[SIM_SLOT_1]:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, v4, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", [SIM_SLOT_2]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v4, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelecomUtilsMultiSIM"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "selectSimForEmergency SimState1:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SimState2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelecomUtilsMultiSIM"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "selectSimForEmergency SimCardStatusOn1:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SimCardStatusOn2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelecomUtilsMultiSIM"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_0
    const-string v2, "feature_multisim_emergency_call_cp_limitation"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 454
    if-ne p0, v0, :cond_2

    const/4 v2, 0x5

    if-ne v6, v2, :cond_1

    if-nez v8, :cond_2

    .line 456
    :cond_1
    const-string v0, "selectSimForEmergency FEATURE_MULTISIM_EMERGENCY_CALL_CP_LIMITATION - originate call via slot1"

    const-string v2, "TelecomUtilsMultiSIM"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :goto_0
    return v1

    .line 461
    :cond_2
    const-string v2, "feature_multisim_emergency_call_ctc"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 462
    if-eq v5, v12, :cond_3

    if-ne v5, v0, :cond_4

    :cond_3
    if-ne v6, v12, :cond_4

    .line 464
    const-string v0, "selectSimForEmergency FEATURE_MULTISIM_EMERGENCY_CALL_CTC - originate call via slot1"

    const-string v2, "TelecomUtilsMultiSIM"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 470
    :cond_4
    aget v2, v4, p0

    if-ne v2, v0, :cond_9

    .line 471
    const-string v2, "feature_multisim_emergency_call_ctc"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 472
    if-nez p0, :cond_6

    aget v2, v4, v0

    if-nez v2, :cond_6

    .line 492
    :cond_5
    :goto_1
    const-string v1, "TelecomUtilsMultiSIM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currentSimId ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", changedSimId ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 493
    goto :goto_0

    .line 474
    :cond_6
    if-ne p0, v0, :cond_b

    aget v2, v4, v1

    if-eq v2, v0, :cond_b

    move v0, v1

    .line 475
    goto :goto_1

    .line 478
    :cond_7
    if-nez p0, :cond_8

    aget v2, v4, v0

    if-ne v2, v0, :cond_5

    .line 480
    :cond_8
    if-ne p0, v0, :cond_b

    aget v2, v4, v1

    if-eq v2, v0, :cond_b

    move v0, v1

    .line 481
    goto :goto_1

    .line 484
    :cond_9
    aget v2, v4, p0

    if-ne v2, v12, :cond_b

    .line 485
    if-nez p0, :cond_a

    aget v2, v4, v0

    if-eqz v2, :cond_5

    .line 487
    :cond_a
    if-ne p0, v0, :cond_b

    aget v0, v4, v1

    if-nez v0, :cond_b

    move v0, v1

    .line 488
    goto :goto_1

    :cond_b
    move v0, p0

    goto :goto_1
.end method

.method public static setAudioParameters(Lcom/android/server/telecom/Call;Landroid/media/AudioManager;I)V
    .locals 5

    .prologue
    .line 302
    const-string v0, "TelecomUtilsMultiSIM"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setAudioParameters : mode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v0, "gsm.current.vsid"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 305
    const-string v1, "gsm.current.vsid2"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 306
    const-string v2, "TelecomUtilsMultiSIM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setAudioParameters : sVsid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v0, "TelecomUtilsMultiSIM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setAudioParameters : sVsid2 = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    packed-switch p2, :pswitch_data_0

    .line 320
    :goto_0
    return-void

    .line 313
    :pswitch_0
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getPhoneId(Lcom/android/server/telecom/Call;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 314
    const-string v0, "setAudioParameters phone_type=cp2"

    const-string v1, "TelecomUtilsMultiSIM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v0, "phone_type=cp2"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_0
    const-string v0, "setAudioParameters phone_type=cp1"

    const-string v1, "TelecomUtilsMultiSIM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v0, "phone_type=cp1"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static setAudioPath(I)V
    .locals 2

    .prologue
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setAudioPath: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelecomUtilsMultiSIM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_0

    .line 332
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 333
    if-nez p0, :cond_1

    .line 334
    const-string v1, "phone_type=cp1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    const-string v1, "phone_type=cp2"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setDefaultSubscriptionId(Lcom/android/server/telecom/Call;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 385
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->prevSubId:J

    .line 386
    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getPhoneId(Lcom/android/server/telecom/Call;)I

    move-result v1

    .line 387
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v2

    .line 388
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->isDualSim()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-wide v4, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->prevSubId:J

    aget-wide v6, v2, v0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 389
    const-string v3, "TelecomUtilsMultiSIM"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setCurrentNetworkSlotId phoneId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " subId:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-wide v4, v2, v0

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    aget-wide v0, v2, v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(J)V

    .line 391
    const/4 v0, 0x1

    .line 393
    :cond_0
    return v0
.end method

.method public static setMultiSimDSDAForegoundPhoneId(I)V
    .locals 2

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setMultiSimDSDAForegoundPhoneId : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelecomUtilsMultiSIM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->updateForegroundCallForMulSimDsda()V

    .line 229
    return-void
.end method

.method public static setMultiSimLastRejectIncomingCallPhoneId(I)V
    .locals 3

    .prologue
    .line 239
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->setMultiSimLastRejectIncomingCallPhoneId(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setForegroundPhoneId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelecomUtilsMultiSIM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static shouldProcessAsEmergency(Landroid/content/Context;Landroid/net/Uri;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 497
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 498
    if-eqz p1, :cond_0

    aget-wide v2, v1, v0

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2, v3, v1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
