.class final Lcom/android/server/telecom/secutils/SecActionMemoManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SecActionMemoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/SecActionMemoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/secutils/SecActionMemoManager;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/SecActionMemoManager;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecActionMemoManager$1;->this$0:Lcom/android/server/telecom/secutils/SecActionMemoManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string v1, "android.intent.action.ACTIONMEMOFILEPATHFORLOG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string v0, "NUMBER"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v1, "FILEPATH"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    const-string v2, "SecActionMemoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Receive ActionMemoFilePath for number="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v2, p0, Lcom/android/server/telecom/secutils/SecActionMemoManager$1;->this$0:Lcom/android/server/telecom/secutils/SecActionMemoManager;

    # invokes: Lcom/android/server/telecom/secutils/SecActionMemoManager;->setActionMemoFilepath(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v0, v1}, Lcom/android/server/telecom/secutils/SecActionMemoManager;->access$000(Lcom/android/server/telecom/secutils/SecActionMemoManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method
