.class abstract Lcom/android/server/pm/PackageManagerService$InstallArgs;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "InstallArgs"
.end annotation


# instance fields
.field final abiOverride:Ljava/lang/String;

.field final installFlags:I

.field final installerPackageName:Ljava/lang/String;

.field final installerSourcePackageName:Ljava/lang/String;

.field instructionSets:[Ljava/lang/String;

.field final manifestDigest:Landroid/content/pm/ManifestDigest;

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p2, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p3, "installFlags"    # I
    .param p4, "installerPackageName"    # Ljava/lang/String;
    .param p5, "manifestDigest"    # Landroid/content/pm/ManifestDigest;
    .param p6, "user"    # Landroid/os/UserHandle;
    .param p7, "instructionSets"    # [Ljava/lang/String;
    .param p8, "abiOverride"    # Ljava/lang/String;

    .prologue
    .line 11934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11935
    iput-object p1, p0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 11936
    iput p3, p0, installFlags:I

    .line 11937
    iput-object p2, p0, observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 11938
    iput-object p4, p0, installerPackageName:Ljava/lang/String;

    .line 11939
    const/4 v0, 0x0

    iput-object v0, p0, installerSourcePackageName:Ljava/lang/String;

    .line 11940
    iput-object p5, p0, manifestDigest:Landroid/content/pm/ManifestDigest;

    .line 11941
    iput-object p6, p0, user:Landroid/os/UserHandle;

    .line 11942
    iput-object p7, p0, instructionSets:[Ljava/lang/String;

    .line 11943
    iput-object p8, p0, abiOverride:Ljava/lang/String;

    .line 11944
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/ManifestDigest;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "origin"    # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p2, "observer"    # Landroid/content/pm/IPackageInstallObserver2;
    .param p3, "installFlags"    # I
    .param p4, "installerPackageName"    # Ljava/lang/String;
    .param p5, "installerSourcePackageName"    # Ljava/lang/String;
    .param p6, "manifestDigest"    # Landroid/content/pm/ManifestDigest;
    .param p7, "user"    # Landroid/os/UserHandle;
    .param p8, "instructionSets"    # [Ljava/lang/String;
    .param p9, "abiOverride"    # Ljava/lang/String;

    .prologue
    .line 11951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11952
    iput-object p1, p0, origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 11953
    iput p3, p0, installFlags:I

    .line 11954
    iput-object p2, p0, observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 11955
    iput-object p4, p0, installerPackageName:Ljava/lang/String;

    .line 11956
    iput-object p5, p0, installerSourcePackageName:Ljava/lang/String;

    .line 11957
    iput-object p6, p0, manifestDigest:Landroid/content/pm/ManifestDigest;

    .line 11958
    iput-object p7, p0, user:Landroid/os/UserHandle;

    .line 11959
    iput-object p8, p0, instructionSets:[Ljava/lang/String;

    .line 11960
    iput-object p9, p0, abiOverride:Ljava/lang/String;

    .line 11961
    return-void
.end method


# virtual methods
.method abstract checkFreeStorage(Lcom/android/internal/app/IMediaContainerService;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method abstract cleanUpResourcesLI()V
.end method

.method abstract copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method doPostCopy(I)I
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 12002
    const/4 v0, 0x1

    return v0
.end method

.method abstract doPostDeleteLI(Z)Z
.end method

.method abstract doPostInstall(II)I
.end method

.method doPreCopy()I
    .registers 2

    .prologue
    .line 11991
    const/4 v0, 0x1

    return v0
.end method

.method abstract doPreInstall(I)I
.end method

.method abstract doRename(ILandroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
.end method

.method abstract getCodePath()Ljava/lang/String;
.end method

.method abstract getLegacyNativeLibraryPath()Ljava/lang/String;
.end method

.method abstract getResourcePath()Ljava/lang/String;
.end method

.method getUser()Landroid/os/UserHandle;
    .registers 2

    .prologue
    .line 12014
    iget-object v0, p0, user:Landroid/os/UserHandle;

    return-object v0
.end method

.method protected isExternal()Z
    .registers 2

    .prologue
    .line 12010
    iget v0, p0, installFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected isFwdLocked()Z
    .registers 2

    .prologue
    .line 12006
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
