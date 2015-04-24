.class final Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver$1;
.super Landroid/os/Handler;
.source "ExtensionBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver$1;->this$0:Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mHandler : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver$1;->this$0:Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver$1;->this$0:Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;

    invoke-static {v1, p1}, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;->access$000(Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;Landroid/os/Message;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;->access$100(Lcom/android/server/telecom/operator/usa/ExtensionBroadcastReceiver;Landroid/content/Intent;)V

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
