.class Lcom/android/settings/wifi/AccessPoint;
.super Landroid/preference/Preference;
.source "AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/AccessPoint$1;,
        Lcom/android/settings/wifi/AccessPoint$PskType;
    }
.end annotation


# static fields
.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I

.field private static wifi_signal_attributes:[I


# instance fields
.field bssid:Ljava/lang/String;

.field frequency:I

.field isHs20Ap:Z

.field keyMgmts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mContext:Landroid/content/Context;

.field mExpiration:Ljava/lang/String;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field public mIsGigaAp:Z

.field public mIsGigaIcon:Z

.field mIsSharedAp:Z

.field private mRssi:I

.field mScanResult:Landroid/net/wifi/ScanResult;

.field public mScanResultCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSeen:J

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field networkId:I

.field order:I

.field pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

.field security:I

.field showSummary:Z

.field ssid:Ljava/lang/String;

.field wpsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-array v0, v3, [I

    const v1, 0x7f010003

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_SECURED:[I

    .line 93
    new-array v0, v2, [I

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_NONE:[I

    .line 97
    new-array v0, v3, [I

    const v1, 0x7f010037

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->wifi_signal_attributes:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v3, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 317
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 125
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 126
    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->order:I

    .line 127
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->isHs20Ap:Z

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    .line 130
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 135
    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSeen:J

    .line 143
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaAp:Z

    .line 144
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaIcon:Z

    .line 150
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsSharedAp:Z

    .line 151
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mExpiration:Ljava/lang/String;

    .line 157
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 318
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 319
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 320
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 311
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 125
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 126
    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->order:I

    .line 127
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->isHs20Ap:Z

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    .line 130
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 135
    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSeen:J

    .line 143
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaAp:Z

    .line 144
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaIcon:Z

    .line 150
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsSharedAp:Z

    .line 151
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mExpiration:Ljava/lang/String;

    .line 157
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 312
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 313
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 314
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savedState"    # Landroid/os/Bundle;

    .prologue
    const v2, 0x7fffffff

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 323
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 124
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 125
    iput-boolean v4, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 126
    iput v2, p0, Lcom/android/settings/wifi/AccessPoint;->order:I

    .line 127
    iput-boolean v4, p0, Lcom/android/settings/wifi/AccessPoint;->isHs20Ap:Z

    .line 128
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    .line 130
    sget-object v1, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 135
    iput v2, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 136
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/settings/wifi/AccessPoint;->mSeen:J

    .line 143
    iput-boolean v4, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaAp:Z

    .line 144
    iput-boolean v4, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaIcon:Z

    .line 150
    iput-boolean v4, p0, Lcom/android/settings/wifi/AccessPoint;->mIsSharedAp:Z

    .line 151
    iput-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mExpiration:Ljava/lang/String;

    .line 157
    iput-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 326
    :try_start_0
    const-string v1, "key_config"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 334
    :cond_0
    const-string v1, "key_scanresult"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 335
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    if-eqz v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 338
    :cond_1
    const-string v1, "key_wifiinfo"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 339
    const-string v1, "key_detailedstate"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    const-string v1, "key_detailedstate"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 342
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 343
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Settings.AccessPoint"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iput-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    goto :goto_0
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;
    .locals 6
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 291
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v4, "WPA-PSK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 292
    .local v1, "wpa":Z
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v4, "WPA2-PSK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 293
    .local v2, "wpa2":Z
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v4, "FT/PSK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 294
    .local v0, "ft":Z
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 295
    sget-object v3, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 306
    :goto_0
    return-object v3

    .line 296
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 297
    sget-object v3, Lcom/android/settings/wifi/AccessPoint$PskType;->FT_WPA2:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 298
    :cond_1
    if-eqz v2, :cond_2

    .line 299
    sget-object v3, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA2:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 300
    :cond_2
    if-eqz v1, :cond_3

    .line 301
    sget-object v3, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 302
    :cond_3
    if-eqz v0, :cond_4

    .line 303
    sget-object v3, Lcom/android/settings/wifi/AccessPoint$PskType;->FT:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 305
    :cond_4
    const-string v3, "Settings.AccessPoint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received abnormal flag string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    sget-object v3, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 190
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    .line 192
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "FT/PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "FT/EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "CCKM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 198
    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    .line 200
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 161
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v0, v3

    .line 179
    :cond_1
    :goto_0
    return v0

    .line 165
    :cond_2
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v0, v2

    .line 169
    goto :goto_0

    .line 179
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private static getSecurity(Ljava/lang/String;)I
    .locals 1
    .param p0, "securityType"    # Ljava/lang/String;

    .prologue
    .line 211
    const-string v0, "EAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IEEE8021X"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FT/EAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CCKM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    const/4 v0, 0x3

    .line 219
    :goto_0
    return v0

    .line 214
    :cond_1
    const-string v0, "FT/PSK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "PSK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 216
    :cond_3
    const-string v0, "WEP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    const/4 v0, 0x1

    goto :goto_0

    .line 219
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getVisibilityStatus()Ljava/lang/String;
    .locals 20

    .prologue
    .line 751
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 753
    .local v13, "visibility":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 755
    .local v6, "now":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v14, :cond_1

    .line 756
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v14}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, "bssid":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 758
    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    :cond_0
    const-string v14, " sc="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget v15, v15, Landroid/net/wifi/WifiInfo;->score:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    const-string v14, "tx=%.1f,"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    const-string v14, "%.1f,"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    const-string v14, "%.1f "

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    const-string v14, "rx=%.1f"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    .end local v2    # "bssid":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    if-eqz v14, :cond_e

    .line 769
    sget v12, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 770
    .local v12, "rssi5":I
    sget v11, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 771
    .local v11, "rssi24":I
    const/4 v8, 0x0

    .line 772
    .local v8, "num5":I
    const/4 v5, 0x0

    .line 773
    .local v5, "num24":I
    const/4 v9, 0x0

    .line 774
    .local v9, "numBlackListed":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v14}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v4

    .line 775
    .local v4, "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/ScanResult;

    .line 776
    .local v10, "result":Landroid/net/wifi/ScanResult;
    iget-wide v14, v10, Landroid/net/wifi/ScanResult;->seen:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_2

    .line 779
    iget v14, v10, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    if-eqz v14, :cond_3

    .line 780
    add-int/lit8 v9, v9, 0x1

    .line 782
    :cond_3
    iget v14, v10, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v15, 0x1324

    if-le v14, v15, :cond_5

    iget v14, v10, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v15, 0x170c

    if-ge v14, v15, :cond_5

    .line 786
    add-int/lit8 v8, v8, 0x1

    .line 795
    :cond_4
    :goto_1
    iget-wide v14, v10, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v14, v6, v14

    const-wide/16 v16, 0x4e20

    cmp-long v14, v14, v16

    if-gtz v14, :cond_2

    .line 797
    iget v14, v10, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v15, 0x1324

    if-le v14, v15, :cond_6

    iget v14, v10, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v15, 0x170c

    if-ge v14, v15, :cond_6

    .line 799
    iget v14, v10, Landroid/net/wifi/ScanResult;->level:I

    if-le v14, v12, :cond_2

    .line 800
    iget v12, v10, Landroid/net/wifi/ScanResult;->level:I

    goto :goto_0

    .line 787
    :cond_5
    iget v14, v10, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v15, 0x960

    if-le v14, v15, :cond_4

    iget v14, v10, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v15, 0x9c4

    if-ge v14, v15, :cond_4

    .line 791
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 802
    :cond_6
    iget v14, v10, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v15, 0x960

    if-le v14, v15, :cond_2

    iget v14, v10, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v15, 0x9c4

    if-ge v14, v15, :cond_2

    .line 804
    iget v14, v10, Landroid/net/wifi/ScanResult;->level:I

    if-le v14, v11, :cond_2

    .line 805
    iget v11, v10, Landroid/net/wifi/ScanResult;->level:I

    goto :goto_0

    .line 809
    .end local v10    # "result":Landroid/net/wifi/ScanResult;
    :cond_7
    const-string v14, " ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    if-gtz v5, :cond_8

    sget v14, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    if-le v11, v14, :cond_9

    .line 811
    :cond_8
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    :cond_9
    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    if-gtz v8, :cond_a

    sget v14, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    if-le v12, v14, :cond_b

    .line 817
    :cond_a
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    :cond_b
    if-lez v9, :cond_c

    .line 822
    const-string v14, "!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    :cond_c
    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "list":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/ScanResult;>;"
    .end local v5    # "num24":I
    .end local v8    # "num5":I
    .end local v9    # "numBlackListed":I
    .end local v11    # "rssi24":I
    .end local v12    # "rssi5":I
    :cond_d
    :goto_2
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 825
    :cond_e
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v15, 0x7fffffff

    if-eq v14, v15, :cond_d

    .line 826
    const-string v14, ", ss="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    if-eqz v14, :cond_d

    .line 829
    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    iget v14, v14, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private internalCompareTo(Landroid/preference/Preference;Z)I
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "ignoreOrder"    # Z

    .prologue
    const v8, 0x7fffffff

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 523
    instance-of v5, p1, Lcom/android/settings/wifi/AccessPoint;

    if-nez v5, :cond_1

    .line 574
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v1, p1

    .line 526
    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    .line 527
    .local v1, "other":Lcom/android/settings/wifi/AccessPoint;
    const/4 v2, 0x0

    .line 528
    .local v2, "value":I
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mContext:Landroid/content/Context;

    .line 530
    const-string v5, "ssid"

    const-string v6, "rssi"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 532
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_ap_sort"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 542
    :goto_1
    if-nez p2, :cond_4

    iget v5, p0, Lcom/android/settings/wifi/AccessPoint;->order:I

    if-ne v5, v8, :cond_2

    iget v5, v1, Lcom/android/settings/wifi/AccessPoint;->order:I

    if-eq v5, v8, :cond_4

    .line 543
    :cond_2
    iget v5, p0, Lcom/android/settings/wifi/AccessPoint;->order:I

    iget v6, v1, Lcom/android/settings/wifi/AccessPoint;->order:I

    if-gt v5, v6, :cond_0

    move v3, v4

    goto :goto_0

    .line 536
    :cond_3
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_ap_sort"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    goto :goto_1

    .line 546
    :cond_4
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v5, :cond_5

    iget-object v5, v1, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v5, :cond_5

    move v3, v4

    goto :goto_0

    .line 547
    :cond_5
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v5, :cond_6

    iget-object v5, v1, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v5, :cond_0

    .line 550
    :cond_6
    iget v5, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    if-eq v5, v8, :cond_7

    iget v5, v1, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    if-ne v5, v8, :cond_7

    move v3, v4

    goto :goto_0

    .line 551
    :cond_7
    iget v5, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    if-ne v5, v8, :cond_8

    iget v5, v1, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    if-ne v5, v8, :cond_0

    .line 554
    :cond_8
    iget v5, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v5, v4, :cond_9

    iget v5, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v5, v4, :cond_9

    move v3, v4

    .line 555
    goto :goto_0

    .line 556
    :cond_9
    iget v5, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v5, v4, :cond_a

    iget v5, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v5, v4, :cond_0

    .line 560
    :cond_a
    if-ne v2, v3, :cond_d

    .line 562
    iget v3, v1, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {v3, v4}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    .line 563
    .local v0, "difference":I
    if-eqz v0, :cond_b

    move v3, v0

    .line 564
    goto/16 :goto_0

    .line 566
    :cond_b
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_c

    .line 567
    iget v3, v1, Lcom/android/settings/wifi/AccessPoint;->security:I

    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    sub-int/2addr v3, v4

    goto/16 :goto_0

    .line 569
    :cond_c
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_0

    .line 571
    .end local v0    # "difference":I
    :cond_d
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_e

    .line 572
    iget v3, v1, Lcom/android/settings/wifi/AccessPoint;->security:I

    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    sub-int/2addr v3, v4

    goto/16 :goto_0

    .line 574
    :cond_e
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_0
.end method

.method public static isVendorAccessPoint(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 8
    .param p0, "info"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1141
    if-eqz p0, :cond_0

    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 1144
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1145
    .local v3, "ssid":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 1147
    .local v2, "security":I
    invoke-static {}, Lcom/android/settings/Utils;->getVendorApInfo()[Lcom/android/settings/Utils$ApInfo;

    move-result-object v0

    .line 1148
    .local v0, "aps":[Lcom/android/settings/Utils$ApInfo;
    if-nez v0, :cond_1

    .line 1149
    const-string v5, "Settings.AccessPoint"

    const-string v6, "Do not exist vendor specific aps"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    .end local v0    # "aps":[Lcom/android/settings/Utils$ApInfo;
    .end local v2    # "security":I
    .end local v3    # "ssid":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 1153
    .restart local v0    # "aps":[Lcom/android/settings/Utils$ApInfo;
    .restart local v2    # "security":I
    .restart local v3    # "ssid":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_0

    .line 1154
    aget-object v6, v0, v1

    invoke-virtual {v6}, Lcom/android/settings/Utils$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1155
    const-string v6, ""

    const-string v7, "ollehWiFi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v4, v5

    .line 1156
    goto :goto_0

    .line 1159
    :cond_2
    aget-object v6, v0, v1

    invoke-virtual {v6}, Lcom/android/settings/Utils$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Ljava/lang/String;)I

    move-result v6

    if-ne v2, v6, :cond_3

    .line 1160
    const-string v4, "Settings.AccessPoint"

    const-string v6, "Selected Default AP"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 1161
    goto :goto_0

    .line 1153
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 355
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 356
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 357
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    .line 358
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 359
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    if-ne v0, v1, :cond_8

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->isHs20Ap:Z

    .line 360
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    .line 362
    const-string v0, "Settings.AccessPoint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadConfig: config.allowedKeyManagement: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 376
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_4
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 379
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_5
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 382
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_6
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->isSharedAp:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->mIsSharedAp:Z

    .line 386
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->expiration:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mExpiration:Ljava/lang/String;

    .line 388
    return-void

    .line 355
    :cond_7
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 359
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private loadResult(Landroid/net/wifi/ScanResult;)V
    .locals 4
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 391
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 392
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 393
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    .line 394
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_8

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WPS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 395
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "HS20"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->isHs20Ap:Z

    .line 396
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v0, v3, :cond_0

    .line 397
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 398
    :cond_0
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 399
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    .line 402
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "FT/PSK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "-EAP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "FT/EAP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 409
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "CCKM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 412
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    :cond_4
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WPA-PSK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 415
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_5
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPA2-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 418
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_6
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v2, p0, Lcom/android/settings/wifi/AccessPoint;->mSeen:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    .line 425
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSeen:J

    .line 427
    :cond_7
    return-void

    .line 394
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private refresh()V
    .locals 20

    .prologue
    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 844
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 845
    .local v3, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/wifi/AccessPoint;->updateIcon(ILandroid/content/Context;)V

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    .line 848
    const-string v16, "wifi"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/AccessPoint;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 851
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v16, v0

    sget-object v17, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v16, v0

    sget-object v17, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v16, v0

    sget-object v17, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v16, v0

    sget-object v17, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 853
    :cond_1
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f090018

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "#ff"

    const-string v18, "#"

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 854
    .local v2, "color":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "<font color="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "</font>"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 863
    .end local v2    # "color":Ljava/lang/String;
    :goto_0
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 866
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 868
    .local v5, "summary":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v16, v0

    if-eqz v16, :cond_13

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v16, v0

    sget-object v17, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 873
    const v16, 0x7f0a03b7

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    :cond_2
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    .line 1035
    const-string v16, "   "

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    :cond_3
    sget v16, Lcom/android/settings/wifi/WifiSettings;->mVerboseLogging:I

    if-lez v16, :cond_7

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 1042
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " (f="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    :cond_4
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/AccessPoint;->getVisibilityStatus()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v16, v0

    if-lez v16, :cond_7

    .line 1046
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_6

    .line 1048
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1049
    .local v12, "now":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    move-wide/from16 v16, v0

    sub-long v16, v12, v16

    const-wide/16 v18, 0x3e8

    div-long v6, v16, v18

    .line 1050
    .local v6, "diff":J
    const-wide/16 v16, 0x3c

    rem-long v14, v6, v16

    .line 1051
    .local v14, "sec":J
    const-wide/16 v16, 0x3c

    div-long v16, v6, v16

    const-wide/16 v18, 0x3c

    rem-long v10, v16, v18

    .line 1052
    .local v10, "min":J
    const-wide/16 v16, 0x3c

    div-long v16, v10, v16

    const-wide/16 v18, 0x3c

    rem-long v8, v16, v18

    .line 1053
    .local v8, "hour":J
    const-string v16, ", "

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    const-wide/16 v16, 0x0

    cmp-long v16, v8, v16

    if-lez v16, :cond_5

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "h "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    :cond_5
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "m "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "s "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    .end local v6    # "diff":J
    .end local v8    # "hour":J
    .end local v10    # "min":J
    .end local v12    # "now":J
    .end local v14    # "sec":J
    :cond_6
    const-string v16, ")"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    if-lez v16, :cond_21

    .line 1063
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 1067
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isSharedAp:Z

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 1069
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AccessPoint;->getSummary()Ljava/lang/CharSequence;

    move-result-object v16

    if-nez v16, :cond_22

    const-string v4, ""

    .line 1070
    .local v4, "currSummary":Ljava/lang/String;
    :goto_3
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f0a0461

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 1072
    .end local v4    # "currSummary":Ljava/lang/String;
    :cond_8
    return-void

    .line 855
    .end local v5    # "summary":Ljava/lang/StringBuilder;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v16, v0

    sget-object v17, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v16, v0

    sget-object v17, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 856
    :cond_a
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f090017

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "#ff"

    const-string v18, "#"

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 857
    .restart local v2    # "color":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "<font color="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ">"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "</font>"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 859
    .end local v2    # "color":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 874
    .restart local v5    # "summary":Ljava/lang/StringBuilder;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v16, v0

    sget-object v17, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_d

    sget v16, Lcom/android/settings/wifi/WifiSettings;->mIsReconn:I

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 877
    const v16, 0x7f0a046c

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 879
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v16, v0

    sget-object v17, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    if-eqz v16, :cond_12

    .line 880
    const v16, 0x7f0a045f

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v16, v0

    if-eqz v16, :cond_11

    .line 883
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    if-lez v16, :cond_e

    .line 884
    const-string v16, ", "

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v16

    if-eqz v16, :cond_10

    .line 887
    const v16, 0x7f0a046f

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    :cond_f
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 912
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f0a0472

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 890
    :cond_10
    const v16, 0x7f0a0471

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 906
    :cond_11
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    if-nez v16, :cond_f

    .line 907
    const v16, 0x7f0a0470

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 922
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 925
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    move/from16 v16, v0

    const v17, 0x7fffffff

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_14

    .line 926
    const v16, 0x7f0a046b

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 927
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v16, v0

    if-nez v16, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v16, v0

    const/16 v17, 0x80

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_1b

    .line 930
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v16, v0

    const/16 v17, 0x80

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_19

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v16, v0

    const/16 v17, 0xa1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_17

    .line 932
    const v16, 0x7f0a0463

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 934
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_18

    .line 935
    const v16, 0x7f0a0464

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 937
    :cond_18
    const v16, 0x7f0a046a

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 941
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 980
    :pswitch_1
    const v16, 0x7f0a0463

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 944
    :pswitch_2
    const v16, 0x7f0a046a

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 947
    :pswitch_3
    const v16, 0x7f0a0464

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 951
    :pswitch_4
    const v16, 0x7f0a0465

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 954
    :pswitch_5
    const v16, 0x7f0a0466

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 957
    :pswitch_6
    const v16, 0x7f0a0467

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 960
    :pswitch_7
    const v16, 0x7f0a045f

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 963
    :pswitch_8
    const v16, 0x7f0a0463

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 966
    :pswitch_9
    const v16, 0x7f0a0463

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 969
    :pswitch_a
    const v16, 0x7f0a0463

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 972
    :pswitch_b
    sget-boolean v16, Lcom/android/settings/Utils;->ENABLE_DISC_BUTTON_APNLIST:Z

    if-eqz v16, :cond_1a

    .line 973
    const v16, 0x7f0a0460

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 975
    :cond_1a
    const v16, 0x7f0a045f

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 983
    :pswitch_c
    const v16, 0x7f0a0463

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 988
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1c

    .line 989
    const v16, 0x7f0a045f

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v16, v0

    if-eqz v16, :cond_20

    .line 993
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    if-lez v16, :cond_1d

    .line 994
    const-string v16, ", "

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v16

    if-eqz v16, :cond_1f

    .line 997
    const v16, 0x7f0a046f

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    :cond_1e
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 1022
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v17, 0x7f0a0472

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1000
    :cond_1f
    const v16, 0x7f0a0471

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1016
    :cond_20
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    if-nez v16, :cond_1e

    .line 1017
    const v16, 0x7f0a0470

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1065
    :cond_21
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    goto/16 :goto_2

    .line 1069
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AccessPoint;->getSummary()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 941
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 721
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 722
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 724
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 726
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method


# virtual methods
.method checkIfSame(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 610
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 612
    const/4 v0, 0x1

    .line 614
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compareTo(Landroid/preference/Preference;)I
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 519
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/AccessPoint;->internalCompareTo(Landroid/preference/Preference;Z)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 53
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 594
    instance-of v2, p1, Lcom/android/settings/wifi/AccessPoint;

    if-nez v2, :cond_0

    .line 595
    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lcom/android/settings/wifi/AccessPoint;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/AccessPoint;->internalCompareTo(Landroid/preference/Preference;Z)I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected generateOpenNetworkConfig()V
    .locals 2

    .prologue
    .line 1080
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_0

    .line 1081
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 1087
    :goto_0
    return-void

    .line 1084
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1085
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1086
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 697
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 698
    const/4 v0, -0x1

    .line 700
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method getRssi()I
    .locals 1

    .prologue
    .line 693
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    return v0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 9
    .param p1, "concise"    # Z

    .prologue
    const v8, 0x7f0a0496

    const v7, 0x7f0a048e

    const/16 v6, 0x9

    const/4 v5, 0x7

    const v4, 0x7f0a0471

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 224
    .local v0, "context":Landroid/content/Context;
    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    packed-switch v2, :pswitch_data_0

    .line 286
    if-eqz p1, :cond_e

    const-string v2, ""

    :goto_0
    return-object v2

    .line 226
    :pswitch_0
    new-instance v1, Ljava/lang/String;

    if-eqz p1, :cond_0

    const v2, 0x7f0a048a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 229
    .local v1, "securityString":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 226
    .end local v1    # "securityString":Ljava/lang/String;
    :cond_0
    const v2, 0x7f0a0495

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 235
    .restart local v1    # "securityString":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 237
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 242
    :cond_3
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 244
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 249
    :cond_5
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_6
    move-object v2, v1

    .line 252
    goto/16 :goto_0

    .line 255
    .end local v1    # "securityString":Ljava/lang/String;
    :pswitch_1
    sget-object v2, Lcom/android/settings/wifi/AccessPoint$1;->$SwitchMap$com$android$settings$wifi$AccessPoint$PskType:[I

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    invoke-virtual {v3}, Lcom/android/settings/wifi/AccessPoint$PskType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 273
    if-eqz p1, :cond_c

    const v2, 0x7f0a0489

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 257
    :pswitch_2
    if-eqz p1, :cond_7

    const v2, 0x7f0a0486

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_7
    const v2, 0x7f0a0491

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 260
    :pswitch_3
    if-eqz p1, :cond_8

    const v2, 0x7f0a0487

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    const v2, 0x7f0a0492

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 263
    :pswitch_4
    if-eqz p1, :cond_9

    const v2, 0x7f0a0488

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_9
    const v2, 0x7f0a0493

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 266
    :pswitch_5
    if-eqz p1, :cond_a

    const v2, 0x7f0a048c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_a
    const v2, 0x7f0a0497

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 269
    :pswitch_6
    if-eqz p1, :cond_b

    const v2, 0x7f0a048d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_b
    const v2, 0x7f0a0498

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 273
    :cond_c
    const v2, 0x7f0a0494

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 277
    :pswitch_7
    if-eqz p1, :cond_d

    const v2, 0x7f0a0485

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_d
    const v2, 0x7f0a0490

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 281
    :pswitch_8
    const v2, 0x7f0a049b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 283
    :pswitch_9
    const v2, 0x7f0a049c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 286
    :cond_e
    const v2, 0x7f0a048f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 255
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 600
    const/4 v0, 0x0

    .line 601
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    .line 602
    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    .line 603
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    .line 604
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    .line 605
    return v0
.end method

.method public isSupportedSecurityType()Z
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x7

    const/4 v2, 0x1

    .line 1091
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1116
    :cond_0
    :goto_0
    return v2

    .line 1096
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1101
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1106
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1111
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public isVendorAccessPoint()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1121
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1124
    invoke-static {}, Lcom/android/settings/Utils;->getVendorApInfo()[Lcom/android/settings/Utils$ApInfo;

    move-result-object v0

    .line 1125
    .local v0, "aps":[Lcom/android/settings/Utils$ApInfo;
    if-nez v0, :cond_1

    .line 1126
    const-string v3, "Settings.AccessPoint"

    const-string v4, "Do not exist vendor specific aps"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    .end local v0    # "aps":[Lcom/android/settings/Utils$ApInfo;
    :cond_0
    :goto_0
    return v2

    .line 1130
    .restart local v0    # "aps":[Lcom/android/settings/Utils$ApInfo;
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 1131
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/android/settings/Utils$ApInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    aget-object v4, v0, v1

    invoke-virtual {v4}, Lcom/android/settings/Utils$ApInfo;->getSecurityType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1132
    const-string v2, "Settings.AccessPoint"

    const-string v3, "Selected Default AP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const/4 v2, 0x1

    goto :goto_0

    .line 1130
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v7, 0x1020010

    .line 432
    const v5, 0x1020016

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mTitleText:Landroid/widget/TextView;

    .line 433
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mSummaryText:Landroid/widget/TextView;

    .line 434
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mTitleText:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 437
    .local v2, "res":Landroid/content/res/Resources;
    const v5, 0x7f0700f9

    :try_start_0
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 438
    .local v4, "xpp":Landroid/content/res/XmlResourceParser;
    invoke-static {v2, v4}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 439
    .local v0, "csl":Landroid/content/res/ColorStateList;
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v4    # "xpp":Landroid/content/res/XmlResourceParser;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/wifi/AccessPoint;->updateIcon(ILandroid/content/Context;)V

    .line 448
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 450
    .local v3, "summaryView":Landroid/widget/TextView;
    iget-boolean v5, p0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 452
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->notifyChanged()V

    .line 453
    return-void

    .line 440
    .end local v3    # "summaryView":Landroid/widget/TextView;
    .restart local v2    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 441
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Settings.AccessPoint"

    const-string v6, "onBindView(), XmlResourceParser exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 450
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "summaryView":Landroid/widget/TextView;
    :cond_1
    const/16 v5, 0x8

    goto :goto_1
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 346
    const-string v0, "key_config"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 347
    const-string v0, "key_scanresult"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 348
    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 349
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_0

    .line 350
    const-string v0, "key_detailedstate"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_0
    return-void
.end method

.method public setShowSummary(Z)V
    .locals 0
    .param p1, "showSummary"    # Z

    .prologue
    .line 739
    iput-boolean p1, p0, Lcom/android/settings/wifi/AccessPoint;->showSummary:Z

    .line 740
    return-void
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 5
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    const/4 v4, 0x0

    .line 666
    const/4 v1, 0x0

    .line 667
    .local v1, "reorder":Z
    if-eqz p1, :cond_6

    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 669
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_5

    const/4 v1, 0x1

    .line 672
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    .line 673
    .local v0, "newRssi":I
    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_0

    const/16 v2, -0xc8

    if-eq v0, v2, :cond_1

    const/16 v2, -0x270f

    if-eq v0, v2, :cond_1

    const/16 v2, -0x7f

    if-eq v0, v2, :cond_1

    .line 674
    :cond_0
    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 676
    :cond_1
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 677
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-eq p2, v2, :cond_2

    .line 678
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 680
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 687
    .end local v0    # "newRssi":I
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 688
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->notifyHierarchyChanged()V

    .line 690
    :cond_4
    return-void

    .line 669
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 681
    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_3

    .line 682
    const/4 v1, 0x1

    .line 683
    iput-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 684
    iput-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 685
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    goto :goto_1
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 6
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    const/4 v1, 0x1

    .line 618
    iget-wide v2, p1, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v4, p0, Lcom/android/settings/wifi/AccessPoint;->mSeen:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 619
    iget-wide v2, p1, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v2, p0, Lcom/android/settings/wifi/AccessPoint;->mSeen:J

    .line 621
    :cond_0
    sget v2, Lcom/android/settings/wifi/WifiSettings;->mVerboseLogging:I

    if-lez v2, :cond_2

    .line 622
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    if-nez v2, :cond_1

    .line 623
    new-instance v2, Landroid/util/LruCache;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Landroid/util/LruCache;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    .line 625
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResultCache:Landroid/util/LruCache;

    iget-object v3, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 629
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v2, v3, :cond_3

    .line 630
    iget v2, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v2

    if-lez v2, :cond_3

    .line 631
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 632
    .local v0, "oldLevel":I
    iget v2, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v2, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 633
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v2

    if-eq v2, v0, :cond_3

    .line 634
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->notifyChanged()V

    .line 638
    .end local v0    # "oldLevel":I
    :cond_3
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "HS20"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->isHs20Ap:Z

    .line 640
    iget-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaAp:Z

    if-nez v2, :cond_4

    .line 641
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_6

    .line 642
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p1, Landroid/net/wifi/ScanResult;->is5GHzVsi:Z

    if-eqz v2, :cond_4

    .line 643
    iput-boolean v1, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaAp:Z

    .line 644
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->notifyChanged()V

    .line 655
    :cond_4
    :goto_0
    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 656
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 658
    :cond_5
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 659
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 662
    :goto_1
    return v1

    .line 647
    :cond_6
    iget-boolean v2, p1, Landroid/net/wifi/ScanResult;->is5GHzVsi:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaAp:Z

    .line 648
    iget-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->mIsGigaAp:Z

    if-eqz v2, :cond_4

    .line 649
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->notifyChanged()V

    goto :goto_0

    .line 662
    :cond_7
    const/4 v1, 0x0

    goto :goto_1
.end method

.method updateConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 709
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 710
    return-void
.end method

.method protected updateIcon(ILandroid/content/Context;)V
    .locals 7
    .param p1, "level"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 461
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 464
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget-object v6, Lcom/android/settings/wifi/AccessPoint;->wifi_signal_attributes:[I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    .line 468
    .local v4, "sld":Landroid/graphics/drawable/StateListDrawable;
    if-eqz v4, :cond_0

    .line 469
    iget v5, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/settings/wifi/AccessPoint;->STATE_SECURED:[I

    :goto_0
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 470
    invoke-virtual {v4}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 471
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 492
    .end local v4    # "sld":Landroid/graphics/drawable/StateListDrawable;
    :cond_0
    if-eqz v0, :cond_3

    .line 493
    const/4 v5, -0x1

    if-ne p1, v5, :cond_2

    .line 494
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 515
    :goto_1
    return-void

    .line 469
    .restart local v4    # "sld":Landroid/graphics/drawable/StateListDrawable;
    :cond_1
    sget-object v5, Lcom/android/settings/wifi/AccessPoint;->STATE_NONE:[I

    goto :goto_0

    .line 496
    .end local v4    # "sld":Landroid/graphics/drawable/StateListDrawable;
    :cond_2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    .line 499
    :cond_3
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 500
    .local v2, "icon":Landroid/widget/ImageView;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c004c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 502
    .local v3, "signalStrength":[Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0a0446

    invoke-virtual {p2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v6

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :goto_2
    iget v5, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v5, :cond_4

    .line 507
    const v5, 0x7f0207cd

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 511
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 512
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AccessPoint;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 503
    :catch_0
    move-exception v1

    .line 504
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v5, "Settings.AccessPoint"

    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 509
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    const v5, 0x7f0207c9

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method
