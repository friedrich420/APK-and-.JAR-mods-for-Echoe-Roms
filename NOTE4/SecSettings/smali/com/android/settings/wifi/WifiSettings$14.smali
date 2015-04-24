.class Lcom/android/settings/wifi/WifiSettings$14;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->showDurationDialog(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 2768
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$14;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2770
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$14;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mDhcpErrorApNetId:I
    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->access$2100(Lcom/android/settings/wifi/WifiSettings;)I

    move-result v0

    .line 2771
    .local v0, "networkId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2772
    const-string v1, "WifiSettings"

    const-string v2, "Invalid network id "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    :goto_0
    return-void

    .line 2774
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$14;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$14;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiSettings;->access$2200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method
