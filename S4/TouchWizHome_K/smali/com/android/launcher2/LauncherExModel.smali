.class public Lcom/android/launcher2/LauncherExModel;
.super Lcom/android/launcher2/LauncherModel;
.source "LauncherExModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherExModel$LoaderTask;
    }
.end annotation


# static fields
.field public static final ACTION_FESTIVAL_HOMESETTING_CHANGED:Ljava/lang/String; = "com.sec.festival.FESTIVAL_HOME_CHANGED"

.field public static final ACTION_FESTIVAL_SETTING_CHANGED:Ljava/lang/String; = "com.sec.festival.FESTIVAL_SETTINGS_CHANGED"

.field public static final ACTION_PICKUP_FESTIVAL_DAY:Ljava/lang/String; = "com.bst.action.PICKUP_FESTIVAL"

.field public static final ACTION_PICKUP_FESTIVAL_DAY_OFF:Ljava/lang/String; = "com.bst.action.PICKUP_COMMON"

.field private static final FESTIVAL_EFFECT_ENABLED:Ljava/lang/String; = "festival_effect_enabled"

.field private static final FESTIVAL_EFFECT_HOME_ENABLED:Ljava/lang/String; = "festival_effect_festival_home"

.field public static final INTENT_SECRET_MODE_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

.field public static final INTENT_SECRET_MODE_ON:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_ON"

.field public static final INTENT_UPDATING_APPWDGET_COMPLETED:Ljava/lang/String; = "com.samsung.android.intent.action.UPDATING_APPWIDGET_COMPLETED"

.field private static final TAG:Ljava/lang/String; = "LauncherExModel"


# instance fields
.field private mIsCurrentFestivalMode:Z

.field private mIsCurrentSecretMode:Z

.field private mIsLoaderTaskRunning:Z

.field private volatile mLoaderTask:Lcom/android/launcher2/LauncherExModel$LoaderTask;

.field private volatile mRefreshRequiredInSecretModeChange:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;)V
    .locals 1
    .param p1, "app"    # Lcom/android/launcher2/LauncherApplication;
    .param p2, "pkgResCache"    # Lcom/android/launcher2/PkgResCache;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/LauncherModel;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;)V

    .line 40
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentSecretMode:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentFestivalMode:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherExModel;->mRefreshRequiredInSecretModeChange:Z

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/LauncherExModel;)Lcom/android/launcher2/LauncherExModel$LoaderTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherExModel;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel;->mLoaderTask:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/launcher2/LauncherExModel;Lcom/android/launcher2/LauncherExModel$LoaderTask;)Lcom/android/launcher2/LauncherExModel$LoaderTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/LauncherExModel;
    .param p1, "x1"    # Lcom/android/launcher2/LauncherExModel$LoaderTask;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/launcher2/LauncherExModel;->mLoaderTask:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/launcher2/LauncherExModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/LauncherExModel;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentFestivalMode:Z

    return p1
.end method

.method static synthetic access$1200(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/android/launcher2/LauncherExModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/LauncherExModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherExModel;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherExModel;->mIsLoaderTaskRunning:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/launcher2/LauncherExModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/LauncherExModel;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherExModel;->mIsLoaderTaskRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/launcher2/LauncherExModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherExModel;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherExModel;->mRefreshRequiredInSecretModeChange:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/launcher2/LauncherExModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/LauncherExModel;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherExModel;->mRefreshRequiredInSecretModeChange:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/LauncherExModel;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 210
    sget-object v0, Lcom/android/launcher2/LauncherExModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private static runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 218
    sget-object v0, Lcom/android/launcher2/LauncherExModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 219
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    sget-object v0, Lcom/android/launcher2/LauncherExModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private startLoader(ZZZ)V
    .locals 6
    .param p1, "isSecret"    # Z
    .param p2, "isModeChanged"    # Z
    .param p3, "isFestivalLoader"    # Z

    .prologue
    .line 160
    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/LauncherExModel;->startLoader(ZZZZZ)V

    .line 161
    return-void
.end method

.method private startLoader(ZZZZZ)V
    .locals 7
    .param p1, "isLaunching"    # Z
    .param p2, "forceRefresh"    # Z
    .param p3, "isSecret"    # Z
    .param p4, "isModeChanged"    # Z
    .param p5, "isFestivalLoader"    # Z

    .prologue
    .line 166
    const-string v0, "LauncherExModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLoader. isLaunching: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; forceRefresh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Secret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; isModeChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; FestivalLoader:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v6, p0, Lcom/android/launcher2/LauncherExModel;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 169
    if-eqz p2, :cond_0

    .line 170
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherExModel;->stopLoaderLocked()Z

    move-result v0

    or-int/2addr p1, v0

    .line 175
    new-instance v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;

    move-object v1, p0

    move v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/LauncherExModel$LoaderTask;-><init>(Lcom/android/launcher2/LauncherExModel;ZZZZ)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherExModel;->mLoaderTask:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    .line 176
    if-eqz p4, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherExModel;->mAllAppsLoaded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherExModel;->mWorkspaceLoaded:Z

    if-eqz v0, :cond_2

    .line 177
    sget-object v0, Lcom/android/launcher2/LauncherExModel;->sWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher2/LauncherExModel$1;

    invoke-direct {v1, p0, p5}, Lcom/android/launcher2/LauncherExModel$1;-><init>(Lcom/android/launcher2/LauncherExModel;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
    :cond_1
    :goto_0
    monitor-exit v6

    .line 191
    return-void

    .line 186
    :cond_2
    sget-object v0, Lcom/android/launcher2/LauncherExModel;->sWorkerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 187
    sget-object v0, Lcom/android/launcher2/LauncherExModel;->sWorker:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel;->mLoaderTask:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public dumpState()V
    .locals 4

    .prologue
    .line 1574
    const-string v1, "LauncherExModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCallbacks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    const-string v1, "LauncherExModel"

    const-string v2, "mMainAppCache.added"

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppLoader;->added:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppItem;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1576
    const-string v1, "LauncherExModel"

    const-string v2, "mMainAppCache.removed"

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppLoader;->removed:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppItem;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1577
    const-string v1, "LauncherExModel"

    const-string v2, "mMainAppCache.modified"

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppLoader;->modified:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/AppItem;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1580
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel;->mLoaderTask:Lcom/android/launcher2/LauncherExModel$LoaderTask;

    .line 1581
    .local v0, "loader":Lcom/android/launcher2/LauncherExModel$LoaderTask;
    if-eqz v0, :cond_0

    .line 1582
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->dumpState()V

    .line 1586
    :goto_0
    return-void

    .line 1584
    :cond_0
    const-string v1, "LauncherExModel"

    const-string v2, "mLoaderTask=null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 64
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 67
    const/4 v6, 0x0

    .line 68
    .local v6, "isSecretPackageChange":Z
    if-eqz v6, :cond_1

    .line 152
    .end local v6    # "isSecretPackageChange":Z
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/LauncherModel;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 72
    const-string v7, "com.samsung.android.intent.action.PRIVATE_MODE_ON"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 81
    :cond_2
    :goto_1
    const-string v7, "com.samsung.android.intent.action.UPDATING_APPWIDGET_COMPLETED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 82
    const/4 v5, 0x0

    .line 83
    .local v5, "isSecretOn":Z
    if-eqz v5, :cond_3

    iget-boolean v7, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentSecretMode:Z

    if-nez v7, :cond_3

    .line 84
    invoke-direct {p0, v8, v8, v9}, Lcom/android/launcher2/LauncherExModel;->startLoader(ZZZ)V

    .line 85
    iget-boolean v7, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentSecretMode:Z

    if-nez v7, :cond_b

    move v7, v8

    :goto_2
    iput-boolean v7, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentSecretMode:Z

    .line 101
    .end local v5    # "isSecretOn":Z
    :cond_3
    const-string v7, "com.bst.action.PICKUP_COMMON"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 102
    iget-boolean v7, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentFestivalMode:Z

    if-eqz v7, :cond_4

    .line 103
    invoke-direct {p0, v9, v8, v8}, Lcom/android/launcher2/LauncherExModel;->startLoader(ZZZ)V

    .line 104
    iput-boolean v9, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentFestivalMode:Z

    .line 105
    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v7, v12}, Lcom/android/launcher2/FestivalPageManager;->setFestivalString(Lcom/android/launcher2/LauncherApplication;Ljava/lang/String;)V

    .line 109
    :cond_4
    const-string v7, "com.bst.action.PICKUP_FESTIVAL"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 110
    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "festival_effect_enabled"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_c

    move v3, v8

    .line 111
    .local v3, "isFestivalEnabled":Z
    :goto_3
    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "festival_effect_festival_home"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_d

    move v4, v8

    .line 112
    .local v4, "isFestivalHomeEnabled":Z
    :goto_4
    const-string v7, "festivalString"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "currentFestivalString":Ljava/lang/String;
    const-string v7, "LauncherExModel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive: currentFestivalString : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mWorkspaceLoaded : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/launcher2/LauncherExModel;->mWorkspaceLoaded:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    iget-boolean v7, p0, Lcom/android/launcher2/LauncherExModel;->mWorkspaceLoaded:Z

    if-eqz v7, :cond_0

    .line 119
    iget-boolean v7, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentFestivalMode:Z

    if-eqz v7, :cond_5

    .line 120
    invoke-static {v1}, Lcom/android/launcher2/FestivalPageManager;->checkPrevFestivalStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 122
    invoke-direct {p0, v9, v8, v8}, Lcom/android/launcher2/LauncherExModel;->startLoader(ZZZ)V

    .line 123
    iput-boolean v9, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentFestivalMode:Z

    .line 124
    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v7, v12}, Lcom/android/launcher2/FestivalPageManager;->setFestivalString(Lcom/android/launcher2/LauncherApplication;Ljava/lang/String;)V

    .line 127
    :cond_5
    iget-boolean v7, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentFestivalMode:Z

    if-nez v7, :cond_6

    .line 128
    invoke-direct {p0, v8, v8, v8}, Lcom/android/launcher2/LauncherExModel;->startLoader(ZZZ)V

    .line 129
    iput-boolean v8, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentFestivalMode:Z

    .line 130
    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    const-string v10, "festivalString"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/launcher2/FestivalPageManager;->setFestivalString(Lcom/android/launcher2/LauncherApplication;Ljava/lang/String;)V

    .line 134
    .end local v1    # "currentFestivalString":Ljava/lang/String;
    .end local v3    # "isFestivalEnabled":Z
    .end local v4    # "isFestivalHomeEnabled":Z
    :cond_6
    const-string v7, "com.sec.festival.FESTIVAL_SETTINGS_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "com.sec.festival.FESTIVAL_HOME_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 135
    :cond_7
    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "festival_effect_enabled"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_e

    move v3, v8

    .line 136
    .restart local v3    # "isFestivalEnabled":Z
    :goto_5
    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "festival_effect_festival_home"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_f

    move v4, v8

    .line 138
    .restart local v4    # "isFestivalHomeEnabled":Z
    :goto_6
    if-eqz v3, :cond_8

    if-nez v4, :cond_10

    :cond_8
    iget-boolean v7, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentFestivalMode:Z

    if-eqz v7, :cond_10

    .line 139
    invoke-direct {p0, v9, v8, v8}, Lcom/android/launcher2/LauncherExModel;->startLoader(ZZZ)V

    .line 140
    iput-boolean v9, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentFestivalMode:Z

    .line 141
    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v7, v12}, Lcom/android/launcher2/FestivalPageManager;->setFestivalString(Lcom/android/launcher2/LauncherApplication;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 74
    .end local v3    # "isFestivalEnabled":Z
    .end local v4    # "isFestivalHomeEnabled":Z
    :cond_9
    const-string v7, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 75
    iget-boolean v7, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentSecretMode:Z

    if-eqz v7, :cond_2

    .line 76
    invoke-direct {p0, v9, v8, v9}, Lcom/android/launcher2/LauncherExModel;->startLoader(ZZZ)V

    .line 77
    iget-boolean v7, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentSecretMode:Z

    if-nez v7, :cond_a

    move v7, v8

    :goto_7
    iput-boolean v7, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentSecretMode:Z

    goto/16 :goto_1

    :cond_a
    move v7, v9

    goto :goto_7

    .restart local v5    # "isSecretOn":Z
    :cond_b
    move v7, v9

    .line 85
    goto/16 :goto_2

    .end local v5    # "isSecretOn":Z
    :cond_c
    move v3, v9

    .line 110
    goto/16 :goto_3

    .restart local v3    # "isFestivalEnabled":Z
    :cond_d
    move v4, v9

    .line 111
    goto/16 :goto_4

    .end local v3    # "isFestivalEnabled":Z
    :cond_e
    move v3, v9

    .line 135
    goto :goto_5

    .restart local v3    # "isFestivalEnabled":Z
    :cond_f
    move v4, v9

    .line 136
    goto :goto_6

    .line 142
    .restart local v4    # "isFestivalHomeEnabled":Z
    :cond_10
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    iget-boolean v7, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentFestivalMode:Z

    if-nez v7, :cond_0

    .line 143
    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "FestivalList"

    invoke-static {v7, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "festivalString":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 145
    invoke-direct {p0, v8, v8, v8}, Lcom/android/launcher2/LauncherExModel;->startLoader(ZZZ)V

    .line 146
    iput-boolean v8, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentFestivalMode:Z

    .line 147
    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v7, v2}, Lcom/android/launcher2/FestivalPageManager;->setFestivalString(Lcom/android/launcher2/LauncherApplication;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startLoader(Z)V
    .locals 6
    .param p1, "isSecret"    # Z

    .prologue
    const/4 v2, 0x0

    .line 156
    const/4 v1, 0x1

    move-object v0, p0

    move v3, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/LauncherExModel;->startLoader(ZZZZZ)V

    .line 157
    return-void
.end method

.method public startLoaderFromBackground(Z)V
    .locals 7
    .param p1, "forceRefresh"    # Z

    .prologue
    const/4 v1, 0x0

    .line 196
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v6, 0x0

    .line 197
    .local v6, "cb":Lcom/android/launcher2/LauncherModel$Callbacks;
    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Lcom/android/launcher2/LauncherModel$Callbacks;->setLoadOnResume()Z

    move-result v0

    if-nez v0, :cond_1

    .line 198
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherExModel;->mIsCurrentSecretMode:Z

    move-object v0, p0

    move v2, p1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/LauncherExModel;->startLoader(ZZZZZ)V

    .line 207
    :goto_1
    return-void

    .line 196
    .end local v6    # "cb":Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v6, v0

    goto :goto_0

    .line 200
    .restart local v6    # "cb":Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherExModel;->stopLoaderLocked()Z

    .line 202
    if-eqz p1, :cond_2

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    .line 205
    :cond_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateHomeDataBase(Z)V
    .locals 14
    .param p1, "isPlus"    # Z

    .prologue
    .line 1589
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v9

    if-nez v9, :cond_0

    .line 1625
    :goto_0
    return-void

    .line 1592
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1595
    .local v6, "needUpdateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    sget-object v9, Lcom/android/launcher2/LauncherExModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1596
    .local v2, "id":J
    sget-object v9, Lcom/android/launcher2/LauncherExModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    .line 1597
    .local v0, "hi":Lcom/android/launcher2/HomeItem;
    iget-wide v10, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v12, -0x65

    cmp-long v9, v10, v12

    if-eqz v9, :cond_1

    .line 1598
    iget-wide v10, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-gtz v9, :cond_1

    .line 1600
    iget-boolean v9, v0, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    if-nez v9, :cond_1

    .line 1601
    if-eqz p1, :cond_2

    .line 1602
    iget v9, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 1603
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1605
    :cond_2
    iget v9, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 1606
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1612
    .end local v0    # "hi":Lcom/android/launcher2/HomeItem;
    .end local v2    # "id":J
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1613
    .local v7, "newPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherSettings$FavoritePos;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/HomeItem;

    .line 1614
    .local v4, "item":Lcom/android/launcher2/HomeItem;
    new-instance v5, Lcom/android/launcher2/LauncherSettings$FavoritePos;

    invoke-direct {v5}, Lcom/android/launcher2/LauncherSettings$FavoritePos;-><init>()V

    .line 1615
    .local v5, "itemPos":Lcom/android/launcher2/LauncherSettings$FavoritePos;
    iget-wide v10, v4, Lcom/android/launcher2/HomeItem;->mId:J

    iput-wide v10, v5, Lcom/android/launcher2/LauncherSettings$FavoritePos;->id:J

    .line 1616
    iget v9, v4, Lcom/android/launcher2/HomeItem;->mScreen:I

    iput v9, v5, Lcom/android/launcher2/LauncherSettings$FavoritePos;->screen:I

    .line 1617
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1620
    .end local v4    # "item":Lcom/android/launcher2/HomeItem;
    .end local v5    # "itemPos":Lcom/android/launcher2/LauncherSettings$FavoritePos;
    :cond_4
    new-instance v8, Lcom/android/launcher2/LauncherExModel$2;

    invoke-direct {v8, p0, v7}, Lcom/android/launcher2/LauncherExModel$2;-><init>(Lcom/android/launcher2/LauncherExModel;Ljava/util/ArrayList;)V

    .line 1624
    .local v8, "r":Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/launcher2/LauncherExModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
