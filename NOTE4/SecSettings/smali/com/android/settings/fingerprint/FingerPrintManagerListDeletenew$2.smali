.class Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$2;
.super Ljava/lang/Object;
.source "FingerPrintManagerListDeletenew.java"

# interfaces
.implements Landroid/widget/AdapterView$OnTwMultiSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$2;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnTwMultiSelectStart(II)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "startY"    # I

    .prologue
    .line 178
    const-string v0, "FingerPrintManagerListDeletenew"

    const-string v1, "OnTwMultiSelectStart"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method public OnTwMultiSelectStop(II)V
    .locals 2
    .param p1, "endX"    # I
    .param p2, "endY"    # I

    .prologue
    .line 182
    const-string v0, "FingerPrintManagerListDeletenew"

    const-string v1, "OnTwMultiSelectStop"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$2;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->checkDeleteButtonstate()V

    .line 189
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$2;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    # invokes: Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->initializeActionBarTitle()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->access$100(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$2;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->access$200(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$2;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mlistView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->access$200(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 191
    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mSelectAllCheck:Landroid/widget/CheckBox;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->access$300()Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 196
    :goto_1
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$2;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->access$000(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 193
    :cond_2
    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mSelectAllCheck:Landroid/widget/CheckBox;
    invoke-static {}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->access$300()Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
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
    .line 200
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, "FingerPrintManagerListDeletenew"

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

    .line 201
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$2;->this$0:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;

    # getter for: Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->mFingerListAdapter:Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;->access$000(Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew;)Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/settings/fingerprint/FingerPrintManagerListDeletenew$FingerListAdapter;->setChecked(I)V

    goto :goto_0
.end method
