.class Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$DateFormatObserver;
.super Landroid/database/ContentObserver;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateFormatObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;


# direct methods
.method public constructor <init>(Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;)V
    .locals 1

    .prologue
    .line 1086
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$DateFormatObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

    .line 1087
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1088
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 1092
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1093
    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DateFormatObserver onChange()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$DateFormatObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

    # getter for: Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->access$1100(Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "clock.date_format_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1095
    return-void
.end method
