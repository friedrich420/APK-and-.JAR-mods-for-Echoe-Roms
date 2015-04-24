.class public Lcom/android/settings/fingerprint/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/DownloadService$DownloadTask;
    }
.end annotation


# static fields
.field private static final PD_TEST_PATH:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDBHelper:Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

.field private mDownloadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/fingerprint/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/android/settings/fingerprint/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadTask:Lcom/android/settings/fingerprint/DownloadService$DownloadTask;

.field private mInfo:Lcom/android/settings/fingerprint/DownloadInfo;

.field private mIsCancelling:Z

.field private mNotification:Lcom/android/settings/fingerprint/DownloadNotification;

.field private mSignature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/go_to_andromeda.test"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/DownloadService;->PD_TEST_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/DownloadService;->mIsCancelling:Z

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/fingerprint/DownloadService;->mSignature:Ljava/lang/String;

    .line 251
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/DownloadService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/DownloadService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/DownloadService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/DownloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/DownloadService;->startNextDownload(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/DownloadService;)Lcom/android/settings/fingerprint/DownloadInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/DownloadService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/fingerprint/DownloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/DownloadService;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/fingerprint/DownloadService;->installApk()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/fingerprint/DownloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/DownloadService;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/fingerprint/DownloadService;->cancelDownload()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings/fingerprint/DownloadService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/DownloadService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings/fingerprint/DownloadService;->mSignature:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/fingerprint/DownloadService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/DownloadService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/fingerprint/DownloadService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/settings/fingerprint/DownloadService;->PD_TEST_PATH:Ljava/lang/String;

    return-object v0
.end method

.method private cancelDownload()V
    .locals 5

    .prologue
    .line 142
    const-string v3, "DownloadService"

    const-string v4, "cancelDownload"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v3, p0, Lcom/android/settings/fingerprint/DownloadService;->mNotification:Lcom/android/settings/fingerprint/DownloadNotification;

    if-eqz v3, :cond_0

    .line 144
    iget-object v3, p0, Lcom/android/settings/fingerprint/DownloadService;->mNotification:Lcom/android/settings/fingerprint/DownloadNotification;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/DownloadNotification;->cancelAll()V

    .line 147
    :cond_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/DownloadService;->mDownloadList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fingerprint/DownloadInfo;

    .line 148
    .local v1, "info":Lcom/android/settings/fingerprint/DownloadInfo;
    invoke-virtual {v1}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 153
    :cond_1
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Lcom/android/settings/fingerprint/DownloadInfo;->setStatus(I)V

    .line 154
    iget-object v3, p0, Lcom/android/settings/fingerprint/DownloadService;->mDBHelper:Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

    invoke-virtual {v3, v1}, Lcom/android/settings/fingerprint/DownloadDBOpenHelper;->updateStatus(Lcom/android/settings/fingerprint/DownloadInfo;)V

    .line 156
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "all_download_cancelled"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/fingerprint/DownloadService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 159
    .end local v1    # "info":Lcom/android/settings/fingerprint/DownloadInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method private checkApkSignature(Ljava/lang/String;)Z
    .locals 3
    .param p1, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, "result":Z
    new-instance v0, Lcom/android/settings/fingerprint/SigChecker;

    iget-object v2, p0, Lcom/android/settings/fingerprint/DownloadService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/settings/fingerprint/SigChecker;-><init>(Landroid/content/Context;)V

    .line 243
    .local v0, "c":Lcom/android/settings/fingerprint/SigChecker;
    iget-object v2, p0, Lcom/android/settings/fingerprint/DownloadService;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/android/settings/fingerprint/SigChecker;->validate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    const/4 v1, 0x1

    .line 248
    :cond_0
    return v1
.end method

.method private installApk()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 183
    const-string v3, "DownloadService"

    const-string v4, "installApk()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/DownloadInfo;->getDestination()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 188
    invoke-direct {p0, v6, v5}, Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V

    .line 238
    :goto_0
    return-void

    .line 192
    :cond_0
    const/4 v3, 0x7

    invoke-direct {p0, v3, v5}, Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V

    .line 195
    :try_start_0
    new-instance v2, Lcom/android/settings/fingerprint/ApplicationManager;

    iget-object v3, p0, Lcom/android/settings/fingerprint/DownloadService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settings/fingerprint/ApplicationManager;-><init>(Landroid/content/Context;)V

    .line 196
    .local v2, "mgr":Lcom/android/settings/fingerprint/ApplicationManager;
    new-instance v3, Lcom/android/settings/fingerprint/DownloadService$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/fingerprint/DownloadService$1;-><init>(Lcom/android/settings/fingerprint/DownloadService;Ljava/io/File;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/fingerprint/ApplicationManager;->setOnInstalledPackaged(Lcom/android/settings/fingerprint/OnInstalledPackaged;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    .line 211
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/DownloadInfo;->getDestination()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/DownloadService;->checkApkSignature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 213
    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 220
    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 231
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "mgr":Lcom/android/settings/fingerprint/ApplicationManager;
    :catch_1
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 233
    invoke-direct {p0, v6, v5}, Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V

    goto :goto_0

    .line 217
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v2    # "mgr":Lcom/android/settings/fingerprint/ApplicationManager;
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/DownloadInfo;->getDestination()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/fingerprint/ApplicationManager;->installPackage(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 221
    :catch_2
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 223
    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 234
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "mgr":Lcom/android/settings/fingerprint/ApplicationManager;
    :catch_3
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 236
    invoke-direct {p0, v6, v5}, Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V

    goto :goto_0

    .line 224
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v2    # "mgr":Lcom/android/settings/fingerprint/ApplicationManager;
    :catch_4
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 226
    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V

    goto :goto_0

    .line 227
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v0

    .line 228
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 229
    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0
.end method

.method private startNextDownload(Z)V
    .locals 3
    .param p1, "first"    # Z

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/settings/fingerprint/DownloadService;->mDownloadQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 122
    iget-object v1, p0, Lcom/android/settings/fingerprint/DownloadService;->mDownloadQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fingerprint/DownloadInfo;

    iput-object v1, p0, Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;

    .line 123
    iget-object v1, p0, Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/android/settings/fingerprint/DownloadService;->mNotification:Lcom/android/settings/fingerprint/DownloadNotification;

    iget-object v2, p0, Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/DownloadNotification;->updateNotification(Lcom/android/settings/fingerprint/DownloadInfo;)V

    .line 126
    if-eqz p1, :cond_0

    .line 127
    const/16 v1, 0x4cb5

    iget-object v2, p0, Lcom/android/settings/fingerprint/DownloadService;->mNotification:Lcom/android/settings/fingerprint/DownloadNotification;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/DownloadNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/DownloadService;->startForeground(ILandroid/app/Notification;)V

    .line 131
    :cond_0
    new-instance v1, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;-><init>(Lcom/android/settings/fingerprint/DownloadService;Lcom/android/settings/fingerprint/DownloadService$1;)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/DownloadService;->mDownloadTask:Lcom/android/settings/fingerprint/DownloadService$DownloadTask;

    .line 132
    iget-object v1, p0, Lcom/android/settings/fingerprint/DownloadService;->mDownloadTask:Lcom/android/settings/fingerprint/DownloadService$DownloadTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 139
    :cond_1
    :goto_0
    return-void

    .line 135
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "all_download_completed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/fingerprint/DownloadService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 137
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/DownloadService;->stopForeground(Z)V

    goto :goto_0
.end method

.method private updateStatusAndProgress(IZ)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "updateNotification"    # Z

    .prologue
    .line 162
    const-string v1, "DownloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStatusAndProgress - status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/DownloadService;->mIsCancelling:Z

    if-nez v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;

    invoke-virtual {v1, p1}, Lcom/android/settings/fingerprint/DownloadInfo;->setStatus(I)V

    .line 166
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/android/settings/fingerprint/DownloadService;->mDBHelper:Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

    iget-object v2, p0, Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/DownloadDBOpenHelper;->update(Lcom/android/settings/fingerprint/DownloadInfo;)V

    .line 173
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "update_download_information"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "_id"

    iget-object v2, p0, Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/DownloadInfo;->getID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    iget-object v1, p0, Lcom/android/settings/fingerprint/DownloadService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 176
    if-eqz p2, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/settings/fingerprint/DownloadService;->mNotification:Lcom/android/settings/fingerprint/DownloadNotification;

    iget-object v2, p0, Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/DownloadNotification;->updateNotification(Lcom/android/settings/fingerprint/DownloadInfo;)V

    .line 180
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 168
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 169
    iget-object v1, p0, Lcom/android/settings/fingerprint/DownloadService;->mDBHelper:Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

    iget-object v2, p0, Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/DownloadDBOpenHelper;->updateCurrentBytes(Lcom/android/settings/fingerprint/DownloadInfo;)V

    goto :goto_0

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/DownloadService;->mDBHelper:Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

    iget-object v2, p0, Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/DownloadDBOpenHelper;->updateStatus(Lcom/android/settings/fingerprint/DownloadInfo;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 76
    const-string v0, "DownloadService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/DownloadService;->mContext:Landroid/content/Context;

    .line 78
    new-instance v0, Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/DownloadDBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/DownloadService;->mDBHelper:Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

    .line 79
    new-instance v0, Lcom/android/settings/fingerprint/DownloadNotification;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/DownloadNotification;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/DownloadService;->mNotification:Lcom/android/settings/fingerprint/DownloadNotification;

    .line 80
    iget-object v0, p0, Lcom/android/settings/fingerprint/DownloadService;->mNotification:Lcom/android/settings/fingerprint/DownloadNotification;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/DownloadNotification;->cancelAll()V

    .line 81
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 85
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 86
    const-string v0, "DownloadService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/android/settings/fingerprint/DownloadService;->mDownloadTask:Lcom/android/settings/fingerprint/DownloadService$DownloadTask;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/fingerprint/DownloadService;->mDownloadTask:Lcom/android/settings/fingerprint/DownloadService$DownloadTask;

    invoke-virtual {v0, v2}, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->cancel(Z)Z

    .line 90
    iput-boolean v2, p0, Lcom/android/settings/fingerprint/DownloadService;->mIsCancelling:Z

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/DownloadService;->mDBHelper:Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/android/settings/fingerprint/DownloadService;->mDBHelper:Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/DownloadDBOpenHelper;->close()V

    .line 96
    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 100
    const/4 v2, 0x0

    .line 101
    .local v2, "returnValue":I
    const-string v3, "DownloadService"

    const-string v4, "onStartCommand"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    if-eqz p1, :cond_0

    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    .line 105
    :cond_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/DownloadService;->mDBHelper:Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/DownloadDBOpenHelper;->selectAll()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/DownloadService;->mDownloadList:Ljava/util/ArrayList;

    .line 106
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/fingerprint/DownloadService;->mDownloadQueue:Ljava/util/Queue;

    .line 107
    iget-object v3, p0, Lcom/android/settings/fingerprint/DownloadService;->mDownloadList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 108
    iget-object v3, p0, Lcom/android/settings/fingerprint/DownloadService;->mDownloadList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fingerprint/DownloadInfo;

    .line 109
    .local v1, "info":Lcom/android/settings/fingerprint/DownloadInfo;
    invoke-virtual {v1}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v3

    if-nez v3, :cond_1

    .line 110
    iget-object v3, p0, Lcom/android/settings/fingerprint/DownloadService;->mDownloadQueue:Ljava/util/Queue;

    invoke-interface {v3, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/android/settings/fingerprint/DownloadInfo;
    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/DownloadService;->startNextDownload(Z)V

    .line 117
    return v2
.end method
