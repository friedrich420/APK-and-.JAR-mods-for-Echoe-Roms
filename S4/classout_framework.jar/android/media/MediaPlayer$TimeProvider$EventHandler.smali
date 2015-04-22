.class Landroid/media/MediaPlayer$TimeProvider$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer$TimeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaPlayer$TimeProvider;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer$TimeProvider;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 4624
    iput-object p1, p0, this$0:Landroid/media/MediaPlayer$TimeProvider;

    .line 4625
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4626
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 4630
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_a

    .line 4631
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_24

    .line 4646
    :cond_a
    :goto_a
    return-void

    .line 4633
    :pswitch_b
    iget-object v0, p0, this$0:Landroid/media/MediaPlayer$TimeProvider;

    const/4 v1, 0x0

    # invokes: Landroid/media/MediaPlayer$TimeProvider;->notifyTimedEvent(Z)V
    invoke-static {v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->access$2900(Landroid/media/MediaPlayer$TimeProvider;Z)V

    goto :goto_a

    .line 4636
    :pswitch_12
    iget-object v0, p0, this$0:Landroid/media/MediaPlayer$TimeProvider;

    # invokes: Landroid/media/MediaPlayer$TimeProvider;->notifyTimedEvent(Z)V
    invoke-static {v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->access$2900(Landroid/media/MediaPlayer$TimeProvider;Z)V

    goto :goto_a

    .line 4639
    :pswitch_18
    iget-object v0, p0, this$0:Landroid/media/MediaPlayer$TimeProvider;

    # invokes: Landroid/media/MediaPlayer$TimeProvider;->notifyStop()V
    invoke-static {v0}, Landroid/media/MediaPlayer$TimeProvider;->access$3000(Landroid/media/MediaPlayer$TimeProvider;)V

    goto :goto_a

    .line 4642
    :pswitch_1e
    iget-object v0, p0, this$0:Landroid/media/MediaPlayer$TimeProvider;

    # invokes: Landroid/media/MediaPlayer$TimeProvider;->notifySeek()V
    invoke-static {v0}, Landroid/media/MediaPlayer$TimeProvider;->access$3100(Landroid/media/MediaPlayer$TimeProvider;)V

    goto :goto_a

    .line 4631
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_b
        :pswitch_12
        :pswitch_18
        :pswitch_1e
    .end packed-switch
.end method
