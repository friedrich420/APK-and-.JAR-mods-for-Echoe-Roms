.class Lcom/android/settings/wifi/WifiSettings$18;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 2797
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2799
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2800
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2802
    :cond_0
    return-void
.end method
