.class public Landroid/content/pm/AASATokenParser;
.super Ljava/lang/Object;
.source "AASATokenParser.java"


# instance fields
.field private mArchiveSourcePath:Ljava/lang/String;

.field private mCertPath:Ljava/lang/String;

.field private mTokenContents:[B

.field private mTokenName:Ljava/lang/String;

.field private mTokenValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, mTokenContents:[B

    .line 34
    iput-object v0, p0, mTokenValue:Ljava/util/ArrayList;

    .line 35
    const-string v0, ""

    iput-object v0, p0, mCertPath:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, mArchiveSourcePath:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, mTokenName:Ljava/lang/String;

    return-void
.end method

.method public static SHA256(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 70
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 71
    .local v0, "md":Ljava/security/MessageDigest;
    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 72
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 73
    .local v1, "sha1hash":[B
    invoke-static {v1}, convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static byteListToString(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    if-nez p0, :cond_5

    .line 97
    const-string v3, ""

    .line 106
    :goto_4
    return-object v3

    .line 99
    :cond_5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 101
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    .line 103
    .local v1, "current":Ljava/lang/Byte;
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_12

    .line 106
    .end local v1    # "current":Ljava/lang/Byte;
    :cond_26
    const-string v3, "ISO-8859-1"

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4
.end method

.method private checkHash(Ljava/lang/String;)Z
    .registers 15
    .param p1, "comp"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v0, "buf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v5, 0x0

    .line 347
    .local v5, "mTokenFile":Ljava/util/jar/JarFile;
    :try_start_8
    new-instance v6, Ljava/util/jar/JarFile;

    iget-object v11, p0, mArchiveSourcePath:Ljava/lang/String;

    invoke-direct {v6, v11}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_9a

    .line 348
    .end local v5    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v6, "mTokenFile":Ljava/util/jar/JarFile;
    if-eqz v6, :cond_97

    .line 351
    :try_start_11
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 352
    .local v2, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_5e

    .line 354
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/jar/JarEntry;

    .line 355
    .local v3, "jarEntry":Ljava/util/jar/JarEntry;
    invoke-virtual {v3}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 357
    .local v7, "name":Ljava/lang/String;
    const-string v11, "META-INF/"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_15

    .line 359
    const-string/jumbo v11, "token"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3e

    const-string v11, "Token.xml"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_15

    .line 362
    :cond_3e
    invoke-static {v6, v3, v0}, loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/util/List;)[Ljava/security/cert/Certificate;
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_41} :catch_42

    goto :goto_15

    .line 390
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v3    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v7    # "name":Ljava/lang/String;
    :catch_42
    move-exception v4

    move-object v5, v6

    .line 392
    .end local v6    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v4, "m":Ljava/io/IOException;
    .restart local v5    # "mTokenFile":Ljava/util/jar/JarFile;
    :goto_44
    const-string v9, "AASATokenParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " ERROR: AASA_VerifyToken check hash "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 395
    .end local v4    # "m":Ljava/io/IOException;
    :goto_5d
    return v9

    .line 366
    .end local v5    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v6    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_5e
    if-eqz v6, :cond_63

    .line 367
    :try_start_60
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_42

    .line 369
    :cond_63
    const/4 v8, 0x0

    .line 372
    .local v8, "value":Ljava/lang/String;
    :try_start_64
    invoke-static {v0}, byteListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_64 .. :try_end_6b} :catch_74
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_6b} :catch_42

    move-result-object v8

    .line 383
    :try_start_6c
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-ne v11, v9, :cond_97

    move-object v5, v6

    .line 385
    .end local v6    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v5    # "mTokenFile":Ljava/util/jar/JarFile;
    goto :goto_5d

    .line 374
    .end local v5    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v6    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_74
    move-exception v1

    .line 377
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v9, "AASATokenParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " SHA1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_94} :catch_42

    move-object v5, v6

    .end local v6    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v5    # "mTokenFile":Ljava/util/jar/JarFile;
    move v9, v10

    .line 379
    goto :goto_5d

    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v5    # "mTokenFile":Ljava/util/jar/JarFile;
    .end local v8    # "value":Ljava/lang/String;
    .restart local v6    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_97
    move-object v5, v6

    .end local v6    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v5    # "mTokenFile":Ljava/util/jar/JarFile;
    move v9, v10

    .line 395
    goto :goto_5d

    .line 390
    :catch_9a
    move-exception v4

    goto :goto_44
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .registers 10
    .param p0, "data"    # [B

    .prologue
    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v2, "buf":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_8
    if-ge v4, v5, :cond_2e

    aget-byte v1, v0, v4

    .line 81
    .local v1, "b":B
    ushr-int/lit8 v8, v1, 0x4

    and-int/lit8 v3, v8, 0xf

    .line 82
    .local v3, "halfbyte":I
    const/4 v6, 0x0

    .local v6, "two_halfs":I
    move v7, v6

    .line 85
    .end local v6    # "two_halfs":I
    .local v7, "two_halfs":I
    :goto_12
    if-ltz v3, :cond_28

    const/16 v8, 0x9

    if-gt v3, v8, :cond_28

    add-int/lit8 v8, v3, 0x30

    int-to-char v8, v8

    :goto_1b
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    and-int/lit8 v3, v1, 0xf

    .line 88
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "two_halfs":I
    .restart local v6    # "two_halfs":I
    const/4 v8, 0x1

    if-lt v7, v8, :cond_33

    .line 79
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 85
    .end local v6    # "two_halfs":I
    .restart local v7    # "two_halfs":I
    :cond_28
    add-int/lit8 v8, v3, -0xa

    add-int/lit8 v8, v8, 0x61

    int-to-char v8, v8

    goto :goto_1b

    .line 90
    .end local v1    # "b":B
    .end local v3    # "halfbyte":I
    .end local v7    # "two_halfs":I
    :cond_2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .restart local v1    # "b":B
    .restart local v3    # "halfbyte":I
    .restart local v6    # "two_halfs":I
    :cond_33
    move v7, v6

    .end local v6    # "two_halfs":I
    .restart local v7    # "two_halfs":I
    goto :goto_12
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 57
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_5

    .line 65
    const/4 v1, 0x1

    :goto_4
    return v1

    .line 59
    :catch_5
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private static loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/util/List;)[Ljava/security/cert/Certificate;
    .registers 12
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;
    .param p1, "je"    # Ljava/util/jar/JarEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "Ljava/util/jar/JarEntry;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)[",
            "Ljava/security/cert/Certificate;"
        }
    .end annotation

    .prologue
    .local p2, "readBuffer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v5, 0x0

    .line 131
    const/4 v2, 0x0

    .line 133
    .local v2, "is":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    .line 134
    const/4 v4, 0x0

    .line 135
    .local v4, "size":I
    const/16 v6, 0x400

    new-array v3, v6, [B

    .line 136
    .local v3, "localBuf":[B
    if-eqz v2, :cond_29

    .line 137
    :cond_d
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v2, v3, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_26

    .line 138
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_18
    if-ge v1, v4, :cond_d

    .line 139
    aget-byte v6, v3, v1

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 141
    .end local v1    # "ii":I
    :cond_26
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 143
    :cond_29
    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2e} :catch_30
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2e} :catch_55

    move-result-object v5

    .line 163
    .end local v3    # "localBuf":[B
    .end local v4    # "size":I
    :cond_2f
    :goto_2f
    return-object v5

    .line 145
    :catch_30
    move-exception v0

    .line 146
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "AASATokenParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No IO "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    if-eqz v2, :cond_2f

    .line 149
    :try_start_4f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_2f

    .line 150
    :catch_53
    move-exception v6

    goto :goto_2f

    .line 154
    .end local v0    # "e":Ljava/io/IOException;
    :catch_55
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v6, "AASATokenParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No RUN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    if-eqz v2, :cond_2f

    .line 158
    :try_start_74
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_2f

    .line 159
    :catch_78
    move-exception v6

    goto :goto_2f
.end method

.method private loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .registers 10
    .param p1, "jarFile"    # Ljava/util/jar/JarFile;
    .param p2, "je"    # Ljava/util/jar/JarEntry;
    .param p3, "readBuffer"    # [B

    .prologue
    const/4 v2, 0x0

    .line 168
    const/4 v1, 0x0

    .line 170
    .local v1, "is":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 171
    if-eqz v1, :cond_14

    .line 172
    :cond_8
    const/4 v3, 0x0

    array-length v4, p3

    invoke-virtual {v1, p3, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_8

    .line 174
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 176
    :cond_14
    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_19} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_19} :catch_40

    move-result-object v2

    .line 196
    :cond_1a
    :goto_1a
    return-object v2

    .line 178
    :catch_1b
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "AASATokenParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No IO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-eqz v1, :cond_1a

    .line 182
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_1a

    .line 183
    :catch_3e
    move-exception v3

    goto :goto_1a

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    :catch_40
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "AASATokenParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No RUN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-eqz v1, :cond_1a

    .line 191
    :try_start_5f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_1a

    .line 192
    :catch_63
    move-exception v3

    goto :goto_1a
.end method

.method private parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, "arrayValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 201
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 202
    .local v2, "eventType":I
    const/4 v1, 0x0

    .line 203
    .local v1, "depth":I
    :goto_6
    if-eq v2, v4, :cond_3c

    .line 205
    const/4 v3, 0x0

    .line 206
    .local v3, "name":Ljava/lang/String;
    packed-switch v2, :pswitch_data_40

    .line 233
    :cond_c
    :goto_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 234
    goto :goto_6

    .line 209
    :pswitch_11
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 210
    if-eqz v3, :cond_c

    .line 211
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 213
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 214
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_22
    if-ge v0, v1, :cond_c

    .line 216
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 223
    .end local v0    # "a":I
    :pswitch_2e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 224
    if-eqz v3, :cond_c

    .line 225
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 227
    const/4 v2, 0x1

    goto :goto_c

    .line 236
    .end local v3    # "name":Ljava/lang/String;
    :cond_3c
    if-nez v1, :cond_3f

    const/4 v4, 0x0

    :cond_3f
    return v4

    .line 206
    :pswitch_data_40
    .packed-switch 0x2
        :pswitch_11
        :pswitch_2e
    .end packed-switch
.end method

.method private static toChars([B)[C
    .registers 11
    .param p0, "mSignature"    # [B

    .prologue
    const/16 v9, 0xa

    .line 111
    move-object v4, p0

    .line 112
    .local v4, "sig":[B
    array-length v0, v4

    .line 113
    .local v0, "N":I
    mul-int/lit8 v1, v0, 0x2

    .line 114
    .local v1, "N2":I
    new-array v5, v1, [C

    .line 116
    .local v5, "text":[C
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_9
    if-ge v3, v0, :cond_34

    .line 118
    aget-byte v6, v4, v3

    .line 119
    .local v6, "v":B
    shr-int/lit8 v7, v6, 0x4

    and-int/lit8 v2, v7, 0xf

    .line 120
    .local v2, "d":I
    mul-int/lit8 v8, v3, 0x2

    if-lt v2, v9, :cond_2e

    add-int/lit8 v7, v2, 0x61

    add-int/lit8 v7, v7, -0xa

    :goto_19
    int-to-char v7, v7

    aput-char v7, v5, v8

    .line 121
    and-int/lit8 v2, v6, 0xf

    .line 122
    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v8, v7, 0x1

    if-lt v2, v9, :cond_31

    add-int/lit8 v7, v2, 0x61

    add-int/lit8 v7, v7, -0xa

    :goto_28
    int-to-char v7, v7

    aput-char v7, v5, v8

    .line 116
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 120
    :cond_2e
    add-int/lit8 v7, v2, 0x30

    goto :goto_19

    .line 122
    :cond_31
    add-int/lit8 v7, v2, 0x30

    goto :goto_28

    .line 125
    .end local v2    # "d":I
    .end local v6    # "v":B
    :cond_34
    return-object v5
.end method


# virtual methods
.method public AASA_IsToken(Ljava/lang/String;)Z
    .registers 12
    .param p1, "ArchiveSourcePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    const/4 v6, 0x0

    .line 304
    .local v6, "ret":Z
    const/4 v3, 0x0

    .line 307
    .local v3, "mTokenFile":Ljava/util/jar/JarFile;
    :try_start_2
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_3a
    .catchall {:try_start_2 .. :try_end_7} :catchall_59

    .line 308
    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v4, "mTokenFile":Ljava/util/jar/JarFile;
    if-eqz v4, :cond_33

    .line 310
    :try_start_9
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 311
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_d
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_33

    .line 313
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarEntry;

    .line 314
    .local v1, "jarEntry":Ljava/util/jar/JarEntry;
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 315
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v7, "token"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "Token.xml"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 317
    iput-object p1, p0, mArchiveSourcePath:Ljava/lang/String;

    .line 318
    iput-object v5, p0, mTokenName:Ljava/lang/String;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_32} :catch_63
    .catchall {:try_start_9 .. :try_end_32} :catchall_60

    .line 319
    const/4 v6, 0x1

    .line 332
    .end local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v1    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v5    # "name":Ljava/lang/String;
    :cond_33
    if-eqz v4, :cond_66

    .line 333
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    move-object v3, v4

    .line 336
    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_39
    :goto_39
    return v6

    .line 326
    :catch_3a
    move-exception v2

    .line 328
    .local v2, "m":Ljava/io/IOException;
    :goto_3b
    :try_start_3b
    const-string v7, "AASATokenParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ERROR: AASA_IsToken "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_3b .. :try_end_53} :catchall_59

    .line 332
    if-eqz v3, :cond_39

    .line 333
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    goto :goto_39

    .line 332
    .end local v2    # "m":Ljava/io/IOException;
    :catchall_59
    move-exception v7

    :goto_5a
    if-eqz v3, :cond_5f

    .line 333
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    :cond_5f
    throw v7

    .line 332
    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    :catchall_60
    move-exception v7

    move-object v3, v4

    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    goto :goto_5a

    .line 326
    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_63
    move-exception v2

    move-object v3, v4

    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    goto :goto_3b

    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_66
    move-object v3, v4

    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    goto :goto_39
.end method

.method public AASA_VerifyToken(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 26
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    const-string v20, "AASATokenParser"

    const-string v21, " AASA_VerifyToken START"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v11, 0x0

    .line 404
    .local v11, "mTokenFile":Ljava/util/jar/JarFile;
    const/4 v10, 0x0

    .line 405
    .local v10, "mTokenEntry":Ljava/util/jar/JarEntry;
    const/4 v4, 0x0

    .line 408
    .local v4, "certs":[Ljava/security/cert/Certificate;
    :try_start_a
    new-instance v12, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    iget-object v0, v0, mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_17} :catch_66
    .catchall {:try_start_a .. :try_end_17} :catchall_87

    .line 409
    .end local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v12, "mTokenFile":Ljava/util/jar/JarFile;
    if-eqz v12, :cond_4c

    .line 411
    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, mTokenName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v10

    .line 412
    if-eqz v10, :cond_4c

    .line 415
    invoke-virtual {v10}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 416
    .local v16, "signedData":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v12, v10, v1}, loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v4

    .line 417
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, checkIntegrity([B)[B

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, mTokenContents:[B
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_4c} :catch_330
    .catchall {:try_start_19 .. :try_end_4c} :catchall_32c

    .line 428
    .end local v16    # "signedData":[B
    :cond_4c
    if-eqz v12, :cond_334

    .line 429
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->close()V

    move-object v11, v12

    .line 432
    .end local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_52
    :goto_52
    move-object/from16 v0, p0

    iget-object v0, v0, mTokenContents:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_5c

    if-nez v4, :cond_8e

    .line 434
    :cond_5c
    const-string v20, "AASATokenParser"

    const-string v21, " ERROR: plz check certification in the device"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/16 v20, 0x0

    .line 602
    :goto_65
    return v20

    .line 422
    :catch_66
    move-exception v9

    .line 424
    .local v9, "m":Ljava/io/IOException;
    :goto_67
    :try_start_67
    const-string v20, "AASATokenParser"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " ERROR: AASA_VerifyToken "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_67 .. :try_end_81} :catchall_87

    .line 428
    if-eqz v11, :cond_52

    .line 429
    invoke-virtual {v11}, Ljava/util/jar/JarFile;->close()V

    goto :goto_52

    .line 428
    .end local v9    # "m":Ljava/io/IOException;
    :catchall_87
    move-exception v20

    :goto_88
    if-eqz v11, :cond_8d

    .line 429
    invoke-virtual {v11}, Ljava/util/jar/JarFile;->close()V

    :cond_8d
    throw v20

    .line 438
    :cond_8e
    const/4 v11, 0x0

    .line 439
    const/4 v10, 0x0

    .line 443
    :try_start_90
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v15

    .line 444
    .local v15, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v15}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    .line 445
    .local v14, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v20, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, mTokenContents:[B

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 446
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V
    :try_end_b1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_90 .. :try_end_b1} :catch_1b1

    .line 449
    .local v18, "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_b1
    const-string v20, "MODE"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v14, v1, v2}, parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v20

    if-eqz v20, :cond_f1

    .line 451
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v15

    .line 452
    invoke-virtual {v15}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    .line 453
    new-instance v20, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, mTokenContents:[B

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 461
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 462
    .local v13, "mode":Ljava/lang/String;
    invoke-static {v13}, isInteger(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_f5

    .line 464
    const/16 v20, 0x0

    goto/16 :goto_65

    .line 458
    .end local v13    # "mode":Ljava/lang/String;
    :cond_f1
    const/16 v20, 0x0

    goto/16 :goto_65

    .line 466
    .restart local v13    # "mode":Ljava/lang/String;
    :cond_f5
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 468
    .local v19, "which":I
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_118

    .line 470
    const/16 v20, 0xff

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_118

    .line 472
    const-string v20, "AASATokenParser"

    const-string v21, " ship device does not support MODE 255"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/16 v20, 0x0

    goto/16 :goto_65

    .line 477
    :cond_118
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v5, "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sparse-switch v19, :sswitch_data_338

    .line 512
    const/16 v20, 0x0

    goto/16 :goto_65

    .line 481
    :sswitch_124
    const-string v20, "PACKAGE"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    const-string v20, "CERT"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    const-string v20, "DIGEST"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    :goto_139
    :sswitch_139
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 516
    const/4 v7, 0x0

    .local v7, "ii":I
    :goto_13d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_20f

    .line 518
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v14, v1, v2}, parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v20

    if-eqz v20, :cond_204

    .line 520
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v15

    .line 521
    invoke-virtual {v15}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    .line 522
    new-instance v20, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, mTokenContents:[B

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 516
    add-int/lit8 v7, v7, 0x1

    goto :goto_13d

    .line 486
    .end local v7    # "ii":I
    :sswitch_176
    const-string v20, "PACKAGE"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    const-string v20, "CERT"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_184
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_184} :catch_185
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b1 .. :try_end_184} :catch_1b1

    goto :goto_139

    .line 588
    .end local v5    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "mode":Ljava/lang/String;
    .end local v19    # "which":I
    :catch_185
    move-exception v6

    .line 591
    .local v6, "e":Ljava/io/IOException;
    :try_start_186
    const-string v20, "AASATokenParser"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1a5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_186 .. :try_end_1a5} :catch_1b1

    .line 593
    const/16 v20, 0x0

    goto/16 :goto_65

    .line 490
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v5    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13    # "mode":Ljava/lang/String;
    .restart local v19    # "which":I
    :sswitch_1a9
    :try_start_1a9
    const-string v20, "CERT"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b0
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1b0} :catch_185
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a9 .. :try_end_1b0} :catch_1b1

    goto :goto_139

    .line 597
    .end local v5    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "mode":Ljava/lang/String;
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v18    # "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "which":I
    :catch_1b1
    move-exception v6

    .line 599
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v20, "AASATokenParser"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/16 v20, 0x0

    goto/16 :goto_65

    .line 493
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v5    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13    # "mode":Ljava/lang/String;
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v18    # "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "which":I
    :sswitch_1d2
    :try_start_1d2
    const-string v20, "UUID"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_139

    .line 497
    :sswitch_1db
    const-string v20, "PACKAGE"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_139

    .line 501
    :sswitch_1e4
    const-string v20, "UUID"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    const-string v20, "ACCOUNT"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_139

    .line 505
    :sswitch_1f4
    const-string v20, "PACKAGE"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    const-string v20, "CERT"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_139

    .line 527
    .restart local v7    # "ii":I
    :cond_204
    const-string v20, "AASATokenParser"

    const-string v21, " Token does not have value"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/16 v20, 0x0

    goto/16 :goto_65

    .line 532
    :cond_20f
    const/16 v17, 0x0

    .line 533
    .local v17, "success_check_count":I
    const/4 v7, 0x0

    :goto_212
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_31a

    .line 535
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    const-string v21, "PACKAGE"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_261

    .line 537
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_25e

    .line 539
    const-string v20, "AASATokenParser"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "OK:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    add-int/lit8 v17, v17, 0x1

    .line 533
    :cond_25e
    :goto_25e
    add-int/lit8 v7, v7, 0x1

    goto :goto_212

    .line 544
    :cond_261
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    const-string v21, "CERT"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2aa

    .line 546
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_270
    array-length v0, v4

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_25e

    .line 548
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    new-instance v21, Ljava/lang/String;

    aget-object v22, v4, v8

    invoke-virtual/range {v22 .. v22}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v22

    invoke-static/range {v22 .. v22}, toChars([B)[C

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([C)V

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2a7

    .line 550
    add-int/lit8 v17, v17, 0x1

    .line 551
    const-string v20, "AASATokenParser"

    const-string v21, "OK:CERT"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_2a7
    add-int/lit8 v8, v8, 0x1

    goto :goto_270

    .line 556
    .end local v8    # "j":I
    :cond_2aa
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    const-string v21, "UUID"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2d6

    .line 558
    const-string v20, "AASATokenParser"

    const-string v21, "OK:UUID"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    if-eqz p2, :cond_25e

    .line 561
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_25e

    .line 563
    add-int/lit8 v17, v17, 0x1

    goto :goto_25e

    .line 567
    :cond_2d6
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    const-string v21, "ACCOUNT"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2ef

    .line 569
    const-string v20, "AASATokenParser"

    const-string v21, "OK:ACCOUNT"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_25e

    .line 572
    :cond_2ef
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    const-string v21, "DIGEST"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_25e

    .line 574
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, checkHash(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_25e

    .line 576
    const-string v20, "AASATokenParser"

    const-string v21, "OK:HASH"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_25e

    .line 584
    :cond_31a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_31d
    .catch Ljava/io/IOException; {:try_start_1d2 .. :try_end_31d} :catch_185
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d2 .. :try_end_31d} :catch_1b1

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v17

    if-ne v0, v1, :cond_328

    .line 585
    const/16 v20, 0x1

    goto/16 :goto_65

    .line 602
    :cond_328
    const/16 v20, 0x0

    goto/16 :goto_65

    .line 428
    .end local v5    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "ii":I
    .end local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    .end local v13    # "mode":Ljava/lang/String;
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v17    # "success_check_count":I
    .end local v18    # "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "which":I
    .restart local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    :catchall_32c
    move-exception v20

    move-object v11, v12

    .end local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_88

    .line 422
    .end local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_330
    move-exception v9

    move-object v11, v12

    .end local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_67

    .end local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_334
    move-object v11, v12

    .end local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_52

    .line 478
    nop

    :sswitch_data_338
    .sparse-switch
        0x0 -> :sswitch_124
        0x1 -> :sswitch_176
        0x2 -> :sswitch_1a9
        0x3 -> :sswitch_1d2
        0x4 -> :sswitch_1db
        0x5 -> :sswitch_1e4
        0x6 -> :sswitch_1f4
        0xff -> :sswitch_139
    .end sparse-switch
.end method

.method public AASA_getTokenContent()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 609
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, mTokenValue:Ljava/util/ArrayList;

    .line 613
    :try_start_8
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 614
    .local v2, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 615
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, mTokenContents:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_1b} :catch_92

    .line 620
    :try_start_1b
    const-string v4, "PACKAGE"

    iget-object v5, p0, mTokenValue:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v4, v5}, parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 623
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 624
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 625
    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, mTokenContents:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 630
    const-string v4, "DATE"

    iget-object v5, p0, mTokenValue:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v4, v5}, parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 633
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 634
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 635
    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, mTokenContents:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 640
    const-string v4, "PERMISSION"

    iget-object v5, p0, mTokenValue:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v4, v5}, parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 643
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 644
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 645
    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, mTokenContents:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_72} :catch_74
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_72} :catch_92

    .line 664
    const/4 v3, 0x1

    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_73
    :goto_73
    return v3

    .line 651
    .restart local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_74
    move-exception v0

    .line 654
    .local v0, "e":Ljava/io/IOException;
    :try_start_75
    const-string v4, "AASATokenParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "er"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_75 .. :try_end_91} :catch_92

    goto :goto_73

    .line 658
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_92
    move-exception v0

    .line 661
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v4, "AASATokenParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "er"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73
.end method

.method checkIntegrity([B)[B
    .registers 16
    .param p1, "contents"    # [B

    .prologue
    .line 242
    array-length v11, p1

    const/16 v12, 0x100

    if-ge v11, v12, :cond_7

    .line 243
    const/4 v11, 0x0

    .line 298
    :goto_6
    return-object v11

    .line 247
    :cond_7
    const/16 v11, 0x100

    :try_start_9
    new-array v7, v11, [B

    .line 249
    .local v7, "signData":[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x100

    invoke-static {p1, v11, v7, v12, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 250
    const/4 v11, 0x7

    new-array v10, v11, [B

    .line 252
    .local v10, "tempBuf":[B
    const/4 v6, 0x0

    .line 253
    .local v6, "numberIndex":I
    const/4 v4, 0x0

    .line 255
    .local v4, "isError":Z
    const/16 v3, 0x100

    .local v3, "ii":I
    :goto_19
    aget-byte v11, p1, v3

    const/16 v12, 0x2c

    if-eq v11, v12, :cond_23

    .line 257
    const/4 v11, 0x7

    if-lt v6, v11, :cond_28

    .line 260
    const/4 v4, 0x1

    .line 266
    :cond_23
    const/4 v11, 0x1

    if-ne v4, v11, :cond_31

    .line 267
    const/4 v11, 0x0

    goto :goto_6

    .line 263
    :cond_28
    aget-byte v11, p1, v3

    aput-byte v11, v10, v6

    .line 255
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    .line 269
    :cond_31
    new-array v5, v6, [B

    .line 270
    .local v5, "number":[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v5, v12, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 271
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 272
    .local v9, "sizeOfcontents":I
    new-array v11, v9, [B

    iput-object v11, p0, mTokenContents:[B

    .line 273
    add-int/lit16 v11, v6, 0x100

    const-string v12, ","

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, p0, mTokenContents:[B

    const/4 v13, 0x0

    invoke-static {p1, v11, v12, v13, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 274
    const/4 v1, 0x0

    .line 275
    .local v1, "certificate":Ljava/io/InputStream;
    const-string v11, "SHA256WithRSAEncryption"

    invoke-static {v11}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v8

    .line 276
    .local v8, "signature":Ljava/security/Signature;
    const-string/jumbo v11, "x.509"

    invoke-static {v11}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 277
    .local v0, "certfactory":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/FileInputStream;

    .end local v1    # "certificate":Ljava/io/InputStream;
    iget-object v11, p0, mCertPath:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_92

    const-string v11, "/data/aasa_test_crt.crt"

    :goto_6e
    invoke-direct {v1, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 278
    .restart local v1    # "certificate":Ljava/io/InputStream;
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 279
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 280
    iget-object v11, p0, mTokenContents:[B

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12, v9}, Ljava/security/Signature;->update([BII)V

    .line 281
    invoke-virtual {v8, v7}, Ljava/security/Signature;->verify([B)Z

    move-result v11

    if-eqz v11, :cond_95

    .line 283
    const-string v11, "AASATokenParser"

    const-string v12, "Token is verificated in checkIntegrity!"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v11, p0, mTokenContents:[B

    goto/16 :goto_6

    .line 277
    .end local v1    # "certificate":Ljava/io/InputStream;
    :cond_92
    iget-object v11, p0, mCertPath:Ljava/lang/String;

    goto :goto_6e

    .line 288
    .restart local v1    # "certificate":Ljava/io/InputStream;
    :cond_95
    const-string v11, "AASATokenParser"

    const-string v12, "Token is NOT verificated in checkIntegrity!"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9c} :catch_9f

    .line 298
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 292
    .end local v0    # "certfactory":Ljava/security/cert/CertificateFactory;
    .end local v1    # "certificate":Ljava/io/InputStream;
    .end local v3    # "ii":I
    .end local v4    # "isError":Z
    .end local v5    # "number":[B
    .end local v6    # "numberIndex":I
    .end local v7    # "signData":[B
    .end local v8    # "signature":Ljava/security/Signature;
    .end local v9    # "sizeOfcontents":I
    .end local v10    # "tempBuf":[B
    :catch_9f
    move-exception v2

    .line 294
    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "AASATokenParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ERROR: checkIntegrity "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v11, 0x0

    goto/16 :goto_6
.end method

.method public getValue()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, mTokenValue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCertPath(Z)V
    .registers 3
    .param p1, "isDeviceMode"    # Z

    .prologue
    .line 41
    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 43
    const-string v0, "/system/etc/aasa_real_crt.crt"

    iput-object v0, p0, mCertPath:Ljava/lang/String;

    .line 45
    :cond_7
    return-void
.end method
