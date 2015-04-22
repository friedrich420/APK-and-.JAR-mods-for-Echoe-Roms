.class Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsecInstallArgs"
.end annotation


# static fields
.field static final PUBLIC_RES_FILE_NAME:Ljava/lang/String; = "res.zip"

.field static final RES_FILE_NAME:Ljava/lang/String; = "pkg.apk"


# instance fields
.field cid:Ljava/lang/String;

.field legacyNativeLibraryDir:Ljava/lang/String;

.field mPkg:Landroid/content/pm/PackageParser$Package;

.field packagePath:Ljava/lang/String;

.field resourcePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .registers 13
    .param p2, "params"    # Lcom/android/server/pm/PackageManagerService$InstallParams;

    .prologue
    .line 12377
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    .line 12384
    iget-object v1, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iget v3, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v4, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerSourcePackageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getManifestDigest()Landroid/content/pm/ManifestDigest;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p2, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;)V

    .line 12388
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 15
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "instructionSets"    # [Ljava/lang/String;
    .param p4, "isForwardLocked"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 12414
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    .line 12420
    invoke-static {}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromNothing()Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-result-object v1

    # invokes: Lcom/android/server/pm/PackageManagerService;->isAsecExternal(Ljava/lang/String;)Z
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerService;->access$4200(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v3, 0x8

    :goto_10
    if-eqz p4, :cond_13

    const/4 v0, 0x1

    :cond_13
    or-int/2addr v3, v0

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, p3

    move-object v9, v2

    invoke-direct/range {v0 .. v9}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;)V

    .line 12423
    iput-object p2, p0, cid:Ljava/lang/String;

    .line 12424
    invoke-static {p2}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, setMountPath(Ljava/lang/String;)V

    .line 12425
    return-void

    :cond_28
    move v3, v0

    .line 12420
    goto :goto_10
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;[Ljava/lang/String;ZLandroid/content/pm/PackageParser$Package;)V
    .registers 6
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "instructionSets"    # [Ljava/lang/String;
    .param p4, "isForwardLocked"    # Z
    .param p5, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 12428
    invoke-direct {p0, p1, p2, p3, p4}, <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 12429
    iput-object p5, p0, mPkg:Landroid/content/pm/PackageParser$Package;

    .line 12430
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;[Ljava/lang/String;ZZ)V
    .registers 19
    .param p2, "fullCodePath"    # Ljava/lang/String;
    .param p3, "instructionSets"    # [Ljava/lang/String;
    .param p4, "isExternal"    # Z
    .param p5, "isForwardLocked"    # Z

    .prologue
    .line 12392
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    .line 12398
    invoke-static {}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromNothing()Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p4, :cond_4d

    const/16 v0, 0x8

    move v3, v0

    :goto_c
    if-eqz p5, :cond_50

    const/4 v0, 0x1

    :goto_f
    or-int/2addr v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object/from16 v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;)V

    .line 12402
    const-string/jumbo v0, "pkg.apk"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 12403
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "pkg.apk"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .line 12407
    :cond_30
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 12408
    .local v10, "eidx":I
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 12409
    .local v12, "subStr1":Ljava/lang/String;
    const-string v0, "/"

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 12410
    .local v11, "sidx":I
    add-int/lit8 v0, v11, 0x1

    invoke-virtual {v12, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, cid:Ljava/lang/String;

    .line 12411
    invoke-direct {p0, v12}, setMountPath(Ljava/lang/String;)V

    .line 12412
    return-void

    .line 12398
    .end local v10    # "eidx":I
    .end local v11    # "sidx":I
    .end local v12    # "subStr1":Ljava/lang/String;
    :cond_4d
    const/4 v0, 0x0

    move v3, v0

    goto :goto_c

    :cond_50
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private cleanUp()V
    .registers 2

    .prologue
    .line 12633
    iget-object v0, p0, cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 12634
    return-void
.end method

.method private cleanUpResourcesLI(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12660
    .local p1, "allCodePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, cleanUp()V

    .line 12662
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_61

    .line 12663
    iget-object v8, p0, instructionSets:[Ljava/lang/String;

    if-nez v8, :cond_15

    .line 12664
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "instructionSet == null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 12666
    :cond_15
    iget-object v8, p0, instructionSets:[Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 12667
    .local v3, "dexCodeInstructionSets":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_61

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 12668
    .local v1, "codePath":Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2e
    if-ge v5, v6, :cond_1f

    aget-object v2, v0, v5

    .line 12669
    .local v2, "dexCodeInstructionSet":Ljava/lang/String;
    iget-object v8, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v8, v1, v2}, Lcom/android/server/pm/Installer;->rmdex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 12670
    .local v7, "retCode":I
    if-gez v7, :cond_5e

    .line 12671
    const-string v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t remove dex file for package:  at location "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", retcode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12668
    :cond_5e
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 12678
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "codePath":Ljava/lang/String;
    .end local v2    # "dexCodeInstructionSet":Ljava/lang/String;
    .end local v3    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "retCode":I
    :cond_61
    return-void
.end method

.method private getAllCodePaths()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12637
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, getCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12638
    .local v0, "codeFile":Ljava/io/File;
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 12640
    :try_start_11
    iget-object v2, p0, mPkg:Landroid/content/pm/PackageParser$Package;

    if-nez v2, :cond_1f

    .line 12641
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    .line 12642
    .local v1, "pkg":Landroid/content/pm/PackageParser$PackageLite;
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$PackageLite;->getAllCodePaths()Ljava/util/List;

    move-result-object v2

    .line 12651
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$PackageLite;
    :goto_1e
    return-object v2

    .line 12644
    :cond_1f
    const-string v2, "PackageManager"

    const-string/jumbo v3, "pkg object is null, parsing apk for getting all code paths"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12645
    iget-object v2, p0, mPkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v2}, Landroid/content/pm/PackageParser$Package;->getAllCodePaths()Ljava/util/List;
    :try_end_2c
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_11 .. :try_end_2c} :catch_2e

    move-result-object v2

    goto :goto_1e

    .line 12647
    :catch_2e
    move-exception v2

    .line 12651
    :cond_2f
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1e
.end method

.method private setMountPath(Ljava/lang/String;)V
    .registers 6
    .param p1, "mountPath"    # Ljava/lang/String;

    .prologue
    .line 12582
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12584
    .local v1, "mountFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "pkg.apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12585
    .local v0, "monolithicFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 12586
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, packagePath:Ljava/lang/String;

    .line 12587
    invoke-virtual {p0}, isFwdLocked()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 12588
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "res.zip"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, resourcePath:Ljava/lang/String;

    .line 12597
    :goto_2d
    new-instance v2, Ljava/io/File;

    const-string v3, "lib"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, legacyNativeLibraryDir:Ljava/lang/String;

    .line 12598
    return-void

    .line 12590
    :cond_3b
    iget-object v2, p0, packagePath:Ljava/lang/String;

    iput-object v2, p0, resourcePath:Ljava/lang/String;

    goto :goto_2d

    .line 12593
    :cond_40
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, packagePath:Ljava/lang/String;

    .line 12594
    iget-object v2, p0, packagePath:Ljava/lang/String;

    iput-object v2, p0, resourcePath:Ljava/lang/String;

    goto :goto_2d
.end method


# virtual methods
.method checkFreeStorage(Lcom/android/internal/app/IMediaContainerService;)Z
    .registers 10
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 12437
    iget-object v5, p0, packagePath:Ljava/lang/String;

    invoke-virtual {p0}, isFwdLocked()Z

    move-result v6

    iget-object v7, p0, abiOverride:Ljava/lang/String;

    invoke-interface {p1, v5, v6, v7}, Lcom/android/internal/app/IMediaContainerService;->calculateInstalledSize(Ljava/lang/String;ZLjava/lang/String;)J

    move-result-wide v0

    .line 12441
    .local v0, "sizeBytes":J
    invoke-virtual {p0}, isExternal()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 12442
    new-instance v5, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v5, v4}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    invoke-virtual {v5}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 12447
    .local v3, "target":Ljava/io/File;
    :goto_1c
    iget-object v5, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v2

    .line 12448
    .local v2, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getStorageBytesUntilLow(Ljava/io/File;)J

    move-result-wide v6

    cmp-long v5, v0, v6

    if-gtz v5, :cond_2d

    const/4 v4, 0x1

    :cond_2d
    return v4

    .line 12444
    .end local v2    # "storage":Landroid/os/storage/StorageManager;
    .end local v3    # "target":Ljava/io/File;
    :cond_2e
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    .restart local v3    # "target":Ljava/io/File;
    goto :goto_1c
.end method

.method cleanUpResourcesLI()V
    .registers 2

    .prologue
    .line 12656
    invoke-direct {p0}, getAllCodePaths()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, cleanUpResourcesLI(Ljava/util/List;)V

    .line 12657
    return-void
.end method

.method copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .registers 12
    .param p1, "imcs"    # Lcom/android/internal/app/IMediaContainerService;
    .param p2, "temp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 12452
    iget-object v0, p0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-eqz v0, :cond_34

    .line 12453
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already staged; skipping copy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12454
    iget-object v0, p0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->cid:Ljava/lang/String;

    iput-object v0, p0, cid:Ljava/lang/String;

    .line 12455
    iget-object v0, p0, cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, setMountPath(Ljava/lang/String;)V

    move v0, v8

    .line 12478
    :goto_33
    return v0

    .line 12459
    :cond_34
    const-string v0, "PackageManager"

    const-string v1, "copyApk"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12460
    if-eqz p2, :cond_69

    .line 12461
    invoke-virtual {p0}, createCopyFile()V

    .line 12470
    :goto_40
    iget-object v0, p0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, cid:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, isExternal()Z

    move-result v4

    invoke-virtual {p0}, isFwdLocked()Z

    move-result v5

    iget-object v0, p0, abiOverride:Ljava/lang/String;

    const/4 v6, 0x0

    # invokes: Lcom/android/server/pm/PackageManagerService;->deriveAbiOverride(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/android/server/pm/PackageManagerService;->access$4300(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IMediaContainerService;->copyPackageToContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 12474
    .local v7, "newMountPath":Ljava/lang/String;
    if-eqz v7, :cond_6f

    .line 12475
    invoke-direct {p0, v7}, setMountPath(Ljava/lang/String;)V

    move v0, v8

    .line 12476
    goto :goto_33

    .line 12467
    .end local v7    # "newMountPath":Ljava/lang/String;
    :cond_69
    iget-object v0, p0, cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    goto :goto_40

    .line 12478
    .restart local v7    # "newMountPath":Ljava/lang/String;
    :cond_6f
    const/16 v0, -0x12

    goto :goto_33
.end method

.method createCopyFile()V
    .registers 2

    .prologue
    .line 12433
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerService;->allocateExternalStageCidLegacy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, cid:Ljava/lang/String;

    .line 12434
    return-void
.end method

.method doPostCopy(I)I
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 12721
    invoke-virtual {p0}, isFwdLocked()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 12722
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_19

    iget-object v0, p0, cid:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v1

    const-string/jumbo v2, "pkg.apk"

    invoke-static {v0, v1, v2}, Lcom/android/internal/content/PackageHelper;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 12725
    :cond_19
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to finalize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, cid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12726
    iget-object v0, p0, cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 12727
    const/16 v0, -0x12

    .line 12731
    :goto_3a
    return v0

    :cond_3b
    const/4 v0, 0x1

    goto :goto_3a
.end method

.method doPostDeleteLI(Z)Z
    .registers 5
    .param p1, "delete"    # Z

    .prologue
    .line 12693
    invoke-direct {p0}, getAllCodePaths()Ljava/util/List;

    move-result-object v0

    .line 12694
    .local v0, "allCodePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v1

    .line 12695
    .local v1, "mounted":Z
    if-eqz v1, :cond_15

    .line 12697
    iget-object v2, p0, cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 12698
    const/4 v1, 0x0

    .line 12701
    :cond_15
    if-nez v1, :cond_1c

    if-eqz p1, :cond_1c

    .line 12702
    invoke-direct {p0, v0}, cleanUpResourcesLI(Ljava/util/List;)V

    .line 12704
    :cond_1c
    if-nez v1, :cond_20

    const/4 v2, 0x1

    :goto_1f
    return v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method doPostInstall(II)I
    .registers 9
    .param p1, "status"    # I
    .param p2, "uid"    # I

    .prologue
    .line 12601
    const/4 v3, 0x1

    if-eq p1, v3, :cond_7

    .line 12602
    invoke-direct {p0}, cleanUp()V

    .line 12626
    .end local p1    # "status":I
    :cond_6
    :goto_6
    return p1

    .line 12606
    .restart local p1    # "status":I
    :cond_7
    invoke-virtual {p0}, isFwdLocked()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 12607
    invoke-static {p2}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v0

    .line 12608
    .local v0, "groupOwner":I
    const-string/jumbo v2, "pkg.apk"

    .line 12614
    .local v2, "protectedFile":Ljava/lang/String;
    :goto_14
    const/16 v3, 0x2710

    if-lt p2, v3, :cond_20

    iget-object v3, p0, cid:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/android/internal/content/PackageHelper;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 12616
    :cond_20
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to finalize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, cid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12617
    iget-object v3, p0, cid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 12618
    const/16 p1, -0x12

    goto :goto_6

    .line 12610
    .end local v0    # "groupOwner":I
    .end local v2    # "protectedFile":Ljava/lang/String;
    :cond_42
    const/4 v0, -0x1

    .line 12611
    .restart local v0    # "groupOwner":I
    const/4 v2, 0x0

    .restart local v2    # "protectedFile":Ljava/lang/String;
    goto :goto_14

    .line 12621
    :cond_45
    iget-object v3, p0, cid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v1

    .line 12622
    .local v1, "mounted":Z
    if-nez v1, :cond_6

    .line 12623
    iget-object v3, p0, cid:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    goto :goto_6
.end method

.method doPreCopy()I
    .registers 5

    .prologue
    .line 12709
    invoke-virtual {p0}, isFwdLocked()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 12710
    iget-object v0, p0, cid:Ljava/lang/String;

    iget-object v1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    const-string v2, "com.android.defcontainer"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "pkg.apk"

    invoke-static {v0, v1, v2}, Lcom/android/internal/content/PackageHelper;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 12712
    const/16 v0, -0x12

    .line 12716
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x1

    goto :goto_1c
.end method

.method doPreInstall(I)I
    .registers 7
    .param p1, "status"    # I

    .prologue
    .line 12498
    const/4 v2, 0x1

    if-eq p1, v2, :cond_9

    .line 12500
    iget-object v2, p0, cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    .line 12513
    .end local p1    # "status":I
    :cond_8
    :goto_8
    return p1

    .line 12502
    .restart local p1    # "status":I
    :cond_9
    iget-object v2, p0, cid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v0

    .line 12503
    .local v0, "mounted":Z
    if-nez v0, :cond_8

    .line 12504
    iget-object v2, p0, cid:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 12506
    .local v1, "newMountPath":Ljava/lang/String;
    if-eqz v1, :cond_23

    .line 12507
    invoke-direct {p0, v1}, setMountPath(Ljava/lang/String;)V

    goto :goto_8

    .line 12509
    :cond_23
    const/16 p1, -0x12

    goto :goto_8
.end method

.method doRename(ILandroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .registers 12
    .param p1, "status"    # I
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "oldCodePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 12517
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v6, "/pkg.apk"

    # invokes: Lcom/android/server/pm/PackageManagerService;->getNextCodePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p3, v5, v6}, Lcom/android/server/pm/PackageManagerService;->access$4400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12518
    .local v2, "newCacheId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 12519
    .local v3, "newMountPath":Ljava/lang/String;
    iget-object v5, p0, cid:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 12521
    iget-object v5, p0, cid:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/content/PackageHelper;->unMountSdDir(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 12522
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to unmount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, cid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " before renaming"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12578
    :goto_3a
    return v4

    .line 12526
    :cond_3b
    iget-object v5, p0, cid:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/android/internal/content/PackageHelper;->renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e5

    .line 12527
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to rename "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, cid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " which might be stale. Will try to clean up."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12530
    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->destroySdDir(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8c

    .line 12531
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Very strange. Cannot clean up stale container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 12535
    :cond_8c
    iget-object v5, p0, cid:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/android/internal/content/PackageHelper;->renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c0

    .line 12536
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to rename "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, cid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " inspite of cleaning it up."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    .line 12540
    :cond_c0
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "renamed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, cid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12543
    :cond_e5
    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->isContainerMounted(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_129

    .line 12544
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mounting container "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12545
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->getEncryptKey()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x3e8

    invoke-static {v2, v5, v6}, Lcom/android/internal/content/PackageHelper;->mountSdDir(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 12550
    :goto_10d
    if-nez v3, :cond_12e

    .line 12551
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get cache path for  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    .line 12548
    :cond_129
    invoke-static {v2}, Lcom/android/internal/content/PackageHelper;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_10d

    .line 12554
    :cond_12e
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Succesfully renamed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, cid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at new path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12557
    iput-object v2, p0, cid:Ljava/lang/String;

    .line 12559
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, packagePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12560
    .local v1, "beforeCodeFile":Ljava/io/File;
    invoke-direct {p0, v3}, setMountPath(Ljava/lang/String;)V

    .line 12561
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, packagePath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12564
    .local v0, "afterCodeFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    .line 12565
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-static {v1, v0, v4}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 12567
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1, v0, v4}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .line 12571
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->setCodePath(Ljava/lang/String;)V

    .line 12572
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->setBaseCodePath(Ljava/lang/String;)V

    .line 12573
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->setSplitCodePaths([Ljava/lang/String;)V

    .line 12574
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->setResourcePath(Ljava/lang/String;)V

    .line 12575
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->setBaseResourcePath(Ljava/lang/String;)V

    .line 12576
    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->setSplitResourcePaths([Ljava/lang/String;)V

    .line 12578
    const/4 v4, 0x1

    goto/16 :goto_3a
.end method

.method getCodePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12484
    iget-object v0, p0, packagePath:Ljava/lang/String;

    return-object v0
.end method

.method getLegacyNativeLibraryPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12494
    iget-object v0, p0, legacyNativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12688
    iget-object v0, p0, cid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->getAsecPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getResourcePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12489
    iget-object v0, p0, resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method matchContainer(Ljava/lang/String;)Z
    .registers 3
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 12681
    iget-object v0, p0, cid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 12682
    const/4 v0, 0x1

    .line 12684
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
