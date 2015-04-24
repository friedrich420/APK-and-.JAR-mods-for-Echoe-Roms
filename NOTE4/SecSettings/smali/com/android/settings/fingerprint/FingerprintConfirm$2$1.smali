.class Lcom/android/settings/fingerprint/FingerprintConfirm$2$1;
.super Ljava/lang/Object;
.source "FingerprintConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintConfirm$2;->onEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$2;

.field final synthetic val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintConfirm$2;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$2$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$2;

    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 104
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    packed-switch v0, :pswitch_data_0

    .line 127
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 110
    :pswitch_1
    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$2$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$2;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintConfirm$2;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->setResult(I)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$2$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$2;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintConfirm$2;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintConfirm;->finish()V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-ne v0, v1, :cond_0

    .line 114
    if-eqz p0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$2$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$2;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintConfirm$2;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->setResult(I)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$2$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$2;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintConfirm$2;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintConfirm;->finish()V

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$2$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 119
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$2$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$2;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintConfirm$2;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    # invokes: Lcom/android/settings/fingerprint/FingerprintConfirm;->showSensorErrorDialog()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintConfirm;->access$200(Lcom/android/settings/fingerprint/FingerprintConfirm;)V

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$2$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$2;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintConfirm$2;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    # getter for: Lcom/android/settings/fingerprint/FingerprintConfirm;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintConfirm;->access$300(Lcom/android/settings/fingerprint/FingerprintConfirm;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$2$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$2;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintConfirm$2;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    # getter for: Lcom/android/settings/fingerprint/FingerprintConfirm;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintConfirm;->access$300(Lcom/android/settings/fingerprint/FingerprintConfirm;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
