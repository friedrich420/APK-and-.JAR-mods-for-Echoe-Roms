.class final Lcom/android/server/telecom/BluetoothVoIPService$3;
.super Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;
.source "BluetoothVoIPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/BluetoothVoIPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/BluetoothVoIPService;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/BluetoothVoIPService;)V
    .locals 0

    .prologue
    .line 663
    iput-object p1, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHeadsetVoIP$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final answerCall()Z
    .locals 3

    .prologue
    .line 665
    const-string v0, "BluetoothVoIPService"

    const-string v1, "BT - answering call"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 666
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    invoke-static {v0}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1200(Lcom/android/server/telecom/BluetoothVoIPService;)V

    .line 667
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1300(Lcom/android/server/telecom/BluetoothVoIPService;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final cdmaSetSecondCallState(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 720
    const-string v0, "BluetoothVoIPService"

    const-string v1, "cdma 1"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 722
    return-void
.end method

.method public final cdmaSwapSecondCallState()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 725
    const-string v0, "BluetoothVoIPService"

    const-string v1, "cdma 2"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 727
    return-void
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 738
    const-string v0, "BluetoothVoIPService"

    const-string v1, "getDeviceId()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 739
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    # getter for: Lcom/android/server/telecom/BluetoothVoIPService;->mBluetoothPhoneService:Lcom/android/server/telecom/BluetoothPhoneService;
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothVoIPService;->access$400(Lcom/android/server/telecom/BluetoothVoIPService;)Lcom/android/server/telecom/BluetoothPhoneService;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 742
    return-object v0
.end method

.method public final getNetworkOperator()Ljava/lang/String;
    .locals 3

    .prologue
    .line 689
    const-string v0, "BluetoothVoIPService"

    const-string v1, "getNetworkOperator"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 690
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    invoke-static {v0}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1200(Lcom/android/server/telecom/BluetoothVoIPService;)V

    .line 691
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1300(Lcom/android/server/telecom/BluetoothVoIPService;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSubscriberId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 730
    const-string v0, "BluetoothVoIPService"

    const-string v1, "getSubscriberId()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 731
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    # getter for: Lcom/android/server/telecom/BluetoothVoIPService;->mBluetoothPhoneService:Lcom/android/server/telecom/BluetoothPhoneService;
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothVoIPService;->access$400(Lcom/android/server/telecom/BluetoothVoIPService;)Lcom/android/server/telecom/BluetoothPhoneService;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 734
    return-object v0
.end method

.method public final getSubscriberNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 695
    const-string v0, "BluetoothVoIPService"

    const-string v1, "getSubscriberNumber"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 696
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    invoke-static {v0}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1200(Lcom/android/server/telecom/BluetoothVoIPService;)V

    .line 697
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1300(Lcom/android/server/telecom/BluetoothVoIPService;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final handleVoipCallStateChange()V
    .locals 3

    .prologue
    .line 746
    const-string v0, "BluetoothVoIPService"

    const-string v1, "queryPhoneState"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 747
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    invoke-static {v0}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1200(Lcom/android/server/telecom/BluetoothVoIPService;)V

    .line 748
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1300(Lcom/android/server/telecom/BluetoothVoIPService;I)Ljava/lang/Object;

    .line 749
    return-void
.end method

.method public final hangupCall()Z
    .locals 3

    .prologue
    .line 671
    const-string v0, "BluetoothVoIPService"

    const-string v1, "BT - hanging up call"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    invoke-static {v0}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1200(Lcom/android/server/telecom/BluetoothVoIPService;)V

    .line 673
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1300(Lcom/android/server/telecom/BluetoothVoIPService;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final isExistVoipCall()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 753
    sget v2, Lcom/android/server/telecom/BluetoothVoIPService;->foregroundVoIPCall:I

    if-eqz v2, :cond_0

    sget v2, Lcom/android/server/telecom/BluetoothVoIPService;->backgroundVoIPCall:I

    if-eq v2, v1, :cond_0

    sget v2, Lcom/android/server/telecom/BluetoothVoIPService;->ringingVoIPCall:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 754
    :cond_0
    const-string v2, "BluetoothVoIPService"

    const-string v3, "VoIP Call exist"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 759
    :goto_0
    return v0

    .line 758
    :cond_1
    const-string v1, "BluetoothVoIPService"

    const-string v2, "VoIP Call doesn\'t exist"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final isVoipHolding()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 764
    sget v2, Lcom/android/server/telecom/BluetoothVoIPService;->backgroundVoIPCall:I

    if-ne v2, v0, :cond_0

    .line 765
    const-string v2, "BluetoothVoIPService"

    const-string v3, "Voip Call is ON_HOLD"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 769
    :goto_0
    return v0

    .line 768
    :cond_0
    const-string v0, "BluetoothVoIPService"

    const-string v2, "Voip Call is not ON_HOLD"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 769
    goto :goto_0
.end method

.method public final listCurrentCalls()Z
    .locals 3

    .prologue
    .line 703
    const-string v0, "BluetoothVoIPService"

    const-string v1, "listcurrentCalls"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 704
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    invoke-static {v0}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1200(Lcom/android/server/telecom/BluetoothVoIPService;)V

    .line 705
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    const/4 v1, 0x6

    const/4 v2, 0x1

    # invokes: Lcom/android/server/telecom/BluetoothVoIPService;->sendSynchronousRequest(II)Ljava/lang/Object;
    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1400(Lcom/android/server/telecom/BluetoothVoIPService;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final processChld(I)Z
    .locals 5

    .prologue
    .line 683
    const-string v0, "BluetoothVoIPService"

    const-string v1, "processChld %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    invoke-static {v0}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1200(Lcom/android/server/telecom/BluetoothVoIPService;)V

    .line 685
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    const/4 v1, 0x4

    # invokes: Lcom/android/server/telecom/BluetoothVoIPService;->sendSynchronousRequest(II)Ljava/lang/Object;
    invoke-static {v0, v1, p1}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1400(Lcom/android/server/telecom/BluetoothVoIPService;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final queryPhoneState()Z
    .locals 3

    .prologue
    .line 709
    const-string v0, "BluetoothVoIPService"

    const-string v1, "queryPhoneState"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 710
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    invoke-static {v0}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1200(Lcom/android/server/telecom/BluetoothVoIPService;)V

    .line 711
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1300(Lcom/android/server/telecom/BluetoothVoIPService;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final sendDtmf(I)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 677
    const-string v0, "BluetoothVoIPService"

    const-string v1, "sendDtmf : VoIP does not support DTMF"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 678
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$3;->this$0:Lcom/android/server/telecom/BluetoothVoIPService;

    invoke-static {v0}, Lcom/android/server/telecom/BluetoothVoIPService;->access$1200(Lcom/android/server/telecom/BluetoothVoIPService;)V

    .line 679
    return v3
.end method

.method public final updateBtHandsfreeAfterRadioTechnologyChange()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 715
    const-string v0, "BluetoothVoIPService"

    const-string v1, "RAT change"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 717
    return-void
.end method
