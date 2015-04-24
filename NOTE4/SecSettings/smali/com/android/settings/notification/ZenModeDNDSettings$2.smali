.class Lcom/android/settings/notification/ZenModeDNDSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "ZenModeDNDSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeDNDSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeDNDSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$2;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$2;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # invokes: Lcom/android/settings/notification/ZenModeDNDSettings;->updateControls()V
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$000(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    .line 175
    return-void
.end method
