.class final Lcom/android/server/telecom/MissedCallNotifier$1;
.super Landroid/content/BroadcastReceiver;
.source "MissedCallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/MissedCallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/MissedCallNotifier;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/MissedCallNotifier;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/server/telecom/MissedCallNotifier$1;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier$1;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # invokes: Lcom/android/server/telecom/MissedCallNotifier;->cancelMissedCallNotification()V
    invoke-static {v0}, Lcom/android/server/telecom/MissedCallNotifier;->access$000(Lcom/android/server/telecom/MissedCallNotifier;)V

    .line 104
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier$1;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    # invokes: Lcom/android/server/telecom/MissedCallNotifier;->updateOnStartup()V
    invoke-static {v0}, Lcom/android/server/telecom/MissedCallNotifier;->access$100(Lcom/android/server/telecom/MissedCallNotifier;)V

    .line 106
    :cond_0
    return-void
.end method
