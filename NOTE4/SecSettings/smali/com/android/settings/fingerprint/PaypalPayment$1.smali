.class Lcom/android/settings/fingerprint/PaypalPayment$1;
.super Landroid/content/BroadcastReceiver;
.source "PaypalPayment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/PaypalPayment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/PaypalPayment;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/PaypalPayment;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/settings/fingerprint/PaypalPayment$1;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 167
    iget-object v3, p0, Lcom/android/settings/fingerprint/PaypalPayment$1;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/PaypalPayment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "action":Ljava/lang/String;
    const-string v3, "update_download_information"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 172
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/settings/fingerprint/PaypalPayment$1;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    # getter for: Lcom/android/settings/fingerprint/PaypalPayment;->mDBHelper:Lcom/android/settings/fingerprint/DownloadDBOpenHelper;
    invoke-static {v3}, Lcom/android/settings/fingerprint/PaypalPayment;->access$000(Lcom/android/settings/fingerprint/PaypalPayment;)Lcom/android/settings/fingerprint/DownloadDBOpenHelper;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/fingerprint/DownloadDBOpenHelper;->select(Ljava/lang/String;)Lcom/android/settings/fingerprint/DownloadInfo;

    move-result-object v2

    .line 173
    .local v2, "info":Lcom/android/settings/fingerprint/DownloadInfo;
    iget-object v3, p0, Lcom/android/settings/fingerprint/PaypalPayment$1;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    # invokes: Lcom/android/settings/fingerprint/PaypalPayment;->updateProgressUi(Lcom/android/settings/fingerprint/DownloadInfo;)V
    invoke-static {v3, v2}, Lcom/android/settings/fingerprint/PaypalPayment;->access$100(Lcom/android/settings/fingerprint/PaypalPayment;Lcom/android/settings/fingerprint/DownloadInfo;)V

    goto :goto_0

    .line 174
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "info":Lcom/android/settings/fingerprint/DownloadInfo;
    :cond_2
    const-string v3, "all_download_completed"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 175
    iget-object v3, p0, Lcom/android/settings/fingerprint/PaypalPayment$1;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    # invokes: Lcom/android/settings/fingerprint/PaypalPayment;->handleDownloadResult()V
    invoke-static {v3}, Lcom/android/settings/fingerprint/PaypalPayment;->access$200(Lcom/android/settings/fingerprint/PaypalPayment;)V

    goto :goto_0

    .line 176
    :cond_3
    const-string v3, "all_download_cancelled"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    iget-object v3, p0, Lcom/android/settings/fingerprint/PaypalPayment$1;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    # invokes: Lcom/android/settings/fingerprint/PaypalPayment;->dismissCancelProgress()V
    invoke-static {v3}, Lcom/android/settings/fingerprint/PaypalPayment;->access$300(Lcom/android/settings/fingerprint/PaypalPayment;)V

    .line 180
    iget-object v3, p0, Lcom/android/settings/fingerprint/PaypalPayment$1;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    # invokes: Lcom/android/settings/fingerprint/PaypalPayment;->handleDownloadResult()V
    invoke-static {v3}, Lcom/android/settings/fingerprint/PaypalPayment;->access$200(Lcom/android/settings/fingerprint/PaypalPayment;)V

    goto :goto_0
.end method
