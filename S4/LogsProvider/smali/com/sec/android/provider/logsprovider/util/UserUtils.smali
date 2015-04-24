.class public final Lcom/sec/android/provider/logsprovider/util/UserUtils;
.super Ljava/lang/Object;
.source "UserUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static final VERBOSE_LOGGING:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-class v0, Lcom/sec/android/provider/logsprovider/LogsProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/provider/logsprovider/util/UserUtils;->TAG:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/sec/android/provider/logsprovider/util/UserUtils;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/provider/logsprovider/util/UserUtils;->VERBOSE_LOGGING:Z

    return-void
.end method

.method public static getUserManager(Landroid/content/Context;)Landroid/os/UserManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    return-object v0
.end method
