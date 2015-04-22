.class public Lcom/android/internal/net/VpnProfile;
.super Ljava/lang/Object;
.source "VpnProfile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final CC_PROPERTY:Ljava/lang/String; = "security.mdpp"

.field private static final CC_PROPERTY_ENABLED_VALUE:Ljava/lang/String; = "Enabled"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEC_PRODUCT_FEATURE_SECURITY_SUPPORT_VPN_STRONG_SWAN:Z = true

.field private static final TAG:Ljava/lang/String; = "VpnProfile"

.field public static final TYPE_IPSEC_HYBRID_RSA:I = 0x5

.field public static final TYPE_IPSEC_IKEV2_PSK:I = 0x6

.field public static final TYPE_IPSEC_IKEV2_RSA:I = 0x7

.field public static final TYPE_IPSEC_XAUTH_PSK:I = 0x3

.field public static final TYPE_IPSEC_XAUTH_RSA:I = 0x4

.field public static final TYPE_L2TP_IPSEC_PSK:I = 0x1

.field public static final TYPE_L2TP_IPSEC_RSA:I = 0x2

.field public static final TYPE_MAX:I = 0x7

.field public static final TYPE_PPTP:I


# instance fields
.field public dnsServers:Ljava/lang/String;

.field public ipsecCaCert:Ljava/lang/String;

.field public ipsecIdentifier:Ljava/lang/String;

.field public ipsecSecret:Ljava/lang/String;

.field public ipsecServerCert:Ljava/lang/String;

.field public ipsecUserCert:Ljava/lang/String;

.field public final key:Ljava/lang/String;

.field public l2tpSecret:Ljava/lang/String;

.field public mppe:Z

.field public name:Ljava/lang/String;

.field public ocspServerUrl:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public routes:Ljava/lang/String;

.field public saveLogin:Z

.field public searchDomains:Ljava/lang/String;

.field public server:Ljava/lang/String;

.field public type:I

.field public username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 327
    new-instance v0, Lcom/android/internal/net/VpnProfile$1;

    invoke-direct {v0}, Lcom/android/internal/net/VpnProfile$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, ""

    iput-object v0, p0, name:Ljava/lang/String;

    .line 58
    iput v2, p0, type:I

    .line 59
    const-string v0, ""

    iput-object v0, p0, server:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, username:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, password:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, dnsServers:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, searchDomains:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, routes:Ljava/lang/String;

    .line 65
    iput-boolean v1, p0, mppe:Z

    .line 66
    const-string v0, ""

    iput-object v0, p0, l2tpSecret:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, ipsecIdentifier:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, ipsecSecret:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, ipsecUserCert:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, ipsecCaCert:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, ipsecServerCert:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, ocspServerUrl:Ljava/lang/String;

    .line 75
    iput-boolean v2, p0, saveLogin:Z

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, key:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, name:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, type:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, server:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, username:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, password:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, dnsServers:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, searchDomains:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, routes:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b5

    move v0, v1

    :goto_80
    iput-boolean v0, p0, mppe:Z

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, l2tpSecret:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, ipsecIdentifier:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, ipsecSecret:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, ipsecUserCert:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, ipsecCaCert:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, ipsecServerCert:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, ocspServerUrl:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b7

    :goto_b2
    iput-boolean v1, p0, saveLogin:Z

    .line 100
    return-void

    :cond_b5
    move v0, v2

    .line 91
    goto :goto_80

    :cond_b7
    move v1, v2

    .line 99
    goto :goto_b2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, ""

    iput-object v0, p0, name:Ljava/lang/String;

    .line 58
    iput v1, p0, type:I

    .line 59
    const-string v0, ""

    iput-object v0, p0, server:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, username:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, password:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, dnsServers:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, searchDomains:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, routes:Ljava/lang/String;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, mppe:Z

    .line 66
    const-string v0, ""

    iput-object v0, p0, l2tpSecret:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, ipsecIdentifier:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, ipsecSecret:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, ipsecUserCert:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, ipsecCaCert:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, ipsecServerCert:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, ocspServerUrl:Ljava/lang/String;

    .line 75
    iput-boolean v1, p0, saveLogin:Z

    .line 78
    iput-object p1, p0, key:Ljava/lang/String;

    .line 79
    return-void
.end method

.method private copyStringToByteArray([BILjava/lang/String;)V
    .registers 8
    .param p1, "array"    # [B
    .param p2, "offset"    # I
    .param p3, "string"    # Ljava/lang/String;

    .prologue
    .line 197
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 198
    .local v1, "value":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_16

    .line 199
    add-int v2, v0, p2

    aget-byte v3, v1, v0

    aput-byte v3, p1, v2

    .line 200
    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 202
    :cond_16
    return-void
.end method

.method public static decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;
    .registers 16
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # [B

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v13, 0xe

    const/4 v12, 0x7

    const/4 v6, 0x0

    .line 125
    const-string v9, "VpnProfile"

    const-string v10, "decode"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v3, 0x0

    .line 129
    .local v3, "valueString":Ljava/lang/String;
    if-nez p0, :cond_12

    move-object v2, v6

    .line 194
    :goto_11
    return-object v2

    .line 136
    :cond_12
    :try_start_12
    new-instance v4, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, p1, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_15c

    .line 137
    .end local v3    # "valueString":Ljava/lang/String;
    .local v4, "valueString":Ljava/lang/String;
    :try_start_19
    const-string v9, "\u0000"

    const/4 v10, -0x1

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "values":[Ljava/lang/String;
    array-length v9, v5

    if-lt v9, v13, :cond_28

    array-length v9, v5

    const/16 v10, 0x10

    if-le v9, v10, :cond_2e

    .line 140
    :cond_28
    invoke-virtual {v4}, Ljava/lang/String;->clear()V

    move-object v3, v4

    .end local v4    # "valueString":Ljava/lang/String;
    .restart local v3    # "valueString":Ljava/lang/String;
    move-object v2, v6

    .line 141
    goto :goto_11

    .line 144
    .end local v3    # "valueString":Ljava/lang/String;
    .restart local v4    # "valueString":Ljava/lang/String;
    :cond_2e
    new-instance v2, Lcom/android/internal/net/VpnProfile;

    invoke-direct {v2, p0}, <init>(Ljava/lang/String;)V

    .line 145
    .local v2, "profile":Lcom/android/internal/net/VpnProfile;
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v9, v2, name:Ljava/lang/String;

    .line 146
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v2, type:I

    .line 147
    iget v9, v2, type:I

    if-ltz v9, :cond_52

    iget v9, v2, type:I

    if-le v9, v12, :cond_5b

    .line 148
    :cond_52
    invoke-virtual {v2}, wipe()V

    .line 149
    invoke-virtual {v4}, Ljava/lang/String;->clear()V

    move-object v3, v4

    .end local v4    # "valueString":Ljava/lang/String;
    .restart local v3    # "valueString":Ljava/lang/String;
    move-object v2, v6

    .line 150
    goto :goto_11

    .line 153
    .end local v3    # "valueString":Ljava/lang/String;
    .restart local v4    # "valueString":Ljava/lang/String;
    :cond_5b
    const-string/jumbo v9, "security.mdpp"

    const-string v10, "Disabled"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "ccModePropertyValue":Ljava/lang/String;
    const-string v9, "VpnProfile"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CC property value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    if-eqz v0, :cond_92

    const-string v9, "Enabled"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_92

    .line 161
    iget v9, v2, type:I

    const/4 v10, 0x6

    if-lt v9, v10, :cond_8f

    iget v9, v2, type:I

    if-le v9, v12, :cond_92

    :cond_8f
    move-object v3, v4

    .end local v4    # "valueString":Ljava/lang/String;
    .restart local v3    # "valueString":Ljava/lang/String;
    move-object v2, v6

    .line 163
    goto :goto_11

    .line 167
    .end local v3    # "valueString":Ljava/lang/String;
    .restart local v4    # "valueString":Ljava/lang/String;
    :cond_92
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x2

    aget-object v10, v5, v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v9, v2, server:Ljava/lang/String;

    .line 168
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x3

    aget-object v10, v5, v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v9, v2, username:Ljava/lang/String;

    .line 169
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x4

    aget-object v10, v5, v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v9, v2, password:Ljava/lang/String;

    .line 170
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x5

    aget-object v10, v5, v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v9, v2, dnsServers:Ljava/lang/String;

    .line 171
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x6

    aget-object v10, v5, v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v9, v2, searchDomains:Ljava/lang/String;

    .line 172
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x7

    aget-object v10, v5, v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v9, v2, routes:Ljava/lang/String;

    .line 173
    const/16 v9, 0x8

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, v2, mppe:Z

    .line 174
    new-instance v9, Ljava/lang/String;

    const/16 v10, 0x9

    aget-object v10, v5, v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v9, v2, l2tpSecret:Ljava/lang/String;

    .line 175
    new-instance v9, Ljava/lang/String;

    const/16 v10, 0xa

    aget-object v10, v5, v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v9, v2, ipsecIdentifier:Ljava/lang/String;

    .line 176
    new-instance v9, Ljava/lang/String;

    const/16 v10, 0xb

    aget-object v10, v5, v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v9, v2, ipsecSecret:Ljava/lang/String;

    .line 177
    new-instance v9, Ljava/lang/String;

    const/16 v10, 0xc

    aget-object v10, v5, v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v9, v2, ipsecUserCert:Ljava/lang/String;

    .line 178
    new-instance v9, Ljava/lang/String;

    const/16 v10, 0xd

    aget-object v10, v5, v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v9, v2, ipsecCaCert:Ljava/lang/String;

    .line 179
    array-length v9, v5

    if-le v9, v13, :cond_150

    new-instance v9, Ljava/lang/String;

    const/16 v10, 0xe

    aget-object v10, v5, v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_11f
    iput-object v9, v2, ipsecServerCert:Ljava/lang/String;

    .line 180
    array-length v9, v5

    const/16 v10, 0xf

    if-le v9, v10, :cond_153

    new-instance v9, Ljava/lang/String;

    const/16 v10, 0xf

    aget-object v10, v5, v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_12f
    iput-object v9, v2, ocspServerUrl:Ljava/lang/String;

    .line 182
    iget-object v9, v2, username:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_141

    iget-object v9, v2, password:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_142

    :cond_141
    move v7, v8

    :cond_142
    iput-boolean v7, v2, saveLogin:Z

    .line 183
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_145
    array-length v7, v5

    if-ge v1, v7, :cond_156

    .line 184
    aget-object v7, v5, v1

    invoke-virtual {v7}, Ljava/lang/String;->clear()V

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_145

    .line 179
    .end local v1    # "i":I
    :cond_150
    const-string v9, ""

    goto :goto_11f

    .line 180
    :cond_153
    const-string v9, ""

    goto :goto_12f

    .line 186
    .restart local v1    # "i":I
    :cond_156
    invoke-virtual {v4}, Ljava/lang/String;->clear()V
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_159} :catch_165

    move-object v3, v4

    .line 187
    .end local v4    # "valueString":Ljava/lang/String;
    .restart local v3    # "valueString":Ljava/lang/String;
    goto/16 :goto_11

    .line 188
    .end local v0    # "ccModePropertyValue":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v5    # "values":[Ljava/lang/String;
    :catch_15c
    move-exception v7

    .line 191
    :goto_15d
    if-eqz v3, :cond_162

    .line 192
    invoke-virtual {v3}, Ljava/lang/String;->clear()V

    :cond_162
    move-object v2, v6

    .line 194
    goto/16 :goto_11

    .line 188
    .end local v3    # "valueString":Ljava/lang/String;
    .restart local v4    # "valueString":Ljava/lang/String;
    :catch_165
    move-exception v7

    move-object v3, v4

    .end local v4    # "valueString":Ljava/lang/String;
    .restart local v3    # "valueString":Ljava/lang/String;
    goto :goto_15d
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public encode()[B
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 206
    const/4 v1, 0x0

    .line 208
    .local v1, "length":I
    new-instance v6, Ljava/lang/Integer;

    iget v8, p0, type:I

    invoke-direct {v6, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 209
    .local v5, "typeString":Ljava/lang/String;
    new-instance v6, Ljava/lang/Boolean;

    iget-boolean v8, p0, mppe:Z

    invoke-direct {v6, v8}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v6}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "mppeString":Ljava/lang/String;
    iget-object v6, p0, name:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v1, v6

    .line 212
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v1, v6

    .line 213
    iget-object v6, p0, server:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v1, v6

    .line 214
    iget-boolean v6, p0, saveLogin:Z

    if-eqz v6, :cond_20a

    iget-object v6, p0, username:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    :goto_45
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v1, v6

    .line 215
    iget-boolean v6, p0, saveLogin:Z

    if-eqz v6, :cond_20d

    iget-object v6, p0, password:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    :goto_55
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v1, v6

    .line 216
    iget-object v6, p0, dnsServers:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v1, v6

    .line 217
    iget-object v6, p0, searchDomains:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v1, v6

    .line 218
    iget-object v6, p0, routes:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v1, v6

    .line 219
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v1, v6

    .line 220
    iget-object v6, p0, l2tpSecret:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v1, v6

    .line 221
    iget-object v6, p0, ipsecIdentifier:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v1, v6

    .line 222
    iget-object v6, p0, ipsecSecret:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v1, v6

    .line 223
    iget-object v6, p0, ipsecUserCert:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v1, v6

    .line 224
    iget-object v6, p0, ipsecCaCert:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v1, v6

    .line 225
    iget-object v6, p0, ipsecServerCert:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v1, v6

    .line 226
    iget-object v6, p0, ocspServerUrl:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v1, v6

    .line 228
    new-array v0, v1, [B

    .line 229
    .local v0, "encodedProfile":[B
    const/4 v3, 0x0

    .line 231
    .local v3, "offset":I
    iget-object v6, p0, name:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v6}, copyStringToByteArray([BILjava/lang/String;)V

    .line 232
    iget-object v6, p0, name:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v3, v6

    .line 234
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    aput-byte v7, v0, v3

    .line 235
    invoke-direct {p0, v0, v4, v5}, copyStringToByteArray([BILjava/lang/String;)V

    .line 236
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int v3, v4, v6

    .line 238
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    aput-byte v7, v0, v3

    .line 239
    iget-object v6, p0, server:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v6}, copyStringToByteArray([BILjava/lang/String;)V

    .line 240
    iget-object v6, p0, server:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int v3, v4, v6

    .line 242
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    iget-boolean v6, p0, saveLogin:Z

    if-eqz v6, :cond_210

    .line 243
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    aput-byte v7, v0, v3

    .line 244
    iget-object v6, p0, username:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v6}, copyStringToByteArray([BILjava/lang/String;)V

    .line 245
    iget-object v6, p0, username:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int v3, v4, v6

    .line 247
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    aput-byte v7, v0, v3

    .line 248
    iget-object v6, p0, password:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v6}, copyStringToByteArray([BILjava/lang/String;)V

    .line 249
    iget-object v6, p0, password:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int v3, v4, v6

    .line 255
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :goto_13c
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    aput-byte v7, v0, v3

    .line 256
    iget-object v6, p0, dnsServers:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v6}, copyStringToByteArray([BILjava/lang/String;)V

    .line 257
    iget-object v6, p0, dnsServers:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int v3, v4, v6

    .line 259
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    aput-byte v7, v0, v3

    .line 260
    iget-object v6, p0, searchDomains:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v6}, copyStringToByteArray([BILjava/lang/String;)V

    .line 261
    iget-object v6, p0, searchDomains:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int v3, v4, v6

    .line 263
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    aput-byte v7, v0, v3

    .line 264
    iget-object v6, p0, routes:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v6}, copyStringToByteArray([BILjava/lang/String;)V

    .line 265
    iget-object v6, p0, routes:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int v3, v4, v6

    .line 267
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    aput-byte v7, v0, v3

    .line 268
    invoke-direct {p0, v0, v4, v2}, copyStringToByteArray([BILjava/lang/String;)V

    .line 269
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int v3, v4, v6

    .line 271
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    aput-byte v7, v0, v3

    .line 272
    iget-object v6, p0, l2tpSecret:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v6}, copyStringToByteArray([BILjava/lang/String;)V

    .line 273
    iget-object v6, p0, l2tpSecret:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int v3, v4, v6

    .line 275
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    aput-byte v7, v0, v3

    .line 276
    iget-object v6, p0, ipsecIdentifier:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v6}, copyStringToByteArray([BILjava/lang/String;)V

    .line 277
    iget-object v6, p0, ipsecIdentifier:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int v3, v4, v6

    .line 279
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    aput-byte v7, v0, v3

    .line 280
    iget-object v6, p0, ipsecSecret:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v6}, copyStringToByteArray([BILjava/lang/String;)V

    .line 281
    iget-object v6, p0, ipsecSecret:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int v3, v4, v6

    .line 283
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    aput-byte v7, v0, v3

    .line 284
    iget-object v6, p0, ipsecUserCert:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v6}, copyStringToByteArray([BILjava/lang/String;)V

    .line 285
    iget-object v6, p0, ipsecUserCert:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int v3, v4, v6

    .line 287
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    aput-byte v7, v0, v3

    .line 288
    iget-object v6, p0, ipsecCaCert:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v6}, copyStringToByteArray([BILjava/lang/String;)V

    .line 289
    iget-object v6, p0, ipsecCaCert:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int v3, v4, v6

    .line 291
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    aput-byte v7, v0, v3

    .line 292
    iget-object v6, p0, ipsecServerCert:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v6}, copyStringToByteArray([BILjava/lang/String;)V

    .line 293
    iget-object v6, p0, ipsecServerCert:Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    array-length v6, v6

    add-int v3, v4, v6

    .line 295
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    aput-byte v7, v0, v3

    .line 296
    iget-object v6, p0, ocspServerUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v6}, copyStringToByteArray([BILjava/lang/String;)V

    .line 298
    return-object v0

    .end local v0    # "encodedProfile":[B
    .end local v4    # "offset":I
    :cond_20a
    move v6, v7

    .line 214
    goto/16 :goto_45

    :cond_20d
    move v6, v7

    .line 215
    goto/16 :goto_55

    .line 251
    .restart local v0    # "encodedProfile":[B
    .restart local v3    # "offset":I
    :cond_210
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    aput-byte v7, v0, v3

    .line 252
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    aput-byte v7, v0, v4

    goto/16 :goto_13c
.end method

.method public isValidLockdownProfile()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 308
    :try_start_1
    iget-object v6, p0, server:Ljava/lang/String;

    invoke-static {v6}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 310
    iget-object v6, p0, dnsServers:Ljava/lang/String;

    const-string v7, " +"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_10
    if-ge v3, v4, :cond_1c

    aget-object v1, v0, v3

    .line 311
    .local v1, "dnsServer":Ljava/lang/String;
    iget-object v6, p0, dnsServers:Ljava/lang/String;

    invoke-static {v6}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 310
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 313
    .end local v1    # "dnsServer":Ljava/lang/String;
    :cond_1c
    iget-object v6, p0, dnsServers:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 314
    const-string v6, "VpnProfile"

    const-string v7, "DNS required"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_2b} :catch_2e

    .line 323
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_2b
    return v5

    .line 319
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_2c
    const/4 v5, 0x1

    goto :goto_2b

    .line 321
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catch_2e
    move-exception v2

    .line 322
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "VpnProfile"

    const-string v7, "Invalid address"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method public wipe()V
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 345
    iget-object v0, p0, server:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 346
    iget-object v0, p0, username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 347
    iget-object v0, p0, password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 348
    iget-object v0, p0, dnsServers:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 349
    iget-object v0, p0, searchDomains:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 350
    iget-object v0, p0, routes:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 351
    iget-object v0, p0, l2tpSecret:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 352
    iget-object v0, p0, ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 353
    iget-object v0, p0, ipsecSecret:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 354
    iget-object v0, p0, ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 355
    iget-object v0, p0, ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 356
    iget-object v0, p0, ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 357
    iget-object v0, p0, ocspServerUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 358
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget v0, p0, type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v0, p0, server:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, dnsServers:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, searchDomains:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, routes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-boolean v0, p0, mppe:Z

    if-eqz v0, :cond_62

    move v0, v1

    :goto_34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-object v0, p0, l2tpSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, ipsecSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, ipsecUserCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, ipsecCaCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, ipsecServerCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, ocspServerUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-boolean v0, p0, saveLogin:Z

    if-eqz v0, :cond_64

    :goto_5e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    return-void

    :cond_62
    move v0, v2

    .line 113
    goto :goto_34

    :cond_64
    move v1, v2

    .line 121
    goto :goto_5e
.end method
