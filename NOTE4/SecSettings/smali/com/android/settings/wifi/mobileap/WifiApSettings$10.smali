.class Lcom/android/settings/wifi/mobileap/WifiApSettings$10;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1035
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    const/4 v1, 0x7

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1900(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V

    .line 1038
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$1402(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z

    .line 1039
    const-string v0, "WifiApSettings"

    const-string v1, "selects Cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$2000(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V

    .line 1041
    return-void
.end method
