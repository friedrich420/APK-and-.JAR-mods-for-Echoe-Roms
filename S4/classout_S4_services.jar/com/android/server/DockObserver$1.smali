.class Lcom/android/server/DockObserver$1;
.super Landroid/os/Handler;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method constructor <init>(Lcom/android/server/DockObserver;Z)V
    .registers 3
    .param p2, "x0"    # Z

    .prologue
    .line 311
    iput-object p1, p0, this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 314
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    .line 320
    :goto_5
    return-void

    .line 316
    :pswitch_6
    iget-object v0, p0, this$0:Lcom/android/server/DockObserver;

    # invokes: Lcom/android/server/DockObserver;->handleDockStateChange()V
    invoke-static {v0}, Lcom/android/server/DockObserver;->access$100(Lcom/android/server/DockObserver;)V

    .line 317
    iget-object v0, p0, this$0:Lcom/android/server/DockObserver;

    # getter for: Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/server/DockObserver;->access$200(Lcom/android/server/DockObserver;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_5

    .line 314
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
