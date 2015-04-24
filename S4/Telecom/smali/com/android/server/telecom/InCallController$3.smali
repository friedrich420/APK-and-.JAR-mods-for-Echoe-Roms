.class final Lcom/android/server/telecom/InCallController$3;
.super Landroid/telephony/PhoneStateListener;
.source "InCallController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/InCallController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/InCallController;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/InCallController;)V
    .locals 0

    .prologue
    .line 764
    iput-object p1, p0, Lcom/android/server/telecom/InCallController$3;->this$0:Lcom/android/server/telecom/InCallController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 767
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceStateChanged : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 769
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 780
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 772
    :pswitch_1
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->canEmergencyCallOfCurrentSlot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/InCallController$3;->this$0:Lcom/android/server/telecom/InCallController;

    # getter for: Lcom/android/server/telecom/InCallController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/InCallController;->access$1200(Lcom/android/server/telecom/InCallController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 777
    iget-object v0, p0, Lcom/android/server/telecom/InCallController$3;->this$0:Lcom/android/server/telecom/InCallController;

    # getter for: Lcom/android/server/telecom/InCallController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/InCallController;->access$1200(Lcom/android/server/telecom/InCallController;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 778
    iget-object v0, p0, Lcom/android/server/telecom/InCallController$3;->this$0:Lcom/android/server/telecom/InCallController;

    invoke-static {v0}, Lcom/android/server/telecom/InCallController;->access$400(Lcom/android/server/telecom/InCallController;)V

    goto :goto_0

    .line 769
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
