.class final Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager$1;
.super Landroid/os/Handler;
.source "SecRespondViaSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager$1;->this$0:Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 68
    :try_start_0
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/telecom/Response;

    .line 70
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 72
    if-eqz v2, :cond_0

    .line 73
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/List;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-interface {v1, v3, v4}, Landroid/telecom/Response;->onResult(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 75
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v1, v2, v3, v4}, Landroid/telecom/Response;->onError(Ljava/lang/Object;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 78
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v1

    .line 80
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager$1;->this$0:Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;->access$000(Lcom/android/server/telecom/rejectcallwithmessage/SecRespondViaSmsManager;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
