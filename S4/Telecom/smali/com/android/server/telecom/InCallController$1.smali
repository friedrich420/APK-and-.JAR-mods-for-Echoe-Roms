.class final Lcom/android/server/telecom/InCallController$1;
.super Lcom/android/server/telecom/Call$Listener;
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
    .line 86
    iput-object p1, p0, Lcom/android/server/telecom/InCallController$1;->this$0:Lcom/android/server/telecom/InCallController;

    invoke-direct {p0}, Lcom/android/server/telecom/Call$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallCapabilitiesChanged(Lcom/android/server/telecom/Call;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/telecom/InCallController$1;->this$0:Lcom/android/server/telecom/InCallController;

    # invokes: Lcom/android/server/telecom/InCallController;->updateCall(Lcom/android/server/telecom/Call;)V
    invoke-static {v0, p1}, Lcom/android/server/telecom/InCallController;->access$200(Lcom/android/server/telecom/InCallController;Lcom/android/server/telecom/Call;)V

    .line 90
    return-void
.end method

.method public final onCallerDisplayNameChanged(Lcom/android/server/telecom/Call;)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/telecom/InCallController$1;->this$0:Lcom/android/server/telecom/InCallController;

    # invokes: Lcom/android/server/telecom/InCallController;->updateCall(Lcom/android/server/telecom/Call;)V
    invoke-static {v0, p1}, Lcom/android/server/telecom/InCallController;->access$200(Lcom/android/server/telecom/InCallController;Lcom/android/server/telecom/Call;)V

    .line 115
    return-void
.end method

.method public final onCallerDualPhoneNumberChanged(Lcom/android/server/telecom/Call;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/telecom/InCallController$1;->this$0:Lcom/android/server/telecom/InCallController;

    # invokes: Lcom/android/server/telecom/InCallController;->updateCall(Lcom/android/server/telecom/Call;)V
    invoke-static {v0, p1}, Lcom/android/server/telecom/InCallController;->access$200(Lcom/android/server/telecom/InCallController;Lcom/android/server/telecom/Call;)V

    .line 135
    return-void
.end method

.method public final onCannedSmsResponsesLoaded(Lcom/android/server/telecom/Call;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/telecom/InCallController$1;->this$0:Lcom/android/server/telecom/InCallController;

    # invokes: Lcom/android/server/telecom/InCallController;->updateCall(Lcom/android/server/telecom/Call;)V
    invoke-static {v0, p1}, Lcom/android/server/telecom/InCallController;->access$200(Lcom/android/server/telecom/InCallController;Lcom/android/server/telecom/Call;)V

    .line 95
    return-void
.end method

.method public final onConferenceableCallsChanged(Lcom/android/server/telecom/Call;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/telecom/InCallController$1;->this$0:Lcom/android/server/telecom/InCallController;

    # invokes: Lcom/android/server/telecom/InCallController;->updateCall(Lcom/android/server/telecom/Call;)V
    invoke-static {v0, p1}, Lcom/android/server/telecom/InCallController;->access$200(Lcom/android/server/telecom/InCallController;Lcom/android/server/telecom/Call;)V

    .line 130
    return-void
.end method

.method public final onExtraChanged(Lcom/android/server/telecom/Call;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/telecom/InCallController$1;->this$0:Lcom/android/server/telecom/InCallController;

    # invokes: Lcom/android/server/telecom/InCallController;->updateCall(Lcom/android/server/telecom/Call;)V
    invoke-static {v0, p1}, Lcom/android/server/telecom/InCallController;->access$200(Lcom/android/server/telecom/InCallController;Lcom/android/server/telecom/Call;)V

    .line 140
    return-void
.end method

.method public final onHandleChanged(Lcom/android/server/telecom/Call;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/telecom/InCallController$1;->this$0:Lcom/android/server/telecom/InCallController;

    # invokes: Lcom/android/server/telecom/InCallController;->updateCall(Lcom/android/server/telecom/Call;)V
    invoke-static {v0, p1}, Lcom/android/server/telecom/InCallController;->access$200(Lcom/android/server/telecom/InCallController;Lcom/android/server/telecom/Call;)V

    .line 110
    return-void
.end method

.method public final onStatusHintsChanged(Lcom/android/server/telecom/Call;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/telecom/InCallController$1;->this$0:Lcom/android/server/telecom/InCallController;

    # invokes: Lcom/android/server/telecom/InCallController;->updateCall(Lcom/android/server/telecom/Call;)V
    invoke-static {v0, p1}, Lcom/android/server/telecom/InCallController;->access$200(Lcom/android/server/telecom/InCallController;Lcom/android/server/telecom/Call;)V

    .line 105
    return-void
.end method

.method public final onTargetPhoneAccountChanged(Lcom/android/server/telecom/Call;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/telecom/InCallController$1;->this$0:Lcom/android/server/telecom/InCallController;

    # invokes: Lcom/android/server/telecom/InCallController;->updateCall(Lcom/android/server/telecom/Call;)V
    invoke-static {v0, p1}, Lcom/android/server/telecom/InCallController;->access$200(Lcom/android/server/telecom/InCallController;Lcom/android/server/telecom/Call;)V

    .line 125
    return-void
.end method

.method public final onVideoCallProviderChanged(Lcom/android/server/telecom/Call;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/telecom/InCallController$1;->this$0:Lcom/android/server/telecom/InCallController;

    # invokes: Lcom/android/server/telecom/InCallController;->updateCall(Lcom/android/server/telecom/Call;)V
    invoke-static {v0, p1}, Lcom/android/server/telecom/InCallController;->access$200(Lcom/android/server/telecom/InCallController;Lcom/android/server/telecom/Call;)V

    .line 100
    return-void
.end method

.method public final onVideoStateChanged(Lcom/android/server/telecom/Call;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/telecom/InCallController$1;->this$0:Lcom/android/server/telecom/InCallController;

    # invokes: Lcom/android/server/telecom/InCallController;->updateCall(Lcom/android/server/telecom/Call;)V
    invoke-static {v0, p1}, Lcom/android/server/telecom/InCallController;->access$200(Lcom/android/server/telecom/InCallController;Lcom/android/server/telecom/Call;)V

    .line 120
    return-void
.end method
