.class public final Lcom/android/server/telecom/ContactsAsyncHelper;
.super Ljava/lang/Object;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/ContactsAsyncHelper$WorkerHandler;,
        Lcom/android/server/telecom/ContactsAsyncHelper$WorkerArgs;,
        Lcom/android/server/telecom/ContactsAsyncHelper$OnImageLoadCompleteListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final sResultHandler:Landroid/os/Handler;

.field private static final sThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-class v0, Lcom/android/server/telecom/ContactsAsyncHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/ContactsAsyncHelper;->LOG_TAG:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/android/server/telecom/ContactsAsyncHelper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/telecom/ContactsAsyncHelper$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/telecom/ContactsAsyncHelper;->sResultHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContactsAsyncWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 88
    new-instance v1, Lcom/android/server/telecom/ContactsAsyncHelper$WorkerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/telecom/ContactsAsyncHelper$WorkerHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/telecom/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    .line 89
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/server/telecom/ContactsAsyncHelper;->sResultHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static final startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/server/telecom/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 217
    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    .line 221
    if-nez p2, :cond_0

    .line 222
    sget-object v0, Lcom/android/server/telecom/ContactsAsyncHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Uri is missing"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    :goto_0
    return-void

    .line 230
    :cond_0
    new-instance v0, Lcom/android/server/telecom/ContactsAsyncHelper$WorkerArgs;

    invoke-direct {v0, v5}, Lcom/android/server/telecom/ContactsAsyncHelper$WorkerArgs;-><init>(B)V

    .line 231
    iput-object p4, v0, Lcom/android/server/telecom/ContactsAsyncHelper$WorkerArgs;->cookie:Ljava/lang/Object;

    .line 232
    iput-object p1, v0, Lcom/android/server/telecom/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    .line 233
    iput-object p2, v0, Lcom/android/server/telecom/ContactsAsyncHelper$WorkerArgs;->displayPhotoUri:Landroid/net/Uri;

    .line 234
    iput-object p3, v0, Lcom/android/server/telecom/ContactsAsyncHelper$WorkerArgs;->listener:Lcom/android/server/telecom/ContactsAsyncHelper$OnImageLoadCompleteListener;

    .line 237
    sget-object v1, Lcom/android/server/telecom/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 238
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 239
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 241
    sget-object v2, Lcom/android/server/telecom/ContactsAsyncHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Begin loading image: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/telecom/ContactsAsyncHelper$WorkerArgs;->displayPhotoUri:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", displaying default image for now."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    sget-object v0, Lcom/android/server/telecom/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
