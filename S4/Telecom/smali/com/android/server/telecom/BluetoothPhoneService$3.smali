.class final Lcom/android/server/telecom/BluetoothPhoneService$3;
.super Lcom/android/server/telecom/CallsManager$CallsManagerListener;
.source "BluetoothPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/BluetoothPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/BluetoothPhoneService;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/BluetoothPhoneService;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallAdded(Lcom/android/server/telecom/Call;)V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->updateHeadsetWithCallState(Z)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService;->access$600(Lcom/android/server/telecom/BluetoothPhoneService;Z)V

    .line 437
    return-void
.end method

.method public final onCallRemoved(Lcom/android/server/telecom/Call;)V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    # getter for: Lcom/android/server/telecom/BluetoothPhoneService;->mClccIndexMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothPhoneService;->access$1100(Lcom/android/server/telecom/BluetoothPhoneService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->getCurrentCallPhoneType(Lcom/android/server/telecom/Call;)I
    invoke-static {v0, p1}, Lcom/android/server/telecom/BluetoothPhoneService;->access$1200(Lcom/android/server/telecom/BluetoothPhoneService;Lcom/android/server/telecom/Call;)I

    move-result v0

    .line 445
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 451
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->updateHeadsetWithCallState(Z)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService;->access$600(Lcom/android/server/telecom/BluetoothPhoneService;Z)V

    goto :goto_0
.end method

.method public final onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 10

    .prologue
    .line 460
    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    const/4 v0, 0x6

    if-ne p3, v0, :cond_2

    .line 461
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 462
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 545
    :cond_1
    :goto_0
    return-void

    .line 471
    :cond_2
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    .line 477
    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    # invokes: Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothPhoneService;->access$400(Lcom/android/server/telecom/BluetoothPhoneService;)Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v5

    .line 478
    const/4 v4, 0x0

    .line 479
    const/4 v3, 0x0

    .line 480
    const/4 v2, 0x0

    .line 481
    const/4 v1, 0x0

    .line 482
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    # invokes: Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothPhoneService;->access$400(Lcom/android/server/telecom/BluetoothPhoneService;)Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getNumHeldCalls()I

    move-result v6

    .line 483
    const/4 v0, 0x0

    .line 485
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    .line 486
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v8

    if-nez v8, :cond_4

    .line 487
    add-int/lit8 v5, v5, 0x1

    .line 488
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_4

    .line 489
    add-int/lit8 v4, v4, 0x1

    .line 492
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isConference()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 493
    const/4 v0, 0x1

    move v1, v0

    .line 494
    goto :goto_1

    .line 495
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_6

    .line 496
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 497
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v8, 0x4

    if-ne v0, v8, :cond_10

    .line 498
    add-int/lit8 v0, v2, 0x1

    :goto_2
    move v2, v0

    .line 500
    goto :goto_1

    .line 502
    :cond_7
    const-string v0, "BluetoothPhoneService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "old : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", new : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", numPCall : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", numPActive : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", numCActive : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", numPHeld : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", numCRinging : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isConference : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    const/4 v0, 0x5

    if-ne p2, v0, :cond_8

    const/4 v0, 0x6

    if-eq p3, v0, :cond_9

    :cond_8
    const/4 v0, 0x6

    if-ne p2, v0, :cond_e

    const/4 v0, 0x5

    if-ne p3, v0, :cond_e

    .line 508
    :cond_9
    const/4 v0, 0x1

    if-le v5, v0, :cond_d

    .line 509
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 510
    const-string v0, "BluetoothPhoneService"

    const-string v1, "Skip childCall state change"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 513
    :cond_a
    if-ne v5, v6, :cond_b

    .line 514
    const-string v0, "BluetoothPhoneService"

    const-string v1, "Now swaping active to hold, update when hold to active"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 516
    :cond_b
    add-int v0, v2, v6

    if-ne v5, v0, :cond_c

    .line 517
    const-string v0, "BluetoothPhoneService"

    const-string v1, "Now answer waiting call, update when waiting to active"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 519
    :cond_c
    if-nez v1, :cond_e

    if-ne v5, v4, :cond_e

    .line 520
    const-string v0, "BluetoothPhoneService"

    const-string v1, "Now swaping hold to active, update when active to hold"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 524
    :cond_d
    const/4 v0, 0x1

    if-ne v5, v0, :cond_e

    if-nez v4, :cond_e

    if-lez v3, :cond_e

    .line 525
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 526
    const-string v0, "BluetoothPhoneService"

    const-string v1, "When merge call to conference call, wait getActiveCall is not null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 534
    :cond_e
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->getCurrentCallPhoneType(Lcom/android/server/telecom/Call;)I
    invoke-static {v0, p1}, Lcom/android/server/telecom/BluetoothPhoneService;->access$1200(Lcom/android/server/telecom/BluetoothPhoneService;Lcom/android/server/telecom/Call;)I

    move-result v0

    .line 535
    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x4

    if-eq p2, v0, :cond_f

    const/4 v0, 0x7

    if-ne p3, v0, :cond_f

    .line 537
    add-int v0, v6, v4

    if-lez v0, :cond_f

    .line 538
    const-string v0, "BluetoothPhoneService"

    const-string v1, "When disconnect call while conference call on CDMA network, update when all call to disconnect"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 544
    :cond_f
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->updateHeadsetWithCallState(Z)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService;->access$600(Lcom/android/server/telecom/BluetoothPhoneService;Z)V

    goto/16 :goto_0

    :cond_10
    move v0, v2

    goto/16 :goto_2
.end method

.method public final onForegroundCallChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V
    .locals 0

    .prologue
    .line 551
    return-void
.end method

.method public final onIsConferencedChanged(Lcom/android/server/telecom/Call;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 568
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 572
    const-string v0, "BluetoothPhoneService"

    const-string v1, "Ignoring onIsConferenceChanged from child call with new parent"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    :goto_0
    return-void

    .line 577
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getChildCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 582
    const-string v0, "BluetoothPhoneService"

    const-string v1, "Ignoring onIsConferenceChanged from parent with only one child call"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 590
    :cond_1
    const-string v0, "BluetoothPhoneService"

    const-string v1, "Do not anything on onIsConferenceChanged"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
