.class public final Lcom/android/server/telecom/secutils/SecActionMemoManager;
.super Ljava/lang/Object;
.source "SecActionMemoManager.java"


# static fields
.field private static mInstance:Lcom/android/server/telecom/secutils/SecActionMemoManager;


# instance fields
.field private mActionMemoFilePathReceiver:Landroid/content/BroadcastReceiver;

.field private mPathMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mInstance:Lcom/android/server/telecom/secutils/SecActionMemoManager;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/telecom/TelecomApp;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/server/telecom/secutils/SecActionMemoManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/SecActionMemoManager$1;-><init>(Lcom/android/server/telecom/secutils/SecActionMemoManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mActionMemoFilePathReceiver:Landroid/content/BroadcastReceiver;

    .line 26
    const-string v0, "SecActionMemoManager"

    const-string v1, "create()"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mPathMap:Ljava/util/Map;

    .line 29
    const-string v0, "SecActionMemoManager"

    const-string v1, "init()"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTIONMEMOFILEPATHFORLOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mActionMemoFilePathReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Lcom/android/server/telecom/TelecomApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/secutils/SecActionMemoManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/secutils/SecActionMemoManager;->setActionMemoFilepath(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/android/server/telecom/secutils/SecActionMemoManager;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mInstance:Lcom/android/server/telecom/secutils/SecActionMemoManager;

    return-object v0
.end method

.method public static init(Lcom/android/server/telecom/TelecomApp;)Lcom/android/server/telecom/secutils/SecActionMemoManager;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/android/server/telecom/secutils/SecActionMemoManager;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/SecActionMemoManager;-><init>(Lcom/android/server/telecom/TelecomApp;)V

    .line 34
    sput-object v0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mInstance:Lcom/android/server/telecom/secutils/SecActionMemoManager;

    return-object v0
.end method

.method private declared-synchronized setActionMemoFilepath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mPathMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mPathMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mPathMap:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mPathMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 70
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mPathMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mPathMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_1
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized getActionMemoFilepath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mPathMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mPathMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
