.class final Lcom/android/server/telecom/rcs/RcsCapaObserver$1;
.super Landroid/database/ContentObserver;
.source "RcsCapaObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/rcs/RcsCapaObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/internal/telephony/CallManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/rcs/RcsCapaObserver;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/rcs/RcsCapaObserver;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver$1;->this$0:Lcom/android/server/telecom/rcs/RcsCapaObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .prologue
    .line 46
    const-string v0, "RcsShare"

    const-string v1, "RcsCapaObserver::onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/android/server/telecom/rcs/RcsCapaObserver$1;->this$0:Lcom/android/server/telecom/rcs/RcsCapaObserver;

    invoke-static {}, Lcom/android/server/telecom/rcs/RcsCapaObserver;->updateUI()V

    .line 48
    return-void
.end method
