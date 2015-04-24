.class Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$6;
.super Ljava/lang/Object;
.source "MyPlaceListDelelete.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->createPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;)V
    .locals 0

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$6;->this$1:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

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
    .line 665
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x2

    .local v0, "mSelectionstatus":I
    move-object v1, p2

    .line 667
    check-cast v1, Landroid/widget/TextView;

    .line 668
    .local v1, "menuText":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 669
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$6;->this$1:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    iget-object v3, v3, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    const v4, 0x7f0a0c7a

    invoke-virtual {v3, v4}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 670
    const/4 v0, 0x0

    .line 675
    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 690
    :goto_1
    return-void

    .line 671
    :cond_1
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$6;->this$1:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    iget-object v3, v3, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    const v4, 0x7f0a002c

    invoke-virtual {v3, v4}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 672
    const/4 v0, 0x1

    goto :goto_0

    .line 677
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$6;->this$1:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    iget-object v3, v3, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    const/4 v4, 0x1

    # invokes: Lcom/android/settings/myplace/MyPlaceListDelelete;->ToggleAllCheck(Z)V
    invoke-static {v3, v4}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$300(Lcom/android/settings/myplace/MyPlaceListDelelete;Z)V

    .line 678
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$6;->this$1:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    iget-object v3, v3, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v3}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$400(Lcom/android/settings/myplace/MyPlaceListDelelete;)Landroid/widget/ListPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_1

    .line 682
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$6;->this$1:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    iget-object v3, v3, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    const/4 v4, 0x0

    # invokes: Lcom/android/settings/myplace/MyPlaceListDelelete;->ToggleAllCheck(Z)V
    invoke-static {v3, v4}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$300(Lcom/android/settings/myplace/MyPlaceListDelelete;Z)V

    .line 683
    iget-object v3, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$6;->this$1:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    iget-object v3, v3, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v3}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$400(Lcom/android/settings/myplace/MyPlaceListDelelete;)Landroid/widget/ListPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->dismiss()V

    goto :goto_1

    .line 675
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
