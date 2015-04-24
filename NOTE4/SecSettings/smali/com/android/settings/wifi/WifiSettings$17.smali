.class Lcom/android/settings/wifi/WifiSettings$17;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 2792
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$17;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 2794
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$17;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$17;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mErrorDialogRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->access$2400(Lcom/android/settings/wifi/WifiSettings;)Ljava/lang/Runnable;

    move-result-object v1

    # invokes: Lcom/android/settings/wifi/WifiSettings;->removeDialogTimer(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$2500(Lcom/android/settings/wifi/WifiSettings;Ljava/lang/Runnable;)V

    .line 2795
    return-void
.end method
