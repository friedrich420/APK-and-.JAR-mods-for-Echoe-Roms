.class final Lcom/android/server/telecom/CallActivity$1;
.super Landroid/os/Handler;
.source "CallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/CallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/CallActivity;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/CallActivity;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/server/telecom/CallActivity$1;->this$0:Lcom/android/server/telecom/CallActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 102
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 106
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/CallActivity$1;->this$0:Lcom/android/server/telecom/CallActivity;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallActivity;->finish()V

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
