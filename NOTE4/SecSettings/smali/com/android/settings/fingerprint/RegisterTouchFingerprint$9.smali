.class Lcom/android/settings/fingerprint/RegisterTouchFingerprint$9;
.super Ljava/lang/Object;
.source "RegisterTouchFingerprint.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->showGuidewithTipDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->fromShowGuidewithTipDialog:Z
    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$2500(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    const-string v0, "RegisterTouchFingerprint"

    const-string v1, "showGuidewithTipDialog setOnDismissListener called!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->initRegisterfingerprint()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$2300(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V

    .line 642
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$1400(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$2400(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "com.android.settings.permission.unlock"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->selectedFingerIndex:I
    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$1300(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->enroll(Landroid/os/IBinder;Ljava/lang/String;I)I

    .line 644
    :cond_0
    return-void
.end method
