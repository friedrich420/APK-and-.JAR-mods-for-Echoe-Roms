.class Lcom/android/settings/wifi/mobileap/WifiApSettings$9;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 1027
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    const/4 v1, 0x7

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1600(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V

    .line 1028
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1702(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z

    .line 1029
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z
    invoke-static {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1402(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z

    .line 1030
    const-string v0, "WifiApSettings"

    const-string v1, "selects Continue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V
    invoke-static {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1800(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V

    .line 1032
    return-void
.end method
