.class public Lcom/android/settings/fingerprint/ApplicationManager;
.super Ljava/lang/Object;
.source "ApplicationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/ApplicationManager$PackageInstallObserver;
    }
.end annotation


# instance fields
.field public final INSTALL_REPLACE_EXISTING:I

.field private handler:Landroid/os/Handler;

.field private method:Ljava/lang/reflect/Method;

.field private methodForExistingPackage:Ljava/lang/reflect/Method;

.field private observer:Lcom/android/settings/fingerprint/ApplicationManager$PackageInstallObserver;

.field private onInstalledPackaged:Lcom/android/settings/fingerprint/OnInstalledPackaged;

.field pkgname:Ljava/lang/String;

.field private pm:Landroid/content/pm/PackageManager;

.field returncode:I

.field private uninstallmethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v6, p0, Lcom/android/settings/fingerprint/ApplicationManager;->INSTALL_REPLACE_EXISTING:I

    .line 885
    new-instance v3, Lcom/android/settings/fingerprint/ApplicationManager$1;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/ApplicationManager$1;-><init>(Lcom/android/settings/fingerprint/ApplicationManager;)V

    iput-object v3, p0, Lcom/android/settings/fingerprint/ApplicationManager;->handler:Landroid/os/Handler;

    .line 922
    new-instance v3, Lcom/android/settings/fingerprint/ApplicationManager$PackageInstallObserver;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/ApplicationManager$PackageInstallObserver;-><init>(Lcom/android/settings/fingerprint/ApplicationManager;)V

    iput-object v3, p0, Lcom/android/settings/fingerprint/ApplicationManager;->observer:Lcom/android/settings/fingerprint/ApplicationManager$PackageInstallObserver;

    .line 930
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/ApplicationManager;->pm:Landroid/content/pm/PackageManager;

    .line 934
    const/4 v3, 0x4

    new-array v1, v3, [Ljava/lang/Class;

    const-class v3, Landroid/net/Uri;

    aput-object v3, v1, v4

    const-class v3, Landroid/content/pm/IPackageInstallObserver;

    aput-object v3, v1, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v6

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v7

    .line 942
    .local v1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v3, p0, Lcom/android/settings/fingerprint/ApplicationManager;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "installPackage"

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/ApplicationManager;->method:Ljava/lang/reflect/Method;

    .line 950
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/ApplicationManager;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "installExistingPackage"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/ApplicationManager;->methodForExistingPackage:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    :goto_0
    const/4 v3, 0x3

    :try_start_1
    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/pm/IPackageDeleteObserver;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 988
    .local v2, "uninstalltypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v3, p0, Lcom/android/settings/fingerprint/ApplicationManager;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "deletePackage"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/ApplicationManager;->uninstallmethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1008
    .end local v2    # "uninstalltypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_1
    return-void

    .line 960
    :catch_0
    move-exception v0

    .line 964
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    iput-object v8, p0, Lcom/android/settings/fingerprint/ApplicationManager;->methodForExistingPackage:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 992
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 1000
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    iput-object v8, p0, Lcom/android/settings/fingerprint/ApplicationManager;->uninstallmethod:Ljava/lang/reflect/Method;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/ApplicationManager;)Lcom/android/settings/fingerprint/OnInstalledPackaged;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/ApplicationManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/fingerprint/ApplicationManager;->onInstalledPackaged:Lcom/android/settings/fingerprint/OnInstalledPackaged;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/ApplicationManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/ApplicationManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/fingerprint/ApplicationManager;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public installPackage(Landroid/net/Uri;)V
    .locals 6
    .param p1, "apkFile"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 1081
    iget-object v0, p0, Lcom/android/settings/fingerprint/ApplicationManager;->method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/android/settings/fingerprint/ApplicationManager;->pm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/fingerprint/ApplicationManager;->observer:Lcom/android/settings/fingerprint/ApplicationManager$PackageInstallObserver;

    aput-object v4, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    return-void
.end method

.method public installPackage(Ljava/io/File;)V
    .locals 2
    .param p1, "apkFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 1047
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1055
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1063
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1067
    .local v0, "packageURI":Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/ApplicationManager;->installPackage(Landroid/net/Uri;)V

    .line 1071
    return-void
.end method

.method public installPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 1033
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/ApplicationManager;->installPackage(Ljava/io/File;)V

    .line 1037
    return-void
.end method

.method public setOnInstalledPackaged(Lcom/android/settings/fingerprint/OnInstalledPackaged;)V
    .locals 0
    .param p1, "onInstalledPackaged"    # Lcom/android/settings/fingerprint/OnInstalledPackaged;

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/android/settings/fingerprint/ApplicationManager;->onInstalledPackaged:Lcom/android/settings/fingerprint/OnInstalledPackaged;

    .line 1020
    return-void
.end method
