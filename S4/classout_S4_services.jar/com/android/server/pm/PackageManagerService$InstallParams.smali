.class Lcom/android/server/pm/PackageManagerService$InstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field installFlags:I

.field final installerPackageName:Ljava/lang/String;

.field final installerSourcePackageName:Ljava/lang/String;

.field private mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private mRet:I

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final packageAbiOverride:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final verificationParams:Landroid/content/pm/VerificationParams;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 10
    .param p2, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p4, "installFlags"    # I
    .param p5, "installerPackageName"    # Ljava/lang/String;
    .param p6, "verificationParams"    # Landroid/content/pm/VerificationParams;
    .param p7, "user"    # Landroid/os/UserHandle;
    .param p8, "packageAbiOverride"    # Ljava/lang/String;

    .prologue
    .line 11325
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    .line 11326
    invoke-direct {p0, p1, p7}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 11327
    iput-object p2, p0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 11328
    iput-object p3, p0, observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 11329
    iput p4, p0, installFlags:I

    .line 11330
    iput-object p5, p0, installerPackageName:Ljava/lang/String;

    .line 11331
    const/4 v0, 0x0

    iput-object v0, p0, installerSourcePackageName:Ljava/lang/String;

    .line 11332
    iput-object p6, p0, verificationParams:Landroid/content/pm/VerificationParams;

    .line 11333
    iput-object p8, p0, packageAbiOverride:Ljava/lang/String;

    .line 11334
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/VerificationParams;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 10
    .param p2, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p3, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p4, "installFlags"    # I
    .param p5, "installerPackageName"    # Ljava/lang/String;
    .param p6, "installerSourcePackageName"    # Ljava/lang/String;
    .param p7, "verificationParams"    # Landroid/content/pm/VerificationParams;
    .param p8, "user"    # Landroid/os/UserHandle;
    .param p9, "packageAbiOverride"    # Ljava/lang/String;

    .prologue
    .line 11339
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    .line 11340
    invoke-direct {p0, p1, p8}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 11341
    iput-object p2, p0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 11342
    iput-object p3, p0, observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 11343
    iput p4, p0, installFlags:I

    .line 11344
    iput-object p5, p0, installerPackageName:Ljava/lang/String;

    .line 11345
    iput-object p6, p0, installerSourcePackageName:Ljava/lang/String;

    .line 11346
    iput-object p7, p0, verificationParams:Landroid/content/pm/VerificationParams;

    .line 11347
    iput-object p9, p0, packageAbiOverride:Ljava/lang/String;

    .line 11348
    return-void
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I
    .registers 11
    .param p1, "pkgLite"    # Landroid/content/pm/PackageInfoLite;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 11365
    iget-object v2, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 11366
    .local v2, "packageName":Ljava/lang/String;
    iget v0, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 11367
    .local v0, "installLocation":I
    iget v6, p0, installFlags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_5f

    move v1, v4

    .line 11369
    .local v1, "onSd":Z
    :goto_d
    sget-object v6, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v6

    .line 11370
    :try_start_10
    sget-object v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 11371
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_85

    .line 11372
    iget v7, p0, installFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_95

    .line 11374
    iget v7, p0, installFlags:I

    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_61

    .line 11375
    iget v7, p1, Landroid/content/pm/PackageInfoLite;->versionCode:I

    iget v8, v3, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    if-ge v7, v8, :cond_61

    .line 11376
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t install update of "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " update version "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p1, Landroid/content/pm/PackageInfoLite;->versionCode:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is older than installed version "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v3, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11380
    const/4 v4, -0x7

    monitor-exit v6

    .line 11420
    :goto_5e
    return v4

    .line 11367
    .end local v1    # "onSd":Z
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_5f
    const/4 v1, 0x0

    goto :goto_d

    .line 11384
    .restart local v1    # "onSd":Z
    .restart local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_61
    iget-object v7, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_7a

    .line 11385
    if-eqz v1, :cond_78

    .line 11386
    const-string v4, "PackageManager"

    const-string v5, "Cannot install update to system app on sdcard"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11387
    const/4 v4, -0x3

    monitor-exit v6

    goto :goto_5e

    .line 11414
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_75
    move-exception v4

    monitor-exit v6
    :try_end_77
    .catchall {:try_start_10 .. :try_end_77} :catchall_75

    throw v4

    .line 11389
    .restart local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_78
    :try_start_78
    monitor-exit v6

    goto :goto_5e

    .line 11391
    :cond_7a
    if-eqz v1, :cond_7f

    .line 11393
    monitor-exit v6

    move v4, v5

    goto :goto_5e

    .line 11396
    :cond_7f
    if-ne v0, v4, :cond_83

    .line 11398
    monitor-exit v6

    goto :goto_5e

    .line 11399
    :cond_83
    if-ne v0, v5, :cond_8a

    .line 11414
    :cond_85
    monitor-exit v6

    .line 11417
    if-eqz v1, :cond_98

    move v4, v5

    .line 11418
    goto :goto_5e

    .line 11403
    :cond_8a
    # invokes: Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$1100(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-eqz v7, :cond_93

    .line 11404
    monitor-exit v6

    move v4, v5

    goto :goto_5e

    .line 11406
    :cond_93
    monitor-exit v6

    goto :goto_5e

    .line 11411
    :cond_95
    const/4 v4, -0x4

    monitor-exit v6
    :try_end_97
    .catchall {:try_start_78 .. :try_end_97} :catchall_75

    goto :goto_5e

    .line 11420
    :cond_98
    iget v4, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_5e
.end method


# virtual methods
.method public getManifestDigest()Landroid/content/pm/ManifestDigest;
    .registers 2

    .prologue
    .line 11358
    iget-object v0, p0, verificationParams:Landroid/content/pm/VerificationParams;

    if-nez v0, :cond_6

    .line 11359
    const/4 v0, 0x0

    .line 11361
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v0}, Landroid/content/pm/VerificationParams;->getManifestDigest()Landroid/content/pm/ManifestDigest;

    move-result-object v0

    goto :goto_5
.end method

.method handleReturnCode()V
    .registers 4

    .prologue
    .line 11772
    iget-object v0, p0, mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v0, :cond_d

    .line 11773
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, mRet:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$1800(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 11775
    :cond_d
    return-void
.end method

.method handleServiceError()V
    .registers 2

    .prologue
    .line 11779
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->createInstallArgs(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->access$3000(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    iput-object v0, p0, mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 11780
    const/16 v0, -0x6e

    iput v0, p0, mRet:I

    .line 11781
    return-void
.end method

.method public handleStartCopy()V
    .registers 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 11430
    const/16 v27, 0x1

    .line 11433
    .local v27, "ret":I
    move-object/from16 v0, p0

    iget-object v4, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-eqz v4, :cond_26

    .line 11434
    move-object/from16 v0, p0

    iget-object v4, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    if-eqz v4, :cond_2e3

    .line 11435
    move-object/from16 v0, p0

    iget v4, v0, installFlags:I

    or-int/lit8 v4, v4, 0x10

    move-object/from16 v0, p0

    iput v4, v0, installFlags:I

    .line 11436
    move-object/from16 v0, p0

    iget v4, v0, installFlags:I

    and-int/lit8 v4, v4, -0x9

    move-object/from16 v0, p0

    iput v4, v0, installFlags:I

    .line 11445
    :cond_26
    :goto_26
    move-object/from16 v0, p0

    iget v4, v0, installFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_309

    const/16 v19, 0x1

    .line 11446
    .local v19, "onSd":Z
    :goto_30
    move-object/from16 v0, p0

    iget v4, v0, installFlags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_30d

    const/16 v18, 0x1

    .line 11448
    .local v18, "onInt":Z
    :goto_3a
    const/16 v21, 0x0

    .line 11449
    .local v21, "pkgLite":Landroid/content/pm/PackageInfoLite;
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11450
    .local v20, "packageFileTemp":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, installFlags:I

    move-object/from16 v0, p0

    iget-object v7, v0, packageAbiOverride:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v22

    .line 11457
    .local v22, "pkgLiteTemp":Landroid/content/pm/PackageInfoLite;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/pm/PackageManagerService;->isUpdateOnSystemApp(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->access$2800(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_314

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, installFlags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_311

    const/4 v4, 0x1

    :goto_8a
    invoke-virtual/range {p0 .. p0}, getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    move-object/from16 v0, v20

    # invokes: Lcom/android/server/pm/PackageManagerService;->isAppBlockedByDPM(Ljava/io/File;Ljava/lang/String;ZI)Z
    invoke-static {v5, v0, v6, v4, v7}, Lcom/android/server/pm/PackageManagerService;->access$2900(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;Ljava/lang/String;ZI)Z

    move-result v4

    if-eqz v4, :cond_314

    .line 11461
    const/16 v27, -0x74

    .line 11511
    :cond_9c
    :goto_9c
    const/4 v4, 0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_aa

    .line 11512
    move-object/from16 v0, v21

    iget v14, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 11513
    .local v14, "loc":I
    const/4 v4, -0x3

    if-ne v14, v4, :cond_3b0

    .line 11514
    const/16 v27, -0x13

    .line 11546
    .end local v14    # "loc":I
    :cond_aa
    :goto_aa
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    # invokes: Lcom/android/server/pm/PackageManagerService;->createInstallArgs(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->access$3000(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v12

    .line 11547
    .local v12, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, p0

    iput-object v12, v0, mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 11549
    const/4 v4, 0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_475

    .line 11554
    invoke-virtual/range {p0 .. p0}, getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v33

    .line 11555
    .local v33, "userIdentifier":I
    const/4 v4, -0x1

    move/from16 v0, v33

    if-ne v0, v4, :cond_d4

    move-object/from16 v0, p0

    iget v4, v0, installFlags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_d4

    .line 11557
    const/16 v33, 0x0

    .line 11564
    :cond_d4
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move/from16 v0, v33

    # invokes: Lcom/android/server/pm/PackageManagerService;->getRequiredVerifiersLPr(I)Ljava/util/ArrayList;
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->access$3100(Lcom/android/server/pm/PackageManagerService;I)Ljava/util/ArrayList;

    move-result-object v25

    .line 11565
    .local v25, "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    const/4 v15, 0x1

    .line 11573
    .local v15, "needVerificationForPersona":Z
    const/16 v26, 0x1

    .line 11577
    .local v26, "requiresVerificationForPersona":Z
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v4, :cond_129

    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual/range {p0 .. p0}, getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->needVerificationForPackage(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_129

    .line 11580
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping verification for Persona "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11582
    const/16 v26, 0x0

    .line 11587
    :cond_129
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_506

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget v5, v0, installFlags:I

    move/from16 v0, v33

    # invokes: Lcom/android/server/pm/PackageManagerService;->isVerificationEnabled(II)Z
    invoke-static {v4, v0, v5}, Lcom/android/server/pm/PackageManagerService;->access$3200(Lcom/android/server/pm/PackageManagerService;II)Z

    move-result v4

    if-eqz v4, :cond_506

    if-eqz v26, :cond_506

    .line 11590
    new-instance v34, Landroid/content/Intent;

    const-string v4, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    move-object/from16 v0, v34

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11592
    .local v34, "verification":Landroid/content/Intent;
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "application/vnd.android.package-archive"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 11594
    const/4 v4, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11598
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v4, :cond_415

    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v4

    if-eqz v4, :cond_415

    .line 11599
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v5, "application/vnd.android.package-archive"

    const/16 v6, 0x200

    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v4, v0, v5, v6, v1}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v24

    .line 11610
    .local v24, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_184
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " verifiers for intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v34 .. v34}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " optional verifiers"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11615
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    # operator++ for: Lcom/android/server/pm/PackageManagerService;->mPendingVerificationToken:I
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$3308(Lcom/android/server/pm/PackageManagerService;)I

    move-result v35

    .line 11617
    .local v35, "verificationId":I
    const-string v4, "android.content.pm.extra.VERIFICATION_ID"

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11619
    const-string v4, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    move-object/from16 v0, p0

    iget-object v5, v0, installerPackageName:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11622
    const-string v4, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    move-object/from16 v0, p0

    iget v5, v0, installFlags:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11625
    const-string v4, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11628
    const-string v4, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    move-object/from16 v0, v21

    iget v5, v0, Landroid/content/pm/PackageInfoLite;->versionCode:I

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11632
    move-object/from16 v0, p0

    iget-object v4, v0, verificationParams:Landroid/content/pm/VerificationParams;

    if-eqz v4, :cond_426

    .line 11633
    const-string v4, "KNOXVerificationInstallerUid"

    move-object/from16 v0, p0

    iget-object v5, v0, verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v5}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11637
    :goto_215
    const-string v4, "KNOXVerificationPackagePath"

    move-object/from16 v0, p0

    iget-object v5, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11640
    move-object/from16 v0, p0

    iget-object v4, v0, verificationParams:Landroid/content/pm/VerificationParams;

    if-eqz v4, :cond_2a9

    .line 11641
    move-object/from16 v0, p0

    iget-object v4, v0, verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getVerificationURI()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_245

    .line 11642
    const-string v4, "android.content.pm.extra.VERIFICATION_URI"

    move-object/from16 v0, p0

    iget-object v5, v0, verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v5}, Landroid/content/pm/VerificationParams;->getVerificationURI()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 11645
    :cond_245
    move-object/from16 v0, p0

    iget-object v4, v0, verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getOriginatingURI()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_25e

    .line 11646
    const-string v4, "android.intent.extra.ORIGINATING_URI"

    move-object/from16 v0, p0

    iget-object v5, v0, verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v5}, Landroid/content/pm/VerificationParams;->getOriginatingURI()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 11649
    :cond_25e
    move-object/from16 v0, p0

    iget-object v4, v0, verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getReferrer()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_277

    .line 11650
    const-string v4, "android.intent.extra.REFERRER"

    move-object/from16 v0, p0

    iget-object v5, v0, verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v5}, Landroid/content/pm/VerificationParams;->getReferrer()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 11653
    :cond_277
    move-object/from16 v0, p0

    iget-object v4, v0, verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getOriginatingUid()I

    move-result v4

    if-ltz v4, :cond_290

    .line 11654
    const-string v4, "android.intent.extra.ORIGINATING_UID"

    move-object/from16 v0, p0

    iget-object v5, v0, verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v5}, Landroid/content/pm/VerificationParams;->getOriginatingUid()I

    move-result v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11657
    :cond_290
    move-object/from16 v0, p0

    iget-object v4, v0, verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v4}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v4

    if-ltz v4, :cond_2a9

    .line 11658
    const-string v4, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    move-object/from16 v0, p0

    iget-object v5, v0, verificationParams:Landroid/content/pm/VerificationParams;

    invoke-virtual {v5}, Landroid/content/pm/VerificationParams;->getInstallerUid()I

    move-result v5

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11663
    :cond_2a9
    new-instance v36, Lcom/android/server/pm/PackageVerificationState;

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-direct {v0, v1, v2, v3, v12}, Lcom/android/server/pm/PackageVerificationState;-><init>(Ljava/util/ArrayList;Landroid/content/Intent;ILcom/android/server/pm/PackageManagerService$InstallArgs;)V

    .line 11665
    .local v36, "verificationState":Lcom/android/server/pm/PackageVerificationState;
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 11666
    .local v10, "M":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2bb
    if-ge v13, v10, :cond_430

    .line 11667
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/pm/PackageManagerService$VerifierPackage;

    .line 11668
    .local v38, "vp":Lcom/android/server/pm/PackageManagerService$VerifierPackage;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v38

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->packageName:Ljava/lang/String;

    move-object/from16 v0, v24

    # invokes: Lcom/android/server/pm/PackageManagerService;->matchComponentForVerifier(Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;
    invoke-static {v4, v5, v0}, Lcom/android/server/pm/PackageManagerService;->access$3400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v4

    move-object/from16 v0, v38

    iput-object v4, v0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->componentName:Landroid/content/ComponentName;

    .line 11669
    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->uId:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageVerificationState;->addRequiredVerifierUid(I)V

    .line 11666
    add-int/lit8 v13, v13, 0x1

    goto :goto_2bb

    .line 11437
    .end local v10    # "M":I
    .end local v12    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v13    # "i":I
    .end local v15    # "needVerificationForPersona":Z
    .end local v18    # "onInt":Z
    .end local v19    # "onSd":Z
    .end local v20    # "packageFileTemp":Ljava/io/File;
    .end local v21    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .end local v22    # "pkgLiteTemp":Landroid/content/pm/PackageInfoLite;
    .end local v24    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v25    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .end local v26    # "requiresVerificationForPersona":Z
    .end local v33    # "userIdentifier":I
    .end local v34    # "verification":Landroid/content/Intent;
    .end local v35    # "verificationId":I
    .end local v36    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .end local v38    # "vp":Lcom/android/server/pm/PackageManagerService$VerifierPackage;
    :cond_2e3
    move-object/from16 v0, p0

    iget-object v4, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    if-eqz v4, :cond_301

    .line 11438
    move-object/from16 v0, p0

    iget v4, v0, installFlags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p0

    iput v4, v0, installFlags:I

    .line 11439
    move-object/from16 v0, p0

    iget v4, v0, installFlags:I

    and-int/lit8 v4, v4, -0x11

    move-object/from16 v0, p0

    iput v4, v0, installFlags:I

    goto/16 :goto_26

    .line 11441
    :cond_301
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Invalid stage location"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 11445
    :cond_309
    const/16 v19, 0x0

    goto/16 :goto_30

    .line 11446
    .restart local v19    # "onSd":Z
    :cond_30d
    const/16 v18, 0x0

    goto/16 :goto_3a

    .line 11457
    .restart local v18    # "onInt":Z
    .restart local v20    # "packageFileTemp":Ljava/io/File;
    .restart local v21    # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v22    # "pkgLiteTemp":Landroid/content/pm/PackageInfoLite;
    :cond_311
    const/4 v4, 0x0

    goto/16 :goto_8a

    .line 11468
    :cond_314
    if-eqz v18, :cond_323

    if-eqz v19, :cond_323

    .line 11471
    const-string v4, "PackageManager"

    const-string v5, "Conflicting flags specified for installing on both internal and external"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11472
    const/16 v27, -0x13

    goto/16 :goto_9c

    .line 11474
    :cond_323
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, installFlags:I

    move-object/from16 v0, p0

    iget-object v7, v0, packageAbiOverride:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v21

    .line 11481
    move-object/from16 v0, p0

    iget-object v4, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-nez v4, :cond_9c

    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_9c

    .line 11484
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v30

    .line 11485
    .local v30, "storage":Landroid/os/storage/StorageManager;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v16

    .line 11488
    .local v16, "lowThreshold":J
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, isForwardLocked()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, packageAbiOverride:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/app/IMediaContainerService;->calculateInstalledSize(Ljava/lang/String;ZLjava/lang/String;)J

    move-result-wide v28

    .line 11491
    .local v28, "sizeBytes":J
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    add-long v6, v28, v16

    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/Installer;->freeCache(J)I

    move-result v4

    if-ltz v4, :cond_3a2

    .line 11492
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, installFlags:I

    move-object/from16 v0, p0

    iget-object v7, v0, packageAbiOverride:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v21

    .line 11503
    :cond_3a2
    move-object/from16 v0, v21

    iget v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v5, -0x6

    if-ne v4, v5, :cond_9c

    .line 11505
    const/4 v4, -0x1

    move-object/from16 v0, v21

    iput v4, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto/16 :goto_9c

    .line 11515
    .end local v16    # "lowThreshold":J
    .end local v28    # "sizeBytes":J
    .end local v30    # "storage":Landroid/os/storage/StorageManager;
    .restart local v14    # "loc":I
    :cond_3b0
    const/4 v4, -0x4

    if-ne v14, v4, :cond_3b7

    .line 11516
    const/16 v27, -0x1

    goto/16 :goto_aa

    .line 11517
    :cond_3b7
    const/4 v4, -0x1

    if-ne v14, v4, :cond_3be

    .line 11518
    const/16 v27, -0x4

    goto/16 :goto_aa

    .line 11519
    :cond_3be
    const/4 v4, -0x2

    if-ne v14, v4, :cond_3c5

    .line 11520
    const/16 v27, -0x2

    goto/16 :goto_aa

    .line 11521
    :cond_3c5
    const/4 v4, -0x6

    if-ne v14, v4, :cond_3cc

    .line 11522
    const/16 v27, -0x3

    goto/16 :goto_aa

    .line 11523
    :cond_3cc
    const/4 v4, -0x5

    if-ne v14, v4, :cond_3d3

    .line 11524
    const/16 v27, -0x14

    goto/16 :goto_aa

    .line 11527
    :cond_3d3
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I

    move-result v14

    .line 11528
    const/4 v4, -0x7

    if-ne v14, v4, :cond_3e2

    .line 11529
    const/16 v27, -0x19

    goto/16 :goto_aa

    .line 11530
    :cond_3e2
    if-nez v19, :cond_aa

    if-nez v18, :cond_aa

    .line 11532
    const/4 v4, 0x2

    if-ne v14, v4, :cond_3ff

    .line 11534
    move-object/from16 v0, p0

    iget v4, v0, installFlags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p0

    iput v4, v0, installFlags:I

    .line 11535
    move-object/from16 v0, p0

    iget v4, v0, installFlags:I

    and-int/lit8 v4, v4, -0x11

    move-object/from16 v0, p0

    iput v4, v0, installFlags:I

    goto/16 :goto_aa

    .line 11539
    :cond_3ff
    move-object/from16 v0, p0

    iget v4, v0, installFlags:I

    or-int/lit8 v4, v4, 0x10

    move-object/from16 v0, p0

    iput v4, v0, installFlags:I

    .line 11540
    move-object/from16 v0, p0

    iget v4, v0, installFlags:I

    and-int/lit8 v4, v4, -0x9

    move-object/from16 v0, p0

    iput v4, v0, installFlags:I

    goto/16 :goto_aa

    .line 11603
    .end local v14    # "loc":I
    .restart local v12    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .restart local v15    # "needVerificationForPersona":Z
    .restart local v25    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .restart local v26    # "requiresVerificationForPersona":Z
    .restart local v33    # "userIdentifier":I
    .restart local v34    # "verification":Landroid/content/Intent;
    :cond_415
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v5, "application/vnd.android.package-archive"

    const/16 v6, 0x200

    const/4 v7, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v24

    .restart local v24    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto/16 :goto_184

    .line 11635
    .restart local v35    # "verificationId":I
    :cond_426
    const-string v4, "KNOXVerificationInstallerUid"

    const/4 v5, -0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_215

    .line 11672
    .restart local v10    # "M":I
    .restart local v13    # "i":I
    .restart local v36    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_430
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 11674
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v36

    # invokes: Lcom/android/server/pm/PackageManagerService;->matchVerifiers(Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;
    invoke-static {v4, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$3500(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v32

    .line 11681
    .local v32, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v32, :cond_45c

    .line 11682
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v11

    .line 11683
    .local v11, "N":I
    if-nez v11, :cond_4d9

    .line 11684
    const-string v4, "PackageManager"

    const-string v5, "Additional verifiers required, but none installed."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11685
    const/16 v27, -0x16

    .line 11698
    .end local v11    # "N":I
    :cond_45c
    const/4 v4, 0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_475

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_475

    .line 11705
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v36

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendOrderedBroadcastToRequiredVerifier(Lcom/android/server/pm/PackageVerificationState;)Z
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->access$3600(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageVerificationState;)Z

    .line 11711
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 11743
    .end local v10    # "M":I
    .end local v13    # "i":I
    .end local v15    # "needVerificationForPersona":Z
    .end local v24    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v25    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .end local v26    # "requiresVerificationForPersona":Z
    .end local v32    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v33    # "userIdentifier":I
    .end local v34    # "verification":Landroid/content/Intent;
    .end local v35    # "verificationId":I
    .end local v36    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_475
    :goto_475
    const/4 v4, 0x1

    move/from16 v0, v27

    if-eq v0, v4, :cond_4ab

    .line 11744
    const/4 v4, 0x3

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "PackageManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Install Application "

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, installerPackageName:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v39, " failed"

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 11749
    :cond_4ab
    const/4 v4, 0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_4d2

    .line 11751
    :try_start_4b0
    move-object/from16 v0, p0

    iget v4, v0, installFlags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_4d2

    .line 11752
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getHarmonyEAS()Landroid/content/IHarmonyEAS;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$3700(Lcom/android/server/pm/PackageManagerService;)Landroid/content/IHarmonyEAS;

    .line 11755
    # getter for: Lcom/android/server/pm/PackageManagerService;->mHM:Landroid/content/IHarmonyEAS;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3800()Landroid/content/IHarmonyEAS;

    move-result-object v4

    if-eqz v4, :cond_4d2

    .line 11756
    # getter for: Lcom/android/server/pm/PackageManagerService;->mHM:Landroid/content/IHarmonyEAS;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3800()Landroid/content/IHarmonyEAS;

    move-result-object v4

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/content/IHarmonyEAS;->setInstallationPackageUnknown(Ljava/lang/String;II)V
    :try_end_4d2
    .catch Landroid/os/RemoteException; {:try_start_4b0 .. :try_end_4d2} :catch_515

    .line 11764
    :cond_4d2
    :goto_4d2
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, mRet:I

    .line 11765
    return-void

    .line 11687
    .restart local v10    # "M":I
    .restart local v11    # "N":I
    .restart local v13    # "i":I
    .restart local v15    # "needVerificationForPersona":Z
    .restart local v24    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v25    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .restart local v26    # "requiresVerificationForPersona":Z
    .restart local v32    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .restart local v33    # "userIdentifier":I
    .restart local v34    # "verification":Landroid/content/Intent;
    .restart local v35    # "verificationId":I
    .restart local v36    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    :cond_4d9
    const/4 v13, 0x0

    :goto_4da
    if-ge v13, v11, :cond_45c

    .line 11688
    move-object/from16 v0, v32

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/ComponentName;

    .line 11690
    .local v37, "verifierComponent":Landroid/content/ComponentName;
    new-instance v31, Landroid/content/Intent;

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 11691
    .local v31, "sufficientIntent":Landroid/content/Intent;
    move-object/from16 v0, v31

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 11693
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, getUser()Landroid/os/UserHandle;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 11687
    add-int/lit8 v13, v13, 0x1

    goto :goto_4da

    .line 11738
    .end local v10    # "M":I
    .end local v11    # "N":I
    .end local v13    # "i":I
    .end local v24    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v31    # "sufficientIntent":Landroid/content/Intent;
    .end local v32    # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v34    # "verification":Landroid/content/Intent;
    .end local v35    # "verificationId":I
    .end local v36    # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .end local v37    # "verifierComponent":Landroid/content/ComponentName;
    :cond_506
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v12, v4, v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v27

    goto/16 :goto_475

    .line 11758
    .end local v15    # "needVerificationForPersona":Z
    .end local v25    # "requiredVerifiers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PackageManagerService$VerifierPackage;>;"
    .end local v26    # "requiresVerificationForPersona":Z
    .end local v33    # "userIdentifier":I
    :catch_515
    move-exception v23

    .line 11759
    .local v23, "rE":Landroid/os/RemoteException;
    invoke-virtual/range {v23 .. v23}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4d2
.end method

.method public isForwardLocked()Z
    .registers 2

    .prologue
    .line 11784
    iget v0, p0, installFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 11353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
