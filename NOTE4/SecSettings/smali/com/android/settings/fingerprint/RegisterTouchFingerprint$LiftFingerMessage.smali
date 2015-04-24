.class Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;
.super Ljava/lang/Thread;
.source "RegisterTouchFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/RegisterTouchFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LiftFingerMessage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V
    .locals 0

    .prologue
    .line 796
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 799
    const-wide/16 v2, 0x258

    :try_start_0
    invoke-static {v2, v3}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;->sleep(J)V

    .line 800
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    new-instance v2, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage$1;-><init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :goto_0
    return-void

    .line 807
    :catch_0
    move-exception v0

    .line 809
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
