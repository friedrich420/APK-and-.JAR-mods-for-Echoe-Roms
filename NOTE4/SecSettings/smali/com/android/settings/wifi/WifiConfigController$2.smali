.class Lcom/android/settings/wifi/WifiConfigController$2;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiConfigController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConfigController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 0

    .prologue
    .line 2602
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 2664
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 2665
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 2661
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 12
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 2604
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2605
    .local v5, "password":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 2606
    .local v2, "length":I
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I
    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->access$300(Lcom/android/settings/wifi/WifiConfigController;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    .line 2607
    const-string v6, "[0-9A-Fa-f]*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 2608
    .local v1, "isPasswordHex":Z
    const/16 v6, 0xd

    if-le v2, v6, :cond_0

    const/16 v6, 0x1a

    if-ne v2, v6, :cond_4

    if-eqz v1, :cond_4

    :cond_0
    const/4 v3, 0x1

    .line 2609
    .local v3, "mPasswordValid":Z
    :goto_0
    if-eqz v3, :cond_1

    if-eqz v1, :cond_3

    .line 2610
    :cond_1
    const/16 v6, 0xd

    if-le v2, v6, :cond_6

    if-nez v1, :cond_6

    .line 2611
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    iget-object v6, v6, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v7, 0x0

    const/16 v8, 0xd

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2612
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->access$400(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/Toast;

    move-result-object v6

    if-nez v6, :cond_5

    .line 2613
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->access$200(Lcom/android/settings/wifi/WifiConfigController;)Lcom/android/settings/wifi/WifiConfigUiBase;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2614
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    const v7, 0x7f0a0477

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0xd

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    # setter for: Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;
    invoke-static {v6, v7}, Lcom/android/settings/wifi/WifiConfigController;->access$402(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 2617
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->access$400(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 2633
    .end local v0    # "context":Landroid/content/Context;
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    iget-object v6, v6, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    iget-object v7, v7, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 2657
    .end local v1    # "isPasswordHex":Z
    .end local v3    # "mPasswordValid":Z
    :cond_3
    :goto_2
    return-void

    .line 2608
    .restart local v1    # "isPasswordHex":Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 2618
    .restart local v3    # "mPasswordValid":Z
    :cond_5
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->access$400(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2619
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->access$400(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 2621
    :cond_6
    const/16 v6, 0x1a

    if-le v2, v6, :cond_2

    if-eqz v1, :cond_2

    .line 2622
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    iget-object v6, v6, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v7, 0x0

    const/16 v8, 0x1a

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2623
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->hpToast:Landroid/widget/Toast;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->access$500(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/Toast;

    move-result-object v6

    if-nez v6, :cond_7

    .line 2624
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->access$200(Lcom/android/settings/wifi/WifiConfigController;)Lcom/android/settings/wifi/WifiConfigUiBase;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2625
    .restart local v0    # "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    const v7, 0x7f0a0478

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/16 v10, 0x1a

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    # setter for: Lcom/android/settings/wifi/WifiConfigController;->hpToast:Landroid/widget/Toast;
    invoke-static {v6, v7}, Lcom/android/settings/wifi/WifiConfigController;->access$502(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 2628
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->hpToast:Landroid/widget/Toast;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->access$500(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 2629
    .end local v0    # "context":Landroid/content/Context;
    :cond_7
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->hpToast:Landroid/widget/Toast;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->access$500(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v6

    if-nez v6, :cond_2

    .line 2630
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->hpToast:Landroid/widget/Toast;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->access$500(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2637
    .end local v1    # "isPasswordHex":Z
    .end local v3    # "mPasswordValid":Z
    :cond_8
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I
    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->access$300(Lcom/android/settings/wifi/WifiConfigController;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_a

    .line 2638
    const/16 v4, 0xc8

    .line 2642
    .local v4, "maxPasswordLength":I
    :goto_3
    if-le v2, v4, :cond_3

    .line 2643
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    iget-object v6, v6, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2644
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->access$400(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/Toast;

    move-result-object v6

    if-nez v6, :cond_c

    .line 2645
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->access$200(Lcom/android/settings/wifi/WifiConfigController;)Lcom/android/settings/wifi/WifiConfigUiBase;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2646
    .restart local v0    # "context":Landroid/content/Context;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    const v8, 0x7f0a0477

    const/4 v6, 0x2

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I
    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->access$300(Lcom/android/settings/wifi/WifiConfigController;)I

    move-result v6

    const/4 v11, 0x2

    if-ne v6, v11, :cond_b

    const/16 v6, 0x8

    :goto_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v10

    const/4 v6, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    # setter for: Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;
    invoke-static {v7, v6}, Lcom/android/settings/wifi/WifiConfigController;->access$402(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 2650
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->access$400(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 2654
    .end local v0    # "context":Landroid/content/Context;
    :cond_9
    :goto_5
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    iget-object v6, v6, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    iget-object v7, v7, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_2

    .line 2640
    .end local v4    # "maxPasswordLength":I
    :cond_a
    const/16 v4, 0x40

    .restart local v4    # "maxPasswordLength":I
    goto :goto_3

    .line 2646
    .restart local v0    # "context":Landroid/content/Context;
    :cond_b
    const/4 v6, 0x1

    goto :goto_4

    .line 2651
    .end local v0    # "context":Landroid/content/Context;
    :cond_c
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->access$400(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v6

    if-nez v6, :cond_9

    .line 2652
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->pToast:Landroid/widget/Toast;
    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->access$400(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_5
.end method
