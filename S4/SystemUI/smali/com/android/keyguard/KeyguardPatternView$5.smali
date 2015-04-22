.class Lcom/android/keyguard/KeyguardPatternView$5;
.super Landroid/os/CountDownTimer;
.source "KeyguardPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$5;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 574
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$5;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 575
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$5;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$2100(Lcom/android/keyguard/KeyguardPatternView;)V

    .line 577
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$5;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mEnableFallback:Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$2000(Lcom/android/keyguard/KeyguardPatternView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$5;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$2200(Lcom/android/keyguard/KeyguardPatternView;)I

    move-result v0

    if-lt v0, v2, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$5;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->access$2300(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    .line 584
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$5;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$500(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$5;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$2200(Lcom/android/keyguard/KeyguardPatternView;)I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 580
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$5;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->BackupPIN:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->access$2300(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_0

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$5;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->access$2300(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v6, 0x1

    .line 565
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 566
    .local v0, "secondsRemaining":I
    if-le v0, v6, :cond_0

    .line 567
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$5;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->access$1700(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown:I

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v6, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    .line 570
    :goto_0
    return-void

    .line 569
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$5;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->access$1700(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempt_countdown:I

    invoke-interface {v1, v2, v6}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0
.end method
