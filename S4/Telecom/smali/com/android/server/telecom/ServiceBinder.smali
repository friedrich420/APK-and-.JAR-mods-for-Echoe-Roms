.class abstract Lcom/android/server/telecom/ServiceBinder;
.super Ljava/lang/Object;
.source "ServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/ServiceBinder$ServiceBinderConnection;,
        Lcom/android/server/telecom/ServiceBinder$Binder;,
        Lcom/android/server/telecom/ServiceBinder$Listener;,
        Lcom/android/server/telecom/ServiceBinder$BindCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ServiceInterface::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAssociatedCallCount:I

.field private mBinder:Landroid/os/IBinder;

.field private final mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/telecom/ServiceBinder$BindCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private mIsBindingAborted:Z

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/telecom/ServiceBinder$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceAction:Ljava/lang/String;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/telecom/ServiceBinder;->mCallbacks:Ljava/util/Set;

    .line 147
    iput v1, p0, Lcom/android/server/telecom/ServiceBinder;->mAssociatedCallCount:I

    .line 161
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x8

    const v4, 0x3f666666    # 0.9f

    invoke-direct {v2, v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v2}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/telecom/ServiceBinder;->mListeners:Ljava/util/Set;

    .line 172
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 173
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iput-object p3, p0, Lcom/android/server/telecom/ServiceBinder;->mContext:Landroid/content/Context;

    .line 176
    iput-object p1, p0, Lcom/android/server/telecom/ServiceBinder;->mServiceAction:Ljava/lang/String;

    .line 177
    iput-object p2, p0, Lcom/android/server/telecom/ServiceBinder;->mComponentName:Landroid/content/ComponentName;

    .line 178
    return-void

    :cond_1
    move v2, v1

    .line 172
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/telecom/ServiceBinder;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/ServiceBinder;->mIsBindingAborted:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/telecom/ServiceBinder;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/telecom/ServiceBinder;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/server/telecom/ServiceBinder;->mIsBindingAborted:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/telecom/ServiceBinder;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/telecom/ServiceBinder;->logServiceDisconnected(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/telecom/ServiceBinder;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/telecom/ServiceBinder;->setBinder(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/telecom/ServiceBinder;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/ServiceBinder;->setBinder(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/telecom/ServiceBinder;)Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/telecom/ServiceBinder;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/server/telecom/ServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/telecom/ServiceBinder;)Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/telecom/ServiceBinder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mServiceAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/telecom/ServiceBinder;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/telecom/ServiceBinder;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/ServiceBinder$BindCallback;

    invoke-interface {v0}, Lcom/android/server/telecom/ServiceBinder$BindCallback;->onFailure()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/telecom/ServiceBinder;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/telecom/ServiceBinder;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/ServiceBinder$BindCallback;

    invoke-interface {v0}, Lcom/android/server/telecom/ServiceBinder$BindCallback;->onSuccess()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private logServiceDisconnected(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 254
    const-string v0, "Service unbound %s, from %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/telecom/ServiceBinder;->mComponentName:Landroid/content/ComponentName;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    return-void
.end method

.method private setBinder(Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mBinder:Landroid/os/IBinder;

    if-eq v0, p1, :cond_0

    .line 297
    iput-object p1, p0, Lcom/android/server/telecom/ServiceBinder;->mBinder:Landroid/os/IBinder;

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/server/telecom/ServiceBinder;->setServiceInterface(Landroid/os/IBinder;)V

    .line 301
    if-nez p1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/ServiceBinder$Listener;

    .line 303
    invoke-virtual {v0, p0}, Lcom/android/server/telecom/ServiceBinder$Listener;->onUnbind(Lcom/android/server/telecom/ServiceBinder;)V

    goto :goto_0

    .line 307
    :cond_0
    return-void
.end method


# virtual methods
.method final addListener(Lcom/android/server/telecom/ServiceBinder$Listener;)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    return-void
.end method

.method final decrementAssociatedCallCount()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 187
    iget v0, p0, Lcom/android/server/telecom/ServiceBinder;->mAssociatedCallCount:I

    if-lez v0, :cond_1

    .line 188
    iget v0, p0, Lcom/android/server/telecom/ServiceBinder;->mAssociatedCallCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/telecom/ServiceBinder;->mAssociatedCallCount:I

    .line 189
    const-string v0, "Call count decrement %d, %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/telecom/ServiceBinder;->mAssociatedCallCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/telecom/ServiceBinder;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    iget v0, p0, Lcom/android/server/telecom/ServiceBinder;->mAssociatedCallCount:I

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/server/telecom/ServiceBinder;->unbind()V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const-string v0, "%s: ignoring a request to decrement mAssociatedCallCount below zero"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/telecom/ServiceBinder;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method final incrementAssociatedCallCount()V
    .locals 4

    .prologue
    .line 181
    iget v0, p0, Lcom/android/server/telecom/ServiceBinder;->mAssociatedCallCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/telecom/ServiceBinder;->mAssociatedCallCount:I

    .line 182
    const-string v0, "Call count increment %d, %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/telecom/ServiceBinder;->mAssociatedCallCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/telecom/ServiceBinder;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method final isServiceValid(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 227
    iget-object v2, p0, Lcom/android/server/telecom/ServiceBinder;->mBinder:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 228
    const-string v2, "%s invoked while service is unbound"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {p0, v2, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected abstract setServiceInterface(Landroid/os/IBinder;)V
.end method

.method protected unbind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    .line 211
    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/telecom/ServiceBinder;->mIsBindingAborted:Z

    .line 220
    :goto_0
    return-void

    .line 215
    :cond_0
    const-string v0, "unbind"

    invoke-direct {p0, v0}, Lcom/android/server/telecom/ServiceBinder;->logServiceDisconnected(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/telecom/ServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 217
    iput-object v2, p0, Lcom/android/server/telecom/ServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 218
    invoke-direct {p0, v2}, Lcom/android/server/telecom/ServiceBinder;->setBinder(Landroid/os/IBinder;)V

    goto :goto_0
.end method
