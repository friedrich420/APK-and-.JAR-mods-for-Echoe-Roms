.class final Lcom/android/server/telecom/LowBatteryManager$1;
.super Landroid/content/BroadcastReceiver;
.source "LowBatteryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/LowBatteryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/LowBatteryManager;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/LowBatteryManager;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/server/telecom/LowBatteryManager$1;->this$0:Lcom/android/server/telecom/LowBatteryManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 132
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    const-string v0, "ACTION_BATTERY_LOW"

    invoke-static {v0}, Lcom/android/server/telecom/LowBatteryManager;->englog(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/server/telecom/LowBatteryManager$1;->this$0:Lcom/android/server/telecom/LowBatteryManager;

    iget-boolean v0, v0, Lcom/android/server/telecom/LowBatteryManager;->mIsBatteryLow:Z

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/server/telecom/LowBatteryManager$1;->this$0:Lcom/android/server/telecom/LowBatteryManager;

    iput-boolean v4, v0, Lcom/android/server/telecom/LowBatteryManager;->mIsBatteryLow:Z

    .line 136
    iget-object v0, p0, Lcom/android/server/telecom/LowBatteryManager$1;->this$0:Lcom/android/server/telecom/LowBatteryManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/LowBatteryManager;->disconnectForegroundCall()V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "status"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 140
    const-string v1, "level"

    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 141
    iget-object v2, p0, Lcom/android/server/telecom/LowBatteryManager$1;->this$0:Lcom/android/server/telecom/LowBatteryManager;

    iget v2, v2, Lcom/android/server/telecom/LowBatteryManager;->mLowBatteryWarningLevel:I

    if-gt v1, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 142
    iget-object v0, p0, Lcom/android/server/telecom/LowBatteryManager$1;->this$0:Lcom/android/server/telecom/LowBatteryManager;

    iget-boolean v0, v0, Lcom/android/server/telecom/LowBatteryManager;->mIsBatteryLow:Z

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/server/telecom/LowBatteryManager$1;->this$0:Lcom/android/server/telecom/LowBatteryManager;

    iput-boolean v4, v0, Lcom/android/server/telecom/LowBatteryManager;->mIsBatteryLow:Z

    .line 144
    iget-object v0, p0, Lcom/android/server/telecom/LowBatteryManager$1;->this$0:Lcom/android/server/telecom/LowBatteryManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/LowBatteryManager;->disconnectForegroundCall()V

    goto :goto_0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/LowBatteryManager$1;->this$0:Lcom/android/server/telecom/LowBatteryManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/telecom/LowBatteryManager;->mIsBatteryLow:Z

    goto :goto_0
.end method
