.class Lcom/android/settings/fingerprint/DownloadService$1;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Lcom/android/settings/fingerprint/OnInstalledPackaged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/DownloadService;->installApk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/DownloadService;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/DownloadService;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/settings/fingerprint/DownloadService$1;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    iput-object p2, p0, Lcom/android/settings/fingerprint/DownloadService$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "returncode"    # I

    .prologue
    const/4 v3, 0x1

    .line 199
    const-string v0, "DownloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "returnCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    if-eq p2, v3, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/settings/fingerprint/DownloadService$1;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    const/16 v1, 0x8

    # invokes: Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V
    invoke-static {v0, v1, v3}, Lcom/android/settings/fingerprint/DownloadService;->access$100(Lcom/android/settings/fingerprint/DownloadService;IZ)V

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/DownloadService$1;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings/fingerprint/DownloadService;->startNextDownload(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/DownloadService;->access$200(Lcom/android/settings/fingerprint/DownloadService;Z)V

    .line 207
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/DownloadService$1;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 204
    iget-object v0, p0, Lcom/android/settings/fingerprint/DownloadService$1;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    const/16 v1, 0x9

    # invokes: Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V
    invoke-static {v0, v1, v3}, Lcom/android/settings/fingerprint/DownloadService;->access$100(Lcom/android/settings/fingerprint/DownloadService;IZ)V

    goto :goto_0
.end method
