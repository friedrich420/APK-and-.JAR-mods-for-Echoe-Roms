.class Lcom/android/settings/fingerprint/PaypalPayment$5;
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
    .line 283
    iput-object p1, p0, Lcom/android/settings/fingerprint/PaypalPayment$5;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 287
    iget-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment$5;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    const-string v3, "com.sec.android.app.samsungapps"

    # invokes: Lcom/android/settings/fingerprint/PaypalPayment;->isPackageInstalled(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/android/settings/fingerprint/PaypalPayment;->access$1300(Lcom/android/settings/fingerprint/PaypalPayment;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 289
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "samsungapps://ProductDetail/"

    .line 290
    .local v1, "string_of_uri":Ljava/lang/String;
    const v2, 0x14000020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f100312

    if-ne v2, v3, :cond_2

    .line 293
    const-string v2, "PaypalPayment"

    const-string v3, "checkbox_mfac_title"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment$5;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    const-string v3, "com.noknok.android.framework.service"

    # invokes: Lcom/android/settings/fingerprint/PaypalPayment;->isPackageInstalled(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/android/settings/fingerprint/PaypalPayment;->access$1300(Lcom/android/settings/fingerprint/PaypalPayment;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.noknok.android.framework.service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 297
    iget-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment$5;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    invoke-virtual {v2, v0}, Lcom/android/settings/fingerprint/PaypalPayment;->startActivity(Landroid/content/Intent;)V

    .line 315
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "string_of_uri":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 299
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "string_of_uri":Ljava/lang/String;
    :cond_1
    const-string v2, "PaypalPayment"

    const-string v3, "mChkBoxMfac.performClick()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment$5;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    # getter for: Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxMfac:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/settings/fingerprint/PaypalPayment;->access$1400(Lcom/android/settings/fingerprint/PaypalPayment;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->performClick()Z

    goto :goto_0

    .line 303
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f10031c

    if-ne v2, v3, :cond_0

    .line 304
    const-string v2, "PaypalPayment"

    const-string v3, "checkbox_paypal_title"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment$5;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    const-string v3, "com.paypal.android.p2pmobile"

    # invokes: Lcom/android/settings/fingerprint/PaypalPayment;->isPackageInstalled(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/android/settings/fingerprint/PaypalPayment;->access$1300(Lcom/android/settings/fingerprint/PaypalPayment;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "com.paypal.android.p2pmobile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 308
    iget-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment$5;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    invoke-virtual {v2, v0}, Lcom/android/settings/fingerprint/PaypalPayment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 310
    :cond_3
    const-string v2, "PaypalPayment"

    const-string v3, "mChkBoxPaypal.performClick()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v2, p0, Lcom/android/settings/fingerprint/PaypalPayment$5;->this$0:Lcom/android/settings/fingerprint/PaypalPayment;

    # getter for: Lcom/android/settings/fingerprint/PaypalPayment;->mChkBoxPaypal:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/settings/fingerprint/PaypalPayment;->access$1500(Lcom/android/settings/fingerprint/PaypalPayment;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->performClick()Z

    goto :goto_0
.end method
