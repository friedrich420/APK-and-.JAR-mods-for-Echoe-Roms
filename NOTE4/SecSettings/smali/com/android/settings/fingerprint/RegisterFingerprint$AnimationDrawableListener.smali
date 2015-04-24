.class public abstract Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;
.super Landroid/graphics/drawable/AnimationDrawable;
.source "RegisterFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AnimationDrawableListener"
.end annotation


# instance fields
.field anim:Landroid/graphics/drawable/AnimationDrawable;

.field mAnimationHandler:Landroid/os/Handler;

.field mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;


# direct methods
.method public constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0
    .param p2, "aniDrawable"    # Landroid/graphics/drawable/AnimationDrawable;

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 1038
    iput-object p2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 1039
    return-void
.end method


# virtual methods
.method public getTotalDuration()I
    .locals 3

    .prologue
    .line 1085
    const/4 v0, 0x0

    .line 1086
    .local v0, "duration":I
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_0

    .line 1087
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1088
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 1087
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1092
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    .line 1079
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract onAnimationEnd()V
.end method

.method public start()V
    .locals 4

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_0

    .line 1056
    :goto_0
    return-void

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1047
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->mAnimationHandler:Landroid/os/Handler;

    .line 1048
    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener$1;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->mRunnable:Ljava/lang/Runnable;

    .line 1054
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->getTotalDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1060
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 1061
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1064
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1065
    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 1067
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1068
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1069
    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->mAnimationHandler:Landroid/os/Handler;

    .line 1071
    :cond_2
    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->mRunnable:Ljava/lang/Runnable;

    .line 1072
    return-void
.end method
