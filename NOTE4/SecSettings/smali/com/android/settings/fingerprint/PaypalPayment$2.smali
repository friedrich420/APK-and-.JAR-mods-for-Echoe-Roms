.class Lcom/android/settings/fingerprint/PaypalPayment$2;
.super Ljava/lang/Object;
.source "PaypalPayment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 213
    iput-object p1, p0, Lcom/android/settings/fingerprint/PaypalPayment$2;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment$2;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    # getter for: Lcom/android/settings/fingerprint/PaypalPayment;->mInstallButtonStatus:I
    invoke-static {v0}, Lcom/android/settings/fingerprint/PaypalPayment;->access$400(Lcom/android/settings/fingerprint/PaypalPayment;)I

    move-result v0

    if-nez v0, :cond_6

    .line 218
    const/4 v9, 0x0

    .line 219
    .local v9, "isDataUsingDialogDone":Z
    const-string v0, "IS_DATA_USING_DIALOG_SHOW"

    iget-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment$2;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    # getter for: Lcom/android/settings/fingerprint/PaypalPayment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/fingerprint/PaypalPayment;->access$500(Lcom/android/settings/fingerprint/PaypalPayment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/PaypalPayment;->getPref(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const/4 v9, 0x1

    .line 222
    :cond_0
    const-string v0, "PaypalPayment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDataUsingDialogDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v10, 0x0

    .line 225
    .local v10, "isRoamingUsingDialogDone":Z
    const-string v0, "IS_ROAMING_USING_DIALOG_SHOW"

    iget-object v1, p0, Lcom/android/settings/fingerprint/PaypalPayment$2;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    # getter for: Lcom/android/settings/fingerprint/PaypalPayment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/fingerprint/PaypalPayment;->access$500(Lcom/android/settings/fingerprint/PaypalPayment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/PaypalPayment;->getPref(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    const/4 v10, 0x1

    .line 228
    :cond_1
    const-string v0, "PaypalPayment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRoamingUsingDialogDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment$2;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    # getter for: Lcom/android/settings/fingerprint/PaypalPayment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/fingerprint/PaypalPayment;->access$500(Lcom/android/settings/fingerprint/PaypalPayment;)Landroid/content/Context;

    move-result-object v0

    # invokes: Lcom/android/settings/fingerprint/PaypalPayment;->isNetworkConnected(Landroid/content/Context;)Z
    invoke-static {v0}, Lcom/android/settings/fingerprint/PaypalPayment;->access$600(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment$2;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/PaypalPayment;->isWifiNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment$2;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/PaypalPayment;->isRoamingConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v10, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment$2;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/PaypalPayment;->isRoamingConnected()Z

    move-result v0

    if-nez v0, :cond_5

    if-nez v9, :cond_5

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment$2;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    # invokes: Lcom/android/settings/fingerprint/PaypalPayment;->showDataUsingDialog()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/PaypalPayment;->access$700(Lcom/android/settings/fingerprint/PaypalPayment;)V

    .line 254
    .end local v9    # "isDataUsingDialogDone":Z
    .end local v10    # "isRoamingUsingDialogDone":Z
    :cond_4
    :goto_0
    return-void

    .line 235
    .restart local v9    # "isDataUsingDialogDone":Z
    .restart local v10    # "isRoamingUsingDialogDone":Z
    :cond_5
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment$2;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    # invokes: Lcom/android/settings/fingerprint/PaypalPayment;->startDownloadService()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/PaypalPayment;->access$800(Lcom/android/settings/fingerprint/PaypalPayment;)V

    goto :goto_0

    .line 237
    .end local v9    # "isDataUsingDialogDone":Z
    .end local v10    # "isRoamingUsingDialogDone":Z
    :cond_6
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment$2;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    # getter for: Lcom/android/settings/fingerprint/PaypalPayment;->mInstallButtonStatus:I
    invoke-static {v0}, Lcom/android/settings/fingerprint/PaypalPayment;->access$400(Lcom/android/settings/fingerprint/PaypalPayment;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 239
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 240
    .local v8, "intent":Landroid/content/Intent;
    const-string v0, "com.paypal.android.p2pmobile"

    const-string v1, "com.paypal.android.lib.authenticator.mini.PaypalLinkDialogFragment"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment$2;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    # getter for: Lcom/android/settings/fingerprint/PaypalPayment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/fingerprint/PaypalPayment;->access$500(Lcom/android/settings/fingerprint/PaypalPayment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 244
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment$2;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    const-string v1, "com.samsung.android.fingerprint.service"

    const-string v2, "FPLP"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    # invokes: Lcom/android/settings/fingerprint/PaypalPayment;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    invoke-static/range {v0 .. v5}, Lcom/android/settings/fingerprint/PaypalPayment;->access$900(Lcom/android/settings/fingerprint/PaypalPayment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 245
    :catch_0
    move-exception v7

    .line 246
    .local v7, "ex":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 247
    .end local v7    # "ex":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v6

    .line 248
    .local v6, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 250
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment$2;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    # getter for: Lcom/android/settings/fingerprint/PaypalPayment;->mInstallButtonStatus:I
    invoke-static {v0}, Lcom/android/settings/fingerprint/PaypalPayment;->access$400(Lcom/android/settings/fingerprint/PaypalPayment;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 251
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment$2;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    # invokes: Lcom/android/settings/fingerprint/PaypalPayment;->showCancelProgress()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/PaypalPayment;->access$1000(Lcom/android/settings/fingerprint/PaypalPayment;)V

    .line 252
    iget-object v0, p0, Lcom/android/settings/fingerprint/PaypalPayment$2;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    # invokes: Lcom/android/settings/fingerprint/PaypalPayment;->stopDownloadService()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/PaypalPayment;->access$1100(Lcom/android/settings/fingerprint/PaypalPayment;)V

    goto :goto_0
.end method
