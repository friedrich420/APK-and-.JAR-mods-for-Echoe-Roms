.class public Lcom/android/settings/flipfont/FontListActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "FontListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static DEBUG:Z

.field private static final apkNameList:[Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private isEasySettingsCall:Z

.field private mBuyButtonClicked:Z

.field private mCheckBadFont:Z

.field private mClickedItem:I

.field private mDefaultUseHelvetica:Z

.field private mDialogBottomPadding:I

.field private mDialogLeftPadding:I

.field private mDialogRightPadding:I

.field private mDialogTopPadding:I

.field private mFileCopying:Z

.field private mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mPreviousFont:I

.field private mQuestionDialogFontSize:I

.field private mSavedClickedItem:I

.field private mSelectDialogIsActive:Z

.field mSetFontToAlert:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    sput-boolean v2, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    .line 680
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.monotype.android.font.chococooky"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.monotype.android.font.cooljazz"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.monotype.android.font.helvneuelt"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.monotype.android.font.samsungsans"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.monotype.android.font.rosemary"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.monotype.android.font.applemint"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.monotype.android.font.tinkerbell"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.monotype.android.font.udrgothic"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.monotype.android.font.udmincho"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.monotype.android.font.arjpopb"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.monotype.android.font.kaiti"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.monotype.android.font.shaonv"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.monotype.android.font.miao"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/flipfont/FontListActivity;->apkNameList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xa

    const/16 v2, 0x14

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 55
    iput-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    .line 62
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mDefaultUseHelvetica:Z

    .line 66
    iput-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 70
    iput v1, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    .line 73
    iput v1, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    .line 76
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mBuyButtonClicked:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mFileCopying:Z

    .line 82
    iput v2, p0, Lcom/android/settings/flipfont/FontListActivity;->mQuestionDialogFontSize:I

    .line 85
    iput v2, p0, Lcom/android/settings/flipfont/FontListActivity;->mDialogLeftPadding:I

    .line 87
    iput v3, p0, Lcom/android/settings/flipfont/FontListActivity;->mDialogTopPadding:I

    .line 89
    iput v2, p0, Lcom/android/settings/flipfont/FontListActivity;->mDialogRightPadding:I

    .line 91
    iput v3, p0, Lcom/android/settings/flipfont/FontListActivity;->mDialogBottomPadding:I

    .line 96
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mCheckBadFont:Z

    .line 100
    iput v1, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    .line 108
    iput-boolean v0, p0, Lcom/android/settings/flipfont/FontListActivity;->isEasySettingsCall:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/flipfont/FontListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/flipfont/FontListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/flipfont/FontListActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/flipfont/FontListActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    return-object v0
.end method

.method private copyFileWithCR(Lcom/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "fontWriter"    # Lcom/android/settings/flipfont/FontWriter;
    .param p2, "dir"    # Ljava/io/File;
    .param p3, "sPackageName"    # Ljava/lang/String;
    .param p4, "sFileIn"    # Ljava/lang/String;
    .param p5, "sFileOut"    # Ljava/lang/String;

    .prologue
    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 470
    .local v2, "err_filecopy":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 476
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/fonts/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 477
    .local v4, "uriFont":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 479
    .local v3, "isFont":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 486
    invoke-virtual {p1, p2, v3, p5}, Lcom/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v2

    .line 489
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    move v5, v2

    .line 493
    .end local v3    # "isFont":Ljava/io/InputStream;
    .end local v4    # "uriFont":Landroid/net/Uri;
    :goto_1
    return v5

    .line 471
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move v5, v2

    .line 472
    goto :goto_1

    .line 480
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "isFont":Ljava/io/InputStream;
    .restart local v4    # "uriFont":Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 482
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_1

    .line 490
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method protected badFontDialog(Ljava/lang/String;)V
    .locals 5
    .param p1, "apkName"    # Ljava/lang/String;

    .prologue
    .line 768
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 771
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    move-object v2, p1

    .line 774
    .local v2, "deletePackageName":Ljava/lang/String;
    const v3, 0x7f0a0d8a

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 777
    const v3, 0x7f0a0d8b

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 780
    const v3, 0x1080027

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 783
    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/flipfont/FontListActivity$7;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/flipfont/FontListActivity$7;-><init>(Lcom/android/settings/flipfont/FontListActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 796
    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/settings/flipfont/FontListActivity$8;

    invoke-direct {v4, p0}, Lcom/android/settings/flipfont/FontListActivity$8;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 803
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 804
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 805
    return-void
.end method

.method protected checkFont(Ljava/lang/String;)Z
    .locals 14
    .param p1, "apkname"    # Ljava/lang/String;

    .prologue
    .line 698
    sget-boolean v11, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 699
    const-string v11, "FlipFont"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkFont - checking apkname"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    sget-object v11, Lcom/android/settings/flipfont/FontListActivity;->apkNameList:[Ljava/lang/String;

    array-length v11, v11

    if-ge v6, v11, :cond_3

    .line 703
    sget-object v11, Lcom/android/settings/flipfont/FontListActivity;->apkNameList:[Ljava/lang/String;

    aget-object v11, v11, v6

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 704
    sget-boolean v11, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v11, :cond_1

    .line 705
    const-string v11, "FlipFont"

    const-string v12, "**Apk name matches list**"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_1
    const/4 v11, 0x0

    .line 763
    :goto_1
    return v11

    .line 702
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 712
    :cond_3
    sget-boolean v11, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v11, :cond_4

    .line 713
    const-string v11, "FlipFont"

    const-string v12, "checkFont - check if valid certificate"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_4
    const/4 v9, 0x0

    .line 717
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v11, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v11, v11, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v12, 0x40

    invoke-virtual {v11, p1, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v9

    .line 721
    :goto_2
    const/4 v11, 0x1

    new-array v10, v11, [Landroid/content/pm/Signature;

    const/4 v11, 0x0

    new-instance v12, Landroid/content/pm/Signature;

    const-string v13, ""

    invoke-direct {v12, v13}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v12, v10, v11

    .line 723
    .local v10, "signatures":[Landroid/content/pm/Signature;
    if-eqz v9, :cond_5

    .line 724
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 728
    :cond_5
    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    .line 729
    .local v2, "cert":[B
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 730
    .local v7, "input":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 732
    .local v4, "cf":Ljava/security/cert/CertificateFactory;
    :try_start_1
    const-string v11, "X509"

    invoke-static {v11}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 737
    :goto_3
    const/4 v1, 0x0

    .line 739
    .local v1, "c":Ljava/security/cert/X509Certificate;
    :try_start_2
    invoke-virtual {v4, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v1, v0
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 744
    :goto_4
    sget-boolean v11, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v11, :cond_6

    .line 745
    const-string v11, "Example"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "APK name: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const-string v11, "Example"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Certificate for: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const-string v11, "Example"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Certificate issued by: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const-string v11, "Example"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The certificate is valid from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const-string v11, "Example"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Certificate SN# "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const-string v11, "Example"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Generated with "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_6
    const-string v3, "CN=Ed Platz, OU=Display Imaging, O=Monotype Imanging Inc., L=Woburn, ST=MA, C=US"

    .line 755
    .local v3, "certIssuedByString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v11

    invoke-interface {v11}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v8

    .line 757
    .local v8, "issuerDNString":Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 758
    sget-boolean v11, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v11, :cond_7

    .line 759
    const-string v11, "FlipFont"

    const-string v12, "**Certificate data is correct**"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 733
    .end local v1    # "c":Ljava/security/cert/X509Certificate;
    .end local v3    # "certIssuedByString":Ljava/lang/String;
    .end local v8    # "issuerDNString":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 735
    .local v5, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v5}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto/16 :goto_3

    .line 740
    .end local v5    # "e":Ljava/security/cert/CertificateException;
    .restart local v1    # "c":Ljava/security/cert/X509Certificate;
    :catch_1
    move-exception v5

    .line 742
    .restart local v5    # "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v5}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto/16 :goto_4

    .line 763
    .end local v5    # "e":Ljava/security/cert/CertificateException;
    .restart local v3    # "certIssuedByString":Ljava/lang/String;
    .restart local v8    # "issuerDNString":Ljava/lang/String;
    :cond_8
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 719
    .end local v1    # "c":Ljava/security/cert/X509Certificate;
    .end local v2    # "cert":[B
    .end local v3    # "certIssuedByString":Ljava/lang/String;
    .end local v4    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v7    # "input":Ljava/io/InputStream;
    .end local v8    # "issuerDNString":Ljava/lang/String;
    .end local v10    # "signatures":[Landroid/content/pm/Signature;
    :catch_2
    move-exception v11

    goto/16 :goto_2
.end method

.method public getSavedSelectedFontStringPreference()Ljava/lang/String;
    .locals 4

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "mode":I
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v3, "prefs"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 253
    .local v1, "mySharedPreference":Landroid/content/SharedPreferences;
    const-string v2, "selectedFont"

    const-string v3, "MONOTYPE"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public loadPreferences()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 826
    const/4 v2, 0x0

    .line 827
    .local v2, "mode":I
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v5, "prefs"

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 830
    .local v3, "mySharedPreference":Landroid/content/SharedPreferences;
    const-string v4, "SelectDialogIsActive"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    .line 831
    const-string v4, "SavedClickedItem"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    .line 832
    iget v1, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    .line 833
    .local v1, "fontIndexPref":I
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "flip_font_style"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 835
    .local v0, "fontIndexDB":I
    if-ne v0, v6, :cond_0

    .line 836
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "flip_font_style"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 837
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFontStyleIndexForMultiUser() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iput v1, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    .line 842
    :goto_0
    return-void

    .line 840
    :cond_0
    iput v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    goto :goto_0
.end method

.method public onCancelButtonPressed()V
    .locals 3

    .prologue
    .line 673
    if-eqz p0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 678
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 275
    const/4 v4, -0x2

    if-ne p2, v4, :cond_2

    .line 276
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 277
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->cancel()V

    .line 279
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 323
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->dismiss()V

    .line 328
    :cond_1
    return-void

    .line 307
    :cond_2
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0d75

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 309
    .local v3, "uri":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 310
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 311
    const v4, 0x14000020

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 312
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 313
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 314
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 315
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0d74

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3    # "uri":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 317
    .restart local v3    # "uri":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 319
    :cond_3
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 320
    iput-boolean v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mBuyButtonClicked:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0a0d89

    const/4 v8, 0x0

    const v7, 0x7f0a0d6f

    .line 113
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const-string v4, "PRABHAT"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iput-object p0, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    .line 118
    invoke-virtual {p0, v6}, Lcom/android/settings/flipfont/FontListActivity;->setTitle(I)V

    .line 120
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings/flipfont/FontListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 121
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 122
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0, v6}, Lcom/android/settings/flipfont/FontListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200f0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 124
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f04008d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 125
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 126
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 127
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 128
    const v4, 0x7f0a01cf

    invoke-virtual {p0, v4}, Lcom/android/settings/flipfont/FontListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 129
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 136
    :cond_0
    :goto_0
    iget-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v5, 0x7f100174

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    .line 138
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v4, :cond_1

    .line 139
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/flipfont/FontListAdapter;->getInstanceFontListAdapter(Landroid/content/Context;)Lcom/android/settings/flipfont/FontListAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 140
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v4}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 142
    invoke-static {}, Lcom/android/settings/flipfont/FontListAdapter;->destroyInstance()V

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EasySettingsBundle"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 147
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "FontListActivity"

    const-string v5, "isEasySettingsCall  :  Intent is NOT null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    if-eqz v1, :cond_6

    .line 149
    const-string v4, "FontListActivity"

    const-string v5, "isEasySettingsCall  :  bundle is NOT null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v4, "EasySettings"

    invoke-virtual {v1, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/flipfont/FontListActivity;->isEasySettingsCall:Z

    .line 157
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_1
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEasySettingsCall  :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/flipfont/FontListActivity;->isEasySettingsCall:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->setupAlert()V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->getSavedSelectedFontStringPreference()Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "selectedFont":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 169
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0d70

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 176
    .local v2, "okButton":Ljava/lang/String;
    :goto_2
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v4, "FontListActivity"

    const-string v5, "onPrepareDialogBuilder : KEY_PREFERENCE : MONOTYPE"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v4, "MONOTYPE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 182
    const-string v4, "FontListActivity"

    const-string v5, "onPrepareDialogBuilder : selectedFont == KEY_PREFERENCE"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-boolean v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mDefaultUseHelvetica:Z

    if-eqz v4, :cond_9

    .line 185
    const-string v3, "HelveticaNeueRegular.xml"

    .line 186
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v4, v4, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    .line 187
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : Use Helvetica by default. selectedFont : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : Helvetica index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_3
    iget v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    if-gez v4, :cond_2

    .line 207
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    .line 211
    :cond_2
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    iget v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 220
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v4}, Lcom/android/settings/flipfont/FontListAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    .line 221
    const v4, 0x7f0a0d76

    invoke-virtual {p0, v4}, Lcom/android/settings/flipfont/FontListActivity;->setTitle(I)V

    .line 224
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->loadPreferences()V

    .line 225
    iget-boolean v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    if-eqz v4, :cond_4

    .line 226
    iput-boolean v8, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->savePreferences()V

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->selectDialog()V

    .line 231
    :cond_4
    const-string v4, "PRABHAT"

    const-string v5, "onCreate() - end"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void

    .line 132
    .end local v2    # "okButton":Ljava/lang/String;
    .end local v3    # "selectedFont":Ljava/lang/String;
    :cond_5
    const-string v4, "CHM"

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 152
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_6
    const-string v4, "FontListActivity"

    const-string v5, "isEasySettingsCall  :  bundle is NOT null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 155
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_7
    const-string v4, "FontListActivity"

    const-string v5, "isEasySettingsCall  :  Intent is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 172
    .restart local v3    # "selectedFont":Ljava/lang/String;
    :cond_8
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .restart local v2    # "okButton":Ljava/lang/String;
    goto/16 :goto_2

    .line 192
    :cond_9
    const-string v3, "default"

    .line 193
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v4, v4, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    .line 194
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : Use Android DroidSans by default. selectedFont : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : Android DroidSans index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 200
    :cond_a
    const-string v4, "FontListActivity"

    const-string v5, "onPrepareDialogBuilder : selectedFont != KEY_PREFERENCE"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v4, v4, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    .line 202
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : selectedFont : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v4, "FontListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepareDialogBuilder : selectedFont index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "which"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 336
    iget v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    if-ne p3, v5, :cond_0

    .line 402
    :goto_0
    return-void

    .line 341
    :cond_0
    const/4 v3, 0x0

    .line 342
    .local v3, "question":Ljava/lang/String;
    const/4 v1, 0x0

    .line 343
    .local v1, "fontName":Ljava/lang/String;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 344
    iput p3, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    .line 346
    const/4 v2, 0x0

    .line 347
    .local v2, "press_apkname":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-eqz v5, :cond_1

    .line 348
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v5, v5, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/flipfont/FontListActivity;->checkFont(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mCheckBadFont:Z

    .line 351
    iget-boolean v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mCheckBadFont:Z

    if-eqz v5, :cond_2

    .line 352
    invoke-virtual {p0, v2}, Lcom/android/settings/flipfont/FontListActivity;->badFontDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :cond_2
    if-ge p3, v8, :cond_3

    .line 357
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0d72

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 359
    .local v4, "s":Ljava/lang/String;
    move-object v3, v4

    .line 370
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 371
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0a00bc

    new-instance v6, Lcom/android/settings/flipfont/FontListActivity$2;

    invoke-direct {v6, p0}, Lcom/android/settings/flipfont/FontListActivity$2;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a00bd

    new-instance v7, Lcom/android/settings/flipfont/FontListActivity$1;

    invoke-direct {v7, p0}, Lcom/android/settings/flipfont/FontListActivity$1;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 384
    new-instance v5, Lcom/android/settings/flipfont/FontListActivity$3;

    invoke-direct {v5, p0}, Lcom/android/settings/flipfont/FontListActivity$3;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 391
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 392
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0d73

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 393
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 395
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    .line 396
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mSetFontToAlert:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 398
    iget v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    iput v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    .line 399
    iput-boolean v8, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->savePreferences()V

    goto/16 :goto_0

    .line 361
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "s":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0d71

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 363
    .restart local v4    # "s":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v5, :cond_4

    .line 364
    new-instance v5, Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v6, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 365
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v5}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 367
    :cond_4
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    invoke-virtual {v5, v6}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v1

    .line 368
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method public onOkButtonPressed()Z
    .locals 34

    .prologue
    .line 501
    const/16 v17, 0x0

    .line 504
    .local v17, "err_filecopy":Z
    const-string v2, "FontListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onOkButtonPressed : mClickedItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 v5, 0x0

    .line 506
    .local v5, "apkname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-eqz v2, :cond_0

    .line 507
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 509
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/settings/flipfont/FontListActivity;->checkFont(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 510
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListActivity;->savePreferences()V

    .line 515
    sget-boolean v2, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 516
    const-string v2, "FlipFont"

    const-string v6, "**onOkButtonPressed - bad font**"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_1
    const/4 v2, 0x0

    .line 666
    :goto_0
    return v2

    .line 520
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_5

    .line 521
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    .line 525
    :goto_1
    const-string v2, "FontListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onOkButtonPressed : mSavedClickedItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListActivity;->savePreferences()V

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v2, :cond_3

    .line 529
    new-instance v2, Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/flipfont/FontListAdapter;->loadTypefaces()V

    .line 533
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 535
    .local v30, "selectedFont":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/FontListActivity;->saveSelectedFontStringPreferences(Ljava/lang/String;)V

    .line 538
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    .line 540
    new-instance v3, Lcom/android/settings/flipfont/FontWriter;

    invoke-direct {v3}, Lcom/android/settings/flipfont/FontWriter;-><init>()V

    .line 541
    .local v3, "fontWriter":Lcom/android/settings/flipfont/FontWriter;
    if-eqz v30, :cond_4

    const-string v2, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 542
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v6, " "

    invoke-virtual {v3, v2, v6}, Lcom/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v6, "sans.loc"

    const-string v7, "default#default"

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    if-nez v30, :cond_b

    .line 546
    const-string v2, "FontListActivity"

    const-string v6, "onOkButtonPressed() : selectedFont == null "

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 523
    .end local v3    # "fontWriter":Lcom/android/settings/flipfont/FontWriter;
    .end local v30    # "selectedFont":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    goto/16 :goto_1

    .line 553
    .restart local v3    # "fontWriter":Lcom/android/settings/flipfont/FontWriter;
    .restart local v30    # "selectedFont":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/android/settings/flipfont/TypefaceFinder;->findMatchingTypeface(Ljava/lang/String;)Lcom/android/settings/flipfont/Typeface;

    move-result-object v29

    .line 555
    .local v29, "sansTypeface":Lcom/android/settings/flipfont/Typeface;
    move-object/from16 v28, v30

    .line 556
    .local v28, "sFontDir":Ljava/lang/String;
    const-string v2, ".xml"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    .line 557
    .local v22, "index":I
    if-lez v22, :cond_7

    .line 558
    const/4 v2, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 559
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-virtual {v3, v2, v0}, Lcom/android/settings/flipfont/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 561
    .local v4, "fontDir":Ljava/io/File;
    const/16 v31, 0x0

    .line 562
    .local v31, "tpf":Lcom/android/settings/flipfont/TypefaceFile;
    if-eqz v29, :cond_8

    .line 563
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_8

    .line 564
    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    move/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    .end local v31    # "tpf":Lcom/android/settings/flipfont/TypefaceFile;
    check-cast v31, Lcom/android/settings/flipfont/TypefaceFile;

    .line 567
    .restart local v31    # "tpf":Lcom/android/settings/flipfont/TypefaceFile;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    .line 569
    .local v23, "press_apknam":Ljava/lang/String;
    const-string v2, "FontListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onOkButtonPressed : Application name, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    .line 571
    .local v12, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v2, v12, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v2, v2, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v25

    .line 574
    .local v25, "res":Landroid/content/res/Resources;
    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    .line 575
    .local v13, "assetManager":Landroid/content/res/AssetManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fonts/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v31 .. v31}, Lcom/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 577
    .local v21, "in":Ljava/io/InputStream;
    invoke-virtual/range {v31 .. v31}, Lcom/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/settings/flipfont/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v17

    .line 578
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    .end local v12    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "assetManager":Landroid/content/res/AssetManager;
    .end local v21    # "in":Ljava/io/InputStream;
    .end local v23    # "press_apknam":Ljava/lang/String;
    .end local v25    # "res":Landroid/content/res/Resources;
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_2

    .line 580
    :catch_0
    move-exception v18

    .line 582
    .local v18, "ex":Ljava/lang/Exception;
    invoke-virtual/range {v31 .. v31}, Lcom/android/settings/flipfont/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v31 .. v31}, Lcom/android/settings/flipfont/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/flipfont/FontListActivity;->copyFileWithCR(Lcom/android/settings/flipfont/FontWriter;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    goto :goto_3

    .line 587
    .end local v18    # "ex":Ljava/lang/Exception;
    .end local v19    # "i":I
    :cond_8
    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_a

    .line 589
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListActivity;->savePreferences()V

    .line 591
    sget-boolean v2, Lcom/android/settings/flipfont/FontListActivity;->DEBUG:Z

    if-eqz v2, :cond_9

    .line 592
    const-string v2, "FlipFont"

    const-string v6, "**onOkButtonPressed - enospc error **"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 597
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-virtual {v3, v2, v0}, Lcom/android/settings/flipfont/FontWriter;->deleteFontDirectory(Landroid/content/Context;Ljava/lang/String;)V

    .line 598
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListActivity;->savePreferences()V

    .line 600
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/flipfont/FontListActivity;->mPreviousFont:I

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v6, "sans.loc"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v32, "#"

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/settings/flipfont/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    .end local v4    # "fontDir":Ljava/io/File;
    .end local v22    # "index":I
    .end local v28    # "sFontDir":Ljava/lang/String;
    .end local v29    # "sansTypeface":Lcom/android/settings/flipfont/Typeface;
    .end local v31    # "tpf":Lcom/android/settings/flipfont/TypefaceFile;
    :cond_b
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    .line 607
    .local v11, "am":Landroid/app/IActivityManager;
    invoke-interface {v11}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    .line 608
    .local v14, "config":Landroid/content/res/Configuration;
    new-instance v24, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v24

    invoke-direct {v0, v6, v7}, Ljava/util/Random;-><init>(J)V

    .line 613
    .local v24, "randomizer":Ljava/util/Random;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v14, Landroid/content/res/Configuration;->FlipFont:I

    .line 614
    invoke-interface {v11, v14}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 622
    .end local v11    # "am":Landroid/app/IActivityManager;
    .end local v14    # "config":Landroid/content/res/Configuration;
    .end local v24    # "randomizer":Ljava/util/Random;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .line 624
    .local v9, "activityManager":Landroid/app/ActivityManager;
    const/16 v2, 0x32

    invoke-virtual {v9, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v10

    .line 625
    .local v10, "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v19, 0x1

    .line 626
    .restart local v19    # "i":I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 627
    .local v8, "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v2, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v27

    .line 629
    .local v27, "s":Ljava/lang/String;
    const-string v2, "com.android.settings"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "com.samsung.music"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "com.sec.android.app.music"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_c

    .line 630
    const-string v2, "com.infraware.polarisoffice"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "com.infraware.polarisoffice4"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "com.infraware.polarisviewer4"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "com.infraware.PolarisOfficeStdForTablet"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "com.infraware.polarisviewer5tablet"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "com.infraware.polarisoffice5tablet"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "com.infraware.polarisoffice4.document"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "com.infraware.polarisoffice5"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "com.infraware.polarisoffice5.document"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "com.infraware.polarisviewer5"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "com.infraware.polarisviewer5.document"

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_e

    .line 634
    :cond_d
    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 617
    .end local v8    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v9    # "activityManager":Landroid/app/ActivityManager;
    .end local v10    # "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v19    # "i":I
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v27    # "s":Ljava/lang/String;
    :catch_1
    move-exception v15

    .line 619
    .local v15, "e":Landroid/os/RemoteException;
    const-string v2, "FontListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intentionally left blank, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 637
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v8    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v9    # "activityManager":Landroid/app/ActivityManager;
    .restart local v10    # "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v19    # "i":I
    .restart local v20    # "i$":Ljava/util/Iterator;
    .restart local v27    # "s":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 644
    .end local v8    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v27    # "s":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/flipfont/FontListActivity;->isEasySettingsCall:Z

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "com.sec.android.easysettings"

    invoke-static {v2, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 646
    const-string v2, "FontListActivity"

    const-string v6, "FORCE CLOSE PACKAGE :  com.sec.android.easysettings"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const-string v2, "com.sec.android.easysettings"

    invoke-virtual {v9, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 649
    const-string v2, "FontListActivity"

    const-string v6, "RESTARTING PACKAGE :  com.sec.android.easysettings"

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 651
    .local v16, "easySettingsIntent":Landroid/content/Intent;
    const-string v2, "com.sec.android.easysettings"

    const-string v6, "com.sec.android.easysettings.EasySettingsHomeActivity"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 652
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/FontListActivity;->startActivity(Landroid/content/Intent;)V

    .line 655
    const-string v2, "com.android.settings"

    invoke-virtual {v9, v2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 656
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 665
    .end local v16    # "easySettingsIntent":Landroid/content/Intent;
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/flipfont/FontListActivity;->restartLater()V

    .line 666
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 659
    :cond_10
    const-string v2, "com.android.settings"

    invoke-virtual {v9, v2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 661
    new-instance v26, Landroid/content/Intent;

    invoke-direct/range {v26 .. v26}, Landroid/content/Intent;-><init>()V

    .line 662
    .local v26, "returnIntent":Landroid/content/Intent;
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/flipfont/FontListActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_6
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 242
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 244
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 237
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 238
    return-void
.end method

.method public restartLater()V
    .locals 0

    .prologue
    .line 456
    if-eqz p0, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->dismiss()V

    .line 459
    :cond_0
    return-void
.end method

.method protected savePreferences()V
    .locals 6

    .prologue
    .line 809
    const/4 v1, 0x0

    .line 810
    .local v1, "mode":I
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 813
    .local v2, "mySharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 815
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "SelectDialogIsActive"

    iget-boolean v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 816
    const-string v3, "SavedClickedItem"

    iget v4, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 818
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 821
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "flip_font_style"

    iget v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 822
    return-void
.end method

.method public saveSelectedFontStringPreferences(Ljava/lang/String;)V
    .locals 5
    .param p1, "selectedFont"    # Ljava/lang/String;

    .prologue
    .line 259
    const/4 v1, 0x0

    .line 260
    .local v1, "mode":I
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    const-string v4, "prefs"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 263
    .local v2, "mySharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 265
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "selectedFont"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 267
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 268
    return-void
.end method

.method public selectDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 405
    const/4 v3, 0x0

    .line 406
    .local v3, "question":Ljava/lang/String;
    const/4 v2, 0x0

    .line 407
    .local v2, "fontName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->loadPreferences()V

    .line 408
    iget v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    iput v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    .line 409
    iget v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    if-ge v5, v8, :cond_0

    .line 410
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0d72

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 412
    .local v4, "s":Ljava/lang/String;
    move-object v3, v4

    .line 419
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 420
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0a00bc

    new-instance v6, Lcom/android/settings/flipfont/FontListActivity$5;

    invoke-direct {v6, p0}, Lcom/android/settings/flipfont/FontListActivity$5;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a00bd

    new-instance v7, Lcom/android/settings/flipfont/FontListActivity$4;

    invoke-direct {v7, p0}, Lcom/android/settings/flipfont/FontListActivity$4;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 434
    new-instance v5, Lcom/android/settings/flipfont/FontListActivity$6;

    invoke-direct {v5, p0}, Lcom/android/settings/flipfont/FontListActivity$6;-><init>(Lcom/android/settings/flipfont/FontListActivity;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 441
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 442
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0d73

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 443
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 444
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 445
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 446
    iget v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    iput v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mSavedClickedItem:I

    .line 447
    iput-boolean v8, p0, Lcom/android/settings/flipfont/FontListActivity;->mSelectDialogIsActive:Z

    .line 448
    invoke-virtual {p0}, Lcom/android/settings/flipfont/FontListActivity;->savePreferences()V

    .line 449
    return-void

    .line 414
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0d71

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 416
    .restart local v4    # "s":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/flipfont/FontListActivity;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget v6, p0, Lcom/android/settings/flipfont/FontListActivity;->mClickedItem:I

    invoke-virtual {v5, v6}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v2

    .line 417
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
