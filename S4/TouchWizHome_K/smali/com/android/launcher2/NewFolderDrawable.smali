.class public Lcom/android/launcher2/NewFolderDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "NewFolderDrawable.java"


# static fields
.field public static final OPEN_FACTOR:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/NewFolderDrawable;",
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
            "Lcom/android/launcher2/NewFolderDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBack:Landroid/graphics/drawable/Drawable;

.field private mBounds:Landroid/graphics/Rect;

.field private mCamera:Landroid/graphics/Camera;

.field private mFront:Landroid/graphics/drawable/Drawable;

.field private mMatrix:Landroid/graphics/Matrix;

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
    .line 75
    new-instance v0, Lcom/android/launcher2/NewFolderDrawable$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "openFactor"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/NewFolderDrawable$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/NewFolderDrawable;->OPEN_FACTOR:Landroid/util/Property;

    .line 80
    new-instance v0, Lcom/android/launcher2/NewFolderDrawable$2;

    const-class v1, Ljava/lang/Float;

    const-string v2, "scaleFactor"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/NewFolderDrawable$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/NewFolderDrawable;->SCALE_FACTOR:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mMatrix:Landroid/graphics/Matrix;

    .line 41
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mSelected:Z

    .line 46
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleFactor:F

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    .line 87
    iput-object p2, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    .line 88
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    .line 91
    :cond_0
    return-void
.end method

.method private drawPiece(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "d"    # Landroid/graphics/drawable/Drawable;
    .param p3, "openAngleX"    # F
    .param p4, "openAngleY"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 101
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    .line 102
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v4

    .line 103
    .local v1, "focalX":F
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v2, v3, v4

    .line 107
    .local v2, "focalY":F
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f451eb8    # 0.77f

    mul-float/2addr v3, v4

    sub-float v0, v3, v2

    .line 109
    .local v0, "bottomOfFolder":F
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    iget v4, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    mul-float/2addr v4, p4

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->rotateY(F)V

    .line 111
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    neg-float v4, v0

    invoke-virtual {v3, v5, v4, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 112
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    iget v4, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    mul-float/2addr v4, p3

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->rotateX(F)V

    .line 113
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3, v5, v0, v5}, Landroid/graphics/Camera;->translate(FFF)V

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 116
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    iget-object v4, p0, Lcom/android/launcher2/NewFolderDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 117
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mMatrix:Landroid/graphics/Matrix;

    neg-float v4, v1

    neg-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 118
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 119
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 120
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 123
    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    .line 125
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-boolean v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mSelected:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/launcher2/NewFolderDrawable;->drawPiece(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    const/high16 v1, -0x3e380000    # -25.0f

    const/high16 v2, -0x3e900000    # -15.0f

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/launcher2/NewFolderDrawable;->drawPiece(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 98
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 210
    const/4 v0, -0x3

    return v0
.end method

.method public getOpenFactor()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleFactor:F

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 217
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 218
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 220
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    .line 224
    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 135
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 137
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 141
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 14
    .param p1, "state"    # [I

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const-wide/16 v12, 0x0

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 146
    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 147
    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 149
    const/4 v3, 0x0

    .line 150
    .local v3, "selected":Z
    const/4 v0, 0x0

    .line 151
    .local v0, "enabled":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_2

    .line 152
    aget v6, p1, v1

    const v7, 0x10100a1

    if-ne v6, v7, :cond_0

    .line 153
    const/4 v3, 0x1

    .line 154
    :cond_0
    aget v6, p1, v1

    const v7, 0x101009e

    if-ne v6, v7, :cond_1

    .line 155
    const/4 v0, 0x1

    .line 151
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    move v3, v4

    .line 160
    :goto_1
    iget-boolean v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mSelected:Z

    if-ne v3, v6, :cond_4

    .line 199
    :goto_2
    return v4

    :cond_3
    move v3, v5

    .line 157
    goto :goto_1

    .line 161
    :cond_4
    iput-boolean v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mSelected:Z

    .line 163
    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    if-eqz v6, :cond_5

    .line 164
    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    invoke-virtual {v6}, Landroid/animation/Animator;->cancel()V

    .line 167
    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    if-eqz v6, :cond_6

    .line 168
    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v6}, Landroid/animation/Animator;->cancel()V

    .line 171
    :cond_6
    if-eqz v3, :cond_7

    .line 173
    sget-object v6, Lcom/android/launcher2/NewFolderDrawable;->SCALE_FACTOR:Landroid/util/Property;

    new-array v7, v10, [F

    iget v8, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleFactor:F

    aput v8, v7, v5

    const v8, 0x3f933333    # 1.15f

    aput v8, v7, v4

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    .line 174
    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v6, v12, v13}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 175
    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 177
    sget-object v6, Lcom/android/launcher2/NewFolderDrawable;->OPEN_FACTOR:Landroid/util/Property;

    new-array v7, v10, [F

    iget v8, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    aput v8, v7, v5

    aput v11, v7, v4

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    .line 178
    iget-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 179
    iget-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 193
    :goto_3
    iget-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 194
    iget-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    .line 196
    iget-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 197
    iget-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    goto :goto_2

    .line 183
    :cond_7
    const/16 v2, 0xa7

    .line 184
    .local v2, "kDuration":I
    sget-object v6, Lcom/android/launcher2/NewFolderDrawable;->OPEN_FACTOR:Landroid/util/Property;

    new-array v7, v10, [F

    iget v8, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    aput v8, v7, v5

    const/4 v8, 0x0

    aput v8, v7, v4

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    .line 185
    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    invoke-virtual {v6, v12, v13}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 186
    iget-object v6, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenAnimator:Landroid/animation/Animator;

    const-wide/16 v8, 0xa7

    invoke-virtual {v6, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 188
    sget-object v6, Lcom/android/launcher2/NewFolderDrawable;->SCALE_FACTOR:Landroid/util/Property;

    new-array v7, v10, [F

    iget v8, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleFactor:F

    aput v8, v7, v5

    aput v11, v7, v4

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    .line 189
    iget-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    invoke-virtual {v5, v12, v13}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 190
    iget-object v5, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleAnimator:Landroid/animation/Animator;

    const-wide/16 v6, 0xa7

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto :goto_3
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 203
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 206
    return-void
.end method

.method public setOpenFactor(F)V
    .locals 0
    .param p1, "factor"    # F

    .prologue
    .line 50
    iput p1, p0, Lcom/android/launcher2/NewFolderDrawable;->mOpenFactor:F

    .line 51
    invoke-virtual {p0}, Lcom/android/launcher2/NewFolderDrawable;->invalidateSelf()V

    .line 52
    return-void
.end method

.method public setScaleFactor(F)V
    .locals 6
    .param p1, "factor"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 56
    iget-object v2, p0, Lcom/android/launcher2/NewFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    .line 73
    :goto_0
    return-void

    .line 57
    :cond_0
    iput p1, p0, Lcom/android/launcher2/NewFolderDrawable;->mScaleFactor:F

    .line 58
    iget-object v2, p0, Lcom/android/launcher2/NewFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v3, p1, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v1, v2

    .line 59
    .local v1, "deltaRight":I
    iget-object v2, p0, Lcom/android/launcher2/NewFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v3, p1, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v0, v2

    .line 60
    .local v0, "deltaBottom":I
    iget-object v2, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 61
    iget-object v2, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 62
    iget-object v2, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 63
    iget-object v2, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/NewFolderDrawable;->mOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 65
    iget-object v2, p0, Lcom/android/launcher2/NewFolderDrawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/NewFolderDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/launcher2/NewFolderDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/NewFolderDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/android/launcher2/NewFolderDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/NewFolderDrawable;->invalidateSelf()V

    goto :goto_0
.end method
