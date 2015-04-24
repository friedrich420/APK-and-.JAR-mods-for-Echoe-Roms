.class public Lcom/android/launcher2/DeleteDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DeleteDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;
    }
.end annotation


# static fields
.field private static final SCALE_DURATION:I = 0x96

.field public static final SCALE_FACTOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/DeleteDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final kLidUpHeight:I

.field private mAngleDirection:F

.field private mBounds:Landroid/graphics/Rect;

.field private mBulgeAnimationListener:Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;

.field private mBulgeFrameNumber:I

.field private mBulgeFrames:[Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mCurrentAnimator:Landroid/animation/Animator;

.field private mIsAnimatingBulge:Z

.field private mIsAnimatingShake:Z

.field private mLidAngle:F

.field private mLidOffsetY:I

.field private mOriginalBounds:Landroid/graphics/Rect;

.field private mPreviousLidShakeValue:F

.field private mScaleAnimator:Landroid/animation/Animator;

.field private mScaleFactor:F

.field private mShakeAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mTrashBinOnly:Landroid/graphics/drawable/Drawable;

.field private mTrashCan:Landroid/graphics/drawable/Drawable;

.field private mTrashLidOnly:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Lcom/android/launcher2/DeleteDrawable$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "scaleFactor"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/DeleteDrawable$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/DeleteDrawable;->SCALE_FACTOR:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trashcan"    # Landroid/graphics/drawable/Drawable;
    .param p3, "binOnly"    # Landroid/graphics/drawable/Drawable;
    .param p4, "lidOnly"    # Landroid/graphics/drawable/Drawable;
    .param p5, "isDelete"    # Z
    .param p6, "bulgeListener"    # Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;

    .prologue
    const/4 v7, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0200b8

    .line 87
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 48
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBounds:Landroid/graphics/Rect;

    .line 50
    iput v3, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:I

    .line 51
    iput v5, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    .line 52
    iput-boolean v3, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    .line 53
    iput-boolean v3, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    .line 55
    iput v3, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrameNumber:I

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    .line 60
    iput v6, p0, Lcom/android/launcher2/DeleteDrawable;->mScaleFactor:F

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mShakeAnimators:Ljava/util/ArrayList;

    .line 354
    iput v7, p0, Lcom/android/launcher2/DeleteDrawable;->kLidUpHeight:I

    .line 380
    iput v5, p0, Lcom/android/launcher2/DeleteDrawable;->mPreviousLidShakeValue:F

    .line 381
    iput v6, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    .line 88
    iput-object p1, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    .line 90
    iput-object p3, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashBinOnly:Landroid/graphics/drawable/Drawable;

    .line 91
    iput-object p4, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashLidOnly:Landroid/graphics/drawable/Drawable;

    .line 94
    const/4 v1, 0x6

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    .line 95
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v3

    .line 98
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 99
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v7

    .line 100
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 101
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 102
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 104
    iput-object p6, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeAnimationListener:Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;

    .line 105
    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->initAnimations()V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/DeleteDrawable;)Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/DeleteDrawable;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeAnimationListener:Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/DeleteDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/DeleteDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/launcher2/DeleteDrawable;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/DeleteDrawable;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method private drawShakeAnimation(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 143
    const/high16 v5, 0x3f800000    # 1.0f

    .line 144
    .local v5, "scale":F
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->getIntrinsicWidth()I

    move-result v8

    .line 145
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->getIntrinsicHeight()I

    move-result v2

    .line 146
    .local v2, "height":I
    int-to-float v9, v8

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    float-to-int v7, v9

    .line 147
    .local v7, "scaledW":I
    int-to-float v9, v2

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    float-to-int v6, v9

    .line 148
    .local v6, "scaledH":I
    sub-int v0, v7, v8

    .line 149
    .local v0, "deltaX":I
    sub-int v1, v6, v2

    .line 150
    .local v1, "deltaY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 151
    neg-int v9, v0

    int-to-double v10, v9

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    double-to-float v9, v10

    neg-int v10, v1

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    double-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 152
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 154
    iget-object v9, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashBinOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 156
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v3, v9, 0x2

    .line 157
    .local v3, "lidCenterX":I
    iget-object v9, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashLidOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    div-int/lit8 v4, v9, 0x5

    .line 159
    .local v4, "lidCenterY":I
    iget v9, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    int-to-float v10, v3

    iget v11, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:I

    sub-int v11, v4, v11

    int-to-float v11, v11

    invoke-virtual {p1, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 160
    const/4 v9, 0x0

    iget v10, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:I

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 161
    iget-object v9, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashLidOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 164
    return-void
.end method

.method private initAnimations()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3c

    .line 110
    iget-object v3, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    const v4, 0x7f05001b

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 111
    .local v2, "upAnimator":Landroid/animation/Animator;
    invoke-virtual {v2, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 114
    iget-object v3, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    const v4, 0x7f05001a

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 115
    .local v1, "shakeAnimator":Landroid/animation/Animator;
    invoke-virtual {v1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 116
    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 118
    iget-object v3, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    const v4, 0x7f050019

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 119
    .local v0, "downAnimator":Landroid/animation/Animator;
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 120
    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 122
    iget-object v3, p0, Lcom/android/launcher2/DeleteDrawable;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v3, p0, Lcom/android/launcher2/DeleteDrawable;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v3, p0, Lcom/android/launcher2/DeleteDrawable;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method private setScaleAnimation(Z)V
    .locals 4
    .param p1, "isStart"    # Z

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mScaleAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 307
    :cond_0
    sget-object v1, Lcom/android/launcher2/DeleteDrawable;->SCALE_FACTOR:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v2, v0, [F

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const v0, 0x3f933333    # 1.15f

    :goto_0
    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mScaleAnimator:Landroid/animation/Animator;

    .line 308
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mScaleAnimator:Landroid/animation/Animator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 309
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mScaleAnimator:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 310
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 311
    return-void

    .line 307
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private startAnimator(IJ)V
    .locals 2
    .param p1, "animatorId"    # I
    .param p2, "startDelay"    # J

    .prologue
    .line 262
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 266
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 267
    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 268
    const v1, 0x7f050018

    if-ne p1, v1, :cond_1

    .line 269
    new-instance v1, Lcom/android/launcher2/DeleteDrawable$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/DeleteDrawable$2;-><init>(Lcom/android/launcher2/DeleteDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 289
    :cond_1
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 290
    iput-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    .line 291
    return-void
.end method

.method private startBulgeAnimation()V
    .locals 4

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    if-eqz v0, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->stopCurrentAnimation()V

    .line 296
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    if-nez v0, :cond_1

    .line 297
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrameNumber:I

    .line 298
    const v0, 0x7f050018

    const-wide/16 v2, 0x3c

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher2/DeleteDrawable;->startAnimator(IJ)V

    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    .line 301
    :cond_1
    return-void
.end method

.method private startShakeAnimation()V
    .locals 4

    .prologue
    .line 314
    iget-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    if-eqz v1, :cond_0

    .line 315
    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->stopCurrentAnimation()V

    .line 316
    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    if-nez v1, :cond_1

    .line 317
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    .line 318
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:I

    .line 320
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 321
    .local v0, "set":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 322
    new-instance v1, Lcom/android/launcher2/DeleteDrawable$3;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/DeleteDrawable$3;-><init>(Lcom/android/launcher2/DeleteDrawable;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 335
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 336
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 338
    .end local v0    # "set":Landroid/animation/AnimatorSet;
    :cond_1
    return-void
.end method

.method private stopCurrentAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 341
    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    if-eqz v0, :cond_1

    .line 344
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    .line 345
    iput-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    .line 346
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    .line 349
    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 130
    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrameNumber:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 139
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 140
    return-void

    .line 133
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    if-eqz v0, :cond_1

    .line 134
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeleteDrawable;->drawShakeAnimation(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 228
    const/4 v0, -0x3

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/android/launcher2/DeleteDrawable;->mScaleFactor:F

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 234
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 235
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashBinOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 236
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashLidOnly:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 237
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 238
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    .line 245
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher2/DeleteDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    .line 247
    :cond_2
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 8
    .param p1, "state"    # [I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 180
    iget-object v6, p0, Lcom/android/launcher2/DeleteDrawable;->mTrashCan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 182
    const/4 v3, 0x0

    .line 183
    .local v3, "selected":Z
    const/4 v1, 0x0

    .line 184
    .local v1, "enabled":Z
    const/4 v0, 0x0

    .line 185
    .local v0, "activated":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, p1

    if-ge v2, v6, :cond_3

    .line 186
    aget v6, p1, v2

    const v7, 0x10100a1

    if-ne v6, v7, :cond_0

    .line 187
    const/4 v3, 0x1

    .line 188
    :cond_0
    aget v6, p1, v2

    const v7, 0x101009e

    if-ne v6, v7, :cond_1

    .line 189
    const/4 v1, 0x1

    .line 190
    :cond_1
    aget v6, p1, v2

    const v7, 0x10102fe

    if-ne v6, v7, :cond_2

    .line 191
    const/4 v0, 0x1

    .line 185
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_3
    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    move v3, v4

    .line 194
    :goto_1
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    move v0, v4

    .line 196
    :goto_2
    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    .line 197
    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->startBulgeAnimation()V

    .line 206
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->invalidateSelf()V

    .line 208
    return v4

    :cond_5
    move v3, v5

    .line 193
    goto :goto_1

    :cond_6
    move v0, v5

    .line 194
    goto :goto_2

    .line 198
    :cond_7
    if-eqz v3, :cond_8

    .line 199
    invoke-direct {p0, v4}, Lcom/android/launcher2/DeleteDrawable;->setScaleAnimation(Z)V

    .line 200
    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->startShakeAnimation()V

    goto :goto_3

    .line 201
    :cond_8
    if-nez v0, :cond_4

    .line 202
    invoke-direct {p0, v5}, Lcom/android/launcher2/DeleteDrawable;->setScaleAnimation(Z)V

    .line 203
    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->stopCurrentAnimation()V

    goto :goto_3
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 221
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 224
    return-void
.end method

.method public setScaleFactor(F)V
    .locals 6
    .param p1, "factor"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 63
    iget-object v2, p0, Lcom/android/launcher2/DeleteDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 77
    :goto_0
    return-void

    .line 64
    :cond_0
    iput p1, p0, Lcom/android/launcher2/DeleteDrawable;->mScaleFactor:F

    .line 65
    iget-object v2, p0, Lcom/android/launcher2/DeleteDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v3, p1, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v1, v2

    .line 66
    .local v1, "deltaRight":I
    iget-object v2, p0, Lcom/android/launcher2/DeleteDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v3, p1, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v0, v2

    .line 67
    .local v0, "deltaBottom":I
    iget-object v2, p0, Lcom/android/launcher2/DeleteDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/DeleteDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 68
    iget-object v2, p0, Lcom/android/launcher2/DeleteDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/DeleteDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 69
    iget-object v2, p0, Lcom/android/launcher2/DeleteDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/DeleteDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 70
    iget-object v2, p0, Lcom/android/launcher2/DeleteDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/DeleteDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 71
    iget-object v2, p0, Lcom/android/launcher2/DeleteDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/DeleteDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public setTrashCanFill(F)V
    .locals 4
    .param p1, "value"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 212
    iget-object v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float v0, v3, v1

    .line 213
    .local v0, "kValuePerFrame":F
    div-float v1, p1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrames:[Landroid/graphics/drawable/Drawable;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/DeleteDrawable;->mBulgeFrameNumber:I

    .line 214
    cmpl-float v1, p1, v3

    if-ltz v1, :cond_0

    .line 215
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingBulge:Z

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->invalidateSelf()V

    .line 218
    return-void
.end method

.method public setTrashCanLidDown(F)V
    .locals 3
    .param p1, "value"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 365
    const/high16 v0, 0x40000000    # 2.0f

    sub-float v1, v2, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:I

    .line 366
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    .line 367
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->invalidateSelf()V

    .line 370
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    if-eqz v0, :cond_0

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/DeleteDrawable;->mIsAnimatingShake:Z

    .line 372
    invoke-direct {p0}, Lcom/android/launcher2/DeleteDrawable;->startShakeAnimation()V

    .line 374
    :cond_0
    return-void
.end method

.method public setTrashCanLidShake(F)V
    .locals 8
    .param p1, "value"    # F

    .prologue
    const/high16 v7, -0x3ec00000    # -12.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v5, 0x41400000    # 12.0f

    .line 384
    const/high16 v2, 0x41000000    # 8.0f

    .line 385
    .local v2, "kHalfCycles":F
    const/high16 v4, 0x41000000    # 8.0f

    mul-float/2addr p1, v4

    .line 386
    const/high16 v3, 0x41400000    # 12.0f

    .line 387
    .local v3, "kShakeMaxAngle":F
    iget v0, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    .line 388
    .local v0, "angle":F
    iget v4, p0, Lcom/android/launcher2/DeleteDrawable;->mPreviousLidShakeValue:F

    sub-float v1, p1, v4

    .line 389
    .local v1, "dv":F
    iput p1, p0, Lcom/android/launcher2/DeleteDrawable;->mPreviousLidShakeValue:F

    .line 390
    iget v4, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    mul-float/2addr v4, v1

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    .line 391
    cmpl-float v4, v0, v5

    if-lez v4, :cond_1

    .line 392
    sub-float v4, v0, v5

    sub-float v0, v5, v4

    .line 393
    iget v4, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    mul-float/2addr v4, v6

    iput v4, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    .line 398
    :cond_0
    :goto_0
    iput v0, p0, Lcom/android/launcher2/DeleteDrawable;->mLidAngle:F

    .line 399
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->invalidateSelf()V

    .line 400
    return-void

    .line 394
    :cond_1
    cmpg-float v4, v0, v7

    if-gez v4, :cond_0

    .line 395
    add-float v4, v0, v5

    sub-float v0, v7, v4

    .line 396
    iget v4, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    mul-float/2addr v4, v6

    iput v4, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    goto :goto_0
.end method

.method public setTrashCanLidUp(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 356
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/launcher2/DeleteDrawable;->mLidOffsetY:I

    .line 357
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteDrawable;->invalidateSelf()V

    .line 358
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/DeleteDrawable;->mPreviousLidShakeValue:F

    .line 360
    iput v1, p0, Lcom/android/launcher2/DeleteDrawable;->mAngleDirection:F

    .line 362
    :cond_0
    return-void
.end method
