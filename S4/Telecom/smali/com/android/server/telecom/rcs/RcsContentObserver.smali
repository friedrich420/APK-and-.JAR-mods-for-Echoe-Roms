.class public final Lcom/android/server/telecom/rcs/RcsContentObserver;
.super Landroid/database/ContentObserver;
.source "RcsContentObserver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 31
    const-string v0, "RcsShare"

    const-string v1, "RcsContentObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/rcs/RcsContentObserver;->mRegistered:Z

    .line 33
    iput-object p2, p0, Lcom/android/server/telecom/rcs/RcsContentObserver;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .prologue
    .line 56
    const-string v0, "RcsShare"

    const-string v1, "RcsContentObserver::onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    if-nez p1, :cond_0

    .line 58
    const-string v0, "RcsShare"

    const-string v1, "calling update on buttons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    const-string v0, "RcsShare"

    const-string v1, "RcsContentObserver: calling update option menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/TelecomApp;->processChangeInContent(I)V

    .line 66
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 67
    return-void
.end method

.method public final registerSelfAsObserver(Landroid/content/ContentResolver;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 47
    const-string v0, "RcsShare"

    const-string v1, "RcsContentObserver::registerSelfAsObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-boolean v0, p0, Lcom/android/server/telecom/rcs/RcsContentObserver;->mRegistered:Z

    if-nez v0, :cond_0

    .line 49
    iput-boolean v2, p0, Lcom/android/server/telecom/rcs/RcsContentObserver;->mRegistered:Z

    .line 50
    sget-object v0, Lcom/android/services/telephony/common/RcsTransferConstants;->INCALL_SERVICE_PRVIDER_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 52
    :cond_0
    return-void
.end method

.method public final unregisterSelfAsObseverAndCloseCursor()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "RcsShare"

    const-string v1, "RcsContentObserver::unregisterSelfAsObseverAndCloseCursor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-boolean v0, p0, Lcom/android/server/telecom/rcs/RcsContentObserver;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/rcs/RcsContentObserver;->mRegistered:Z

    .line 41
    iget-object v0, p0, Lcom/android/server/telecom/rcs/RcsContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 44
    :cond_0
    return-void
.end method
