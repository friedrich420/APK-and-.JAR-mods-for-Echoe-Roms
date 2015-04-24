.class public Lcom/android/server/telecom/rcs/RcsCapaObserver;
.super Landroid/database/ContentObserver;
.source "RcsCapaObserver.java"


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mRcsServiceOwnObserver:Landroid/database/ContentObserver;

.field private mRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/server/telecom/rcs/RcsCapaObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 34
    const-string v0, "RcsShare"

    const-string v1, "RcsCapaObserver()::"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mRegistered:Z

    .line 42
    iput-object p2, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mContext:Landroid/content/Context;

    .line 43
    iput-object p3, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 44
    new-instance v0, Lcom/android/server/telecom/rcs/RcsCapaObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/rcs/RcsCapaObserver$1;-><init>(Lcom/android/server/telecom/rcs/RcsCapaObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mRcsServiceOwnObserver:Landroid/database/ContentObserver;

    .line 51
    return-void
.end method

.method public static updateUI()V
    .locals 2

    .prologue
    .line 91
    const-string v0, "RcsShare"

    const-string v1, "RcsCapaObserver::updateUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/TelecomApp;->processChangeInContent(I)V

    .line 93
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .prologue
    .line 80
    const-string v0, "RcsShare"

    const-string v1, "RcsCapaObserver::onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    if-nez p1, :cond_0

    .line 82
    const-string v0, "RcsShare"

    const-string v1, "RcsCapaObserver::calling update option menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    invoke-static {}, Lcom/android/server/telecom/rcs/RcsCapaObserver;->updateUI()V

    .line 85
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 86
    return-void
.end method

.method public final registerSelfAsObserver(Landroid/content/ContentResolver;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 65
    const-string v0, "RcsShare"

    const-string v1, "RcsCapaObserver::registerSelfAsObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-boolean v0, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mRegistered:Z

    if-nez v0, :cond_0

    .line 67
    iput-boolean v2, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mRegistered:Z

    .line 68
    iget-object v0, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/server/telecom/rcs/RcsUtils;->getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/server/telecom/rcs/RcsUtils;->generateTelUri(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 71
    sget-object v1, Lcom/android/services/telephony/common/RcsTransferConstants;->SIP_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 72
    invoke-virtual {p1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 73
    sget-object v0, Lcom/android/services/telephony/common/RcsTransferConstants;->SERVICE_OWN_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mRcsServiceOwnObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 76
    :cond_0
    return-void
.end method

.method public final unregisterSelfAsObseverAndCloseCursor()V
    .locals 2

    .prologue
    .line 54
    const-string v0, "RcsShare"

    const-string v1, "RcsCapaObserver::unregisterSelfAsObseverAndCloseCursor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-boolean v0, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mRegistered:Z

    .line 58
    iget-object v0, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 60
    iget-object v1, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver;->mRcsServiceOwnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 62
    :cond_0
    return-void
.end method
