.class public final Lcom/android/server/telecom/operator/usa/TelecomExtension;
.super Ljava/lang/Object;
.source "TelecomExtension.java"


# static fields
.field private static assisDialing:Ljava/lang/reflect/Method;

.field private static final mCallForwardingNumberList:[Ljava/lang/String;

.field private static mRoaming:Z

.field private static mServiceState:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "*72"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "*92"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "*73"

    aput-object v2, v0, v1

    const-string v1, "*93"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/telecom/operator/usa/TelecomExtension;->mCallForwardingNumberList:[Ljava/lang/String;

    .line 76
    sput v3, Lcom/android/server/telecom/operator/usa/TelecomExtension;->mServiceState:I

    return-void
.end method

.method private static assistedDialFromContactList(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 210
    :try_start_0
    const-class v0, Landroid/telephony/PhoneNumberUtils;

    const-string v1, "assistedDialFromContactList"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/operator/usa/TelecomExtension;->assisDialing:Ljava/lang/reflect/Method;

    .line 211
    invoke-static {p0, p1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->assistedDialing_Invoke(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    .line 213
    :catch_0
    move-exception v0

    const-string v0, "TelecomExtension"

    const-string v1, "assistedDialFromContactList - NoSuchMethodException"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static assistedDialFromDialPad(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 200
    :try_start_0
    const-class v0, Landroid/telephony/PhoneNumberUtils;

    const-string v1, "assistedDialFromDialPad"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/operator/usa/TelecomExtension;->assisDialing:Ljava/lang/reflect/Method;

    .line 201
    invoke-static {p0, p1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->assistedDialing_Invoke(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    .line 203
    :catch_0
    move-exception v0

    const-string v0, "TelecomExtension"

    const-string v1, "assistedDialFromDialPad - NoSuchMethodException"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static assistedDialing_Invoke(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 220
    :try_start_0
    sget-object v0, Lcom/android/server/telecom/operator/usa/TelecomExtension;->assisDialing:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 226
    :goto_0
    return-object v0

    .line 222
    :catch_0
    move-exception v0

    const-string v0, "TelecomExtension"

    const-string v2, "assistedDialing_Invoke - InvocationTargetException"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 223
    goto :goto_0

    .line 225
    :catch_1
    move-exception v0

    const-string v0, "TelecomExtension"

    const-string v2, " ssistedDialing_Invoke- IllegalAccessException"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 226
    goto :goto_0
.end method

.method private static getPhoneType()I
    .locals 4

    .prologue
    .line 309
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 310
    const-string v1, "TelecomExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPhoneType : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    return v0
.end method

.method public static getPresentation(ILcom/android/server/telecom/Call;)I
    .locals 2

    .prologue
    .line 449
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getOriginalHandle()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 450
    :cond_0
    :goto_0
    invoke-static {p0, v0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getPresentation(ILjava/lang/String;)I

    move-result v0

    return v0

    .line 449
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isCnapSpecialCaseRestricted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isCnapSpecialCaseUnknown(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getPresentation(ILjava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 454
    invoke-static {p1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isCnapSpecialCaseRestricted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TelecomExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkCnapSpecialCases, PRIVATE/Restricted string: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 455
    :goto_0
    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    if-eq v0, v1, :cond_0

    if-eq p0, v0, :cond_0

    move p0, v0

    .line 460
    :cond_0
    return p0

    .line 454
    :cond_1
    invoke-static {p1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isCnapSpecialCaseUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "TelecomExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkCnapSpecialCases, UNKNOWN/Unavailable string: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-string v0, "TelecomExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkCnapSpecialCases, normal str. number: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method public static getPresentationString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const v2, 0x7f080008

    .line 510
    invoke-static {p1, p2}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getPresentation(ILjava/lang/String;)I

    move-result v0

    .line 511
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 512
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 521
    :cond_0
    :goto_0
    return-object p2

    .line 513
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 514
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 519
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private static getSecureSettingBoolean(Ljava/lang/String;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 429
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p0, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSilence()Z
    .locals 1

    .prologue
    .line 555
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 556
    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->getSilence()Z

    move-result v0

    .line 559
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStreamByToneId(Lcom/android/server/telecom/CallAudioManager;II)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 246
    packed-switch p2, :pswitch_data_0

    .line 256
    :goto_0
    const-string v1, "TelecomExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getStreamByToneId - toneId : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / stream : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    return p1

    .line 248
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/telecom/CallAudioManager;->isBluetoothDeviceAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/CallAudioManager;->isWiredHeadsetPluggedIn()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move p1, v0

    .line 250
    goto :goto_0

    .line 252
    :cond_1
    const/4 p1, 0x4

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x38f
        :pswitch_0
    .end packed-switch
.end method

.method private static isAssistedDialingNumber()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 232
    :try_start_0
    const-class v1, Landroid/telephony/PhoneNumberUtils;

    const-string v2, "isAssistedDialingNumber"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 233
    const-string v2, "TelecomExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isAssisted.getBoolean"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 240
    :goto_0
    return v0

    .line 235
    :catch_0
    move-exception v1

    .line 236
    const-string v2, "TelecomExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NoSuchFieldException"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 238
    :catch_1
    move-exception v1

    .line 239
    const-string v2, "TelecomExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IllegalAccessException"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isCallForwardingNumber(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 150
    if-nez p0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    sget-object v2, Lcom/android/server/telecom/operator/usa/TelecomExtension;->mCallForwardingNumberList:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 152
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 151
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static isCdmaOtaSpNumber(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 299
    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 305
    :cond_0
    :goto_0
    return v0

    .line 300
    :cond_1
    if-eqz p0, :cond_0

    .line 301
    const-string v1, "*228"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_0

    .line 303
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isCnapSpecialCaseRestricted(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 477
    const-string v0, "PRIVATE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "P"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RES"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCnapSpecialCaseUnknown(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 481
    const-string v0, "UNAVAILABLE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UNKNOWN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UNA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "U"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDomesticRoaming()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 333
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 334
    if-eqz v1, :cond_0

    .line 335
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->IsDomesticRoaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 339
    :cond_0
    :goto_0
    return v0

    .line 336
    :catch_0
    move-exception v1

    .line 337
    const-string v2, "TelecomExtension"

    const-string v3, "phone.IsDomesticRoaming() failed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isDomesticRoamingSettingInService()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 360
    const-string v0, "roam_guard_call_domestic"

    invoke-static {v0, v1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    .line 361
    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isDomesticRoaming()Z

    move-result v4

    sget v0, Lcom/android/server/telecom/operator/usa/TelecomExtension;->mServiceState:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v5, "TelecomExtension"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "StateInService : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / isDomesticRoaming : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5, v6, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    move v0, v1

    .line 363
    :goto_1
    const-string v4, "TelecomExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DomesticCallGuardEnabled : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / isDomesticRoamingInService : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 361
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 365
    goto :goto_2
.end method

.method private static isEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 261
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 265
    :goto_0
    return v0

    .line 261
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isInternationalRoaming()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 345
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 346
    if-eqz v1, :cond_0

    .line 347
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->IsInternationalRoaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 351
    :cond_0
    :goto_0
    return v0

    .line 348
    :catch_0
    move-exception v1

    .line 349
    const-string v2, "TelecomExtension"

    const-string v3, "phone.IsInternationalRoaming() failed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isInternationalRoamingSettingInService()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 375
    const-string v0, "roam_guard_call_international"

    invoke-static {v0, v1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    .line 376
    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isInternationalRoaming()Z

    move-result v4

    sget v0, Lcom/android/server/telecom/operator/usa/TelecomExtension;->mServiceState:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v5, "TelecomExtension"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "StateInService : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / isInternationalRoaming : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5, v6, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    move v0, v1

    .line 378
    :goto_1
    const-string v4, "TelecomExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "InternationalCallGuardEnabled : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / isInternationalRoamingInService : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 376
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 380
    goto :goto_2
.end method

.method public static isInternationalRoamingSettingInServiceGsm()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 419
    sget v0, Lcom/android/server/telecom/operator/usa/TelecomExtension;->mServiceState:I

    if-nez v0, :cond_0

    move v0, v1

    .line 420
    :goto_0
    const-string v3, "sprint_gsm_voice_guard"

    invoke-static {v3, v1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    .line 421
    sget-boolean v4, Lcom/android/server/telecom/operator/usa/TelecomExtension;->mRoaming:Z

    .line 423
    const-string v5, "TelecomExtension"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "StateInService : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / internationalCallGuardEnabledGsm : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / roaming : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5, v6, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 419
    goto :goto_0

    :cond_1
    move v1, v2

    .line 425
    goto :goto_1
.end method

.method public static isOkToLogThisCall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 437
    invoke-static {p0, p1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 438
    const-string v0, "emergency_calllog_disable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 440
    :goto_0
    invoke-static {p1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isCdmaOtaSpNumber(Ljava/lang/String;)Z

    move-result v5

    .line 441
    const-string v3, "otasp_calllog_disable"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v1

    .line 443
    :goto_1
    if-eqz v4, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz v5, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    move v2, v1

    .line 445
    :cond_2
    return v2

    :cond_3
    move v0, v2

    .line 438
    goto :goto_0

    :cond_4
    move v3, v2

    .line 441
    goto :goto_1
.end method

.method public static isOtaSpNumber(Lcom/google/common/collect/ImmutableCollection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 581
    const-string v0, "activate_your_phone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 582
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 583
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 584
    const-string v3, "TelecomExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isOtaSpNumber("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getOriginalHandle()Landroid/net/Uri;

    move-result-object v0

    .line 587
    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 590
    if-eqz v0, :cond_0

    .line 595
    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isCdmaOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    const/4 v0, 0x1

    .line 601
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 599
    goto :goto_0

    :cond_2
    move v0, v1

    .line 601
    goto :goto_0
.end method

.method public static isPresentationAllowed(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 485
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static processOutgoingCallIntent(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/Intent;
    .locals 14

    .prologue
    .line 85
    const/4 v3, 0x0

    .line 87
    const-string v0, "extra_by_pass"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 88
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-static {p1, v5}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 91
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v7

    .line 92
    const-string v0, "videocall"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 94
    if-eqz v6, :cond_0

    .line 95
    const/4 v1, 0x0

    const-string v0, "emergency_call_tone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "emergency_call_tone_always"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lcom/android/server/telecom/InCallTonePlayer$Factory;

    iget-object v1, v7, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-direct {v0, v1}, Lcom/android/server/telecom/InCallTonePlayer$Factory;-><init>(Lcom/android/server/telecom/CallAudioManager;)V

    .line 97
    const/16 v1, 0x38f

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/InCallTonePlayer$Factory;->createPlayer(I)Lcom/android/server/telecom/InCallTonePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/InCallTonePlayer;->startTone()V

    .line 98
    const-wide/16 v0, 0x258

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 102
    :cond_0
    const-string v0, "assisted_dialing_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    const/4 v0, 0x0

    const-string v1, "global_network_cdma_gsm_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_dialing"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const-string v1, "origin"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "voicemail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {p0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getVoiceCallSubId(Landroid/content/Intent;)J

    move-result-wide v10

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_14

    const-string v0, "tel"

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    :goto_2
    const-string v2, "TelecomExtension"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "extraOrigin : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2, v10, v11}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "from_contact"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0, p1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->assistedDialFromDialPad(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    const-string v2, "TelecomExtension"

    const-string v9, "- got number from assisted dialing: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v2, v9, v10}, Lcom/android/server/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 105
    :cond_2
    const-string v0, "emergency_calls_only_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "ril.cdma.inecmmode"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v6, :cond_7

    .line 108
    const/4 v0, 0x1

    .line 137
    :goto_4
    if-eqz v0, :cond_3

    if-nez v4, :cond_3

    .line 139
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    const-string v2, "extra_dialog_type"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 143
    const/4 p0, 0x0

    .line 146
    :cond_3
    return-object p0

    .line 95
    :cond_4
    const-string v0, "emergency_call_tone_volume"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "emergency_tone"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v2, v9, :cond_15

    const/4 v2, 0x1

    if-eq v0, v2, :cond_15

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 103
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_6
    invoke-static {v0, p1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->assistedDialFromContactList(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 109
    :cond_7
    const-string v0, "roaming_enhancement"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez v6, :cond_c

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isDomesticRoamingSettingInService()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isInternationalRoamingSettingInService()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_8
    const/4 v0, 0x1

    :goto_5
    if-nez v0, :cond_a

    :cond_9
    const-string v0, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isInternationalRoamingSettingInServiceGsm()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 115
    :cond_a
    const/4 v0, 0x2

    goto/16 :goto_4

    .line 109
    :cond_b
    const/4 v0, 0x0

    goto :goto_5

    .line 116
    :cond_c
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v7}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v7}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getHasBeenVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getIsTTYOn()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v7}, Lcom/android/server/telecom/CallsManager;->hasAnyCalls()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    if-nez v6, :cond_e

    .line 121
    const/16 v0, 0x12c

    goto/16 :goto_4

    .line 122
    :cond_e
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v7}, Lcom/android/server/telecom/CallsManager;->hasAnyCalls()Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz v8, :cond_f

    .line 125
    const/16 v0, 0x12d

    goto/16 :goto_4

    .line 126
    :cond_f
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v7}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isModifyReceiveState(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v7}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 129
    invoke-virtual {v7}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getSecConnectionServiceWrapper()Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->respondModifyCall(ZLjava/lang/String;)V

    move v0, v3

    goto/16 :goto_4

    .line 130
    :cond_10
    const-string v0, "us_cdma_call_fowarding"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {v5}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isCallForwardingNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 132
    const/4 v0, 0x3

    goto/16 :goto_4

    .line 133
    :cond_11
    const-string v0, "wireless_priority_service_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-nez v5, :cond_12

    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_13

    .line 135
    const/16 v0, 0xc8

    goto/16 :goto_4

    .line 133
    :cond_12
    const-string v0, "*272"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_6

    :cond_13
    move v0, v3

    goto/16 :goto_4

    :cond_14
    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_2

    :cond_15
    move v0, v1

    goto/16 :goto_0
.end method

.method public static recalculateRedialCount(II)I
    .locals 2

    .prologue
    .line 547
    const-string v0, "auto_retry_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 549
    const/16 p0, 0xa

    .line 551
    :cond_0
    return p0
.end method

.method public static setAssisted(Lcom/android/services/telephony/common/SecCallExtra;)V
    .locals 1

    .prologue
    .line 610
    if-eqz p0, :cond_0

    .line 611
    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isAssistedDialingNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setAssisted(I)V

    .line 612
    :cond_0
    return-void

    .line 611
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setRoaming(Z)V
    .locals 0

    .prologue
    .line 323
    sput-boolean p0, Lcom/android/server/telecom/operator/usa/TelecomExtension;->mRoaming:Z

    .line 324
    return-void
.end method

.method public static setServiceState(I)V
    .locals 0

    .prologue
    .line 315
    sput p0, Lcom/android/server/telecom/operator/usa/TelecomExtension;->mServiceState:I

    .line 316
    return-void
.end method

.method public static shouldMakeAutoRedial(Landroid/content/Context;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 537
    const-string v1, "auto_retry_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 539
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_auto_retry"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 540
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    move p1, v0

    .line 543
    :cond_1
    return p1
.end method

.method public static updateCallerInfo(Lcom/android/internal/telephony/CallerInfo;Lcom/android/server/telecom/Call;)V
    .locals 2

    .prologue
    .line 563
    const-string v0, "usa_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 566
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 567
    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static updateContentValues(Landroid/content/ContentValues;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 2

    .prologue
    .line 572
    const-string v0, "usa_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 575
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 576
    const-string v1, "cnap_name"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateHdvoiceCall(Lcom/android/server/telecom/Call;Z)V
    .locals 2

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    .line 292
    if-eqz v1, :cond_0

    .line 293
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setHDIcon(I)V

    .line 294
    invoke-virtual {p0}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/Call;->updateExtras(Landroid/os/Bundle;)V

    .line 296
    :cond_0
    return-void

    .line 293
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static wirelessPriorityServiceCall()V
    .locals 2

    .prologue
    .line 615
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    .line 616
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLastMoCallIntent()Landroid/content/Intent;

    move-result-object v1

    .line 617
    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    invoke-static {v1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->wirelessPriorityServiceCall(Landroid/content/Intent;)V

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    if-eqz v1, :cond_0

    .line 621
    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->getInstance()Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->setWirelessPriorityServiceIntent(Landroid/content/Intent;)V

    .line 622
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->disconnectAllCalls()V

    goto :goto_0
.end method

.method public static wirelessPriorityServiceCall(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 628
    if-eqz p0, :cond_0

    .line 629
    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 630
    const-string v0, "extra_by_pass"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 631
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/TelecomApp;->startActivity(Landroid/content/Intent;)V

    .line 633
    :cond_0
    return-void
.end method
