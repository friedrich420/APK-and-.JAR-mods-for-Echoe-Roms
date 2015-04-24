.class Lcom/android/settings/fingerprint/RegisterFingerprint$4;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;->eventProcess(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

.field final synthetic val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iput-object p2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v5, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x0

    const v4, 0x7f020101

    const/4 v6, 0x1

    .line 578
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    packed-switch v1, :pswitch_data_0

    .line 757
    :cond_0
    :goto_0
    return-void

    .line 580
    :pswitch_0
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventId[EVENT_ENROLL_READY]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 583
    :pswitch_1
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventId[EVENT_ENROLL_STARTED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFinishedScanning:Z
    invoke-static {v1, v7}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$302(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    .line 585
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startScanningAnimation()V

    .line 586
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterError:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$400(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 587
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 588
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 592
    :pswitch_2
    const-string v1, "RegisterFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eventId[EVENT_ENROLL_STATUS] ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQuality()I

    move-result v0

    .line 594
    .local v0, "fpImageQuality":I
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFinishedScanning:Z
    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$302(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    .line 595
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    .line 596
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventStatus[STATUS_SENSOR_ERROR]  => sensor is removed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->sensorIsRemoved:Z
    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$502(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    .line 598
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startFailedAnimation()V

    .line 599
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$600(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    .line 613
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getProgress()I

    move-result v1

    if-lez v1, :cond_4

    .line 614
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mPrivProgressBarCount:I
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$900(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v2

    if-le v1, v2, :cond_2

    .line 615
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFinishedScanning:Z
    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$302(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    .line 616
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startPassAnimation()V

    .line 618
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getProgress()I

    move-result v2

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1002(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I

    .line 619
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1000(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v2

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mPrivProgressBarCount:I
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$902(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I

    .line 620
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1000(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v2

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintConfirmCount:I
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1102(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I

    .line 622
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1000(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    if-gt v1, v6, :cond_8

    .line 623
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep1:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 644
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 645
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mLL_StepView:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2400(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const v3, 0x7f0a1ae0

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintConfirmCount:I
    invoke-static {v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1100(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrollRepeatCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const v3, 0x7f0a1ae0

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintConfirmCount:I
    invoke-static {v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1100(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrollRepeatCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v6, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 650
    :cond_4
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->scanned_animation()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2500(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    goto/16 :goto_0

    .line 600
    :cond_5
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_6

    .line 601
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startFailedAnimation()V

    .line 602
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQualityFeedback()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showErrorMessage(ILjava/lang/String;)V
    invoke-static {v1, v0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$700(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 603
    :cond_6
    if-eqz v0, :cond_1

    .line 604
    const/high16 v1, 0x20000000

    if-ne v0, v1, :cond_7

    .line 605
    const-string v1, "RegisterFingerprint"

    const-string v2, "imageQuality[IMAGE_QUALITY_WRONG_FINGER]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startFailedAnimation()V

    .line 607
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v2, 0x66

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuideDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$800(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    goto/16 :goto_1

    .line 609
    :cond_7
    const-string v1, "RegisterFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imageQuality["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 624
    :cond_8
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1000(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    if-gt v1, v8, :cond_9

    .line 625
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep2:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 626
    :cond_9
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1000(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_a

    .line 627
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep3:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1400(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 628
    :cond_a
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1000(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    if-gt v1, v5, :cond_b

    .line 629
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep4:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 630
    :cond_b
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1000(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_c

    .line 631
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep5:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1600(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 632
    :cond_c
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1000(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_d

    .line 633
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep6:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 634
    :cond_d
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1000(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    const/4 v2, 0x7

    if-gt v1, v2, :cond_e

    .line 635
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep7:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 636
    :cond_e
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1000(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_f

    .line 637
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep8:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1900(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 638
    :cond_f
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1000(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    const/16 v2, 0x9

    if-gt v1, v2, :cond_10

    .line 639
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep9:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2000(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 640
    :cond_10
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1000(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    const/16 v2, 0xa

    if-gt v1, v2, :cond_3

    .line 641
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterStep10:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2100(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 653
    .end local v0    # "fpImageQuality":I
    :pswitch_3
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventId[EVENT_ENROLL_FINISHED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    .line 655
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventResult[RESULT_FAILED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFinishedScanning:Z
    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$302(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    .line 657
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startFailedAnimation()V

    .line 658
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x33

    if-ne v1, v2, :cond_11

    .line 659
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventStatus[STATUS_OPERATION_DENIED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$600(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    goto/16 :goto_0

    .line 661
    :cond_11
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    if-ne v1, v6, :cond_12

    .line 663
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventStatus[STATUS_ALREADY_REGISTERED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v2, 0x65

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuideDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$800(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    goto/16 :goto_0

    .line 665
    :cond_12
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_13

    .line 667
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventStatus[STATUS_QUALITY_FAILED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuidewithTipDialog()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2600(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    goto/16 :goto_0

    .line 669
    :cond_13
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_14

    .line 671
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventStatus[STATUS_USER_CANCELLED]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 673
    :cond_14
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_16

    .line 675
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventStatus[STATUS_SENSOR_ERROR] => sensor is not found"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->sensorIsRemoved:Z
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 677
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$600(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    goto/16 :goto_0

    .line 679
    :cond_15
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->sensorIsRemoved:Z
    invoke-static {v1, v7}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$502(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    goto/16 :goto_0

    .line 681
    :cond_16
    const-string v1, "RegisterFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no reason any other reason!!![evt.eventStatus] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v3, v3, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuidewithTipDialog()V
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2600(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    goto/16 :goto_0

    .line 685
    :cond_17
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v1, :cond_0

    .line 686
    const-string v1, "RegisterFingerprint"

    const-string v2, "eventResult[RESULT_SUCCESS]"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mPrivProgressBarCount:I
    invoke-static {v1, v7}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$902(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I

    .line 688
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFinishedScanning:Z
    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$302(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    .line 689
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterError:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$400(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 690
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 691
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0a1ad7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 692
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2900(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1aae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I
    invoke-static {v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2900(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->setIndexName(ILjava/lang/String;)Z

    .line 694
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackEnabled:Z
    invoke-static {v1, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3002(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    .line 695
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint$4;)V

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3102(Lcom/android/settings/fingerprint/RegisterFingerprint;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 746
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$4102(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/os/Handler;)Landroid/os/Handler;

    .line 747
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$4100(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3100(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 578
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
