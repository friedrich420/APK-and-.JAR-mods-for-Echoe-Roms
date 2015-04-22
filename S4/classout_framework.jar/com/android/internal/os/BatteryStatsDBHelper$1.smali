.class Lcom/android/internal/os/BatteryStatsDBHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryStatsDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsDBHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsDBHelper;)V
    .registers 2

    .prologue
    .line 195
    iput-object p1, p0, this$0:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 199
    const-string v2, "BatteryStatsDBHelper"

    const-string v3, "Sending fake excessive power drain broadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.battery.drain.1hour"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "i":Landroid/content/Intent;
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.sec.android.app.videoplayer"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.google.android.music"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "com.facebook.katana"

    aput-object v3, v1, v2

    .line 205
    .local v1, "packages":[Ljava/lang/String;
    const-string v2, "battery.draining.packages"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/os/BatteryStatsDBHelper;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 207
    return-void
.end method
