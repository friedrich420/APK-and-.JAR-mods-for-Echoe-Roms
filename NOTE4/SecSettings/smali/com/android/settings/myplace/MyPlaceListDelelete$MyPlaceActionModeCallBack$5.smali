.class Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$5;
.super Ljava/lang/Object;
.source "MyPlaceListDelelete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
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
    .line 583
    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$5;->this$1:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$5;->this$1:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    iget-object v0, v0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$400(Lcom/android/settings/myplace/MyPlaceListDelelete;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$5;->this$1:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    iget-object v0, v0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$400(Lcom/android/settings/myplace/MyPlaceListDelelete;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 591
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack$5;->this$1:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    iget-object v0, v0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    # getter for: Lcom/android/settings/myplace/MyPlaceListDelelete;->listpopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->access$400(Lcom/android/settings/myplace/MyPlaceListDelelete;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method
