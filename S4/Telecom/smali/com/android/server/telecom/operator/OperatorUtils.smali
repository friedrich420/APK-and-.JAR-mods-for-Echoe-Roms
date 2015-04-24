.class public final Lcom/android/server/telecom/operator/OperatorUtils;
.super Ljava/lang/Object;
.source "OperatorUtils.java"


# static fields
.field private static final SAFE_DEBUG:Z

.field public static mIsWzoneCall:Z

.field public static mWzoneprefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 42
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/telecom/operator/OperatorUtils;->SAFE_DEBUG:Z

    .line 83
    sput-boolean v1, Lcom/android/server/telecom/operator/OperatorUtils;->mIsWzoneCall:Z

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/telecom/operator/OperatorUtils;->mWzoneprefix:Ljava/lang/String;

    return-void
.end method

.method public static doWakeUpScreen(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 90
    const-string v0, "support_emergency_report_helper_app"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-static {p0, v4}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string v3, "112"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 93
    const-string v5, "startFlag"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 94
    sget-boolean v6, Lcom/android/server/telecom/operator/OperatorUtils;->SAFE_DEBUG:Z

    if-eqz v6, :cond_4

    .line 95
    const-string v6, "002"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "114"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    or-int/2addr v0, v3

    .line 97
    :goto_1
    if-eqz v0, :cond_1

    .line 98
    if-nez v5, :cond_0

    const-string v0, "startFlag"

    const-string v3, "001"

    invoke-virtual {p0, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    :cond_0
    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->isOneTouchReportEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const-string v0, "002"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 114
    :cond_1
    if-eqz v1, :cond_2

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->wakeUpScreen(Landroid/content/Context;)V

    .line 115
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 95
    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method public static getCallLogType(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x2

    .line 131
    if-nez p0, :cond_0

    .line 158
    :goto_0
    return v0

    .line 133
    :cond_0
    sget-boolean v1, Lcom/android/server/telecom/operator/OperatorUtils;->mIsWzoneCall:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/telecom/operator/OperatorUtils;->mWzoneprefix:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 134
    sget-object v1, Lcom/android/server/telecom/operator/OperatorUtils;->mWzoneprefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 136
    :cond_1
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 138
    :cond_2
    const-string v1, "***"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 139
    const/16 v0, 0x16

    .line 157
    :cond_3
    :goto_1
    const-string v1, "OperatorUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCallLogType = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 140
    :cond_4
    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "##"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    .line 143
    const/16 v0, 0x15

    goto :goto_1

    .line 144
    :cond_5
    const-string v1, "emergency_find_lost_phone"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "1521044"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 146
    const/16 v0, 0x28

    goto :goto_1

    .line 147
    :cond_6
    const-string v1, "emergency_find_lost_phone"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "0000"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/server/telecom/operator/OperatorUtils;->isFindService()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 150
    const/16 v0, 0x29

    goto :goto_1

    .line 152
    :cond_7
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 153
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 154
    const/16 v0, 0xc

    goto :goto_1
.end method

.method public static getSKTCallLogNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 181
    :cond_0
    :goto_0
    return-object p0

    .line 172
    :cond_1
    sget-boolean v0, Lcom/android/server/telecom/operator/OperatorUtils;->mIsWzoneCall:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/telecom/operator/OperatorUtils;->mWzoneprefix:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 173
    sget-object v0, Lcom/android/server/telecom/operator/OperatorUtils;->mWzoneprefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 175
    :cond_2
    const-string v0, "***"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 177
    :cond_3
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "##"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getSKTRADisplayNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 118
    const/16 v1, 0x8

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "+82"

    aput-object v1, v2, v0

    const/4 v1, 0x1

    const-string v3, "+0082"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "0082"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "+082"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "082"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "82"

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string v3, "00682"

    aput-object v3, v2, v1

    const/4 v1, 0x7

    const-string v3, "+00682"

    aput-object v3, v2, v1

    .line 119
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xa

    if-le v1, v3, :cond_2

    .line 120
    array-length v3, v2

    move v1, v0

    move-object v0, p0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 121
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object p0, v0

    .line 126
    :cond_2
    return-object p0
.end method

.method private static isFindService()Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 186
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 188
    :try_start_0
    const-string v1, "emergency_find_lost_phone"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sktdm_mem/lawlock.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 194
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    .line 192
    :catch_0
    move-exception v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 197
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static isLGTSIM()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 238
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    const-string v3, "OperatorUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ril.simtype = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    const-string v3, "3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "45006"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    :cond_0
    const/4 v0, 0x1

    .line 246
    :cond_1
    return v0
.end method

.method public static isMMICode(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 204
    if-eqz p0, :cond_3

    .line 205
    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    :cond_1
    :goto_0
    return v0

    .line 207
    :cond_2
    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "*52"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "*520"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "*51"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "*510"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "*88"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSKTSIM()Z
    .locals 3

    .prologue
    .line 220
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    const-string v1, "ril.simtype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    const-string v2, "4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "45005"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    :cond_0
    const/4 v0, 0x1

    .line 225
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
