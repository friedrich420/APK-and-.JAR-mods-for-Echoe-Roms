.class final Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;
.super Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;
.source "ConnectionServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/ConnectionServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Adapter"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/ConnectionServiceWrapper;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-direct {p0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/ConnectionServiceWrapper;B)V
    .locals 0

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;-><init>(Lcom/android/server/telecom/ConnectionServiceWrapper;)V

    return-void
.end method


# virtual methods
.method public final addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V
    .locals 4

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    const-string v1, "addConferenceCall %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$400(Lcom/android/server/telecom/ConnectionServiceWrapper;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 507
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 508
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 509
    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$500(Lcom/android/server/telecom/ConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 510
    return-void
.end method

.method public final handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 396
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    const-string v1, "handleCreateConnectionComplete %s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$400(Lcom/android/server/telecom/ConnectionServiceWrapper;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 399
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 400
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 401
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 402
    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$500(Lcom/android/server/telecom/ConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 405
    :cond_0
    return-void
.end method

.method public final onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    const-string v1, "onPostDialWait %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$400(Lcom/android/server/telecom/ConnectionServiceWrapper;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 517
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 518
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 519
    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$500(Lcom/android/server/telecom/ConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 521
    :cond_0
    return-void
.end method

.method public final queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V
    .locals 3

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    const-string v1, "queryRemoteCSs"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$400(Lcom/android/server/telecom/ConnectionServiceWrapper;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 526
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$500(Lcom/android/server/telecom/ConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 527
    return-void
.end method

.method public final removeCall(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    const-string v1, "removeCall %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$400(Lcom/android/server/telecom/ConnectionServiceWrapper;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    invoke-static {p1}, Lcom/android/server/telecom/CallIdMapper;->isValidConferenceId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$500(Lcom/android/server/telecom/ConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 477
    :cond_1
    return-void
.end method

.method public final setActive(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    const-string v1, "setActive %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$400(Lcom/android/server/telecom/ConnectionServiceWrapper;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    invoke-static {p1}, Lcom/android/server/telecom/CallIdMapper;->isValidConferenceId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$500(Lcom/android/server/telecom/ConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 413
    :cond_1
    return-void
.end method

.method public final setAddress(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 5

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    const-string v1, "setAddress %s %s %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$400(Lcom/android/server/telecom/ConnectionServiceWrapper;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 560
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 562
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 563
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 564
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 565
    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$500(Lcom/android/server/telecom/ConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 567
    :cond_0
    return-void
.end method

.method public final setCallCapabilities(Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 481
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    const-string v1, "setCallCapabilities %s %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$400(Lcom/android/server/telecom/ConnectionServiceWrapper;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    invoke-static {p1}, Lcom/android/server/telecom/CallIdMapper;->isValidConferenceId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$500(Lcom/android/server/telecom/ConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p2, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 488
    :goto_0
    return-void

    .line 486
    :cond_1
    const-string v0, "ID not valid for setCallCapabilities"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    const-string v1, "setCallerDisplayName %s %s %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$400(Lcom/android/server/telecom/ConnectionServiceWrapper;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 575
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 576
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 577
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 578
    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$500(Lcom/android/server/telecom/ConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 580
    :cond_0
    return-void
.end method

.method public final setCallerDualPhoneNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    const-string v1, "setCallerDualPhoneNumber %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$400(Lcom/android/server/telecom/ConnectionServiceWrapper;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 600
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 601
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 602
    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$500(Lcom/android/server/telecom/ConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 604
    :cond_0
    return-void
.end method

.method public final setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    const-string v1, "setConferenceableConnections %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$400(Lcom/android/server/telecom/ConnectionServiceWrapper;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    invoke-static {p1}, Lcom/android/server/telecom/CallIdMapper;->isValidConferenceId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 588
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 589
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 590
    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$500(Lcom/android/server/telecom/ConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 592
    :cond_1
    return-void
.end method

.method public final setDialing(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    const-string v1, "setDialing %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$400(Lcom/android/server/telecom/ConnectionServiceWrapper;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$500(Lcom/android/server/telecom/ConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 440
    :cond_0
    return-void
.end method

.method public final setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 444
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    const-string v1, "setDisconnected %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$400(Lcom/android/server/telecom/ConnectionServiceWrapper;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    invoke-static {p1}, Lcom/android/server/telecom/CallIdMapper;->isValidConferenceId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    :cond_0
    const-string v0, "disconnect call %s"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 448
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 449
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 450
    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$500(Lcom/android/server/telecom/ConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 452
    :cond_1
    return-void
.end method

.method public final setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    const-string v1, "setIsConferenced %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$400(Lcom/android/server/telecom/ConnectionServiceWrapper;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 495
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 496
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 497
    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$500(Lcom/android/server/telecom/ConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 499
    :cond_0
    return-void
.end method

.method public final setIsVoipAudioMode(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 539
    iget-object v2, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    const-string v3, "setIsVoipAudioMode %s %b"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$400(Lcom/android/server/telecom/ConnectionServiceWrapper;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
    iget-object v2, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 541
    iget-object v2, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$500(Lcom/android/server/telecom/ConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xf

    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 544
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 541
    goto :goto_0
.end method

.method public final setOnHold(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    const-string v1, "setOnHold %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$400(Lcom/android/server/telecom/ConnectionServiceWrapper;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    invoke-static {p1}, Lcom/android/server/telecom/CallIdMapper;->isValidConferenceId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$500(Lcom/android/server/telecom/ConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 460
    :cond_1
    return-void
.end method

.method public final setRingbackRequested(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 464
    iget-object v2, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    const-string v3, "setRingbackRequested %s %b"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$400(Lcom/android/server/telecom/ConnectionServiceWrapper;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    iget-object v2, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    iget-object v2, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$500(Lcom/android/server/telecom/ConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x7

    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v2, v3, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 469
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 466
    goto :goto_0
.end method

.method public final setRinging(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    const-string v1, "setRinging %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$400(Lcom/android/server/telecom/ConnectionServiceWrapper;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$500(Lcom/android/server/telecom/ConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 421
    :cond_0
    return-void
.end method

.method public final setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V
    .locals 4

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    const-string v1, "setStatusHints %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$400(Lcom/android/server/telecom/ConnectionServiceWrapper;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 551
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 552
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 553
    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$500(Lcom/android/server/telecom/ConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 555
    :cond_0
    return-void
.end method

.method public final setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;)V
    .locals 4

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    const-string v1, "setVideoProvider %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$400(Lcom/android/server/telecom/ConnectionServiceWrapper;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 428
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 429
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 430
    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$500(Lcom/android/server/telecom/ConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 432
    :cond_0
    return-void
.end method

.method public final setVideoState(Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 531
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    const-string v1, "setVideoState %s %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$400(Lcom/android/server/telecom/ConnectionServiceWrapper;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$100(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->isValidCallId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$Adapter;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$500(Lcom/android/server/telecom/ConnectionServiceWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p2, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 535
    :cond_0
    return-void
.end method
