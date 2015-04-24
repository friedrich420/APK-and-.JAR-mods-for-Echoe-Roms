.class Lcom/android/settings/wifi/WifiSettings$11;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->prepareWifiAssistantCard()V
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
    .line 2471
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$11;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2474
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2475
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$11;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiAssistantApp:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->access$1600(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v1

    iget-object v1, v1, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2479
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$11;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiAssistantApp:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->access$1600(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v1

    iget-object v1, v1, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$11;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiAssistantApp:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiSettings;->access$1600(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v2

    iget-object v2, v2, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2487
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$11;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/wifi/WifiSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2488
    return-void

    .line 2483
    :cond_0
    const-string v1, "android.net.scoring.CHANGE_ACTIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2484
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$11;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiAssistantApp:Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiSettings;->access$1600(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v2

    iget-object v2, v2, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
