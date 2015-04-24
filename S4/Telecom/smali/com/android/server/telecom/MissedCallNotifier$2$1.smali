.class final Lcom/android/server/telecom/MissedCallNotifier$2$1;
.super Lcom/android/server/telecom/Call$Listener;
.source "MissedCallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/MissedCallNotifier$2;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/android/server/telecom/MissedCallNotifier$2;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/MissedCallNotifier$2;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/android/server/telecom/MissedCallNotifier$2$1;->this$1:Lcom/android/server/telecom/MissedCallNotifier$2;

    invoke-direct {p0}, Lcom/android/server/telecom/Call$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallerInfoChanged(Lcom/android/server/telecom/Call;)V
    .locals 1

    .prologue
    .line 566
    invoke-virtual {p1, p0}, Lcom/android/server/telecom/Call;->removeListener(Lcom/android/server/telecom/Call$Listener;)V

    .line 569
    iget-object v0, p0, Lcom/android/server/telecom/MissedCallNotifier$2$1;->this$1:Lcom/android/server/telecom/MissedCallNotifier$2;

    iget-object v0, v0, Lcom/android/server/telecom/MissedCallNotifier$2;->this$0:Lcom/android/server/telecom/MissedCallNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    .line 570
    return-void
.end method
