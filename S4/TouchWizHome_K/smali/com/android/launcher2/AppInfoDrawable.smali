.class public Lcom/android/launcher2/AppInfoDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AppInfoDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AppInfoDrawable$BulgeAnimationListener;
    }
.end annotation


# static fields
.field private static final SCALE_DURATION:I = 0x96

.field public static final SCALE_FACTOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/AppInfoDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppInfo:Landroid/graphics/drawable/Drawable;

.field private mBounds:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mCurrentAnimator:Landroid/animation/Animator;

.field private mDirection:F

.field private mIsAnimatingTranslate:Z

.field private mIsRepeat:Z

.field private mOriginalBounds:Landroid/graphics/Rect;

.field private mPreviousTranslateValue:F

.field private mScaleAnimator:Landroid/animation/Animator;

.field private mScaleFactor:F

.field private mTranslateAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mTranslateDy:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    new-instance v0, Lcom/android/launcher2/AppInfoDrawable$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "scaleFactor"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/AppInfoDrawable$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/AppInfoDrawable;->SCALE_FACTOR:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mAppInfoDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mBounds:Landroid/graphics/Rect;

    .line 46
    iput v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mTranslateDy:F

    .line 47
    iput-boolean v1, p0, Lcom/android/launcher2/AppInfoDrawable;->mIsAnimatingTranslate:Z

    .line 48
    iput-boolean v1, p0, Lcom/android/launcher2/AppInfoDrawable;->mIsRepeat:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    .line 52
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mScaleFactor:F

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mTranslateAnimators:Ljava/util/ArrayList;

    .line 241
    iput v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mPreviousTranslateValue:F

    .line 242
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mDirection:F

    .line 78
    iput-object p1, p0, Lcom/android/launcher2/AppInfoDrawable;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/android/launcher2/AppInfoDrawable;->mAppInfo:Landroid/graphics/drawable/Drawable;

    .line 80
    invoke-direct {p0}, Lcom/android/launcher2/AppInfoDrawable;->initAnimations()V

    .line 81
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/AppInfoDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/AppInfoDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/launcher2/AppInfoDrawable;->mIsAnimatingTranslate:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/launcher2/AppInfoDrawable;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/AppInfoDrawable;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/launcher2/AppInfoDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/launcher2/AppInfoDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/AppInfoDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/launcher2/AppInfoDrawable;->mIsRepeat:Z

    return p1
.end method

.method private initAnimations()V
    .locals 4

    .prologue
    .line 86
    iget-object v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mContext:Landroid/content/Context;

    const v3, 0x7f050003

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 87
    .local v1, "dummyAnimator":Landroid/animation/Animator;
    invoke-virtual {v1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 89
    iget-object v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mContext:Landroid/content/Context;

    const v3, 0x7f050004

    invoke-static {v2, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 90
    .local v0, "TranslateAnimator":Landroid/animation/Animator;
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 92
    iget-object v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mTranslateAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mTranslateAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method private setScaleAnimation(Z)V
    .locals 4
    .param p1, "isStart"    # Z

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mScaleAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 181
    :cond_0
    sget-object v1, Lcom/android/launcher2/AppInfoDrawable;->SCALE_FACTOR:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v2, v0, [F

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const v0, 0x3f933333    # 1.15f

    :goto_0
    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mScaleAnimator:Landroid/animation/Animator;

    .line 182
    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mScaleAnimator:Landroid/animation/Animator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 183
    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mScaleAnimator:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 184
    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 185
    return-void

    .line 181
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private startTranslateAnimation()V
    .locals 4

    .prologue
    .line 189
    iget-boolean v1, p0, Lcom/android/launcher2/AppInfoDrawable;->mIsAnimatingTranslate:Z

    if-nez v1, :cond_0

    .line 190
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/AppInfoDrawable;->mTranslateDy:F

    .line 192
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 193
    .local v0, "set":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lcom/android/launcher2/AppInfoDrawable;->mTranslateAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 194
    new-instance v1, Lcom/android/launcher2/AppInfoDrawable$2;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher2/AppInfoDrawable$2;-><init>(Lcom/android/launcher2/AppInfoDrawable;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 208
    iget-boolean v1, p0, Lcom/android/launcher2/AppInfoDrawable;->mIsRepeat:Z

    if-nez v1, :cond_1

    .line 209
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 212
    :goto_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 216
    .end local v0    # "set":Landroid/animation/AnimatorSet;
    :cond_0
    return-void

    .line 211
    .restart local v0    # "set":Landroid/animation/AnimatorSet;
    :cond_1
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    goto :goto_0
.end method

.method private stopCurrentAnimation()V
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mIsAnimatingTranslate:Z

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mIsAnimatingTranslate:Z

    .line 223
    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mCurrentAnimator:Landroid/animation/Animator;

    .line 226
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 99
    iget-boolean v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mIsAnimatingTranslate:Z

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher2/AppInfoDrawable;->mTranslateDy:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 101
    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mAppInfo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 106
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 107
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mAppInfo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mAppInfo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mAppInfo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 155
    const/4 v0, -0x3

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mScaleFactor:F

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mAppInfo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 161
    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mAppInfo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 163
    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher2/AppInfoDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    .line 166
    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mAppInfo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 7
    .param p1, "state"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 122
    iget-object v5, p0, Lcom/android/launcher2/AppInfoDrawable;->mAppInfo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 124
    const/4 v2, 0x0

    .line 125
    .local v2, "selected":Z
    const/4 v0, 0x0

    .line 126
    .local v0, "enabled":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_2

    .line 127
    aget v5, p1, v1

    const v6, 0x10100a1

    if-ne v5, v6, :cond_0

    .line 128
    const/4 v2, 0x1

    .line 129
    :cond_0
    aget v5, p1, v1

    const v6, 0x101009e

    if-ne v5, v6, :cond_1

    .line 130
    const/4 v0, 0x1

    .line 126
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_2
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    move v2, v3

    .line 134
    :goto_1
    if-eqz v2, :cond_4

    .line 135
    iput-boolean v4, p0, Lcom/android/launcher2/AppInfoDrawable;->mIsRepeat:Z

    .line 136
    invoke-direct {p0, v3}, Lcom/android/launcher2/AppInfoDrawable;->setScaleAnimation(Z)V

    .line 137
    invoke-direct {p0}, Lcom/android/launcher2/AppInfoDrawable;->startTranslateAnimation()V

    .line 143
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/AppInfoDrawable;->invalidateSelf()V

    .line 144
    return v3

    :cond_3
    move v2, v4

    .line 132
    goto :goto_1

    .line 139
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/launcher2/AppInfoDrawable;->setScaleAnimation(Z)V

    .line 140
    invoke-direct {p0}, Lcom/android/launcher2/AppInfoDrawable;->stopCurrentAnimation()V

    goto :goto_2
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 148
    return-void
.end method

.method public setCancelAppinfoDummy(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/launcher2/AppInfoDrawable;->invalidateSelf()V

    .line 231
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mPreviousTranslateValue:F

    .line 233
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/launcher2/AppInfoDrawable;->mDirection:F

    .line 235
    :cond_0
    return-void
.end method

.method public setCancelAppinfoTranslate(F)V
    .locals 9
    .param p1, "value"    # F

    .prologue
    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v7, -0x3f600000    # -5.0f

    const/high16 v6, 0x40a00000    # 5.0f

    .line 245
    const/high16 v3, 0x41400000    # 12.0f

    .line 246
    .local v3, "kHalfCycles":F
    move v4, p1

    .line 247
    .local v4, "originValue":F
    const/high16 v5, 0x41400000    # 12.0f

    mul-float/2addr p1, v5

    .line 248
    const/high16 v2, 0x40a00000    # 5.0f

    .line 249
    .local v2, "kDyMaxValue":F
    iget v1, p0, Lcom/android/launcher2/AppInfoDrawable;->mTranslateDy:F

    .line 250
    .local v1, "dy":F
    iget v5, p0, Lcom/android/launcher2/AppInfoDrawable;->mPreviousTranslateValue:F

    sub-float v0, p1, v5

    .line 251
    .local v0, "dv":F
    iput p1, p0, Lcom/android/launcher2/AppInfoDrawable;->mPreviousTranslateValue:F

    .line 252
    iget v5, p0, Lcom/android/launcher2/AppInfoDrawable;->mDirection:F

    mul-float/2addr v5, v0

    mul-float/2addr v5, v6

    add-float/2addr v1, v5

    .line 254
    :cond_0
    :goto_0
    cmpl-float v5, v1, v6

    if-gtz v5, :cond_1

    cmpg-float v5, v1, v7

    if-gez v5, :cond_3

    .line 255
    :cond_1
    cmpl-float v5, v1, v6

    if-lez v5, :cond_2

    .line 256
    sub-float v5, v1, v6

    sub-float v1, v6, v5

    .line 257
    iget v5, p0, Lcom/android/launcher2/AppInfoDrawable;->mDirection:F

    mul-float/2addr v5, v8

    iput v5, p0, Lcom/android/launcher2/AppInfoDrawable;->mDirection:F

    goto :goto_0

    .line 259
    :cond_2
    cmpg-float v5, v1, v7

    if-gez v5, :cond_0

    .line 260
    add-float v5, v1, v6

    sub-float v1, v7, v5

    .line 261
    iget v5, p0, Lcom/android/launcher2/AppInfoDrawable;->mDirection:F

    mul-float/2addr v5, v8

    iput v5, p0, Lcom/android/launcher2/AppInfoDrawable;->mDirection:F

    goto :goto_0

    .line 265
    :cond_3
    iput v1, p0, Lcom/android/launcher2/AppInfoDrawable;->mTranslateDy:F

    .line 266
    invoke-virtual {p0}, Lcom/android/launcher2/AppInfoDrawable;->invalidateSelf()V

    .line 268
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/launcher2/AppInfoDrawable;->mIsAnimatingTranslate:Z

    if-eqz v5, :cond_4

    .line 269
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher2/AppInfoDrawable;->mIsAnimatingTranslate:Z

    .line 270
    invoke-direct {p0}, Lcom/android/launcher2/AppInfoDrawable;->startTranslateAnimation()V

    .line 272
    :cond_4
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 151
    return-void
.end method

.method public setScaleFactor(F)V
    .locals 6
    .param p1, "factor"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 55
    iget-object v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 69
    :goto_0
    return-void

    .line 56
    :cond_0
    iput p1, p0, Lcom/android/launcher2/AppInfoDrawable;->mScaleFactor:F

    .line 57
    iget-object v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v3, p1, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v1, v2

    .line 58
    .local v1, "deltaRight":I
    iget-object v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v3, p1, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v0, v2

    .line 59
    .local v0, "deltaBottom":I
    iget-object v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/AppInfoDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 60
    iget-object v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/AppInfoDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 61
    iget-object v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/AppInfoDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 62
    iget-object v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/AppInfoDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 63
    iget-object v2, p0, Lcom/android/launcher2/AppInfoDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppInfoDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/launcher2/AppInfoDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/AppInfoDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher2/AppInfoDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppInfoDrawable;->invalidateSelf()V

    goto :goto_0
.end method
