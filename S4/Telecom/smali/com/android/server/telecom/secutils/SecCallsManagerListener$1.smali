.class final Lcom/android/server/telecom/secutils/SecCallsManagerListener$1;
.super Landroid/os/Handler;
.source "SecCallsManagerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/SecCallsManagerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/secutils/SecCallsManagerListener;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/SecCallsManagerListener;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener$1;->this$0:Lcom/android/server/telecom/secutils/SecCallsManagerListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 77
    :pswitch_0
    const-string v0, "-Auto Redial Delay to make it happen after call is disconnected"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener$1;->this$0:Lcom/android/server/telecom/secutils/SecCallsManagerListener;

    # getter for: Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mAutoRedial:Lcom/android/server/telecom/secutils/AutoRedial;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->access$200(Lcom/android/server/telecom/secutils/SecCallsManagerListener;)Lcom/android/server/telecom/secutils/AutoRedial;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener$1;->this$0:Lcom/android/server/telecom/secutils/SecCallsManagerListener;

    # getter for: Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCall:Lcom/android/server/telecom/Call;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->access$000(Lcom/android/server/telecom/secutils/SecCallsManagerListener;)Lcom/android/server/telecom/Call;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener$1;->this$0:Lcom/android/server/telecom/secutils/SecCallsManagerListener;

    # getter for: Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mOldState:I
    invoke-static {v2}, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->access$100(Lcom/android/server/telecom/secutils/SecCallsManagerListener;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/telecom/secutils/AutoRedial;->startAutoRedial(Lcom/android/server/telecom/Call;I)V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
