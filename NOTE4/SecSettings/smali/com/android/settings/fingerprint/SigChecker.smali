.class public Lcom/android/settings/fingerprint/SigChecker;
.super Ljava/lang/Object;
.source "SigChecker.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/settings/fingerprint/SigChecker;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method

.method private checkSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "apkFilePath"    # Ljava/lang/String;
    .param p2, "hashCode"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 29
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/SigChecker;->getCertificateBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/SigChecker;->loadCertificates([B)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/fingerprint/SigChecker;->getCertStringFromCert(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "hash":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    .end local v2    # "hash":Ljava/lang/String;
    :goto_0
    return v3

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_0

    .line 36
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v1

    .line 37
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 40
    .end local v1    # "e1":Ljava/lang/Exception;
    .restart local v2    # "hash":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getCertStringFromCert(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 8
    .param p1, "certs"    # Ljava/security/cert/Certificate;

    .prologue
    .line 44
    move-object v4, p1

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 45
    .local v4, "signInfo":Ljava/security/cert/X509Certificate;
    if-eqz v4, :cond_1

    .line 46
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSignature()[B

    move-result-object v6

    .line 47
    .local v6, "temp":[B
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 48
    .local v5, "signature":Ljava/lang/StringBuffer;
    move-object v0, v6

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 49
    .local v1, "b":B
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "b":B
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 53
    .end local v0    # "arr$":[B
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "signature":Ljava/lang/StringBuffer;
    .end local v6    # "temp":[B
    :goto_1
    return-object v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private getCertificateBytes(Ljava/lang/String;)[B
    .locals 4
    .param p1, "apkFilename"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v3, p0, Lcom/android/settings/fingerprint/SigChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 65
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x40

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 66
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 67
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 68
    .local v2, "sig":[Landroid/content/pm/Signature;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    .line 70
    .end local v2    # "sig":[Landroid/content/pm/Signature;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private loadCertificates([B)Ljava/security/cert/Certificate;
    .locals 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 57
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 58
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 59
    .local v2, "in":Ljava/io/InputStream;
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 60
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    return-object v0
.end method


# virtual methods
.method public validate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "apkFilePath"    # Ljava/lang/String;
    .param p2, "signatureCodeFromServer"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/SigChecker;->checkSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
