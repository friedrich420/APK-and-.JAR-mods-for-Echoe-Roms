.class public Lcom/android/launcher2/NewPageDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NewPageDrawable.java"


# static fields
.field private static final DURATION:I = 0xc8

.field public static final OPEN_FACTOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/NewPageDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALE_FACTOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/NewPageDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBack:Landroid/graphics/drawable/Drawable;

.field private mBounds:Landroid/graphics/Rect;

.field private mFront:Landroid/graphics/drawable/Drawable;

.field private mOpenAnimator:Landroid/animation/Animator;

.field private mOpenFactor:F

.field private mOriginalBounds:Landroid/graphics/Rect;

.field private mScaleAnimator:Landroid/animation/Animator;

.field private mScaleFactor:F

.field private mSelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lcom/android/launcher2/NewPageDrawable$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "openFactor"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/NewPageDrawable$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/NewPageDrawable;->OPEN_FACTOR:Landroid/util/Property;

    .line 74
    new-instance v0, Lcom/android/launcher2/NewPageDrawable$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "scaleFactor"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/NewPageDrawable$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/NewPageDrawable;->SCALE_FACTOR:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mBounds:Landroid/graphics/Rect;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/NewPageDrawable;->mSelected:Z

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenFactor:F

    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher2/NewPageDrawable;->mScaleFactor:F

    .line 81
    iput-object p2, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    .line 82
    iput-object p2, p0, Lcom/android/launcher2/NewPageDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    .line 83
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020121

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v2, 0x3d4ccccd    # 0.05f

    const v3, -0x42b33333    # -0.05f

    .line 90
    iget-boolean v0, p0, Lcom/android/launcher2/NewPageDrawable;->mSelected:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 92
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenFactor:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenFactor:F

    mul-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 94
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 99
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenFactor:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenFactor:F

    mul-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 101
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 102
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 103
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, -0x3

    return v0
.end method

.method public getOpenFactor()F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenFactor:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/android/launcher2/NewPageDrawable;->mScaleFactor:F

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 182
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 183
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 185
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher2/NewPageDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    .line 188
    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 8
    .param p1, "level"    # I

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 112
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 113
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 115
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 118
    :cond_0
    sget-object v2, Lcom/android/launcher2/NewPageDrawable;->OPEN_FACTOR:Landroid/util/Property;

    new-array v3, v4, [F

    if-ne p1, v4, :cond_3

    move v0, v1

    :goto_0
    aput v0, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenAnimator:Landroid/animation/Animator;

    .line 119
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 120
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenAnimator:Landroid/animation/Animator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 122
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mScaleAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 125
    :cond_1
    sget-object v0, Lcom/android/launcher2/NewPageDrawable;->SCALE_FACTOR:Landroid/util/Property;

    new-array v2, v4, [F

    if-ne p1, v4, :cond_2

    const v1, 0x3f933333    # 1.15f

    :cond_2
    aput v1, v2, v5

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mScaleAnimator:Landroid/animation/Animator;

    .line 126
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 127
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mScaleAnimator:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 129
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 130
    iget-object v0, p0, Lcom/android/launcher2/NewPageDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 131
    return v4

    .line 118
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 12
    .param p1, "state"    # [I

    .prologue
    const-wide/16 v10, 0xc8

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 136
    iget-object v5, p0, Lcom/android/launcher2/NewPageDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 137
    iget-object v5, p0, Lcom/android/launcher2/NewPageDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 139
    iget-object v5, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenAnimator:Landroid/animation/Animator;

    if-eqz v5, :cond_0

    .line 140
    iget-object v5, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    .line 142
    :cond_0
    const/4 v2, 0x0

    .line 143
    .local v2, "selected":Z
    const/4 v0, 0x0

    .line 144
    .local v0, "enabled":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_3

    .line 145
    aget v5, p1, v1

    const v7, 0x10100a1

    if-ne v5, v7, :cond_1

    .line 146
    const/4 v2, 0x1

    .line 147
    :cond_1
    aget v5, p1, v1

    const v7, 0x101009e

    if-ne v5, v7, :cond_2

    .line 148
    const/4 v0, 0x1

    .line 144
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    move v2, v3

    .line 152
    :goto_1
    iget-boolean v5, p0, Lcom/android/launcher2/NewPageDrawable;->mSelected:Z

    if-ne v2, v5, :cond_5

    .line 165
    :goto_2
    return v3

    :cond_4
    move v2, v4

    .line 150
    goto :goto_1

    .line 153
    :cond_5
    iput-boolean v2, p0, Lcom/android/launcher2/NewPageDrawable;->mSelected:Z

    .line 155
    sget-object v7, Lcom/android/launcher2/NewPageDrawable;->OPEN_FACTOR:Landroid/util/Property;

    new-array v8, v3, [F

    if-eqz v2, :cond_7

    move v5, v6

    :goto_3
    aput v5, v8, v4

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenAnimator:Landroid/animation/Animator;

    .line 156
    iget-object v5, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenAnimator:Landroid/animation/Animator;

    invoke-virtual {v5, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 157
    iget-object v5, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenAnimator:Landroid/animation/Animator;

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 159
    sget-object v5, Lcom/android/launcher2/NewPageDrawable;->SCALE_FACTOR:Landroid/util/Property;

    new-array v7, v3, [F

    if-eqz v2, :cond_6

    const v6, 0x3f933333    # 1.15f

    :cond_6
    aput v6, v7, v4

    invoke-static {p0, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/NewPageDrawable;->mScaleAnimator:Landroid/animation/Animator;

    .line 160
    iget-object v4, p0, Lcom/android/launcher2/NewPageDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v4, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 161
    iget-object v4, p0, Lcom/android/launcher2/NewPageDrawable;->mScaleAnimator:Landroid/animation/Animator;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 163
    iget-object v4, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    .line 164
    iget-object v4, p0, Lcom/android/launcher2/NewPageDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    goto :goto_2

    .line 155
    :cond_7
    const/4 v5, 0x0

    goto :goto_3
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 169
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 172
    return-void
.end method

.method public setOpenFactor(F)V
    .locals 0
    .param p1, "factor"    # F

    .prologue
    .line 46
    iput p1, p0, Lcom/android/launcher2/NewPageDrawable;->mOpenFactor:F

    .line 47
    invoke-virtual {p0}, Lcom/android/launcher2/NewPageDrawable;->invalidateSelf()V

    .line 48
    return-void
.end method

.method public setScaleFactor(F)V
    .locals 6
    .param p1, "factor"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 58
    iget-object v2, p0, Lcom/android/launcher2/NewPageDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 73
    :goto_0
    return-void

    .line 59
    :cond_0
    iput p1, p0, Lcom/android/launcher2/NewPageDrawable;->mScaleFactor:F

    .line 60
    iget-object v2, p0, Lcom/android/launcher2/NewPageDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v3, p1, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v1, v2

    .line 61
    .local v1, "deltaRight":I
    iget-object v2, p0, Lcom/android/launcher2/NewPageDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v3, p1, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v0, v2

    .line 62
    .local v0, "deltaBottom":I
    iget-object v2, p0, Lcom/android/launcher2/NewPageDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/NewPageDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 63
    iget-object v2, p0, Lcom/android/launcher2/NewPageDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/NewPageDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 64
    iget-object v2, p0, Lcom/android/launcher2/NewPageDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/NewPageDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 65
    iget-object v2, p0, Lcom/android/launcher2/NewPageDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/NewPageDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 67
    iget-object v2, p0, Lcom/android/launcher2/NewPageDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/NewPageDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/launcher2/NewPageDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/NewPageDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/android/launcher2/NewPageDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/NewPageDrawable;->invalidateSelf()V

    goto :goto_0
.end method
