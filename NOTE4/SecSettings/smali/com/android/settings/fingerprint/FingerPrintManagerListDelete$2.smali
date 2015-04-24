.class Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$2;
.super Ljava/lang/Object;
.source "FingerPrintManagerListDelete.java"

# interfaces
.implements Landroid/widget/AdapterView$OnTwMultiSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$2;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnTwMultiSelectStart(II)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "startY"    # I

    .prologue
    .line 214
    const-string v0, "FingerPrintManagerListDelete"

    const-string v1, "OnTwMultiSelectStart"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method public OnTwMultiSelectStop(II)V
    .locals 2
    .param p1, "endX"    # I
    .param p2, "endY"    # I

    .prologue
    .line 218
    const-string v0, "FingerPrintManagerListDelete"

    const-string v1, "OnTwMultiSelectStop"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_2

    .line 224
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$2;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->checkDeleteButtonstate()V

    .line 226
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$2;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$200(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$2;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerPrintManagerActionModeCallBack:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$200(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerPrintManagerActionModeCallBack;->updateSelectionMenu()V

    .line 228
    :cond_1
    return-void

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$2;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$100(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onTwMultiSelected(Landroid/widget/AdapterView;Landroid/view/View;IJZZZ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .param p6, "isShiftpress"    # Z
    .param p7, "isCtrlpress"    # Z
    .param p8, "isPentpress"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJZZZ)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, "FingerPrintManagerListDelete"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTwMultiSelected : position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$2;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;->access$100(Lcom/android/settings/fingerprint/FingerPrintManagerListDelete;)Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/settings/fingerprint/FingerPrintManagerListDelete$FingerListAdapter;->setChecked(I)V

    goto :goto_0
.end method
