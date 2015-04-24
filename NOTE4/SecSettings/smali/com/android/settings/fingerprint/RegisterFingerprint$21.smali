.class Lcom/android/settings/fingerprint/RegisterFingerprint$21;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;->startPassAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1273
    const-string v0, "RegisterFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPassAnimation [mIsFinishedScanning] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFinishedScanning:Z
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFinishedScanning:Z
    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startStandbyAnimation()V

    .line 1277
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1281
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1285
    return-void
.end method
