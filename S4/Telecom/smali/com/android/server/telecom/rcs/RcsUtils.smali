.class public final Lcom/android/server/telecom/rcs/RcsUtils;
.super Ljava/lang/Object;
.source "RcsUtils.java"

# interfaces
.implements Lcom/android/services/telephony/common/RcsTransferConstants;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lcom/android/server/telecom/rcs/RcsUtils$1;

    invoke-direct {v0}, Lcom/android/server/telecom/rcs/RcsUtils$1;-><init>()V

    .line 208
    new-instance v0, Lcom/android/server/telecom/rcs/RcsUtils$2;

    invoke-direct {v0}, Lcom/android/server/telecom/rcs/RcsUtils$2;-><init>()V

    return-void
.end method

.method public static generateTelUri(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 83
    if-nez p0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null telephone number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "tel:"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    const-string v0, "country_detector"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v1, "RcsShare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-object v0
.end method

.method public static getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 49
    :goto_0
    return-object v0

    .line 47
    :catch_0
    move-exception v1

    const-string v1, "RcsShare"

    const-string v2, "getPhoneNumber() is null "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
