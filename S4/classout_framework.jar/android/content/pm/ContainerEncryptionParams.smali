.class public Landroid/content/pm/ContainerEncryptionParams;
.super Ljava/lang/Object;
.source "ContainerEncryptionParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/ContainerEncryptionParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENC_PARAMS_IV_PARAMETERS:I = 0x1

.field private static final MAC_PARAMS_NONE:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "ContainerEncryptionParams"

.field private static final TO_STRING_PREFIX:Ljava/lang/String; = "ContainerEncryptionParams{"


# instance fields
.field private final mAuthenticatedDataStart:J

.field private final mDataEnd:J

.field private final mEncryptedDataStart:J

.field private final mEncryptionAlgorithm:Ljava/lang/String;

.field private final mEncryptionKey:Ljavax/crypto/SecretKey;

.field private final mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

.field private final mMacAlgorithm:Ljava/lang/String;

.field private final mMacKey:Ljavax/crypto/SecretKey;

.field private final mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final mMacTag:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 377
    new-instance v0, Landroid/content/pm/ContainerEncryptionParams$1;

    invoke-direct {v0}, Landroid/content/pm/ContainerEncryptionParams$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "source"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, mEncryptionAlgorithm:Ljava/lang/String;

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 340
    .local v0, "encParamType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 341
    .local v1, "encParamsEncoded":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljavax/crypto/SecretKey;

    iput-object v3, p0, mEncryptionKey:Ljavax/crypto/SecretKey;

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, mMacAlgorithm:Ljava/lang/String;

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 345
    .local v2, "macParamType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljavax/crypto/SecretKey;

    iput-object v3, p0, mMacKey:Ljavax/crypto/SecretKey;

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    iput-object v3, p0, mMacTag:[B

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, mAuthenticatedDataStart:J

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, mEncryptedDataStart:J

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, mDataEnd:J

    .line 354
    packed-switch v0, :pswitch_data_96

    .line 359
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown parameter type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 356
    :pswitch_62
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v3, p0, mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    .line 363
    packed-switch v2, :pswitch_data_9c

    .line 368
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown parameter type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 365
    :pswitch_85
    const/4 v3, 0x0

    iput-object v3, p0, mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 372
    iget-object v3, p0, mEncryptionKey:Ljavax/crypto/SecretKey;

    if-nez v3, :cond_94

    .line 373
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "encryptionKey == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 375
    :cond_94
    return-void

    .line 354
    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_62
    .end packed-switch

    .line 363
    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_85
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/ContainerEncryptionParams$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/pm/ContainerEncryptionParams$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1}, <init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;)V
    .registers 18
    .param p1, "encryptionAlgorithm"    # Ljava/lang/String;
    .param p2, "encryptionSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "encryptionKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v13}, <init>(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;[BJJJ)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/SecretKey;[BJJJ)V
    .registers 16
    .param p1, "encryptionAlgorithm"    # Ljava/lang/String;
    .param p2, "encryptionSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "encryptionKey"    # Ljavax/crypto/SecretKey;
    .param p4, "macAlgorithm"    # Ljava/lang/String;
    .param p5, "macSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p6, "macKey"    # Ljavax/crypto/SecretKey;
    .param p7, "macTag"    # [B
    .param p8, "authenticatedDataStart"    # J
    .param p10, "encryptedDataStart"    # J
    .param p12, "dataEnd"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "algorithm == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_11
    if-nez p2, :cond_1b

    .line 123
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encryptionSpec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1b
    if-nez p3, :cond_25

    .line 125
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encryptionKey == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_25
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 129
    if-nez p6, :cond_36

    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "macKey == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_36
    instance-of v0, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-nez v0, :cond_42

    .line 135
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Unknown parameter spec class; must be IvParameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_42
    iput-object p1, p0, mEncryptionAlgorithm:Ljava/lang/String;

    .line 140
    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    .end local p2    # "encryptionSpec":Ljava/security/spec/AlgorithmParameterSpec;
    iput-object p2, p0, mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    .line 141
    iput-object p3, p0, mEncryptionKey:Ljavax/crypto/SecretKey;

    .line 143
    iput-object p4, p0, mMacAlgorithm:Ljava/lang/String;

    .line 144
    iput-object p5, p0, mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 145
    iput-object p6, p0, mMacKey:Ljavax/crypto/SecretKey;

    .line 146
    iput-object p7, p0, mMacTag:[B

    .line 148
    iput-wide p8, p0, mAuthenticatedDataStart:J

    .line 149
    iput-wide p10, p0, mEncryptedDataStart:J

    .line 150
    iput-wide p12, p0, mDataEnd:J

    .line 151
    return-void
.end method

.method private static final isSecretKeyEqual(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Z
    .registers 7
    .param p0, "key1"    # Ljavax/crypto/SecretKey;
    .param p1, "key2"    # Ljavax/crypto/SecretKey;

    .prologue
    const/4 v2, 0x0

    .line 238
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "keyFormat":Ljava/lang/String;
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "otherKeyFormat":Ljava/lang/String;
    if-nez v0, :cond_1a

    .line 242
    if-eq v0, v1, :cond_e

    .line 259
    :cond_d
    :goto_d
    return v2

    .line 246
    :cond_e
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    if-ne v3, v4, :cond_d

    .line 259
    :cond_18
    const/4 v2, 0x1

    goto :goto_d

    .line 250
    :cond_1a
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 254
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_d
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 200
    if-ne p0, p1, :cond_5

    .line 234
    :cond_4
    :goto_4
    return v1

    .line 204
    :cond_5
    instance-of v3, p1, Landroid/content/pm/ContainerEncryptionParams;

    if-nez v3, :cond_b

    move v1, v2

    .line 205
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 208
    check-cast v0, Landroid/content/pm/ContainerEncryptionParams;

    .line 211
    .local v0, "other":Landroid/content/pm/ContainerEncryptionParams;
    iget-wide v4, p0, mAuthenticatedDataStart:J

    iget-wide v6, v0, mAuthenticatedDataStart:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_26

    iget-wide v4, p0, mEncryptedDataStart:J

    iget-wide v6, v0, mEncryptedDataStart:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_26

    iget-wide v4, p0, mDataEnd:J

    iget-wide v6, v0, mDataEnd:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_28

    :cond_26
    move v1, v2

    .line 214
    goto :goto_4

    .line 218
    :cond_28
    iget-object v3, p0, mEncryptionAlgorithm:Ljava/lang/String;

    iget-object v4, v0, mEncryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, mMacAlgorithm:Ljava/lang/String;

    iget-object v4, v0, mMacAlgorithm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    :cond_3c
    move v1, v2

    .line 220
    goto :goto_4

    .line 224
    :cond_3e
    iget-object v3, p0, mEncryptionKey:Ljavax/crypto/SecretKey;

    iget-object v4, v0, mEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-static {v3, v4}, isSecretKeyEqual(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Z

    move-result v3

    if-eqz v3, :cond_52

    iget-object v3, p0, mMacKey:Ljavax/crypto/SecretKey;

    iget-object v4, v0, mMacKey:Ljavax/crypto/SecretKey;

    invoke-static {v3, v4}, isSecretKeyEqual(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)Z

    move-result v3

    if-nez v3, :cond_54

    :cond_52
    move v1, v2

    .line 226
    goto :goto_4

    .line 229
    :cond_54
    iget-object v3, p0, mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    iget-object v4, v0, mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_76

    iget-object v3, p0, mMacTag:[B

    iget-object v4, v0, mMacTag:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_76

    iget-object v3, p0, mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    iget-object v4, v0, mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    if-eq v3, v4, :cond_4

    :cond_76
    move v1, v2

    .line 231
    goto :goto_4
.end method

.method public getAuthenticatedDataStart()J
    .registers 3

    .prologue
    .line 182
    iget-wide v0, p0, mAuthenticatedDataStart:J

    return-wide v0
.end method

.method public getDataEnd()J
    .registers 3

    .prologue
    .line 190
    iget-wide v0, p0, mDataEnd:J

    return-wide v0
.end method

.method public getEncryptedDataStart()J
    .registers 3

    .prologue
    .line 186
    iget-wide v0, p0, mEncryptedDataStart:J

    return-wide v0
.end method

.method public getEncryptionAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, mEncryptionAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionKey()Ljavax/crypto/SecretKey;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, mEncryptionKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getEncryptionSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    return-object v0
.end method

.method public getMacAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, mMacAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getMacKey()Ljavax/crypto/SecretKey;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, mMacKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getMacSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public getMacTag()[B
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, mMacTag:[B

    return-object v0
.end method

.method public hashCode()I
    .registers 9

    .prologue
    .line 264
    const/4 v0, 0x3

    .line 266
    .local v0, "hash":I
    iget-object v1, p0, mEncryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    .line 267
    iget-object v1, p0, mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    .line 268
    iget-object v1, p0, mEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    .line 269
    iget-object v1, p0, mMacAlgorithm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    .line 270
    iget-object v1, p0, mMacKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    .line 271
    iget-object v1, p0, mMacTag:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    .line 272
    int-to-long v2, v0

    const-wide/16 v4, 0x17

    iget-wide v6, p0, mAuthenticatedDataStart:J

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 273
    int-to-long v2, v0

    const-wide/16 v4, 0x1d

    iget-wide v6, p0, mEncryptedDataStart:J

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 274
    int-to-long v2, v0

    const-wide/16 v4, 0x1f

    iget-wide v6, p0, mDataEnd:J

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    long-to-int v0, v2

    .line 276
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContainerEncryptionParams{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mEncryptionAlgorithm=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v1, p0, mEncryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-object v1, p0, mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v1, :cond_2a

    .line 287
    const-string/jumbo v1, "mEncryptionSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-object v1, p0, mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_2a
    iget-object v1, p0, mEncryptionKey:Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_3d

    .line 291
    const-string/jumbo v1, "mEncryptionKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget-object v1, p0, mEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_3d
    const-string/jumbo v1, "mMacAlgorithm=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    iget-object v1, p0, mMacAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object v1, p0, mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    if-eqz v1, :cond_60

    .line 299
    const-string/jumbo v1, "mMacSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget-object v1, p0, mMacSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_60
    iget-object v1, p0, mMacKey:Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_73

    .line 303
    const-string/jumbo v1, "mMacKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    iget-object v1, p0, mMacKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_73
    const-string v1, ",mAuthenticatedDataStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    iget-wide v2, p0, mAuthenticatedDataStart:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 309
    const-string v1, ",mEncryptedDataStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    iget-wide v2, p0, mEncryptedDataStart:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 311
    const-string v1, ",mDataEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget-wide v2, p0, mDataEnd:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 313
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    .line 320
    iget-object v0, p0, mEncryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget-object v0, p0, mEncryptionSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 323
    iget-object v0, p0, mEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 325
    iget-object v0, p0, mMacAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 328
    iget-object v0, p0, mMacKey:Ljavax/crypto/SecretKey;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 330
    iget-object v0, p0, mMacTag:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 332
    iget-wide v0, p0, mAuthenticatedDataStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 333
    iget-wide v0, p0, mEncryptedDataStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 334
    iget-wide v0, p0, mDataEnd:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 335
    return-void
.end method
