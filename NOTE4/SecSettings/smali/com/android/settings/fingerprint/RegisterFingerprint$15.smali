.class Lcom/android/settings/fingerprint/RegisterFingerprint$15;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;->onPrepared(Landroid/media/MediaPlayer;)V
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
    .line 1014
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$15;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$15;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$4700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/VideoView;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setBackgroundResource(I)V

    .line 1017
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$15;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterguide:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$4700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 1018
    return-void
.end method
