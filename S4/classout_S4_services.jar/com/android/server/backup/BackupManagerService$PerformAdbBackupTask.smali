.class Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;
.super Lcom/android/server/backup/BackupManagerService$FullBackupTask;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformAdbBackupTask"
.end annotation


# instance fields
.field mAllApps:Z

.field mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

.field mCompress:Z

.field mCurrentPassword:Ljava/lang/String;

.field mDeflater:Ljava/util/zip/DeflaterOutputStream;

.field mDoWidgets:Z

.field mEncryptPassword:Ljava/lang/String;

.field mIncludeApks:Z

.field mIncludeObbs:Z

.field mIncludeShared:Z

.field mIncludeSystem:Z

.field final mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mOutputFile:Landroid/os/ParcelFileDescriptor;

.field mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 18
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "includeApks"    # Z
    .param p5, "includeObbs"    # Z
    .param p6, "includeShared"    # Z
    .param p7, "doWidgets"    # Z
    .param p8, "curPassword"    # Ljava/lang/String;
    .param p9, "encryptPassword"    # Ljava/lang/String;
    .param p10, "doAllApps"    # Z
    .param p11, "doSystem"    # Z
    .param p12, "doCompress"    # Z
    .param p13, "packages"    # [Ljava/lang/String;
    .param p14, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 3560
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    .line 3561
    invoke-direct {p0, p1, p3}, Lcom/android/server/backup/BackupManagerService$FullBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 3562
    move-object/from16 v0, p14

    iput-object v0, p0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3564
    iput-object p2, p0, mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 3565
    iput-boolean p4, p0, mIncludeApks:Z

    .line 3566
    iput-boolean p5, p0, mIncludeObbs:Z

    .line 3567
    iput-boolean p6, p0, mIncludeShared:Z

    .line 3568
    iput-boolean p7, p0, mDoWidgets:Z

    .line 3569
    iput-boolean p10, p0, mAllApps:Z

    .line 3570
    iput-boolean p11, p0, mIncludeSystem:Z

    .line 3571
    if-nez p13, :cond_31

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1e
    iput-object v1, p0, mPackages:Ljava/util/ArrayList;

    .line 3574
    iput-object p8, p0, mCurrentPassword:Ljava/lang/String;

    .line 3579
    if-eqz p9, :cond_2c

    const-string v1, ""

    invoke-virtual {v1, p9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 3580
    :cond_2c
    iput-object p8, p0, mEncryptPassword:Ljava/lang/String;

    .line 3584
    :goto_2e
    iput-boolean p12, p0, mCompress:Z

    .line 3585
    return-void

    .line 3571
    :cond_31
    new-instance v1, Ljava/util/ArrayList;

    invoke-static/range {p13 .. p13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1e

    .line 3582
    :cond_3b
    iput-object p9, p0, mEncryptPassword:Ljava/lang/String;

    goto :goto_2e
.end method

.method private emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 26
    .param p1, "headerbuf"    # Ljava/lang/StringBuilder;
    .param p2, "ofstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3617
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const/16 v20, 0x200

    # invokes: Lcom/android/server/backup/BackupManagerService;->randomBytes(I)[B
    invoke-static/range {v19 .. v20}, Lcom/android/server/backup/BackupManagerService;->access$1500(Lcom/android/server/backup/BackupManagerService;I)[B

    move-result-object v17

    .line 3618
    .local v17, "newUserSalt":[B
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const-string v20, "PBKDF2WithHmacSHA1"

    move-object/from16 v0, p0

    iget-object v0, v0, mEncryptPassword:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x2710

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    move/from16 v4, v22

    # invokes: Lcom/android/server/backup/BackupManagerService;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->access$1600(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v18

    .line 3622
    .local v18, "userKey":Ljavax/crypto/SecretKey;
    const/16 v19, 0x20

    move/from16 v0, v19

    new-array v13, v0, [B

    .line 3623
    .local v13, "masterPw":[B
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;
    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->access$1700(Lcom/android/server/backup/BackupManagerService;)Ljava/security/SecureRandom;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 3624
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const/16 v20, 0x200

    # invokes: Lcom/android/server/backup/BackupManagerService;->randomBytes(I)[B
    invoke-static/range {v19 .. v20}, Lcom/android/server/backup/BackupManagerService;->access$1500(Lcom/android/server/backup/BackupManagerService;I)[B

    move-result-object v9

    .line 3627
    .local v9, "checksumSalt":[B
    const-string v19, "AES/CBC/PKCS5Padding"

    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 3628
    .local v7, "c":Ljavax/crypto/Cipher;
    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    const-string v19, "AES"

    move-object/from16 v0, v19

    invoke-direct {v12, v13, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 3629
    .local v12, "masterKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v7, v0, v12}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3630
    new-instance v11, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v11, v0, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 3633
    .local v11, "finalOutput":Ljava/io/OutputStream;
    const-string v19, "AES-256"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3634
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3636
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    # invokes: Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$1800(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3637
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3639
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v9}, Lcom/android/server/backup/BackupManagerService;->access$1800(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3640
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3642
    const/16 v19, 0x2710

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3643
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3646
    const-string v19, "AES/CBC/PKCS5Padding"

    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v15

    .line 3647
    .local v15, "mkC":Ljavax/crypto/Cipher;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3649
    invoke-virtual {v15}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v5

    .line 3650
    .local v5, "IV":[B
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/android/server/backup/BackupManagerService;->access$1800(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3651
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3663
    invoke-virtual {v7}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v5

    .line 3664
    invoke-virtual {v12}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v14

    .line 3665
    .local v14, "mk":[B
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const-string v20, "PBKDF2WithHmacSHA1"

    invoke-virtual {v12}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v21

    const/16 v22, 0x2710

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    # invokes: Lcom/android/server/backup/BackupManagerService;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B
    invoke-static {v0, v1, v2, v9, v3}, Lcom/android/server/backup/BackupManagerService;->access$1900(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;[B[BI)[B

    move-result-object v8

    .line 3668
    .local v8, "checksum":[B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    array-length v0, v5

    move/from16 v19, v0

    array-length v0, v14

    move/from16 v20, v0

    add-int v19, v19, v20

    array-length v0, v8

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int/lit8 v19, v19, 0x3

    move/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 3670
    .local v6, "blob":Ljava/io/ByteArrayOutputStream;
    new-instance v16, Ljava/io/DataOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3671
    .local v16, "mkOut":Ljava/io/DataOutputStream;
    array-length v0, v5

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3672
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 3673
    array-length v0, v14

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3674
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/io/DataOutputStream;->write([B)V

    .line 3675
    array-length v0, v8

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3676
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 3677
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->flush()V

    .line 3678
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v10

    .line 3679
    .local v10, "encryptedMk":[B
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->access$1800(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3680
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3682
    return-object v11
.end method

.method private finalizeBackup(Ljava/io/OutputStream;)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 3688
    const/16 v2, 0x400

    :try_start_2
    new-array v1, v2, [B

    .line 3689
    .local v1, "eof":[B
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_8

    .line 3693
    .end local v1    # "eof":[B
    :goto_7
    return-void

    .line 3690
    :catch_8
    move-exception v0

    .line 3691
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    const-string v3, "Error attempting to finalize backup stream"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method


# virtual methods
.method addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3588
    .local p1, "set":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .local p2, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3589
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 3590
    iget-object v5, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v5, v5, Lcom/android/server/backup/BackupManagerService;->isEdmBackupRequest:Z

    if-eqz v5, :cond_39

    .line 3593
    :try_start_1c
    iget-object v5, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    const/16 v6, 0x40

    iget-object v7, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    iget v7, v7, Lcom/android/server/backup/BackupManagerService;->mEdmUserId:I

    invoke-interface {v5, v4, v6, v7}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 3595
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_4

    .line 3596
    invoke-virtual {p1, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2f} :catch_30

    goto :goto_4

    .line 3598
    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_30
    move-exception v0

    .line 3599
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "BackupManagerService"

    const-string v6, "Fail to obtain package\'s info for backup - mdm request"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3603
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_39
    :try_start_39
    iget-object v5, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->access$700(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 3605
    .local v2, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39 .. :try_end_48} :catch_49

    goto :goto_4

    .line 3606
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_49
    move-exception v0

    .line 3607
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", skipping"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3612
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_69
    return-void
.end method

.method public run()V
    .registers 30

    .prologue
    .line 3697
    const-string v25, "BackupManagerService"

    const-string v26, "--- Performing full-dataset adb backup ---"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3699
    new-instance v22, Ljava/util/TreeMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeMap;-><init>()V

    .line 3700
    .local v22, "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    new-instance v18, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    .line 3701
    .local v18, "obbConnection":Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->establish()V

    .line 3703
    invoke-virtual/range {p0 .. p0}, sendStartBackup()V

    .line 3706
    move-object/from16 v0, p0

    iget-boolean v0, v0, mAllApps:Z

    move/from16 v25, v0

    if-eqz v25, :cond_78

    .line 3707
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v25 .. v25}, Lcom/android/server/backup/BackupManagerService;->access$700(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v25

    const/16 v26, 0x40

    invoke-virtual/range {v25 .. v26}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    .line 3709
    .local v6, "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v15, v0, :cond_78

    .line 3710
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/PackageInfo;

    .line 3712
    .local v23, "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIncludeSystem:Z

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_66

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x1

    if-nez v25, :cond_75

    .line 3714
    :cond_66
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3709
    :cond_75
    add-int/lit8 v15, v15, 0x1

    goto :goto_3a

    .line 3721
    .end local v6    # "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v15    # "i":I
    .end local v23    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_78
    move-object/from16 v0, p0

    iget-boolean v0, v0, mDoWidgets:Z

    move/from16 v25, v0

    if-eqz v25, :cond_91

    .line 3722
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v24

    .line 3724
    .local v24, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v24, :cond_91

    .line 3735
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 3742
    .end local v24    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_91
    move-object/from16 v0, p0

    iget-object v0, v0, mPackages:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    if-eqz v25, :cond_a8

    .line 3743
    move-object/from16 v0, p0

    iget-object v0, v0, mPackages:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 3749
    :cond_a8
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->isEdmBackupRequest:Z

    move/from16 v25, v0

    if-nez v25, :cond_e0

    .line 3751
    invoke-virtual/range {v22 .. v22}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 3752
    .local v17, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    :cond_be
    :goto_be
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_e0

    .line 3753
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/PackageInfo;

    .line 3754
    .restart local v23    # "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v25

    if-nez v25, :cond_be

    .line 3755
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->remove()V

    goto :goto_be

    .line 3761
    .end local v17    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v23    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_e0
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3763
    .local v7, "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3764
    .local v20, "ofstream":Ljava/io/FileOutputStream;
    const/16 v21, 0x0

    .line 3766
    .local v21, "out":Ljava/io/OutputStream;
    const/16 v23, 0x0

    .line 3768
    .restart local v23    # "pkg":Landroid/content/pm/PackageInfo;
    :try_start_102
    move-object/from16 v0, p0

    iget-object v0, v0, mEncryptPassword:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_194

    move-object/from16 v0, p0

    iget-object v0, v0, mEncryptPassword:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_194

    const/4 v10, 0x1

    .line 3771
    .local v10, "encrypting":Z
    :goto_117
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/backup/BackupManagerService;->deviceIsEncrypted()Z

    move-result v25

    if-eqz v25, :cond_19c

    if-nez v10, :cond_19c

    .line 3772
    const-string v25, "BackupManagerService"

    const-string v26, "Unencrypted backup of encrypted device; aborting"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12c
    .catch Landroid/os/RemoteException; {:try_start_102 .. :try_end_12c} :catch_356
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_12c} :catch_468
    .catchall {:try_start_102 .. :try_end_12c} :catchall_56b

    .line 3887
    if-eqz v21, :cond_131

    :try_start_12e
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    .line 3888
    :cond_131
    move-object/from16 v0, p0

    iget-object v0, v0, mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_13a} :catch_5eb

    .line 3892
    :goto_13a
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3893
    :try_start_147
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->clear()V

    .line 3894
    monitor-exit v26
    :try_end_157
    .catchall {:try_start_147 .. :try_end_157} :catchall_196

    .line 3895
    move-object/from16 v0, p0

    iget-object v0, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3896
    :try_start_15e
    move-object/from16 v0, p0

    iget-object v0, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3897
    move-object/from16 v0, p0

    iget-object v0, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notifyAll()V

    .line 3898
    monitor-exit v26
    :try_end_177
    .catchall {:try_start_15e .. :try_end_177} :catchall_199

    .line 3899
    invoke-virtual/range {p0 .. p0}, sendEndBackup()V

    .line 3900
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3901
    const-string v25, "BackupManagerService"

    const-string v26, "Full backup pass complete."

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3902
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3904
    .end local v10    # "encrypting":Z
    :goto_193
    return-void

    .line 3768
    :cond_194
    const/4 v10, 0x0

    goto :goto_117

    .line 3894
    .restart local v10    # "encrypting":Z
    :catchall_196
    move-exception v25

    :try_start_197
    monitor-exit v26
    :try_end_198
    .catchall {:try_start_197 .. :try_end_198} :catchall_196

    throw v25

    .line 3898
    :catchall_199
    move-exception v25

    :try_start_19a
    monitor-exit v26
    :try_end_19b
    .catchall {:try_start_19a .. :try_end_19b} :catchall_199

    throw v25

    .line 3776
    :cond_19c
    move-object/from16 v11, v20

    .line 3780
    .local v11, "finalOutput":Ljava/io/OutputStream;
    :try_start_19e
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->isEdmBackupRequest:Z

    move/from16 v25, v0

    if-nez v25, :cond_234

    .line 3782
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentPassword:Ljava/lang/String;

    move-object/from16 v26, v0

    # invokes: Lcom/android/server/backup/BackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z
    invoke-static/range {v25 .. v26}, Lcom/android/server/backup/BackupManagerService;->access$2000(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_234

    .line 3783
    const-string v25, "BackupManagerService"

    const-string v26, "Backup password mismatch; aborting"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c5
    .catch Landroid/os/RemoteException; {:try_start_19e .. :try_end_1c5} :catch_356
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1c5} :catch_468
    .catchall {:try_start_19e .. :try_end_1c5} :catchall_56b

    .line 3887
    if-eqz v21, :cond_1ca

    :try_start_1c7
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    .line 3888
    :cond_1ca
    move-object/from16 v0, p0

    iget-object v0, v0, mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1d3
    .catch Ljava/io/IOException; {:try_start_1c7 .. :try_end_1d3} :catch_5e8

    .line 3892
    :goto_1d3
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3893
    :try_start_1e0
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->clear()V

    .line 3894
    monitor-exit v26
    :try_end_1f0
    .catchall {:try_start_1e0 .. :try_end_1f0} :catchall_22e

    .line 3895
    move-object/from16 v0, p0

    iget-object v0, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3896
    :try_start_1f7
    move-object/from16 v0, p0

    iget-object v0, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3897
    move-object/from16 v0, p0

    iget-object v0, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notifyAll()V

    .line 3898
    monitor-exit v26
    :try_end_210
    .catchall {:try_start_1f7 .. :try_end_210} :catchall_231

    .line 3899
    invoke-virtual/range {p0 .. p0}, sendEndBackup()V

    .line 3900
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3901
    const-string v25, "BackupManagerService"

    const-string v26, "Full backup pass complete."

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3902
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_193

    .line 3894
    :catchall_22e
    move-exception v25

    :try_start_22f
    monitor-exit v26
    :try_end_230
    .catchall {:try_start_22f .. :try_end_230} :catchall_22e

    throw v25

    .line 3898
    :catchall_231
    move-exception v25

    :try_start_232
    monitor-exit v26
    :try_end_233
    .catchall {:try_start_232 .. :try_end_233} :catchall_231

    throw v25

    .line 3813
    :cond_234
    :try_start_234
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v25, 0x400

    move/from16 v0, v25

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3815
    .local v14, "headerbuf":Ljava/lang/StringBuilder;
    const-string v25, "ANDROID BACKUP\n"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3816
    const/16 v25, 0x3

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3817
    move-object/from16 v0, p0

    iget-boolean v0, v0, mCompress:Z

    move/from16 v25, v0

    if-eqz v25, :cond_3c7

    const-string v25, "\n1\n"

    :goto_255
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_25a
    .catch Landroid/os/RemoteException; {:try_start_234 .. :try_end_25a} :catch_356
    .catch Ljava/lang/Exception; {:try_start_234 .. :try_end_25a} :catch_468
    .catchall {:try_start_234 .. :try_end_25a} :catchall_56b

    .line 3821
    if-eqz v10, :cond_3cb

    :try_start_25c
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->isEdmBackupRequest:Z

    move/from16 v25, v0

    if-nez v25, :cond_3cb

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->isEdmRestoreRequest:Z

    move/from16 v25, v0

    if-nez v25, :cond_3cb

    .line 3824
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    :try_end_27d
    .catch Ljava/lang/Exception; {:try_start_25c .. :try_end_27d} :catch_3d5
    .catch Landroid/os/RemoteException; {:try_start_25c .. :try_end_27d} :catch_356
    .catchall {:try_start_25c .. :try_end_27d} :catchall_56b

    move-result-object v11

    move-object v12, v11

    .line 3829
    .end local v11    # "finalOutput":Ljava/io/OutputStream;
    .local v12, "finalOutput":Ljava/io/OutputStream;
    :goto_27f
    :try_start_27f
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const-string v26, "UTF-8"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    .line 3830
    .local v13, "header":[B
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/io/FileOutputStream;->write([B)V

    .line 3833
    move-object/from16 v0, p0

    iget-boolean v0, v0, mCompress:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5ee

    .line 3834
    new-instance v8, Ljava/util/zip/Deflater;

    const/16 v25, 0x9

    move/from16 v0, v25

    invoke-direct {v8, v0}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 3835
    .local v8, "deflater":Ljava/util/zip/Deflater;
    new-instance v11, Ljava/util/zip/DeflaterOutputStream;

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-direct {v11, v12, v8, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_2a8
    .catch Ljava/lang/Exception; {:try_start_27f .. :try_end_2a8} :catch_5e4
    .catch Landroid/os/RemoteException; {:try_start_27f .. :try_end_2a8} :catch_356
    .catchall {:try_start_27f .. :try_end_2a8} :catchall_56b

    .line 3838
    .end local v8    # "deflater":Ljava/util/zip/Deflater;
    .end local v12    # "finalOutput":Ljava/io/OutputStream;
    .restart local v11    # "finalOutput":Ljava/io/OutputStream;
    :goto_2a8
    move-object/from16 v21, v11

    .line 3849
    :try_start_2aa
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIncludeShared:Z

    move/from16 v25, v0
    :try_end_2b0
    .catch Landroid/os/RemoteException; {:try_start_2aa .. :try_end_2b0} :catch_356
    .catch Ljava/lang/Exception; {:try_start_2aa .. :try_end_2b0} :catch_468
    .catchall {:try_start_2aa .. :try_end_2b0} :catchall_56b

    if-eqz v25, :cond_2c9

    .line 3851
    :try_start_2b2
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v25 .. v25}, Lcom/android/server/backup/BackupManagerService;->access$700(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v25

    const-string v26, "com.android.sharedstoragebackup"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v23

    .line 3852
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2c9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b2 .. :try_end_2c9} :catch_45e
    .catch Landroid/os/RemoteException; {:try_start_2b2 .. :try_end_2c9} :catch_356
    .catch Ljava/lang/Exception; {:try_start_2b2 .. :try_end_2c9} :catch_468
    .catchall {:try_start_2b2 .. :try_end_2c9} :catchall_56b

    .line 3859
    :cond_2c9
    :goto_2c9
    :try_start_2c9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3860
    .local v5, "N":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_2ce
    if-ge v15, v5, :cond_4e9

    .line 3861
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object/from16 v23, v0

    .line 3862
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "com.android.sharedstoragebackup"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 3865
    .local v16, "isSharedStorage":Z
    new-instance v25, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIncludeApks:Z

    move/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    move-object/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    .line 3866
    if-eqz v16, :cond_4dd

    const-string v25, "Shared storage"

    :goto_311
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, sendOnBackupPackage(Ljava/lang/String;)V

    .line 3867
    move-object/from16 v0, p0

    iget-object v0, v0, mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->backupOnePackage(Landroid/content/pm/PackageInfo;)I

    .line 3871
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIncludeObbs:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4e5

    .line 3872
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    move-result v19

    .line 3873
    .local v19, "obbOkay":Z
    if-nez v19, :cond_4e5

    .line 3874
    new-instance v25, Ljava/lang/RuntimeException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Failure writing OBB stack for "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v25
    :try_end_356
    .catch Landroid/os/RemoteException; {:try_start_2c9 .. :try_end_356} :catch_356
    .catch Ljava/lang/Exception; {:try_start_2c9 .. :try_end_356} :catch_468
    .catchall {:try_start_2c9 .. :try_end_356} :catchall_56b

    .line 3881
    .end local v5    # "N":I
    .end local v10    # "encrypting":Z
    .end local v11    # "finalOutput":Ljava/io/OutputStream;
    .end local v13    # "header":[B
    .end local v14    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v15    # "i":I
    .end local v16    # "isSharedStorage":Z
    .end local v19    # "obbOkay":Z
    :catch_356
    move-exception v9

    .line 3882
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_357
    const-string v25, "BackupManagerService"

    const-string v26, "App died during full backup"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35e
    .catchall {:try_start_357 .. :try_end_35e} :catchall_56b

    .line 3887
    if-eqz v21, :cond_363

    :try_start_360
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    .line 3888
    :cond_363
    move-object/from16 v0, p0

    iget-object v0, v0, mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_36c
    .catch Ljava/io/IOException; {:try_start_360 .. :try_end_36c} :catch_5db

    .line 3892
    :goto_36c
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3893
    :try_start_379
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->clear()V

    .line 3894
    monitor-exit v26
    :try_end_389
    .catchall {:try_start_379 .. :try_end_389} :catchall_55f

    .line 3895
    move-object/from16 v0, p0

    iget-object v0, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3896
    :try_start_390
    move-object/from16 v0, p0

    iget-object v0, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3897
    move-object/from16 v0, p0

    iget-object v0, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notifyAll()V

    .line 3898
    monitor-exit v26
    :try_end_3a9
    .catchall {:try_start_390 .. :try_end_3a9} :catchall_562

    .line 3899
    invoke-virtual/range {p0 .. p0}, sendEndBackup()V

    .line 3900
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3901
    const-string v25, "BackupManagerService"

    const-string v26, "Full backup pass complete."

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3902
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_193

    .line 3817
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v10    # "encrypting":Z
    .restart local v11    # "finalOutput":Ljava/io/OutputStream;
    .restart local v14    # "headerbuf":Ljava/lang/StringBuilder;
    :cond_3c7
    :try_start_3c7
    const-string v25, "\n0\n"
    :try_end_3c9
    .catch Landroid/os/RemoteException; {:try_start_3c7 .. :try_end_3c9} :catch_356
    .catch Ljava/lang/Exception; {:try_start_3c7 .. :try_end_3c9} :catch_468
    .catchall {:try_start_3c7 .. :try_end_3c9} :catchall_56b

    goto/16 :goto_255

    .line 3826
    :cond_3cb
    :try_start_3cb
    const-string v25, "none\n"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3d2
    .catch Ljava/lang/Exception; {:try_start_3cb .. :try_end_3d2} :catch_3d5
    .catch Landroid/os/RemoteException; {:try_start_3cb .. :try_end_3d2} :catch_356
    .catchall {:try_start_3cb .. :try_end_3d2} :catchall_56b

    move-object v12, v11

    .end local v11    # "finalOutput":Ljava/io/OutputStream;
    .restart local v12    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_27f

    .line 3839
    .end local v12    # "finalOutput":Ljava/io/OutputStream;
    .restart local v11    # "finalOutput":Ljava/io/OutputStream;
    :catch_3d5
    move-exception v9

    .line 3841
    .local v9, "e":Ljava/lang/Exception;
    :goto_3d6
    :try_start_3d6
    const-string v25, "BackupManagerService"

    const-string v26, "Unable to emit archive header"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3843
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/server/backup/BackupManagerService;->isEdmBackupFail:Z
    :try_end_3ef
    .catch Landroid/os/RemoteException; {:try_start_3d6 .. :try_end_3ef} :catch_356
    .catch Ljava/lang/Exception; {:try_start_3d6 .. :try_end_3ef} :catch_468
    .catchall {:try_start_3d6 .. :try_end_3ef} :catchall_56b

    .line 3887
    if-eqz v21, :cond_3f4

    :try_start_3f1
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    .line 3888
    :cond_3f4
    move-object/from16 v0, p0

    iget-object v0, v0, mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3fd
    .catch Ljava/io/IOException; {:try_start_3f1 .. :try_end_3fd} :catch_5e1

    .line 3892
    :goto_3fd
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3893
    :try_start_40a
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->clear()V

    .line 3894
    monitor-exit v26
    :try_end_41a
    .catchall {:try_start_40a .. :try_end_41a} :catchall_458

    .line 3895
    move-object/from16 v0, p0

    iget-object v0, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3896
    :try_start_421
    move-object/from16 v0, p0

    iget-object v0, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3897
    move-object/from16 v0, p0

    iget-object v0, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notifyAll()V

    .line 3898
    monitor-exit v26
    :try_end_43a
    .catchall {:try_start_421 .. :try_end_43a} :catchall_45b

    .line 3899
    invoke-virtual/range {p0 .. p0}, sendEndBackup()V

    .line 3900
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3901
    const-string v25, "BackupManagerService"

    const-string v26, "Full backup pass complete."

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3902
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_193

    .line 3894
    :catchall_458
    move-exception v25

    :try_start_459
    monitor-exit v26
    :try_end_45a
    .catchall {:try_start_459 .. :try_end_45a} :catchall_458

    throw v25

    .line 3898
    :catchall_45b
    move-exception v25

    :try_start_45c
    monitor-exit v26
    :try_end_45d
    .catchall {:try_start_45c .. :try_end_45d} :catchall_45b

    throw v25

    .line 3853
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v13    # "header":[B
    :catch_45e
    move-exception v9

    .line 3854
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_45f
    const-string v25, "BackupManagerService"

    const-string v26, "Unable to find shared-storage backup handler"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_466
    .catch Landroid/os/RemoteException; {:try_start_45f .. :try_end_466} :catch_356
    .catch Ljava/lang/Exception; {:try_start_45f .. :try_end_466} :catch_468
    .catchall {:try_start_45f .. :try_end_466} :catchall_56b

    goto/16 :goto_2c9

    .line 3883
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "encrypting":Z
    .end local v11    # "finalOutput":Ljava/io/OutputStream;
    .end local v13    # "header":[B
    .end local v14    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_468
    move-exception v9

    .line 3884
    .local v9, "e":Ljava/lang/Exception;
    :try_start_469
    const-string v25, "BackupManagerService"

    const-string v26, "Internal exception during full backup"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_474
    .catchall {:try_start_469 .. :try_end_474} :catchall_56b

    .line 3887
    if-eqz v21, :cond_479

    :try_start_476
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    .line 3888
    :cond_479
    move-object/from16 v0, p0

    iget-object v0, v0, mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_482
    .catch Ljava/io/IOException; {:try_start_476 .. :try_end_482} :catch_5d8

    .line 3892
    :goto_482
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3893
    :try_start_48f
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->clear()V

    .line 3894
    monitor-exit v26
    :try_end_49f
    .catchall {:try_start_48f .. :try_end_49f} :catchall_565

    .line 3895
    move-object/from16 v0, p0

    iget-object v0, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3896
    :try_start_4a6
    move-object/from16 v0, p0

    iget-object v0, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3897
    move-object/from16 v0, p0

    iget-object v0, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notifyAll()V

    .line 3898
    monitor-exit v26
    :try_end_4bf
    .catchall {:try_start_4a6 .. :try_end_4bf} :catchall_568

    .line 3899
    invoke-virtual/range {p0 .. p0}, sendEndBackup()V

    .line 3900
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3901
    const-string v25, "BackupManagerService"

    const-string v26, "Full backup pass complete."

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3902
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_193

    .line 3866
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v5    # "N":I
    .restart local v10    # "encrypting":Z
    .restart local v11    # "finalOutput":Ljava/io/OutputStream;
    .restart local v13    # "header":[B
    .restart local v14    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v15    # "i":I
    .restart local v16    # "isSharedStorage":Z
    :cond_4dd
    :try_start_4dd
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    goto/16 :goto_311

    .line 3860
    :cond_4e5
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2ce

    .line 3880
    .end local v16    # "isSharedStorage":Z
    :cond_4e9
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_4f0
    .catch Landroid/os/RemoteException; {:try_start_4dd .. :try_end_4f0} :catch_356
    .catch Ljava/lang/Exception; {:try_start_4dd .. :try_end_4f0} :catch_468
    .catchall {:try_start_4dd .. :try_end_4f0} :catchall_56b

    .line 3887
    if-eqz v21, :cond_4f5

    :try_start_4f2
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    .line 3888
    :cond_4f5
    move-object/from16 v0, p0

    iget-object v0, v0, mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4fe
    .catch Ljava/io/IOException; {:try_start_4f2 .. :try_end_4fe} :catch_5de

    .line 3892
    :goto_4fe
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3893
    :try_start_50b
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->clear()V

    .line 3894
    monitor-exit v26
    :try_end_51b
    .catchall {:try_start_50b .. :try_end_51b} :catchall_559

    .line 3895
    move-object/from16 v0, p0

    iget-object v0, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3896
    :try_start_522
    move-object/from16 v0, p0

    iget-object v0, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3897
    move-object/from16 v0, p0

    iget-object v0, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notifyAll()V

    .line 3898
    monitor-exit v26
    :try_end_53b
    .catchall {:try_start_522 .. :try_end_53b} :catchall_55c

    .line 3899
    invoke-virtual/range {p0 .. p0}, sendEndBackup()V

    .line 3900
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3901
    const-string v25, "BackupManagerService"

    const-string v26, "Full backup pass complete."

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3902
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_193

    .line 3894
    :catchall_559
    move-exception v25

    :try_start_55a
    monitor-exit v26
    :try_end_55b
    .catchall {:try_start_55a .. :try_end_55b} :catchall_559

    throw v25

    .line 3898
    :catchall_55c
    move-exception v25

    :try_start_55d
    monitor-exit v26
    :try_end_55e
    .catchall {:try_start_55d .. :try_end_55e} :catchall_55c

    throw v25

    .line 3894
    .end local v5    # "N":I
    .end local v10    # "encrypting":Z
    .end local v11    # "finalOutput":Ljava/io/OutputStream;
    .end local v13    # "header":[B
    .end local v14    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v15    # "i":I
    .local v9, "e":Landroid/os/RemoteException;
    :catchall_55f
    move-exception v25

    :try_start_560
    monitor-exit v26
    :try_end_561
    .catchall {:try_start_560 .. :try_end_561} :catchall_55f

    throw v25

    .line 3898
    :catchall_562
    move-exception v25

    :try_start_563
    monitor-exit v26
    :try_end_564
    .catchall {:try_start_563 .. :try_end_564} :catchall_562

    throw v25

    .line 3894
    .local v9, "e":Ljava/lang/Exception;
    :catchall_565
    move-exception v25

    :try_start_566
    monitor-exit v26
    :try_end_567
    .catchall {:try_start_566 .. :try_end_567} :catchall_565

    throw v25

    .line 3898
    :catchall_568
    move-exception v25

    :try_start_569
    monitor-exit v26
    :try_end_56a
    .catchall {:try_start_569 .. :try_end_56a} :catchall_568

    throw v25

    .line 3886
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_56b
    move-exception v25

    .line 3887
    if-eqz v21, :cond_571

    :try_start_56e
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    .line 3888
    :cond_571
    move-object/from16 v0, p0

    iget-object v0, v0, mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_57a
    .catch Ljava/io/IOException; {:try_start_56e .. :try_end_57a} :catch_5d6

    .line 3892
    :goto_57a
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3893
    :try_start_587
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->clear()V

    .line 3894
    monitor-exit v26
    :try_end_597
    .catchall {:try_start_587 .. :try_end_597} :catchall_5d0

    .line 3895
    move-object/from16 v0, p0

    iget-object v0, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3896
    :try_start_59e
    move-object/from16 v0, p0

    iget-object v0, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3897
    move-object/from16 v0, p0

    iget-object v0, v0, mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 3898
    monitor-exit v26
    :try_end_5b3
    .catchall {:try_start_59e .. :try_end_5b3} :catchall_5d3

    .line 3899
    invoke-virtual/range {p0 .. p0}, sendEndBackup()V

    .line 3900
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3901
    const-string v26, "BackupManagerService"

    const-string v27, "Full backup pass complete."

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3902
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v25

    .line 3894
    :catchall_5d0
    move-exception v25

    :try_start_5d1
    monitor-exit v26
    :try_end_5d2
    .catchall {:try_start_5d1 .. :try_end_5d2} :catchall_5d0

    throw v25

    .line 3898
    :catchall_5d3
    move-exception v25

    :try_start_5d4
    monitor-exit v26
    :try_end_5d5
    .catchall {:try_start_5d4 .. :try_end_5d5} :catchall_5d3

    throw v25

    .line 3889
    :catch_5d6
    move-exception v26

    goto :goto_57a

    .restart local v9    # "e":Ljava/lang/Exception;
    :catch_5d8
    move-exception v25

    goto/16 :goto_482

    .local v9, "e":Landroid/os/RemoteException;
    :catch_5db
    move-exception v25

    goto/16 :goto_36c

    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v5    # "N":I
    .restart local v10    # "encrypting":Z
    .restart local v11    # "finalOutput":Ljava/io/OutputStream;
    .restart local v13    # "header":[B
    .restart local v14    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v15    # "i":I
    :catch_5de
    move-exception v25

    goto/16 :goto_4fe

    .end local v5    # "N":I
    .end local v13    # "header":[B
    .end local v15    # "i":I
    .local v9, "e":Ljava/lang/Exception;
    :catch_5e1
    move-exception v25

    goto/16 :goto_3fd

    .line 3839
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "finalOutput":Ljava/io/OutputStream;
    .restart local v12    # "finalOutput":Ljava/io/OutputStream;
    :catch_5e4
    move-exception v9

    move-object v11, v12

    .end local v12    # "finalOutput":Ljava/io/OutputStream;
    .restart local v11    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_3d6

    .line 3889
    .end local v14    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_5e8
    move-exception v25

    goto/16 :goto_1d3

    .end local v11    # "finalOutput":Ljava/io/OutputStream;
    :catch_5eb
    move-exception v25

    goto/16 :goto_13a

    .restart local v12    # "finalOutput":Ljava/io/OutputStream;
    .restart local v13    # "header":[B
    .restart local v14    # "headerbuf":Ljava/lang/StringBuilder;
    :cond_5ee
    move-object v11, v12

    .end local v12    # "finalOutput":Ljava/io/OutputStream;
    .restart local v11    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_2a8
.end method
