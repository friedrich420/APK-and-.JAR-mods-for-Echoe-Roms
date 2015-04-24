.class final Lcom/android/server/telecom/Ringer$1;
.super Landroid/os/Handler;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/Ringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/Ringer;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/Ringer;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/server/telecom/Ringer$1;->this$0:Lcom/android/server/telecom/Ringer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 128
    :pswitch_0
    const-string v0, "-start flash..s"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/android/server/telecom/Ringer$1;->this$0:Lcom/android/server/telecom/Ringer;

    iget-object v0, v0, Lcom/android/server/telecom/Ringer;->mFlashNoti:Lcom/android/server/telecom/secutils/FlashNoti;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/FlashNoti;->checkTorchLight()V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method
