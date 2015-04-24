.class public Lcom/android/server/telecom/operator/jpn/SecJpnTelecomUtils;
.super Ljava/lang/Object;
.source "SecJpnTelecomUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field static sPatternCountryCode:Ljava/util/regex/Pattern;

.field static sPatternInterPrefix:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomUtils;->TAG:Ljava/lang/String;

    .line 51
    const-string v0, "^\\*31#0|^#31#0|^0"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomUtils;->sPatternCountryCode:Ljava/util/regex/Pattern;

    .line 52
    const-string v0, "^\\*31#\\+|^#31#\\+|^\\+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomUtils;->sPatternInterPrefix:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static checkInterprefixPopup(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v1, 0x0

    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 88
    const-string v0, "tel"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomUtils;->TAG:Ljava/lang/String;

    const-string v1, "URI does not have SCHEME_TEL"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    .line 118
    :goto_0
    return v0

    .line 94
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "international_dialing_assist"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 95
    sget-object v0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomUtils;->TAG:Ljava/lang/String;

    const-string v1, "international_dialing_assist is off"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    .line 96
    goto :goto_0

    .line 100
    :cond_1
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    sget-object v0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomUtils;->TAG:Ljava/lang/String;

    const-string v1, "keyguard service is on"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    .line 103
    goto :goto_0

    .line 107
    :cond_2
    const-string v0, "android.phone.extra.CALL_DIRECTCALL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    sget-object v0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EXTRA_CALL_DIRECTCALL : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "android.phone.extra.CALL_DIRECTCALL"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    .line 109
    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    sget-object v0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomUtils;->TAG:Ljava/lang/String;

    const-string v1, "airplaing mode is on"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v3

    .line 115
    goto :goto_0

    .line 118
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    aget-char v0, v0, v3

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_0

    :cond_5
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    goto/16 :goto_0

    :cond_6
    invoke-static {p0}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomUtils;->useDocomoNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomUtils;->sPatternInterPrefix:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "+"

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v3

    goto/16 :goto_0

    :cond_7
    move v0, v3

    goto/16 :goto_0

    :cond_8
    const-string v0, "+81"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v3

    goto/16 :goto_0

    :cond_9
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_a
    move v0, v4

    :goto_1
    if-eqz v0, :cond_11

    const-string v0, "international_dial_assist_kdi"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v8, :cond_14

    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string v2, "440"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "50"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v4

    :goto_3
    if-nez v0, :cond_11

    :cond_b
    move v0, v3

    goto/16 :goto_0

    :cond_c
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v8, :cond_15

    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    const-string v6, "440"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "441"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_d
    move v0, v4

    goto :goto_1

    :cond_e
    const-string v6, "001"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "01"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v4

    goto :goto_1

    :cond_f
    move v0, v3

    goto :goto_1

    :cond_10
    move v0, v3

    goto :goto_3

    :cond_11
    sget-object v0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomUtils;->sPatternCountryCode:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_13

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v3

    goto/16 :goto_0

    :cond_12
    move v0, v3

    goto/16 :goto_0

    :cond_13
    move v0, v4

    goto/16 :goto_0

    :cond_14
    move-object v0, v1

    goto :goto_2

    :cond_15
    move-object v0, v1

    move-object v2, v1

    goto :goto_4
.end method

.method static useDocomoNetwork(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 219
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 222
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_2

    .line 226
    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 229
    :goto_0
    const-string v4, "440"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "10"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 235
    :goto_1
    return v0

    .line 232
    :cond_0
    const-string v4, "001"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "01"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 233
    goto :goto_1

    :cond_1
    move v0, v3

    .line 235
    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
