.class final Lcom/android/server/input/InputManagerService$InputManagerHandler;
.super Landroid/os/Handler;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2497
    iput-object p1, p0, this$0:Lcom/android/server/input/InputManagerService;

    .line 2498
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2499
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2503
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    .line 2520
    :goto_5
    return-void

    .line 2505
    :pswitch_6
    iget-object v1, p0, this$0:Lcom/android/server/input/InputManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/view/InputDevice;

    check-cast v0, [Landroid/view/InputDevice;

    # invokes: Lcom/android/server/input/InputManagerService;->deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    invoke-static {v1, v0}, Lcom/android/server/input/InputManagerService;->access$700(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V

    goto :goto_5

    .line 2508
    :pswitch_12
    iget-object v0, p0, this$0:Lcom/android/server/input/InputManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->access$800(Lcom/android/server/input/InputManagerService;II)V

    goto :goto_5

    .line 2511
    :pswitch_1c
    iget-object v0, p0, this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$900(Lcom/android/server/input/InputManagerService;)V

    goto :goto_5

    .line 2514
    :pswitch_22
    iget-object v0, p0, this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->updateKeyboardLayouts()V
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$400(Lcom/android/server/input/InputManagerService;)V

    goto :goto_5

    .line 2517
    :pswitch_28
    iget-object v0, p0, this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$500(Lcom/android/server/input/InputManagerService;)V

    goto :goto_5

    .line 2503
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_12
        :pswitch_1c
        :pswitch_22
        :pswitch_28
    .end packed-switch
.end method
