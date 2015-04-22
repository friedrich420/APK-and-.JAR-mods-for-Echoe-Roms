.class public Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;
.super Ljava/lang/Object;
.source "WifiCredService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiCredService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReadWithScanner"
.end annotation


# instance fields
.field private credid:I

.field private final fFilePath:Ljava/io/File;

.field final synthetic this$0:Lcom/android/settings/wifi/WifiCredService;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiCredService;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p2, "aFileName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;->this$0:Lcom/android/settings/wifi/WifiCredService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;->credid:I

    .line 463
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;->fFilePath:Ljava/io/File;

    .line 464
    return-void
.end method

.method private getAAACA(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 10
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "filepath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 596
    const/4 v6, 0x0

    .line 597
    .local v6, "root":Ljava/security/cert/X509Certificate;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v7, v8

    new-array v0, v7, [B

    .line 599
    .local v0, "buffer":[B
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 601
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :goto_0
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 606
    const/4 v1, 0x0

    .line 607
    .local v1, "cert":Ljava/io/ByteArrayInputStream;
    const-string v7, ".pem"

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 608
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .end local v1    # "cert":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/encoders/Base64;->decode([B)[B

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 610
    .restart local v1    # "cert":Ljava/io/ByteArrayInputStream;
    :cond_0
    const-string v7, ".der"

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, ".crt"

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 611
    :cond_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .end local v1    # "cert":Ljava/io/ByteArrayInputStream;
    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 614
    .restart local v1    # "cert":Ljava/io/ByteArrayInputStream;
    :cond_2
    const-string v7, "X509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 615
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    .end local v6    # "root":Ljava/security/cert/X509Certificate;
    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 616
    .restart local v6    # "root":Ljava/security/cert/X509Certificate;
    const-string v7, "WifiCredService"

    const-string v8, "got aaa ca cert from  der format "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return-object v6

    .line 602
    .end local v1    # "cert":Ljava/io/ByteArrayInputStream;
    .end local v2    # "cf":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v3

    .line 603
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setNameValuePPSMO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 528
    const/4 v1, 0x0

    .line 529
    .local v1, "credData":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 530
    if-eqz p2, :cond_0

    .line 531
    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 532
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 534
    :cond_0
    const-string v4, "WifiCredService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Name is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", and Value is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const-string v4, "ca_cert"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 537
    :try_start_0
    const-string v4, "/data/bundle/"

    invoke-virtual {p0, v4, p2}, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;->installCaCert(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "caFileName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 539
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ca_cert=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 552
    .end local v0    # "caFileName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 540
    :catch_0
    move-exception v2

    .line 541
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "WifiCredService"

    const-string v5, "Unable to add CA cert to cred"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 543
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v4, "private_key"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 545
    :try_start_1
    const-string v4, "/data/bundle/"

    invoke-virtual {p0, v4, p2}, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;->installclientCert(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 546
    .local v3, "p12File":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 547
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "private_key=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 548
    .end local v3    # "p12File":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 549
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v4, "WifiCredService"

    const-string v5, "Unable to add client cert to cred"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public genCertID()I
    .locals 8

    .prologue
    .line 691
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 692
    .local v0, "dtNow":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 693
    iget v1, v0, Landroid/text/format/Time;->hour:I

    .line 694
    .local v1, "hours":I
    const-string v4, "%Y%m%d%H%M"

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 695
    .local v2, "lsNow":Ljava/lang/String;
    const-string v4, "WifiCredService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "genCertID:time stamp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 697
    .local v3, "mRandom":Ljava/util/Random;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    long-to-int v4, v4

    return v4
.end method

.method public getHash([B)Ljava/lang/String;
    .locals 4
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 573
    const-string v2, "SHA256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 574
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 575
    const-string v2, "WifiCredService"

    const-string v3, "sha256 digest complete"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 577
    .local v0, "fpSHA256":[B
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;->hexify([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public hexify([B)Ljava/lang/String;
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    .line 582
    const/16 v3, 0x10

    new-array v1, v3, [C

    fill-array-data v1, :array_0

    .line 585
    .local v1, "hexDigits":[C
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 587
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 588
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-char v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 589
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 587
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 592
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 582
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public installCaCert(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 556
    const-string v2, "WifiCredService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "install:its aaa ca fileName: filepath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v2, p0, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;->this$0:Lcom/android/settings/wifi/WifiCredService;

    invoke-direct {p0, p2, p1}, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;->getAAACA(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    # setter for: Lcom/android/settings/wifi/WifiCredService;->aaaCACert:Ljava/security/cert/X509Certificate;
    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiCredService;->access$502(Lcom/android/settings/wifi/WifiCredService;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    .line 558
    iget-object v2, p0, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # getter for: Lcom/android/settings/wifi/WifiCredService;->aaaCACert:Ljava/security/cert/X509Certificate;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiCredService;->access$500(Lcom/android/settings/wifi/WifiCredService;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-nez v2, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-object v1

    .line 561
    :cond_1
    const-string v2, "WifiCredService"

    const-string v3, "install:got aaa client cert"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v2, p0, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;->this$0:Lcom/android/settings/wifi/WifiCredService;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # getter for: Lcom/android/settings/wifi/WifiCredService;->aaaCACert:Ljava/security/cert/X509Certificate;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiCredService;->access$500(Lcom/android/settings/wifi/WifiCredService;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;->getHash([B)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/android/settings/wifi/WifiCredService;->aaaCACertHash:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiCredService;->access$602(Lcom/android/settings/wifi/WifiCredService;Ljava/lang/String;)Ljava/lang/String;

    .line 563
    const-string v2, "WifiCredService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "install:got aaa_ca_cert_hash :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # getter for: Lcom/android/settings/wifi/WifiCredService;->aaaCACertHash:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiCredService;->access$600(Lcom/android/settings/wifi/WifiCredService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v2, p0, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # getter for: Lcom/android/settings/wifi/WifiCredService;->aaaCACertHash:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiCredService;->access$600(Lcom/android/settings/wifi/WifiCredService;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # getter for: Lcom/android/settings/wifi/WifiCredService;->aaaCACert:Ljava/security/cert/X509Certificate;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiCredService;->access$500(Lcom/android/settings/wifi/WifiCredService;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    const-string v4, "CERT"

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;->writeToSupplicant(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v0

    .line 565
    .local v0, "status":Z
    const-string v2, "WifiCredService"

    const-string v3, "install:wrote aaa ca certificate  to supplicant file"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    if-eqz v0, :cond_0

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # getter for: Lcom/android/settings/wifi/WifiCredService;->CERT_PATH:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiCredService;->access$700(Lcom/android/settings/wifi/WifiCredService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # getter for: Lcom/android/settings/wifi/WifiCredService;->aaaCACertHash:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiCredService;->access$600(Lcom/android/settings/wifi/WifiCredService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".pem"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public installclientCert(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 702
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    .local v0, "certFile":Ljava/io/File;
    const-string v1, ""

    .line 704
    .local v1, "p12File":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 706
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;->writeClientCert(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 709
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected processLine(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 6
    .param p1, "bf"    # Ljava/lang/StringBuffer;
    .param p2, "aLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 500
    const-string v4, "WifiCredService"

    const-string v5, "processLine"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const-string v4, "ca_cert"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "private_key"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 502
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 503
    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    const-string v4, "private_key_passwd"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 506
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 507
    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 510
    :cond_2
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, p2}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 511
    .local v2, "scanner":Ljava/util/Scanner;
    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 512
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 514
    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 516
    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v3

    .line 517
    .local v3, "value":Ljava/lang/String;
    invoke-direct {p0, v1, v3}, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;->setNameValuePPSMO(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 519
    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 522
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    const-string v4, "WifiCredService"

    const-string v5, "Empty or invalid line. Unable to process."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final processLineByLine()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 472
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 473
    .local v0, "bf":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/util/Scanner;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;->fFilePath:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 475
    .local v2, "scanner":Ljava/util/Scanner;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 476
    invoke-virtual {v2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;->processLine(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 478
    :catch_0
    move-exception v1

    .line 479
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 481
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    .line 482
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-gez v3, :cond_1

    .line 483
    const/4 v3, 0x0

    .line 485
    :goto_1
    return-object v3

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public writeClientCert(Ljava/io/File;)Ljava/lang/String;
    .locals 11
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 660
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # getter for: Lcom/android/settings/wifi/WifiCredService;->CERT_PATH:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settings/wifi/WifiCredService;->access$700(Lcom/android/settings/wifi/WifiCredService;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "HSClientCertKeyStore_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;->genCertID()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".p12"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 661
    .local v1, "FileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 663
    .local v0, "ClientCertfile":Ljava/io/File;
    const/16 v8, 0x100

    new-array v2, v8, [B

    .line 664
    .local v2, "buf":[B
    const/4 v4, 0x0

    .line 665
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 667
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 669
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v5, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 670
    invoke-virtual {v7, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 675
    :catch_0
    move-exception v3

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 676
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    const-string v8, "WifiCredService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception occured :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 678
    if-eqz v4, :cond_0

    .line 680
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 681
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 687
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-object v1

    .line 672
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_5
    invoke-virtual {v0, v8, v9}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 673
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    .line 674
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 678
    if-eqz v5, :cond_3

    .line 680
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 681
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 684
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 682
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    .line 683
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 684
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 682
    .local v3, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 683
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 678
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v4, :cond_2

    .line 680
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 681
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 684
    :cond_2
    :goto_4
    throw v8

    .line 682
    :catch_3
    move-exception v3

    .line 683
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 678
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 675
    :catch_4
    move-exception v3

    goto :goto_1

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public writeToSupplicant(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 11
    .param p1, "hash"    # Ljava/lang/String;
    .param p2, "buf"    # [B
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v10, 0x40

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 621
    const/4 v4, 0x1

    .line 622
    .local v4, "ret":Z
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;->this$0:Lcom/android/settings/wifi/WifiCredService;

    # getter for: Lcom/android/settings/wifi/WifiCredService;->CERT_PATH:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiCredService;->access$700(Lcom/android/settings/wifi/WifiCredService;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".pem"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 623
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 624
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 625
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 627
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v6, "CERT"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 628
    const-string v6, "-----BEGIN CERTIFICATE-----\n"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 632
    :goto_0
    invoke-static {p2}, Lcom/android/org/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object v5

    .line 633
    .local v5, "value":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, v5

    if-ge v3, v6, :cond_6

    .line 634
    array-length v6, v5

    sub-int/2addr v6, v3

    if-le v6, v10, :cond_5

    .line 635
    const/16 v6, 0x40

    invoke-virtual {v2, v5, v3, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 638
    :goto_2
    const-string v6, "\n"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 633
    add-int/lit8 v3, v3, 0x40

    goto :goto_1

    .line 630
    .end local v3    # "i":I
    .end local v5    # "value":[B
    :cond_1
    const-string v6, "-----BEGIN PRIVATE KEY-----\n"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 647
    const/4 v4, 0x0

    .line 649
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 650
    invoke-virtual {v1, v9, v8}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v6

    if-nez v6, :cond_2

    .line 651
    const-string v6, "WifiCredService"

    const-string v7, "error in setExecutable"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_2
    invoke-virtual {v1, v9, v8}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v6

    if-nez v6, :cond_3

    .line 653
    const-string v6, "WifiCredService"

    const-string v7, "error in setReadable"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_3
    invoke-virtual {v1, v9, v8}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v6

    if-nez v6, :cond_4

    .line 655
    const-string v6, "WifiCredService"

    const-string v7, "error in setWritable"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_4
    return v4

    .line 637
    .restart local v3    # "i":I
    .restart local v5    # "value":[B
    :cond_5
    :try_start_1
    array-length v6, v5

    rem-int/lit8 v6, v6, 0x40

    invoke-virtual {v2, v5, v3, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2

    .line 641
    :cond_6
    const-string v6, "CERT"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 642
    const-string v6, "-----END CERTIFICATE-----\n"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_3

    .line 644
    :cond_7
    const-string v6, "-----END PRIVATE KEY-----\n"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
