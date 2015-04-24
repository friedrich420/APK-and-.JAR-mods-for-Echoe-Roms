.class final Lcom/android/server/telecom/Call$CallNumberChangeBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallNumberChangeBroadCastReceiver"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/Call;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/Call;)V
    .locals 0

    .prologue
    .line 1467
    iput-object p1, p0, Lcom/android/server/telecom/Call$CallNumberChangeBroadCastReceiver;->this$0:Lcom/android/server/telecom/Call;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/Call;B)V
    .locals 0

    .prologue
    .line 1467
    invoke-direct {p0, p1}, Lcom/android/server/telecom/Call$CallNumberChangeBroadCastReceiver;-><init>(Lcom/android/server/telecom/Call;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1470
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1471
    const-string v1, "com.sec.android.phone.CHANGED_CALL_NUMBER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1472
    iget-object v0, p0, Lcom/android/server/telecom/Call$CallNumberChangeBroadCastReceiver;->this$0:Lcom/android/server/telecom/Call;

    # getter for: Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/server/telecom/Call;->access$700(Lcom/android/server/telecom/Call;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1474
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1475
    const-string v2, "com.call.Changenumberbroadcast"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1476
    const-string v2, "Change_Number"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1477
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BeforeNumberChange : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/telecom/Call$CallNumberChangeBroadCastReceiver;->this$0:Lcom/android/server/telecom/Call;

    # getter for: Lcom/android/server/telecom/Call;->BeforeNumberChange:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/telecom/Call;->access$800(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1478
    iget-object v2, p0, Lcom/android/server/telecom/Call$CallNumberChangeBroadCastReceiver;->this$0:Lcom/android/server/telecom/Call;

    # getter for: Lcom/android/server/telecom/Call;->BeforeNumberChange:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/telecom/Call;->access$800(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1479
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1482
    :cond_0
    return-void

    .line 1472
    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/Call$CallNumberChangeBroadCastReceiver;->this$0:Lcom/android/server/telecom/Call;

    # getter for: Lcom/android/server/telecom/Call;->mHandle:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/server/telecom/Call;->access$700(Lcom/android/server/telecom/Call;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
