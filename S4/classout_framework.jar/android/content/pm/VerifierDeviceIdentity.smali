.class public Landroid/content/pm/VerifierDeviceIdentity;
.super Ljava/lang/Object;
.source "VerifierDeviceIdentity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/VerifierDeviceIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENCODE:[C

.field private static final GROUP_SIZE:I = 0x4

.field private static final LONG_SIZE:I = 0xd

.field private static final SEPARATOR:C = '-'


# instance fields
.field private final mIdentity:J

.field private final mIdentityString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 94
    const/16 v0, 0x20

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, ENCODE:[C

    .line 230
    new-instance v0, Landroid/content/pm/VerifierDeviceIdentity$1;

    invoke-direct {v0}, Landroid/content/pm/VerifierDeviceIdentity$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 94
    nop

    :array_12
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
    .end array-data
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "identity"    # J

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-wide p1, p0, mIdentity:J

    .line 61
    invoke-static {p1, p2}, encodeBase32(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mIdentityString:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 67
    .local v0, "identity":J
    iput-wide v0, p0, mIdentity:J

    .line 68
    invoke-static {v0, v1}, encodeBase32(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, mIdentityString:Ljava/lang/String;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/VerifierDeviceIdentity$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/pm/VerifierDeviceIdentity$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, <init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static final decodeBase32([B)J
    .registers 14
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xd

    .line 138
    const-wide/16 v4, 0x0

    .line 139
    .local v4, "output":J
    const/4 v3, 0x0

    .line 141
    .local v3, "numParsed":I
    array-length v0, p0

    .line 142
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_7b

    .line 143
    aget-byte v1, p0, v2

    .line 150
    .local v1, "group":I
    const/16 v7, 0x41

    if-gt v7, v1, :cond_2c

    const/16 v7, 0x5a

    if-gt v1, v7, :cond_2c

    .line 151
    add-int/lit8 v6, v1, -0x41

    .line 169
    .local v6, "value":I
    :goto_15
    const/4 v7, 0x5

    shl-long v8, v4, v7

    int-to-long v10, v6

    or-long v4, v8, v10

    .line 170
    add-int/lit8 v3, v3, 0x1

    .line 172
    const/4 v7, 0x1

    if-ne v3, v7, :cond_70

    .line 173
    and-int/lit8 v7, v6, 0xf

    if-eq v7, v6, :cond_3b

    .line 174
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "illegal start character; will overflow"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 152
    .end local v6    # "value":I
    :cond_2c
    const/16 v7, 0x32

    if-gt v7, v1, :cond_37

    const/16 v7, 0x37

    if-gt v1, v7, :cond_37

    .line 153
    add-int/lit8 v6, v1, -0x18

    .restart local v6    # "value":I
    goto :goto_15

    .line 154
    .end local v6    # "value":I
    :cond_37
    const/16 v7, 0x2d

    if-ne v1, v7, :cond_3e

    .line 142
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 156
    :cond_3e
    const/16 v7, 0x61

    if-gt v7, v1, :cond_49

    const/16 v7, 0x7a

    if-gt v1, v7, :cond_49

    .line 158
    add-int/lit8 v6, v1, -0x61

    .restart local v6    # "value":I
    goto :goto_15

    .line 159
    .end local v6    # "value":I
    :cond_49
    const/16 v7, 0x30

    if-ne v1, v7, :cond_50

    .line 161
    const/16 v6, 0xe

    .restart local v6    # "value":I
    goto :goto_15

    .line 162
    .end local v6    # "value":I
    :cond_50
    const/16 v7, 0x31

    if-ne v1, v7, :cond_57

    .line 164
    const/16 v6, 0x8

    .restart local v6    # "value":I
    goto :goto_15

    .line 166
    .end local v6    # "value":I
    :cond_57
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "base base-32 character: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 176
    .restart local v6    # "value":I
    :cond_70
    if-le v3, v12, :cond_3b

    .line 177
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "too long; should have 13 characters"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 181
    .end local v1    # "group":I
    .end local v6    # "value":I
    :cond_7b
    if-eq v3, v12, :cond_86

    .line 182
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "too short; should have 13 characters"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 185
    :cond_86
    return-wide v4
.end method

.method private static final encodeBase32(J)Ljava/lang/String;
    .registers 10
    .param p0, "input"    # J

    .prologue
    .line 104
    sget-object v0, ENCODE:[C

    .line 110
    .local v0, "alphabet":[C
    const/16 v5, 0x10

    new-array v1, v5, [C

    .line 112
    .local v1, "encoded":[C
    array-length v4, v1

    .line 113
    .local v4, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    const/16 v5, 0xd

    if-ge v3, v5, :cond_28

    .line 120
    if-lez v3, :cond_19

    rem-int/lit8 v5, v3, 0x4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_19

    .line 121
    add-int/lit8 v4, v4, -0x1

    const/16 v5, 0x2d

    aput-char v5, v1, v4

    .line 127
    :cond_19
    const-wide/16 v6, 0x1f

    and-long/2addr v6, p0

    long-to-int v2, v6

    .line 128
    .local v2, "group":I
    const/4 v5, 0x5

    ushr-long/2addr p0, v5

    .line 130
    add-int/lit8 v4, v4, -0x1

    aget-char v5, v0, v2

    aput-char v5, v1, v4

    .line 113
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 133
    .end local v2    # "group":I
    :cond_28
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static generate()Landroid/content/pm/VerifierDeviceIdentity;
    .registers 2

    .prologue
    .line 77
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 78
    .local v0, "sr":Ljava/security/SecureRandom;
    invoke-static {v0}, generate(Ljava/util/Random;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v1

    return-object v1
.end method

.method static generate(Ljava/util/Random;)Landroid/content/pm/VerifierDeviceIdentity;
    .registers 4
    .param p0, "rng"    # Ljava/util/Random;

    .prologue
    .line 90
    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    .line 91
    .local v0, "identity":J
    new-instance v2, Landroid/content/pm/VerifierDeviceIdentity;

    invoke-direct {v2, v0, v1}, <init>(J)V

    return-object v2
.end method

.method public static parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;
    .registers 7
    .param p0, "deviceIdentity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 212
    :try_start_0
    const-string v2, "US-ASCII"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_10

    move-result-object v1

    .line 217
    .local v1, "input":[B
    new-instance v2, Landroid/content/pm/VerifierDeviceIdentity;

    invoke-static {v1}, decodeBase32([B)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, <init>(J)V

    return-object v2

    .line 213
    .end local v1    # "input":[B
    :catch_10
    move-exception v0

    .line 214
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bad base-32 characters in input"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 195
    instance-of v2, p1, Landroid/content/pm/VerifierDeviceIdentity;

    if-nez v2, :cond_6

    .line 200
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 199
    check-cast v0, Landroid/content/pm/VerifierDeviceIdentity;

    .line 200
    .local v0, "o":Landroid/content/pm/VerifierDeviceIdentity;
    iget-wide v2, p0, mIdentity:J

    iget-wide v4, v0, mIdentity:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 190
    iget-wide v0, p0, mIdentity:J

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, mIdentityString:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 227
    iget-wide v0, p0, mIdentity:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 228
    return-void
.end method
