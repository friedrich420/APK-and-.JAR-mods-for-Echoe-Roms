.class Lcom/android/settings/fingerprint/RegisterFingerprint$3;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;->scanned_animation()V
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
    .line 185
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->ready_animation()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$100(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    .line 191
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 197
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mArrowImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    return-void
.end method
