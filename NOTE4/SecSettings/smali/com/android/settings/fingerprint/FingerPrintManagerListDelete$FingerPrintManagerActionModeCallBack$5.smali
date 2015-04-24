.class Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$5;
.super Ljava/lang/Object;
.source "FingerPrintManagerListDelete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
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
    .line 741
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$5;->this$1:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$5;->this$1:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1300(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$5;->this$1:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1300(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 750
    :goto_0
    return-void

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack$5;->this$1:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$1300(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method
