.class Lcom/android/settings/wifi/WifiSettings$31;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
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
    .line 3990
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$31;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 3993
    if-nez p1, :cond_0

    .line 4003
    :goto_0
    return-void

    .line 3995
    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 3996
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0xc9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 3998
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3999
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "keep_connection"

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4000
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4002
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings$31;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v2, v2, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto :goto_0

    .line 3999
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
