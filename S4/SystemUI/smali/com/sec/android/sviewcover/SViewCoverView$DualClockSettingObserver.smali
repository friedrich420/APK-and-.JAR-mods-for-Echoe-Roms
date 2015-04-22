.class Lcom/sec/android/sviewcover/SViewCoverView$DualClockSettingObserver;
.super Landroid/database/ContentObserver;
.source "SViewCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DualClockSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverView;


# direct methods
.method public constructor <init>(Lcom/sec/android/sviewcover/SViewCoverView;)V
    .locals 1

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverView$DualClockSettingObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    .line 1002
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1003
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 1007
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1008
    const-string v0, "SViewCoverView"

    const-string v1, "DualClockSettingObserver onChange()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverView$DualClockSettingObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverView;->access$3600(Lcom/sec/android/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "dualclock.dualclock_setting_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1010
    return-void
.end method
