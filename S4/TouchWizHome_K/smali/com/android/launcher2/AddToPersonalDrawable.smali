.class public Lcom/android/launcher2/AddToPersonalDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AddToPersonalDrawable.java"


# static fields
.field public static final SCALE_FACTOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/AddToPersonalDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddToPersonal:Landroid/graphics/drawable/Drawable;

.field private mBounds:Landroid/graphics/Rect;

.field private mOriginalBounds:Landroid/graphics/Rect;

.field private mScaleAnimator:Landroid/animation/Animator;

.field private mScaleFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/android/launcher2/AddToPersonalDrawable$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "scaleFactor"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/AddToPersonalDrawable$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/AddToPersonalDrawable;->SCALE_FACTOR:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "mAddToPersonalDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mBounds:Landroid/graphics/Rect;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mScaleFactor:F

    .line 65
    iput-object p1, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mAddToPersonal:Landroid/graphics/drawable/Drawable;

    .line 66
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mAddToPersonal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 73
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mAddToPersonal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mAddToPersonal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, -0x3

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mScaleFactor:F

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mAddToPersonal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 134
    iget-object v0, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mAddToPersonal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 136
    iget-object v0, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    .line 139
    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mAddToPersonal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 12
    .param p1, "state"    # [I

    .prologue
    const-wide/16 v10, 0xa0

    const-wide/16 v8, 0x0

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 88
    iget-object v5, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mAddToPersonal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 90
    const/4 v2, 0x0

    .line 91
    .local v2, "selected":Z
    const/4 v0, 0x0

    .line 92
    .local v0, "enabled":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_2

    .line 93
    aget v5, p1, v1

    const v6, 0x10100a1

    if-ne v5, v6, :cond_0

    .line 94
    const/4 v2, 0x1

    .line 95
    :cond_0
    aget v5, p1, v1

    const v6, 0x101009e

    if-ne v5, v6, :cond_1

    .line 96
    const/4 v0, 0x1

    .line 92
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_2
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    move v2, v3

    .line 100
    :goto_1
    if-eqz v2, :cond_4

    .line 102
    sget-object v5, Lcom/android/launcher2/AddToPersonalDrawable;->SCALE_FACTOR:Landroid/util/Property;

    new-array v6, v7, [F

    iget v7, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mScaleFactor:F

    aput v7, v6, v4

    const v4, 0x3f933333    # 1.15f

    aput v4, v6, v3

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mScaleAnimator:Landroid/animation/Animator;

    .line 103
    iget-object v4, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v4, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 104
    iget-object v4, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v4, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 113
    :goto_2
    iget-object v4, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mScaleAnimator:Landroid/animation/Animator;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 114
    iget-object v4, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    .line 116
    return v3

    :cond_3
    move v2, v4

    .line 98
    goto :goto_1

    .line 108
    :cond_4
    sget-object v5, Lcom/android/launcher2/AddToPersonalDrawable;->SCALE_FACTOR:Landroid/util/Property;

    new-array v6, v7, [F

    iget v7, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mScaleFactor:F

    aput v7, v6, v4

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v6, v3

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mScaleAnimator:Landroid/animation/Animator;

    .line 109
    iget-object v4, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v4, v8, v9}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 110
    iget-object v4, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v4, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto :goto_2
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 120
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 123
    return-void
.end method

.method public setScaleFactor(F)V
    .locals 6
    .param p1, "factor"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 39
    iget-object v2, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 56
    :goto_0
    return-void

    .line 40
    :cond_0
    iput p1, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mScaleFactor:F

    .line 41
    iget-object v2, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v3, p1, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v1, v2

    .line 42
    .local v1, "deltaRight":I
    iget-object v2, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v3, p1, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v0, v2

    .line 43
    .local v0, "deltaBottom":I
    iget-object v2, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 44
    iget-object v2, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 45
    iget-object v2, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 46
    iget-object v2, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 48
    iget-object v2, p0, Lcom/android/launcher2/AddToPersonalDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AddToPersonalDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/launcher2/AddToPersonalDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/AddToPersonalDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/android/launcher2/AddToPersonalDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/AddToPersonalDrawable;->invalidateSelf()V

    goto :goto_0
.end method
