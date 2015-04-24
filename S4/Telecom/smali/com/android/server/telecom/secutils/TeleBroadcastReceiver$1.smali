.class final Lcom/android/server/telecom/secutils/TeleBroadcastReceiver$1;
.super Landroid/os/Handler;
.source "TeleBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver$1;->this$0:Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mHandler : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver$1;->this$0:Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver$1;->this$0:Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;

    invoke-static {v1, p1}, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->access$000(Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;Landroid/os/Message;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->access$100(Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;Landroid/content/Intent;)V

    goto :goto_0

    .line 73
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver$1;->this$0:Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver$1;->this$0:Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;

    invoke-static {v1, p1}, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->access$000(Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;Landroid/os/Message;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->access$200(Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;Landroid/content/Intent;)V

    goto :goto_0

    .line 77
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver$1;->this$0:Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver$1;->this$0:Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;

    invoke-static {v1, p1}, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->access$000(Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;Landroid/os/Message;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->access$300(Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;Landroid/content/Intent;)V

    goto :goto_0

    .line 81
    :pswitch_3
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    .line 82
    sget v0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->mDockState:I

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    .line 85
    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/server/telecom/CallAudioManager;->turnOnSpeaker(Z)V

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "received EVENT_DOCK_STATE_CHANGED. Phone inDock = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
