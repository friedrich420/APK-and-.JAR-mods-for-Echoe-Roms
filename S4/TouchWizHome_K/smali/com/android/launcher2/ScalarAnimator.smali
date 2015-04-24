.class public Lcom/android/launcher2/ScalarAnimator;
.super Ljava/lang/Object;
.source "ScalarAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;
    }
.end annotation


# instance fields
.field private mCurrent:F

.field private mDefaultDuration:J

.field private mDelay:J

.field private mDelta:F

.field private mDuration:J

.field private mEndListener:Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mInverseDuration:F

.field private mIsRunning:Z

.field private mStart:F

.field private mStartTime:J

.field private mStop:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    .line 32
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 33
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 34
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDelay:J

    .line 36
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 37
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 38
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    .line 39
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/ScalarAnimator;->mEndListener:Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;

    .line 58
    return-void
.end method

.method public constructor <init>(J)V
    .locals 5
    .param p1, "defaultDuration"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    .line 32
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 33
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 34
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDelay:J

    .line 36
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 37
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 38
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    .line 39
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/ScalarAnimator;->mEndListener:Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;

    .line 68
    iput-wide p1, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 69
    return-void
.end method

.method public constructor <init>(JF)V
    .locals 5
    .param p1, "defaultDuration"    # J
    .param p3, "initialStart"    # F

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    .line 32
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 33
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 34
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDelay:J

    .line 36
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 37
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 38
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    .line 39
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/ScalarAnimator;->mEndListener:Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;

    .line 93
    iput-wide p1, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 94
    iput p3, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    iput p3, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 95
    return-void
.end method

.method public constructor <init>(JFLandroid/view/animation/Interpolator;)V
    .locals 5
    .param p1, "defaultDuration"    # J
    .param p3, "initialStart"    # F
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    .line 32
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 33
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 34
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDelay:J

    .line 36
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 37
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 38
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    .line 39
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/ScalarAnimator;->mEndListener:Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;

    .line 130
    iput-wide p1, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 131
    iput p3, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    iput p3, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 132
    iput-object p4, p0, Lcom/android/launcher2/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 133
    return-void
.end method

.method public constructor <init>(JLandroid/view/animation/Interpolator;)V
    .locals 5
    .param p1, "defaultDuration"    # J
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    .line 32
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 33
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 34
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDelay:J

    .line 36
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 37
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 38
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    .line 39
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/ScalarAnimator;->mEndListener:Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;

    .line 109
    iput-wide p1, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 110
    iput-object p3, p0, Lcom/android/launcher2/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Interpolator;)V
    .locals 4
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    .line 32
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 33
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 34
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDelay:J

    .line 36
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 37
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 38
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    .line 39
    iput v1, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/ScalarAnimator;->mEndListener:Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;

    .line 79
    iput-object p1, p0, Lcom/android/launcher2/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 80
    return-void
.end method

.method private onEnd()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/launcher2/ScalarAnimator;->mEndListener:Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/launcher2/ScalarAnimator;->mEndListener:Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;

    iget v1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    invoke-interface {v0, v1}, Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;->run(F)V

    .line 472
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()Z
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    move-result v0

    return v0
.end method

.method public abort(F)Z
    .locals 4
    .param p1, "stop"    # F

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v0

    .line 160
    .local v0, "aborted":Z
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 161
    iput p1, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    iput p1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 162
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    .line 163
    return v0
.end method

.method public extend(FJ)V
    .locals 4
    .param p1, "stop"    # F
    .param p2, "extendDuration"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 183
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    cmp-long v0, p2, v2

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    if-nez v0, :cond_2

    .line 185
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/launcher2/ScalarAnimator;->start(FFJ)V

    .line 196
    :cond_1
    :goto_0
    return-void

    .line 187
    :cond_2
    iput p1, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    .line 188
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    iget v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    .line 189
    iget-wide v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 190
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 191
    :cond_3
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    goto :goto_0

    .line 193
    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    iget-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/ScalarAnimator;->mInverseDuration:F

    goto :goto_0
.end method

.method public get()F
    .locals 2

    .prologue
    .line 206
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/ScalarAnimator;->get(J)F

    move-result v0

    return v0
.end method

.method public get(J)F
    .locals 11
    .param p1, "currentTime"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 225
    iget-boolean v3, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    if-eqz v3, :cond_1

    .line 228
    iget-wide v4, p0, Lcom/android/launcher2/ScalarAnimator;->mStartTime:J

    sub-long v4, p1, v4

    iget-wide v6, p0, Lcom/android/launcher2/ScalarAnimator;->mDelay:J

    sub-long v0, v4, v6

    .line 229
    .local v0, "elapsedTime":J
    cmp-long v3, v0, v8

    if-gtz v3, :cond_0

    .line 231
    const-wide/16 v0, 0x0

    .line 232
    iget v3, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    iput v3, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 236
    :cond_0
    iget-wide v4, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    cmp-long v3, v0, v4

    if-ltz v3, :cond_2

    .line 237
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    .line 238
    iget v3, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    iput v3, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    .line 240
    invoke-direct {p0}, Lcom/android/launcher2/ScalarAnimator;->onEnd()V

    .line 254
    .end local v0    # "elapsedTime":J
    :cond_1
    :goto_0
    iget v3, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    return v3

    .line 241
    .restart local v0    # "elapsedTime":J
    :cond_2
    cmp-long v3, v0, v8

    if-lez v3, :cond_1

    .line 243
    long-to-float v3, v0

    iget v4, p0, Lcom/android/launcher2/ScalarAnimator;->mInverseDuration:F

    mul-float v2, v3, v4

    .line 246
    .local v2, "factor":F
    iget-object v3, p0, Lcom/android/launcher2/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_3

    .line 247
    iget-object v3, p0, Lcom/android/launcher2/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 248
    :cond_3
    iget v3, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    iget v4, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    goto :goto_0
.end method

.method public getFactor(J)F
    .locals 9
    .param p1, "currentTime"    # J

    .prologue
    .line 271
    const/4 v2, 0x0

    .line 272
    .local v2, "factor":F
    iget-wide v4, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    iget-wide v4, p0, Lcom/android/launcher2/ScalarAnimator;->mStartTime:J

    cmp-long v3, p1, v4

    if-lez v3, :cond_0

    .line 273
    iget-wide v4, p0, Lcom/android/launcher2/ScalarAnimator;->mStartTime:J

    sub-long v0, p1, v4

    .line 274
    .local v0, "elapsedTime":J
    iget-wide v4, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    cmp-long v3, v0, v4

    if-ltz v3, :cond_2

    .line 275
    const/high16 v2, 0x3f800000    # 1.0f

    .line 281
    .end local v0    # "elapsedTime":J
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_1

    .line 282
    iget-object v3, p0, Lcom/android/launcher2/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 283
    :cond_1
    return v2

    .line 277
    .restart local v0    # "elapsedTime":J
    :cond_2
    long-to-float v3, v0

    iget v4, p0, Lcom/android/launcher2/ScalarAnimator;->mInverseDuration:F

    mul-float v2, v3, v4

    goto :goto_0
.end method

.method public getRemaining()F
    .locals 2

    .prologue
    .line 293
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    iget v1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    return v0
.end method

.method public setDefaultDuration(J)V
    .locals 1
    .param p1, "defaultDuration"    # J

    .prologue
    .line 392
    iput-wide p1, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    .line 393
    return-void
.end method

.method public setEndListener(Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;)V
    .locals 0
    .param p1, "endListener"    # Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/launcher2/ScalarAnimator;->mEndListener:Lcom/android/launcher2/ScalarAnimator$ScalarAnimatorListener;

    .line 45
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/launcher2/ScalarAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 404
    return-void
.end method

.method public start(FF)V
    .locals 2
    .param p1, "start"    # F
    .param p2, "stop"    # F

    .prologue
    .line 319
    iget-wide v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/launcher2/ScalarAnimator;->start(FFJ)V

    .line 320
    return-void
.end method

.method public start(FFJ)V
    .locals 9
    .param p1, "start"    # F
    .param p2, "stop"    # F
    .param p3, "duration"    # J

    .prologue
    .line 341
    const-wide/16 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher2/ScalarAnimator;->start(FFJJ)V

    .line 342
    return-void
.end method

.method public start(FFJJ)V
    .locals 5
    .param p1, "start"    # F
    .param p2, "stop"    # F
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 367
    iput-wide p5, p0, Lcom/android/launcher2/ScalarAnimator;->mDelay:J

    .line 368
    iput p1, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    iput p1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    .line 369
    iput p2, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    .line 370
    iput-wide p3, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 371
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    iget v1, p0, Lcom/android/launcher2/ScalarAnimator;->mStart:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    .line 372
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDelta:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 373
    :cond_0
    iput-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    .line 378
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    .line 379
    return-void

    .line 375
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    iget-wide v2, p0, Lcom/android/launcher2/ScalarAnimator;->mDuration:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/ScalarAnimator;->mInverseDuration:F

    .line 376
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher2/ScalarAnimator;->mStartTime:J

    goto :goto_0
.end method

.method public to(F)V
    .locals 2
    .param p1, "stop"    # F

    .prologue
    .line 417
    iget-wide v0, p0, Lcom/android/launcher2/ScalarAnimator;->mDefaultDuration:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/ScalarAnimator;->to(FJ)V

    .line 418
    return-void
.end method

.method public to(FJ)V
    .locals 6
    .param p1, "stop"    # F
    .param p2, "duration"    # J

    .prologue
    .line 436
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/ScalarAnimator;->to(FJJ)V

    .line 437
    return-void
.end method

.method public to(FJJ)V
    .locals 8
    .param p1, "stop"    # F
    .param p2, "duration"    # J
    .param p4, "delay"    # J

    .prologue
    .line 458
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 459
    iget v2, p0, Lcom/android/launcher2/ScalarAnimator;->mCurrent:F

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher2/ScalarAnimator;->start(FFJJ)V

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    iget v0, p0, Lcom/android/launcher2/ScalarAnimator;->mStop:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/ScalarAnimator;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p0, p1}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    goto :goto_0
.end method
