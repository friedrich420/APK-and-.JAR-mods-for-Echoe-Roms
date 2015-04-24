.class public final Lcom/android/services/telephony/common/PhoneFeature;
.super Ljava/lang/Object;
.source "PhoneFeature.java"


# static fields
.field private static baseband:Ljava/lang/String;

.field private static buildcarrier:Ljava/lang/String;

.field private static countryiso_code:Ljava/lang/String;

.field private static deviceType:Ljava/lang/String;

.field private static mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

.field private static mContext:Landroid/content/Context;

.field private static mFeatureList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static salesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    .line 63
    const-string v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    .line 67
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    .line 69
    const-string v0, "persist.sys.country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->deviceType:Ljava/lang/String;

    .line 73
    const-string v0, "ro.baseband"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->baseband:Ljava/lang/String;

    .line 75
    const-string v0, "ro.csc.countryiso_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    .line 77
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static hasFeature(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2200
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2201
    :cond_0
    const/4 v0, 0x0

    .line 2203
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method private static hasMobileCarrier()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2320
    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jalte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2342
    :cond_0
    :goto_0
    return v0

    .line 2325
    :cond_1
    :try_start_0
    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2326
    if-eqz v1, :cond_0

    .line 2327
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2328
    const-string v2, "com.skt.prod.phone"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2330
    const/4 v0, 0x1

    goto :goto_0

    .line 2340
    :catch_0
    move-exception v1

    goto :goto_0

    .line 2338
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static hasRCSBlackBird()Z
    .locals 3

    .prologue
    .line 2189
    const/4 v0, 0x0

    .line 2190
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_ConfigRcsFeatures"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2191
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2192
    const-string v2, "PARTIAL_BRANDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2193
    const/4 v0, 0x1

    .line 2196
    :cond_0
    return v0
.end method

.method private static hasVTSupport(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2281
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2282
    if-eqz v1, :cond_0

    .line 2283
    const-string v2, "com.sec.feature.call_vt_support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2288
    :cond_0
    :goto_0
    return v0

    .line 2286
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static hasVisualVoicemail()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2293
    :try_start_0
    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2294
    if-eqz v1, :cond_0

    .line 2295
    const-string v2, "com.coremobility.app.vnotes"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2297
    iget-boolean v0, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2304
    :cond_0
    :goto_0
    return v0

    .line 2302
    :catch_0
    move-exception v1

    goto :goto_0

    .line 2300
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static isHProject()Z
    .locals 3

    .prologue
    .line 2400
    const/4 v0, 0x0

    .line 2401
    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "h3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "ha3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "hlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2402
    :cond_0
    const/4 v0, 0x1

    .line 2404
    :cond_1
    return v0
.end method

.method private static isJProject()Z
    .locals 3

    .prologue
    .line 2390
    const/4 v0, 0x0

    .line 2391
    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "ja3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jalte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "ks01lte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jsgltezm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jfltezm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jflte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jactivelte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jfvelte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jftdd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "jfve"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2393
    :cond_0
    const/4 v0, 0x1

    .line 2396
    :cond_1
    return v0
.end method

.method private static isKProject()Z
    .locals 3

    .prologue
    .line 2409
    const/4 v0, 0x0

    .line 2410
    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "klte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "k3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "kqlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "kccat6xx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "lentislte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2412
    :cond_0
    const/4 v0, 0x1

    .line 2414
    :cond_1
    return v0
.end method

.method private static isMultiSimConfigDsdaEnabled()Z
    .locals 2

    .prologue
    .line 2228
    const-string v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2230
    const-string v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isMultiSimConfigDsdsEnabled()Z
    .locals 2

    .prologue
    .line 2222
    const-string v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2224
    const-string v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private static isTProject()Z
    .locals 3

    .prologue
    .line 2419
    const/4 v0, 0x0

    .line 2420
    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "trlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "trhlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "trelte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "tblte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "tbelte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "tre3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "trhplte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "tr3calte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "tre3calte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2423
    :cond_0
    const/4 v0, 0x1

    .line 2425
    :cond_1
    return v0
.end method

.method private static isTablet()Z
    .locals 2

    .prologue
    .line 2211
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->deviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->deviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2212
    const/4 v0, 0x1

    .line 2214
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isZeroProject()Z
    .locals 3

    .prologue
    .line 2429
    const/4 v0, 0x0

    .line 2430
    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "zerolte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "zeroqlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "zeroflte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v2, "zerofqlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2432
    :cond_0
    const/4 v0, 0x1

    .line 2434
    :cond_1
    return v0
.end method

.method public static makeFeature(Landroid/content/Context;)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1108
    sput-object p0, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    .line 1109
    const-string v0, "DCM"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KDI"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SBM"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "SC-04F"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "kltedcm"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    .line 1110
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v1, "lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "jftddzh"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "jftddzn"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "kccat6xx"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    :cond_2
    move v1, v2

    :goto_1
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "enabled"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "enabled"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    const/4 v0, 0x0

    :try_start_0
    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_47

    const/4 v0, 0x4

    :try_start_1
    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_47

    move v0, v2

    :goto_2
    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_rcs"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_rcs_bb"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasRCSBlackBird()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "common_volte"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "common_vt"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "j_device"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "use_action_memo_string"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTProject()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v4, "CscFeature_VoiceCall_ConfigRecording"

    invoke-virtual {v0, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "voice_call_recording"

    const-string v6, "RecordingAllowed"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "voice_call_recording_easy_mode"

    const-string v5, "voice_call_recording"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "voice_call_recording_call_log"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "default_caller_information"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_volte_outgoing_calltype_menu"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "SFR"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "volte_settings_in_mobile_networks_eur"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string v0, "persist.radio.VolteSettingMode"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string v0, "NEE"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "default_volte"

    const-string v5, "common_volte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "volte_call_waiting_terminal"

    const-string v5, "DTR"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "volte_ims_deregi"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string v0, "FTM"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    move v0, v2

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "default_incomingcall_popup"

    const-string v0, "j_device"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4b

    move v0, v2

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "fdn_button_call"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_EnableCallButtonInFdnList"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "default_vm_in_callforwarding"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_EnableVmsNumberAsDefaultInCallForwarding"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "disable_sip_call_setting"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTProject()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "menu_simplification"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "ringtone_mute_gap"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "klte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "k3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "kqlte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "kccat6xx"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8c

    :cond_3
    move v0, v2

    :goto_7
    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v7, "kminilte"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v7, "kmini3g"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    move v0, v2

    :cond_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_safetycare"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v4, "CscFeature_Common_ConfigNetworkModeDuringEmergency"

    invoke-virtual {v0, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_safetycare_not_change_network_mode"

    const-string v6, "support_safetycare"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4c

    const-string v6, "NOCHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    move v0, v2

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_wfc"

    const-string v0, "EVR"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "FTM"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "MOB"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    :cond_6
    move v0, v2

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "national_roaming_mode_menu"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_EnableDataRoamingMenuInDetail"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "national_roaming_mode_menu_play"

    const-string v0, "PRT"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "XEO"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    :cond_7
    move v0, v2

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "data_roaming_option_national"

    const-string v5, "national"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_DataRoamingOption"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "data_roaming_option_all"

    const-string v5, "all"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_DataRoamingOption"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "data_roaming_noti_tray"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_EnableDataRoamingButtonInQuickPanel"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_network_mode_wcdma_only"

    const-string v5, "wcdmaonly"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_DisableNetworkMode"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_network_mode_gsm_only"

    const-string v5, "gsmonly"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_DisableNetworkMode"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_network_mode_lte"

    const-string v5, "lte"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_DisableNetworkMode"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "cust_network_sel_menu4_atl_lte"

    const-string v5, "ATL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "cust_network_sel_menu4_o2"

    const-string v5, "O2"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "cust_network_sel_menu4_orange"

    const-string v5, "ORANGE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "cust_network_sel_menu4_sfr"

    const-string v5, "SFR"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "cust_network_sel_menu4_vodafone"

    const-string v5, "VODAFONE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "cust_network_sel_menu4_yog"

    const-string v5, "YOG"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "cust_network_sel_menu4_numeric"

    const-string v5, "NUMERIC"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "cust_network_sel_menu4_lteonly"

    const-string v5, "LTEONLY"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "network_state_manual_search"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_ManualSearchListWithDetailStatus"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "bootup_data_connection_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_EnableDataServicePopup"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "bootup_data_tariff_rate_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Settig_EnableDataTariffWizard"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "emergency_contacts_item"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "emergency_contacts"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "emergency_dialer_expandable_dial"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "show_extra_volume_in_call_card"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v0

    if-nez v0, :cond_4f

    move v0, v2

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "show_personalise_sound_in_call_card"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v0

    if-eqz v0, :cond_50

    :cond_8
    move v0, v2

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "enbale_voicerecording_popup_when_incoming"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "dtmf_smaller_hit_target"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "network_selection_delay"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "allow_select_network_mode"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_conference_call"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_call_transfer"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_merge_call"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "extra_volume"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "default_noise_reduction"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_voice_eq_bt_headset"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v0

    if-eqz v0, :cond_51

    :cond_9
    move v0, v2

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "noise_suppression"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "noise_suppression_support_speaker"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "enable_noise_reduction_in_wbamr"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "force_initial_audiostate"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "extra_ringer"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    const-string v4, "sensor"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-nez v0, :cond_52

    :cond_a
    move v0, v3

    :goto_e
    if-eqz v0, :cond_54

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v0

    if-eqz v0, :cond_54

    :cond_b
    move v0, v2

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "extra_ringer_default_on"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "vt_audio_processing_on_ap"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "psvt_audio_processing_on_ap"

    const-string v0, "IMS_HYBRID_CMC"

    const-string v6, "IMS_HYBRID_QCT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "IMS_HYBRID_IMC"

    const-string v6, "IMS_HYBRID_QCT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    :cond_c
    move v0, v2

    :goto_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "disable_autoanswer_in_silent_and_earjackmode"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_DisableAutoAnswerInSilentNEarjactMode"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "disable_button_sound_effects"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "trelte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "tre3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_d
    move v0, v2

    :goto_11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "disappear_ussd_cancel_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_DisableUssdCancelPopup"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "beep_vibration_for_ussd"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_EnableBeepVibration4UssdAlert"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "keypad_type_to_phone_for_ussd"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_KeypadTypeToDigit4UssdInput"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "geo_description_disable"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_DisableGeoDescription"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "in_call_menu_message_enable"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "in_call_menu_contact_enable"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "in_call_menu_memo_enable"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "ha3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "hlte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "h3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    move v0, v2

    :goto_12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_mirror_link"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_easy_mode"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "force_turn_on_screen_for_new_incoming"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "vt_dual_camera"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "jactivelte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_58

    move v0, v2

    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "video_call_not_support"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasVTSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_59

    move v0, v2

    :goto_14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "vt_sec_phone_upgraded_ui"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "ja3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "jflte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "jactivelte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "ha3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "h3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "hlte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "ks01lte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    :cond_e
    move v0, v2

    :goto_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "vt_call_fail_fallback"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "ja3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "jflte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "jactivelte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "ks01lte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5b

    :cond_f
    move v0, v2

    :goto_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "not_support_decoration"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "trlte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "trelte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "tblte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5c

    :cond_10
    move v0, v2

    :goto_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "easy_mode_using_new_concept"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "trlte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "trelte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "tblte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    :cond_11
    move v0, v2

    :goto_18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "vt_left_keypad_enable_ui"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v0

    if-eqz v0, :cond_5e

    :cond_12
    move v0, v2

    :goto_19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_multisim"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isMultiSimConfigDsdsEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isMultiSimConfigDsdaEnabled()Z

    move-result v0

    if-eqz v0, :cond_5f

    :cond_13
    move v0, v2

    :goto_1a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "feature_multisim_dsds"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isMultiSimConfigDsdsEnabled()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "feature_multisim_dsda"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isMultiSimConfigDsdaEnabled()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_multisim_emergency_call_cp_limitation"

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    move v0, v2

    :goto_1b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "flash_notification"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FLASH_NOTIFICATION"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_motion"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    const-string v6, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "disable_format_number"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "personal_vibration"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    const-string v6, "vibrator"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_8b

    :cond_14
    move v0, v3

    :goto_1c
    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v7, "ks01lte"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_15

    move v0, v2

    :cond_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_bottom_menu_hw_key"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v0

    if-eqz v0, :cond_61

    :cond_16
    move v0, v2

    :goto_1d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "hide_buttons_on_menu_click"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "ha3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "ja3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_62

    :cond_17
    move v0, v2

    :goto_1e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "hide_phone_type_icon"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v0

    if-eqz v0, :cond_63

    :cond_18
    move v0, v2

    :goto_1f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "use_action_memo_duringcall"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTProject()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "use_memo_string"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "lentislte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "klte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_64

    :cond_19
    move v0, v2

    :goto_20
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "hw_home_key"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x1120051

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_65

    move v0, v2

    :goto_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "mobile_data_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "Cscfeature_Settings_EnablePromptPopup_When_Activating_DataConnection"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "gesture_callaccept"

    const-string v5, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "gesture_callaccept_k_device"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isKProject()Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "gesture_callaccept"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    move v0, v2

    :goto_22
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "speaker_on_by_air_gesture"

    const-string v0, "gesture_callaccept"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v0

    if-eqz v0, :cond_67

    :cond_1a
    move v0, v2

    :goto_23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "turn_on_speaker_by_proxisensor"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_in_call_status_setting"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "disable_incoming_call_popup_during_camera"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v6, "CscFeature_Camera_EnableCameraDuringCall"

    invoke-virtual {v0, v6, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_68

    :cond_1b
    move v0, v2

    :goto_24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_onehand_operation"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_second_screen"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.cocktailbar"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "clear_cover_small_ui_support"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "clear_cover_ui_support"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "ha3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "hlte"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "h3g"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    :cond_1c
    move v0, v2

    :goto_25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "feature_multisim_preferred_sim"

    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "incoming_call_popup_osup"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "mini_popup_call_ui"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTProject()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "samsung_screen_timeout_incall"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "hold_strip_same_as_phone_os_up"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v0

    if-eqz v0, :cond_6a

    :cond_1d
    move v0, v2

    :goto_26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "h_and_j_as_phone_os_up"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v0

    if-eqz v0, :cond_6b

    :cond_1e
    move v0, v2

    :goto_27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "network_rat_info_during_plmn_selection"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_UseRatInfoDuringPlmnSelection"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "ril_network_on"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "network_mode_list_lte"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "hide_mini_call_icon"

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "ha3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "hlte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "h3g"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v0

    if-eqz v0, :cond_6c

    :cond_1f
    move v0, v2

    :goto_28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "barge_in"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    iget-boolean v4, v4, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "ringtone_escalating"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "prevent_duplicated_popup_msg"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "voip_interworking"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SIN"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "sin_volte_ui"

    const-string v5, "common_volte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6d

    if-eqz v0, :cond_6d

    move v0, v2

    :goto_29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "STH"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "sth_volte_ui"

    const-string v5, "common_volte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6e

    if-eqz v0, :cond_6e

    move v0, v2

    :goto_2a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "XSP"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "xsp_volte_ui"

    const-string v5, "common_volte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f

    if-eqz v0, :cond_6f

    move v0, v2

    :goto_2b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sin_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "sth_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "xsp_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    :cond_20
    move v0, v2

    :goto_2c
    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "singapore_volte_ui"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "reduce_waste_point"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "keep_incallui_bind_service"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "delay_activity_finish"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isKProject()Z

    move-result v0

    if-eqz v0, :cond_71

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "klteduos"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_71

    const-string v0, "kltezn"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    move v0, v2

    :goto_2d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "close_system_dialog_in_call"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_penwindow_callscreen"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTProject()Z

    move-result v0

    if-eqz v0, :cond_72

    :cond_21
    move v0, v2

    :goto_2e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "feature_multisim_display_sim_icon"

    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_help_easy_mode"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v0

    if-nez v0, :cond_73

    move v0, v2

    :goto_2f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "enhanced_driving_mode"

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DRIVING_MODE"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "disable_voice_privacy_icon"

    const-string v4, "klteduosxx"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "support_split_settings"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "support_easy_mode"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "support_help_easy_mode"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    :cond_22
    const-string v0, "CHN"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "CHU"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "CTC"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "CHM"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "CHC"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    :cond_23
    move v0, v2

    :goto_30
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v0, "CTC"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v4, "ctc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_75

    :cond_24
    move v0, v2

    :goto_31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v0, "CHM"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v0, "CHC"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v6, "ltetdzc"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_76

    :cond_25
    move v0, v2

    :goto_32
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v0, "CHU"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v0, "CHN"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "CHU"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "CHM"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "CHC"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    :cond_26
    move v0, v2

    :goto_33
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_78

    :cond_27
    move v0, v2

    :goto_34
    if-eqz v0, :cond_2e

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "feature_chn"

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "feature_ctc"

    invoke-virtual {v0, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "fdn_nameinput_maxlength_limit"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_79

    :cond_28
    move v0, v2

    :goto_35
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "auto_redial_time_delay"

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "ip_call"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "action_bar_no_title_when_has_two_menu"

    const-string v10, "ip_call"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "support_charges_notification_in_pnl"

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "call_block_ui"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "cdma_additional_setting_enable"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "hide_caller_id"

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_call_fail_fallback"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasVTSupport(Landroid/content/Context;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "video_call_disable"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_29

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasVTSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7a

    :cond_29
    move v0, v2

    :goto_36
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "separate_call_reject"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasVTSupport(Landroid/content/Context;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_cmcc_operator_fallback"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_cmcc_adjust_camera_contrast_brightness"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_cmcc_adjust_screen_brightness"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_audio_mixed_recording"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_multimedia_ringback_tone_timer"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_cmcc_operator_open_close_camera"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_cmcc_accept_by_voicecall"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "vt_cmcc_display_start_call_time"

    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "remove_network_mode"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7b

    const-string v0, "network_mode_list_lte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7b

    move v0, v2

    :goto_37
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "preferred_networks"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "network_mode_list_lte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7c

    :cond_2a
    move v0, v2

    :goto_38
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "network_mode_tdlte"

    const-string v0, "network_mode_list_lte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7d

    :cond_2b
    move v0, v2

    :goto_39
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "display_tdscdma_instead_of_wcdma"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7e

    :cond_2c
    move v0, v2

    :goto_3a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "phone_number_locator"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "geo_description_disable"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ctc_country_code_locator"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_lunar_birthday"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "disable_sip_call_setting"

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "reject_call_with_message_icon_mode"

    const-string v6, "ICON"

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "yellowpage_callerid_info"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "cdma_apn_enable"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "ctc_call_time_duration"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "ctc_vip_mode"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "cdma_call_forwarding_indicator"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "feature_multisim_preferred_sim"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "sim2_2g_only"

    const-string v6, "feature_multisim"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "vt_missed_noti_during_call"

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7f

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasVTSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7f

    move v0, v2

    :goto_3b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "feature_multisim_emergency_call_cp_limitation"

    const-string v6, "klteduosctc"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "feature_multisim_emergency_call_ctc"

    const-string v6, "klteduosctc"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "feature_multisim_modem_type_DCGS"

    const-string v6, "DCGS"

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "ctc_cdma_smc_fac_req"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "get_orig_dial_string_enable"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "network_mode_cmcc"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "volte_settings_in_mobile_networks"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "volte_settings_in_mobile_networks_eur"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "ims_voice_conference"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "volte_cmcc_data_enable_popup"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "ims_voice_conference_cmcc"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "incoming_call_widget_for_volte"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "old_cp_select_network"

    const-string v4, "h3gzm"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "call_end_time_blink_ja3g"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v5, "ja3g"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    :cond_2e
    const-string v0, "TGY"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "BRI"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "CWT"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "TWN"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "FET"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "ZZH"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    :cond_2f
    move v0, v2

    :goto_3c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "TGY"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "ZZH"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    :cond_30
    move v0, v2

    :goto_3d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_hktw"

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "fdn_nameinput_maxlength_limit"

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_lunar_birthday"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "common_volte_hk"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "hk_local_ringback_tone"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "support_both_csps_vt"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "sim2_2g_only"

    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    :cond_32
    const-string v0, "DCM"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v0, "KDI"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v0, "SBM"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_82

    :cond_33
    move v0, v2

    :goto_3e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "dcm_callwait_tone_long_feature"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_dcm"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_kdi"

    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "feature_sbm"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_jpn"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "nck_block_feature"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_disable_call_hold_in_emergency"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_disable_block_reject_call"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "in_call_menu_message_enable"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_83

    move v0, v2

    :goto_3f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "close_system_dialog_in_call"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "hide_caller_id"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "emergency_contacts"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "emergency_dialer_expandable_dial"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "prohibit_second_call_in_emergency_call"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_voicemail_category"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "emergency_3lm"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "default_caller_information"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_84

    move v0, v2

    :goto_40
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_end_call_time_blink_extension"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_parse_network_service_ussd"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_conference_call"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_call_transfer"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_merge_call"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "network_mode_list_dcm_lte_3g"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_show_network_info_in_manual_search_list"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "kdi_show_network_info_in_manual_search_list"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "toddler_mode_jpn"

    const-string v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_TODDLER_MODE"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "airplain_mode_jpn"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "network_mode_list_kdi"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "tbltekdi"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "chagallltekdi"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "network_mode_list_kdi_roaming"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "automatic_answering_machine"

    const-string v6, "SEC_FLOATING_FEATURE_VOICECALL_SUPPORT_AUTO_ANSWERING_MEMO"

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_safetycare_not_change_network_mode"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_85

    :cond_36
    move v0, v2

    :goto_41
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_dsac_feature"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_not_support_extra_callog_type"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_sda_support_feature"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "disable_sip_call_setting"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_86

    :cond_37
    move v0, v2

    :goto_42
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_additional_call_setting"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_call_barring"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_call_forwarding"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "remove_fdn"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "dcm_reject_call_msg_limit"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_87

    :cond_38
    move v0, v2

    :goto_43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_auto_reject_conditions"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "international_dial_assist_dcm"

    const-string v6, "DCM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_AddPrefix4InternationalCall"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "international_dial_assist_kdi"

    const-string v6, "KDI"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_AddPrefix4InternationalCall"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "config_op_ui_call_setting_dcm"

    const-string v6, "DCM"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "config_op_ui_call_setting_kdi"

    const-string v6, "KDI"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "remove_volte_outgoing_calltype_menu"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "international_dial_assist_dcm"

    const-string v5, "DCM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_AddPrefix4InternationalCall"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "international_dial_assist_kdi"

    const-string v5, "KDI"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_AddPrefix4InternationalCall"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "config_op_ui_call_setting_dcm"

    const-string v5, "DCM"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "config_op_ui_call_setting_kdi"

    const-string v5, "KDI"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "wide_band_for_hd_icon"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "enable_video_call_content_menu"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "rearrange_preset_image_setting"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "dcm_not_support_vt_emr_call"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "handle_sip_error_code"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "ims_ps_barring"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "show_audio_codec_amr_wb"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "prohibit_chattering"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "camera_fail_image"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "prohibit_candid_shot"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "volte_cvo_feature"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "volte_jpn_orientation_feature"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "qvga_portrait_resolution_support"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "volte_jpn_ui"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "incoming_call_widget_for_volte"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "dcm_volte_popup_message"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "dcm_volte_keypad_enable_ui"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    :cond_3a
    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForKor()V

    .line 1116
    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForUsa()V

    .line 1117
    const-string v0, "kltevl"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "jfltevl"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "jfltevw"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    :cond_3b
    move v0, v2

    :goto_44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v0, "d2vw"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v0, "jfltevw"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    const-string v0, "jfltewx"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    :cond_3c
    move v0, v2

    :goto_45
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3d

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8a

    :cond_3d
    move v0, v2

    :goto_46
    if-eqz v0, :cond_40

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "beep_vibration_for_ussd"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "tty_enable"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "feature_can"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "video_call_disable"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3e

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasVTSupport(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3f

    :cond_3e
    move v3, v2

    :cond_3f
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    :cond_40
    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->makeFeatureForLatin()V

    .line 1119
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VT_ConfigPrivacyPolicy"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "video_call_remove_record_button"

    const-string v3, "record,capture"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    return-void

    .line 1109
    :cond_41
    const-string v0, "SC-02G"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "kltedcmactive"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto/16 :goto_0

    :cond_42
    const-string v0, "SCL23"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "kltekdi"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto/16 :goto_0

    :cond_43
    const-string v0, "SC-01G"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "tbltedcm"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto/16 :goto_0

    :cond_44
    const-string v0, "SCL24"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "tbltekdi"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto/16 :goto_0

    :cond_45
    const-string v0, "SC-03G"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "klimtltedcm"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto/16 :goto_0

    :cond_46
    const-string v0, "SCT21"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "chagallltekdi"

    sput-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    goto/16 :goto_0

    :cond_47
    move v0, v3

    .line 1110
    goto/16 :goto_2

    :catch_0
    move-exception v0

    move v0, v3

    :goto_47
    move v4, v0

    move v0, v3

    goto/16 :goto_2

    :cond_48
    move v0, v3

    goto/16 :goto_3

    :cond_49
    move v0, v3

    goto/16 :goto_4

    :cond_4a
    move v0, v3

    goto/16 :goto_5

    :cond_4b
    move v0, v3

    goto/16 :goto_6

    :cond_4c
    move v0, v3

    goto/16 :goto_8

    :cond_4d
    move v0, v3

    goto/16 :goto_9

    :cond_4e
    move v0, v3

    goto/16 :goto_a

    :cond_4f
    move v0, v3

    goto/16 :goto_b

    :cond_50
    move v0, v3

    goto/16 :goto_c

    :cond_51
    move v0, v3

    goto/16 :goto_d

    :cond_52
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_a

    move v4, v3

    :goto_48
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_a

    const/4 v8, 0x5

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v8, v0, :cond_53

    move v0, v2

    goto/16 :goto_e

    :cond_53
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_48

    :cond_54
    move v0, v3

    goto/16 :goto_f

    :cond_55
    move v0, v3

    goto/16 :goto_10

    :cond_56
    move v0, v3

    goto/16 :goto_11

    :cond_57
    move v0, v3

    goto/16 :goto_12

    :cond_58
    move v0, v3

    goto/16 :goto_13

    :cond_59
    move v0, v3

    goto/16 :goto_14

    :cond_5a
    move v0, v3

    goto/16 :goto_15

    :cond_5b
    move v0, v3

    goto/16 :goto_16

    :cond_5c
    move v0, v3

    goto/16 :goto_17

    :cond_5d
    move v0, v3

    goto/16 :goto_18

    :cond_5e
    move v0, v3

    goto/16 :goto_19

    :cond_5f
    move v0, v3

    goto/16 :goto_1a

    :cond_60
    move v0, v3

    goto/16 :goto_1b

    :cond_61
    move v0, v3

    goto/16 :goto_1d

    :cond_62
    move v0, v3

    goto/16 :goto_1e

    :cond_63
    move v0, v3

    goto/16 :goto_1f

    :cond_64
    move v0, v3

    goto/16 :goto_20

    :cond_65
    move v0, v3

    goto/16 :goto_21

    :cond_66
    move v0, v3

    goto/16 :goto_22

    :cond_67
    move v0, v3

    goto/16 :goto_23

    :cond_68
    move v0, v3

    goto/16 :goto_24

    :cond_69
    move v0, v3

    goto/16 :goto_25

    :cond_6a
    move v0, v3

    goto/16 :goto_26

    :cond_6b
    move v0, v3

    goto/16 :goto_27

    :cond_6c
    move v0, v3

    goto/16 :goto_28

    :cond_6d
    move v0, v3

    goto/16 :goto_29

    :cond_6e
    move v0, v3

    goto/16 :goto_2a

    :cond_6f
    move v0, v3

    goto/16 :goto_2b

    :cond_70
    move v0, v3

    goto/16 :goto_2c

    :cond_71
    move v0, v3

    goto/16 :goto_2d

    :cond_72
    move v0, v3

    goto/16 :goto_2e

    :cond_73
    move v0, v3

    goto/16 :goto_2f

    :cond_74
    move v0, v3

    .line 1112
    goto/16 :goto_30

    :cond_75
    move v0, v3

    goto/16 :goto_31

    :cond_76
    move v0, v3

    goto/16 :goto_32

    :cond_77
    move v0, v3

    goto/16 :goto_33

    :cond_78
    move v0, v3

    goto/16 :goto_34

    :cond_79
    move v0, v3

    goto/16 :goto_35

    :cond_7a
    move v0, v3

    goto/16 :goto_36

    :cond_7b
    move v0, v3

    goto/16 :goto_37

    :cond_7c
    move v0, v3

    goto/16 :goto_38

    :cond_7d
    move v0, v3

    goto/16 :goto_39

    :cond_7e
    move v0, v3

    goto/16 :goto_3a

    :cond_7f
    move v0, v3

    goto/16 :goto_3b

    :cond_80
    move v0, v3

    .line 1113
    goto/16 :goto_3c

    :cond_81
    move v0, v3

    goto/16 :goto_3d

    :cond_82
    move v0, v3

    .line 1114
    goto/16 :goto_3e

    :cond_83
    move v0, v3

    goto/16 :goto_3f

    :cond_84
    move v0, v3

    goto/16 :goto_40

    :cond_85
    move v0, v3

    goto/16 :goto_41

    :cond_86
    move v0, v3

    goto/16 :goto_42

    :cond_87
    move v0, v3

    goto/16 :goto_43

    :cond_88
    move v0, v3

    .line 1117
    goto/16 :goto_44

    :cond_89
    move v0, v3

    goto/16 :goto_45

    :cond_8a
    move v0, v3

    goto/16 :goto_46

    :catch_1
    move-exception v0

    move v0, v4

    goto/16 :goto_47

    :cond_8b
    move v0, v2

    goto/16 :goto_1c

    :cond_8c
    move v0, v3

    goto/16 :goto_7

    :cond_8d
    move v0, v3

    move v4, v3

    goto/16 :goto_2

    :cond_8e
    move v1, v0

    goto/16 :goto_1
.end method

.method private static makeFeatureForKor()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1720
    const-string v0, "SKT"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SKC"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SKO"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1722
    const-string v0, "KTT"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KTC"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KTO"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1724
    const-string v0, "LGT"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "LUC"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "LUO"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1726
    const-string v0, "ANY"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "KOO"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1727
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_4
    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 1728
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1851
    :goto_5
    return-void

    :cond_5
    move v0, v1

    .line 1720
    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 1722
    goto :goto_1

    :cond_7
    move v0, v1

    .line 1724
    goto :goto_2

    :cond_8
    move v0, v1

    .line 1726
    goto :goto_3

    :cond_9
    move v0, v1

    .line 1727
    goto :goto_4

    .line 1732
    :cond_a
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_kor"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1733
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_skt"

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1734
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_ktt"

    invoke-virtual {v0, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1735
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_lgt"

    invoke-virtual {v0, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1736
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_kor_open"

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1738
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "default_noise_reduction"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1739
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_function_sound_tuning"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1740
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "use_second_waiting_call_tone"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1741
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "use_second_call_end_tone"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1742
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "disable_waiting_tone"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1743
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "allow_local_dtmf_tones"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1745
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "emergency_dialer_sound_pool_tones_haptic"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1746
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_tphone"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasMobileCarrier()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_ollehphone"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_mobilecarrier"

    const-string v0, "support_tphone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "support_ollehphone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_b
    move v0, v2

    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_uwa"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_SupportUwaApp"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "auto_unhold"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_c
    move v0, v2

    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1752
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "lost_phone_lock"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1753
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "clear_cover_check_fragment"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "roaming_auto_dial"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1755
    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "change_rad_number"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_d
    move v0, v2

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1756
    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "w_zone_for_rad"

    const-string v0, "roaming_auto_dial"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    move v0, v2

    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1757
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "remove_voicemail_category"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "vt_camera_effect_feature_support"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1761
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "vt_dual_camera"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "vt_sec_phone_upgraded_ui"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isHProject()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isJProject()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_e
    move v0, v2

    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1763
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "vt_call_fail_fallback"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "video_call_not_support"

    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    move v0, v2

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "camera_effect"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTProject()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isZeroProject()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_f
    move v0, v2

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "default_speaker_mode"

    const-string v8, "common_vt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "handle_service_impossible"

    const-string v8, "common_vt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1770
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "initial_speaker_settings"

    const-string v8, "common_vt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "mediashare"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "outgoing_image_from_gallery"

    const-string v8, "common_vt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "overlay_popup_play"

    const-string v8, "common_vt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1774
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "rearrange_preset_image_setting"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1775
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "resize_screen"

    const-string v8, "common_vt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ui_for_kor"

    const-string v8, "common_vt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_emergency_number"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1778
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "vt_left_keypad_enable_ui"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_add_call"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v2

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1781
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "single_lte"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1782
    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "common_volte_kor"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    move v0, v2

    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "auto_call_test"

    const-string v0, "eng"

    sget-object v9, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_10
    move v0, v2

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1786
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_call_message"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "video_conference"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1788
    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "handle_not_registered"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_24

    move v0, v2

    :goto_10
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "handle_sip_error_code"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_11
    move v0, v2

    :goto_11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1790
    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_ps_barring"

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    move v0, v2

    :goto_12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1791
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_voice_conference"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1792
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_support_photo_ring"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1793
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_support_multimedia_caller_id"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_VoiceCall_SupportMCID"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1794
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_uicc_mobility"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1797
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1798
    :cond_12
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_conference_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1799
    :cond_13
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1800
    :cond_14
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_call_transfer"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1801
    :cond_15
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_merge_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1802
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "optis_command_test"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1803
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "auto_call"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1804
    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_action_domestic_network"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_16
    move v0, v2

    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1807
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "block_data_during_call"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1808
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "disable_sip_call_setting"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1809
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "display_reject_message_limit_for_kor"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1810
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "hd_voice_network_prefer"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_EnableHDVoiceDuring3GConnection"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1811
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "hd_voice_network_prefer_default_on"

    sget-object v8, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "tr3calte"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1812
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "interworking_hd_voice_by_intent"

    const-string v8, "hd_voice_network_prefer"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1813
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "international_call_service"

    const-string v8, "KOR"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Common_AddPrefix4InternationalCall"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1814
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "modify_reject_message_for_kor"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1815
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "remove_additional_call_setting"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1816
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "remove_call_barring"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1817
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "remove_call_forwarding"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1818
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "remove_fdn"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1819
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "restrict_international_call"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1820
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "extended_restrict_international_call"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_oneline_greeting"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "ims_support_multimedia_caller_id"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v9, "jalte"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    move v0, v2

    :goto_14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1824
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "clear_dialpad_digits"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1825
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "handle_alerting_state"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1826
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "handle_mt_hold_call_state"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1827
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "bt_menu_in_easy_mode"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1828
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "emergency_find_lost_phone"

    invoke-virtual {v0, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1829
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_emergency_report_helper_app"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_EnableOneTouchReport"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1830
    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "default_incomingcall_popup"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "default_incomingcall_popup"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v2

    :goto_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1831
    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "wide_band_for_hd_icon"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_17
    move v0, v2

    :goto_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1832
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_logs_kor"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1833
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "show_add_call_menu_for_3rd_call"

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1834
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_nsri_secure"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1837
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "change_order_of_endcall_buttons"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1838
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "display_alerting_title"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1839
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "display_hd_icon"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_18

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_19

    :cond_18
    move v1, v2

    :cond_19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1840
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "popup_caller_info_wide_height"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1843
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "support_lunar_birthday"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1844
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "cnap_supplementary_service"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1845
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "cdnip_supplementary_service"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "geo_description_disable"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1848
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "enable_volte_hold_tone"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1849
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "ota_mode_disable_expand"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "support_display_bitrate"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_1a
    move v0, v1

    .line 1748
    goto/16 :goto_6

    :cond_1b
    move v0, v1

    .line 1751
    goto/16 :goto_7

    :cond_1c
    move v0, v1

    .line 1755
    goto/16 :goto_8

    :cond_1d
    move v0, v1

    .line 1756
    goto/16 :goto_9

    :cond_1e
    move v0, v1

    .line 1762
    goto/16 :goto_a

    :cond_1f
    move v0, v1

    .line 1764
    goto/16 :goto_b

    :cond_20
    move v0, v1

    .line 1767
    goto/16 :goto_c

    :cond_21
    move v0, v1

    .line 1780
    goto/16 :goto_d

    :cond_22
    move v0, v1

    .line 1782
    goto/16 :goto_e

    :cond_23
    move v0, v1

    .line 1785
    goto/16 :goto_f

    :cond_24
    move v0, v1

    .line 1788
    goto/16 :goto_10

    :cond_25
    move v0, v1

    .line 1789
    goto/16 :goto_11

    :cond_26
    move v0, v1

    .line 1790
    goto/16 :goto_12

    :cond_27
    move v0, v1

    .line 1804
    goto/16 :goto_13

    :cond_28
    move v0, v1

    .line 1821
    goto/16 :goto_14

    :cond_29
    move v0, v1

    .line 1830
    goto/16 :goto_15

    :cond_2a
    move v0, v1

    .line 1831
    goto/16 :goto_16
.end method

.method private static makeFeatureForLatin()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2117
    const-string v0, "BR"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MX"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AR"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UY"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CO"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CL"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PE"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VE"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PY"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GT"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SV"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HN"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NI"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PA"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EC"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PR"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DO"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "JM"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CR"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TT"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BO"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DM"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2123
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2181
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 2117
    goto :goto_0

    .line 2127
    :cond_3
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ltn_voicemail_number_setting"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2128
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "notipopup_when_number_changed"

    const-string v4, "BR"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->countryiso_code:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2129
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "ltn_auto_csp"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v5, "CscFeature_VoiceCall_EnablePrefix4LongDistanceCallAs"

    invoke-virtual {v0, v5}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_7

    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2132
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "enable_detail_call_end_reason"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_VoiceCall_EnableDetailCallEndCause"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2133
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "enable_ltn_callerid_matching"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2134
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ltn_sdnname_display"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_VoiceCall_EnableDisplaySdnNameDuringCall"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2135
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "fdn_contact_search"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_SearchIncludingFdn"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2137
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_toast_popup_when_mo_ccf"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_VoiceCall_DisableToastPopupWhenMOConditionalCallForwarding"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2138
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_popupmsg_when_deactivationcf"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_VoiceCall_DisablePopupMsgWhenDeactivatingCallForwarding"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2139
    const-string v0, "TFG"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2140
    const-string v0, "ril.product_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2141
    if-eqz v0, :cond_4

    const-string v3, "COB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2142
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_popupmsg_when_deactivationcf"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2145
    :cond_4
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "geo_description_disable"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_VoiceCall_DisableGeoDescription"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2147
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_enter_nck"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Phone_DisableEnterNCK"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2148
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_nwlock_dismiss"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Phone_DisableQuitNetworkLockByManual"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2149
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "add_label_for_simlock"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v5, "CscFeature_Phone_AddLabelForSimLock"

    invoke-virtual {v0, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2152
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "remove_mmi_complete_popup"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_VoiceCall_DisableUssdCompleteNoti"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2153
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "change_ussd_popup_lte"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_VoiceCall_UseUssdToastForNetworkNoResp"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2155
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_edit_callerid"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_VoiceCall_DisableEditingCallerID"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2156
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_sip_call_setting"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_DisableMenuInternetCallSetting"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2158
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "config_exception_data_roaming_noti"

    const-string v4, "All"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_ConfigExceptionDataRoamingNoti"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2160
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "wating_calloption_end"

    const-string v4, "end"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_OptionConfigForCallWaiting"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2161
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "wating_calloption_hold"

    const-string v4, "hold"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_OptionConfigForCallWaiting"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2162
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "wating_calloption_invisible"

    const-string v4, "wating_calloption_end"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "wating_calloption_hold"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2178
    const-string v0, "klteum"

    sget-object v1, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2179
    sget-object v0, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v1, "video_call_disable"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_7
    move v0, v1

    .line 2129
    goto/16 :goto_2

    :cond_8
    move v0, v1

    .line 2149
    goto/16 :goto_3
.end method

.method private static makeFeatureForUsa()V
    .locals 25

    .prologue
    .line 1855
    const-string v2, "XAS"

    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1856
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SPR"

    sget-object v4, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1858
    const-string v2, "VZW"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1860
    const-string v2, "VMU"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1861
    const-string v2, "BST"

    sget-object v7, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 1862
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_1
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 1863
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_2
    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 1864
    const-string v2, "d2spr"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "d2vmu"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "t0ltespr"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "jfltespr"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "jflterefreshspr"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "hltespr"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "kltespr"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "kltesprsports"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "trltespr"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "tbltespr"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_3
    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1870
    const-string v2, "USC"

    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 1871
    const-string v2, "MTR"

    sget-object v11, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 1872
    const-string v2, "XAR"

    sget-object v12, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ACG"

    sget-object v12, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_4
    const/4 v2, 0x1

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 1873
    const-string v2, "CRI"

    sget-object v13, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 1874
    const-string v2, "TFN"

    sget-object v14, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 1875
    const-string v2, "CSP"

    sget-object v15, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 1876
    const-string v2, "LRA"

    sget-object v16, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 1877
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_5
    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 1878
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_6
    const/4 v2, 0x1

    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1879
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_7
    const/4 v2, 0x1

    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1882
    const-string v2, "ATT"

    sget-object v14, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "AIO"

    sget-object v14, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_8
    const/4 v2, 0x1

    :goto_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 1883
    const-string v2, "TMB"

    sget-object v18, Lcom/android/services/telephony/common/PhoneFeature;->salesCode:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 1885
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_9
    const/4 v2, 0x1

    :goto_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 1886
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_a
    const/4 v2, 0x1

    :goto_a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 1888
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_b
    const/4 v2, 0x1

    :goto_b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .line 1890
    const-string v2, "msm"

    sget-object v21, Lcom/android/services/telephony/common/PhoneFeature;->baseband:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "mdm"

    sget-object v21, Lcom/android/services/telephony/common/PhoneFeature;->baseband:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_c
    const/4 v2, 0x1

    :goto_c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1891
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v21, "trlte"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v21, "tblte"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v21, "klte"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v21, "t0lte"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v21, "jflte"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v21, "hlte"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "jactivelteuc"

    sget-object v21, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    const-string v21, "d2"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_d
    const/4 v2, 0x1

    :goto_d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 1896
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v22, 0x1120045

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 1898
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 2096
    :goto_e
    return-void

    .line 1856
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1862
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1863
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1864
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1872
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 1877
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1878
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1879
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 1882
    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 1885
    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 1886
    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 1888
    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 1890
    :cond_1a
    const/4 v2, 0x0

    goto/16 :goto_c

    .line 1891
    :cond_1b
    const/4 v2, 0x0

    goto :goto_d

    .line 1901
    :cond_1c
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "feature_usa"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1902
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "disable_sip_call_setting"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1903
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "tty_enable"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1904
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "enable_screen_timeout_incall_DELETE"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1905
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "samsung_screen_timeout_incall"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "emergency_dialer_tones"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1907
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "number_format_with_country_iso"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1908
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "show_extra_volume_in_call_card"

    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1909
    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "video_call_disable"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_39

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_39

    const/4 v2, 0x1

    :goto_f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1910
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "allow_local_dtmf_tones"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1913
    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "change_message_icon_for_vzw"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3a

    const/4 v2, 0x1

    :goto_10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1914
    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v24, "change_message_icon_for_att"

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3b

    const/4 v2, 0x1

    :goto_11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1915
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v21, "hac_enable"

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1916
    sget-object v21, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "ecid_enable"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "tablet_device"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_1d
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "jflteuc"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "hlteuc"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "coreprimeltevzw"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "klteuc"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "slteuc"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "klteattactive"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "kltevzw"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "tblteuc"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "trlteuc"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "tbltevzw"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "trltevzw"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "tbltetmo"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "zerolteuc"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "zeroflteuc"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "jactivelteuc"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string v2, "trltetmo"

    sget-object v24, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    :cond_1e
    const/4 v2, 0x1

    :goto_12
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1922
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v21, "feature_cdma_us"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1923
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v21, "cdma_additional_setting_enable"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1924
    sget-object v21, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v23, "cdma_subscription_enable"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3d

    const/4 v2, 0x1

    :goto_13
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1925
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v21, "dtmf_type_enable"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1926
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v21, "not_ota_ui_display"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1927
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v21, "usa_cdma_emergency_concept"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1928
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v21, "usa_cdma_concept"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1929
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v21, "usa_cdma_smc_fac_req"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1930
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v21, "headset_highest_priority_for_call"

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v21, "caller_name_reduced_font_size"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1932
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v21, "reboot_after_ota_success"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1935
    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v21, "global_network_cdma_gsm_enable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "t0ltespr"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "jfltespr"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "jflterefreshspr"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "hltespr"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "kltespr"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "kltesprsports"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "trltespr"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "tbltespr"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "meliusltespr"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "p4noteltespr"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "klteacg"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    :cond_1f
    const/4 v2, 0x1

    :goto_14
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1943
    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v21, "global_network_cdma_gsm_enable_for_spr"

    const-string v2, "global_network_cdma_gsm_enable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x1

    :goto_15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1944
    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v21, "global_network_cdma_gsm_enable_for_spr_f"

    const-string v2, "global_network_cdma_gsm_enable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_40

    const/4 v2, 0x1

    :goto_16
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1945
    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v21, "global_network_cdma_gsm_enable_for_spr_m"

    const-string v2, "global_network_cdma_gsm_enable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_41

    const/4 v2, 0x1

    :goto_17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1946
    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v21, "global_network_cdma_gsm_enable_for_vzw"

    const-string v2, "global_network_cdma_gsm_enable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_42

    const/4 v2, 0x1

    :goto_18
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1947
    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v21, "cdma_apn_enable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "chagalllteusc"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "jfltespr"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "jflterefreshspr"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "hltespr"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "kltespr"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "kltesprsports"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "trltespr"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "tbltespr"

    sget-object v23, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    :cond_20
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_43

    :cond_21
    const/4 v2, 0x1

    :goto_19
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1953
    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v21, "international_dialing_enable"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_44

    :cond_22
    const/4 v2, 0x1

    :goto_1a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1954
    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v21, "auto_retry_enable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_45

    :cond_23
    const/4 v2, 0x1

    :goto_1b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1955
    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v21, "voice_privacy_enable"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_46

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_46

    const/4 v2, 0x1

    :goto_1c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1956
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v17, "emergency_call_tone_always"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1957
    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v21, "emergency_call_tone_volume"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_47

    :cond_24
    const/4 v2, 0x1

    :goto_1d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1958
    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v21, "emergency_call_tone"

    const-string v2, "emergency_call_tone_always"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "emergency_call_tone_volume"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    :cond_25
    const/4 v2, 0x1

    :goto_1e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1959
    sget-object v17, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v21, "emergency_calllog_disable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_26

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_49

    :cond_26
    const/4 v2, 0x1

    :goto_1f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1960
    sget-object v13, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v17, "otasp_calllog_disable"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4a

    :cond_27
    const/4 v2, 0x1

    :goto_20
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1961
    sget-object v13, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v15, "get_orig_dial_string_enable"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4b

    :cond_28
    const/4 v2, 0x1

    :goto_21
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v13, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1962
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "activate_your_phone"

    invoke-virtual {v2, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1965
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "network_mode_disable"

    move-object/from16 v0, v19

    invoke-virtual {v2, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1966
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "usa_gsm_network_setting"

    move-object/from16 v0, v19

    invoke-virtual {v2, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1967
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "allow_local_dtmf_tones_always"

    move-object/from16 v0, v19

    invoke-virtual {v2, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1968
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "beep_vibration_for_ussd"

    move-object/from16 v0, v19

    invoke-virtual {v2, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1969
    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_call_transfer"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4c

    const/4 v2, 0x1

    :goto_22
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1970
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "tty_to_default_wired_headset_plugged_out"

    move-object/from16 v0, v19

    invoke-virtual {v2, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1971
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "disable_add_call_mute_hold_during_emergency_call"

    move-object/from16 v0, v20

    invoke-virtual {v2, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1974
    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "add_vt_hold_in_menu"

    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4d

    const/4 v2, 0x1

    :goto_23
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1977
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "emergency_calls_only_enable"

    invoke-virtual {v2, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1978
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "roaming_enhancement"

    invoke-virtual {v2, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1979
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "preferred_network_mode_reboot_enable"

    invoke-virtual {v2, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1980
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "visual_voicemail"

    invoke-virtual {v2, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "visual_voicemail_enable"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasVisualVoicemail()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1982
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "remove_voicemail_category"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasVisualVoicemail()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "emergency_callback_mode_exit_timer_enable"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4e

    const/4 v2, 0x1

    :goto_24
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1984
    sget-object v10, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "system_select_home_only"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4f

    :cond_29
    const/4 v2, 0x1

    :goto_25
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1985
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "system_select_home_only_entry"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1986
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "hdvoice_call_status"

    invoke-virtual {v2, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1988
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "reject_call_with_message_drawer_while_in_secure_lock_pending"

    invoke-virtual {v2, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1989
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "remove_call_duration"

    invoke-virtual {v2, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1990
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "omadm_lte_forced_nv"

    invoke-virtual {v2, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1993
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "csc_chameleon_enable"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Common_UseChameleon"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1994
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v10, "abbreviated_dialing_codes_enable"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, "csc_chameleon_enable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    :cond_2a
    const/4 v2, 0x1

    :goto_26
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1995
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "abbreviated_dialing_codes_table_sprint"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1996
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "abbreviated_dialing_codes_table_virgin"

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1997
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "abbreviated_dialing_codes_table_boost"

    invoke-virtual {v2, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1998
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "network_mode_automatic_cdma_lte_gsm"

    const-string v4, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1999
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "network_mode_cdma_lte"

    const-string v2, "global_network_cdma_gsm_enable_for_spr_m"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "klteacg"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    :cond_2b
    const/4 v2, 0x1

    :goto_27
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2001
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "sprint_connections_optimizer"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v6, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v2, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_52

    :cond_2c
    const/4 v2, 0x1

    :goto_28
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2002
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "roaming_setting_guard_data_only"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_53

    const/4 v2, 0x1

    :goto_29
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "sprint_mvno_mobile_networks"

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2021
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "system_selection_automatic_ab_enable"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2022
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "global_data_roaming_access_enable"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2023
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "us_cdma_call_fowarding"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2024
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "urgenct_voicemail_notification_enable"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2025
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "wifi_disable_during_emergency_call"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2026
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_setting_soft_reset"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2027
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "assisted_dialing_enable"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2028
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_vzw"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2029
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "eri_info_label_enable"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2030
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "safety_emergency_contacts"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "emregency_dialer_home_recent_block"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2032
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "mute_menu_in_easy_mode"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2033
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_low_battery_sound_during_call"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_54

    const/4 v2, 0x1

    :goto_2a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2034
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "network_manual_selection_when_bootup"

    const-string v4, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2035
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "change_network_mode_when_no_sim_bootup"

    const-string v4, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2038
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2039
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_easy_mode"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2040
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_help_easy_mode"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2042
    :cond_2d
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "network_mode_global_lte_cdma_gsm_umts"

    const-string v2, "kltevzw"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v2, "trltevzw"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v2, "tbltevzw"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    :cond_2e
    const/4 v2, 0x1

    :goto_2b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2043
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "network_mode_global_lte_gsm"

    const-string v4, "viennaltevzw"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2044
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "setting_search_vzw"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2050
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "set_system_setting_for_auto_answer"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_56

    :cond_2f
    const/4 v2, 0x1

    :goto_2c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2053
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_att"

    invoke-virtual {v2, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2054
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2055
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "allow_select_network_mode"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2057
    :cond_30
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "remove_call_barring"

    invoke-virtual {v2, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2058
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "usa_gsm_support_femto_cell_network"

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_57

    const-string v2, "jflteuc"

    sget-object v6, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    const/4 v2, 0x1

    :goto_2d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2059
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "network_mode_not_support_att"

    invoke-virtual {v2, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2064
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "feature_tmo"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2065
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "wide_band_for_hd_icon"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2066
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "hd_icon_wideband"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2071
    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2072
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "vzw_volte_ui"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2073
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "att_volte_ui"

    invoke-virtual {v2, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2074
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "tmo_volte_ui"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2075
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "us_volte_ui"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_31

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_31

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_58

    :cond_31
    const/4 v2, 0x1

    :goto_2e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2076
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "volte_settings_in_mobile_networks"

    invoke-virtual {v2, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2077
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "incoming_call_widget_for_volte"

    const-string v4, "us_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2078
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "call_details_for_hd_icon"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2079
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "wireless_priority_service_call"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2080
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "ui_for_usa"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_32

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_32

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_59

    :cond_32
    const/4 v2, 0x1

    :goto_2f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2081
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_rotation"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_33

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_33

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5a

    :cond_33
    const/4 v2, 0x1

    :goto_30
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2082
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "modify_call_us"

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5b

    :cond_34
    const/4 v2, 0x1

    :goto_31
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2083
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ims_capability_service"

    invoke-virtual {v2, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2084
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "disable_manage_conference_call"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2085
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "handle_mt_hold_call_state"

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_35

    const-string v2, "att_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    :cond_35
    const/4 v2, 0x1

    :goto_32
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2086
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "circle_endbutton"

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const-string v2, "kltevzw"

    sget-object v5, Lcom/android/services/telephony/common/PhoneFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const/4 v2, 0x1

    :goto_33
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2088
    :cond_36
    const-string v2, "common_volte"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 2089
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "non_volte_settings_in_mobile_networks"

    invoke-virtual {v2, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2091
    :cond_37
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ims_rcs"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ims_rcs_bb"

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->hasRCSBlackBird()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2093
    sget-object v3, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "change_order_of_endcall_buttons"

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "att_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "tmo_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    :cond_38
    const/4 v2, 0x1

    :goto_34
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2095
    sget-object v2, Lcom/android/services/telephony/common/PhoneFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "end_call_when_dial_e911"

    invoke-virtual {v2, v3, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 1909
    :cond_39
    const/4 v2, 0x0

    goto/16 :goto_f

    .line 1913
    :cond_3a
    const/4 v2, 0x0

    goto/16 :goto_10

    .line 1914
    :cond_3b
    const/4 v2, 0x0

    goto/16 :goto_11

    .line 1916
    :cond_3c
    const/4 v2, 0x0

    goto/16 :goto_12

    .line 1924
    :cond_3d
    const/4 v2, 0x0

    goto/16 :goto_13

    .line 1935
    :cond_3e
    const/4 v2, 0x0

    goto/16 :goto_14

    .line 1943
    :cond_3f
    const/4 v2, 0x0

    goto/16 :goto_15

    .line 1944
    :cond_40
    const/4 v2, 0x0

    goto/16 :goto_16

    .line 1945
    :cond_41
    const/4 v2, 0x0

    goto/16 :goto_17

    .line 1946
    :cond_42
    const/4 v2, 0x0

    goto/16 :goto_18

    .line 1947
    :cond_43
    const/4 v2, 0x0

    goto/16 :goto_19

    .line 1953
    :cond_44
    const/4 v2, 0x0

    goto/16 :goto_1a

    .line 1954
    :cond_45
    const/4 v2, 0x0

    goto/16 :goto_1b

    .line 1955
    :cond_46
    const/4 v2, 0x0

    goto/16 :goto_1c

    .line 1957
    :cond_47
    const/4 v2, 0x0

    goto/16 :goto_1d

    .line 1958
    :cond_48
    const/4 v2, 0x0

    goto/16 :goto_1e

    .line 1959
    :cond_49
    const/4 v2, 0x0

    goto/16 :goto_1f

    .line 1960
    :cond_4a
    const/4 v2, 0x0

    goto/16 :goto_20

    .line 1961
    :cond_4b
    const/4 v2, 0x0

    goto/16 :goto_21

    .line 1969
    :cond_4c
    const/4 v2, 0x0

    goto/16 :goto_22

    .line 1974
    :cond_4d
    const/4 v2, 0x0

    goto/16 :goto_23

    .line 1983
    :cond_4e
    const/4 v2, 0x0

    goto/16 :goto_24

    .line 1984
    :cond_4f
    const/4 v2, 0x0

    goto/16 :goto_25

    .line 1994
    :cond_50
    const/4 v2, 0x0

    goto/16 :goto_26

    .line 1999
    :cond_51
    const/4 v2, 0x0

    goto/16 :goto_27

    .line 2001
    :cond_52
    const/4 v2, 0x0

    goto/16 :goto_28

    .line 2002
    :cond_53
    const/4 v2, 0x0

    goto/16 :goto_29

    .line 2033
    :cond_54
    const/4 v2, 0x0

    goto/16 :goto_2a

    .line 2042
    :cond_55
    const/4 v2, 0x0

    goto/16 :goto_2b

    .line 2050
    :cond_56
    const/4 v2, 0x0

    goto/16 :goto_2c

    .line 2058
    :cond_57
    const/4 v2, 0x0

    goto/16 :goto_2d

    .line 2075
    :cond_58
    const/4 v2, 0x0

    goto/16 :goto_2e

    .line 2080
    :cond_59
    const/4 v2, 0x0

    goto/16 :goto_2f

    .line 2081
    :cond_5a
    const/4 v2, 0x0

    goto/16 :goto_30

    .line 2082
    :cond_5b
    const/4 v2, 0x0

    goto/16 :goto_31

    .line 2085
    :cond_5c
    const/4 v2, 0x0

    goto/16 :goto_32

    .line 2086
    :cond_5d
    const/4 v2, 0x0

    goto/16 :goto_33

    .line 2093
    :cond_5e
    const/4 v2, 0x0

    goto :goto_34
.end method
