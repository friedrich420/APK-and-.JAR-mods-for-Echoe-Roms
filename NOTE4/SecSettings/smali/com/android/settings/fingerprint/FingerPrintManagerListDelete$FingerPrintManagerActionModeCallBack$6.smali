.class Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$6;
.super Ljava/lang/Object;
.source "FingerPrintManagerListDelete.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->createPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;)V
    .locals 0

    .prologue
    .line 839
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$6;->this$1:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 843
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x2

    .local v0, "mSelectionstatus":I
    move-object v1, p2

    .line 845
    check-cast v1, Landroid/widget/TextView;

    .line 846
    .local v1, "menuText":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 847
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$6;->this$1:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    iget-object v3, v3, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    const v4, 0x7f0a0c7a

    invoke-virtual {v3, v4}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 848
    const/4 v0, 0x0

    .line 853
    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 868
    :goto_1
    return-void

    .line 849
    :cond_1
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$6;->this$1:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    iget-object v3, v3, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    const v4, 0x7f0a002c

    invoke-virtual {v3, v4}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 850
    const/4 v0, 0x1

    goto :goto_0

    .line 855
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$6;->this$1:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    iget-object v3, v3, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    const/4 v4, 0x1

    # invokes: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->ToggleAllCheck(Z)V
    invoke-static {v3, v4}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1200(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Z)V

    .line 856
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$6;->this$1:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    iget-object v3, v3, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1300(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_1

    .line 860
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$6;->this$1:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    iget-object v3, v3, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    const/4 v4, 0x0

    # invokes: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->ToggleAllCheck(Z)V
    invoke-static {v3, v4}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1200(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;Z)V

    .line 861
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$6;->this$1:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    iget-object v3, v3, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1300(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_1

    .line 853
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
