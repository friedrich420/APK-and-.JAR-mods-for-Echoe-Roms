.class Lcom/android/settings/fingerprint/RegisterFingerprint$20;
.super Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;
.source "RegisterFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;->startFailedAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0
    .param p2, "x0"    # Landroid/graphics/drawable/AnimationDrawable;

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$20;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/graphics/drawable/AnimationDrawable;)V

    return-void
.end method


# virtual methods
.method onAnimationEnd()V
    .locals 2

    .prologue
    .line 1236
    const-string v0, "RegisterFingerprint"

    const-string v1, "startFailedAnimation End"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$20;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startStandbyAnimation()V

    .line 1238
    return-void
.end method
