.class final Lcom/android/server/telecom/secutils/AutoRedialTimeDelay$1;
.super Landroid/content/BroadcastReceiver;
.source "AutoRedialTimeDelay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay$1;->this$0:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 186
    const-string v1, "android.intent.action.AUTO_REDIAL_TIMER"

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay$1;->this$0:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

    # getter for: Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->access$000(Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 191
    :cond_0
    return-void
.end method
