.class Lcom/android/settings/fingerprint/DownloadService$DownloadTask$1;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->onPostExecute(Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/DownloadService$DownloadTask;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/DownloadService$DownloadTask;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask$1;->this$1:Lcom/android/settings/fingerprint/DownloadService$DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask$1;->this$1:Lcom/android/settings/fingerprint/DownloadService$DownloadTask;

    iget-object v0, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    # invokes: Lcom/android/settings/fingerprint/DownloadService;->installApk()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/DownloadService;->access$400(Lcom/android/settings/fingerprint/DownloadService;)V

    .line 271
    return-void
.end method
