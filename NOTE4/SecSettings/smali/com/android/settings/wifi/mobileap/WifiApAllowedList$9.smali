.class Lcom/android/settings/wifi/mobileap/WifiApAllowedList$9;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 341
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->isAnyDeviceChecked()Z
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1100(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    # setter for: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteClicked:Z
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$402(Z)Z

    .line 343
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->stopActionMode()V

    .line 344
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->removeSelectedList()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$1200(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    .line 345
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->changeActionBar()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->access$800(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0601

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
