.class Lcom/android/settings/wifi/WifiSettings$29;
.super Landroid/database/ContentObserver;
.source "WifiSettings.java"


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
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 3911
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$29;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 3913
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$29;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # invokes: Lcom/android/settings/wifi/WifiSettings;->updateWifiInternetServiceCheck()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$3100(Lcom/android/settings/wifi/WifiSettings;)V

    .line 3914
    return-void
.end method
