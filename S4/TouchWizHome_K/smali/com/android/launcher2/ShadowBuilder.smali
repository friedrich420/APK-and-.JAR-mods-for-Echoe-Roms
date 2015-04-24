.class Lcom/android/launcher2/ShadowBuilder;
.super Lcom/android/launcher2/UpdateableShadowBuilder;
.source "ShadowBuilder.java"


# static fields
.field private static final DEFAULT_SCALE_FACTOR:F = 0.9f

.field private static final TAG:Ljava/lang/String; = "ShadowBuilder"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field mDrawGlow:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mPointFactor:F

.field private mScale:F

.field private mScaleFactor:F

.field private mScaleInDraw:Z

.field private mTouch:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v0, 0x3f666666    # 0.9f

    .line 43
    invoke-direct {p0, p1, v0, v0}, Lcom/android/launcher2/ShadowBuilder;-><init>(Landroid/view/View;FF)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/view/View;FF)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "scalefactor"    # F
    .param p3, "pointFactor"    # F

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/launcher2/UpdateableShadowBuilder;-><init>(Landroid/view/View;)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ShadowBuilder;->mDrawGlow:Z

    .line 38
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleFactor:F

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher2/ShadowBuilder;->mPointFactor:F

    .line 48
    iput p2, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleFactor:F

    .line 49
    iput p3, p0, Lcom/android/launcher2/ShadowBuilder;->mPointFactor:F

    .line 50
    iget v0, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleFactor:F

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/ShadowBuilder;->createBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/launcher2/ShadowBuilder;->init(Landroid/view/View;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/launcher2/UpdateableShadowBuilder;-><init>(Landroid/view/View;)V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/ShadowBuilder;->mDrawGlow:Z

    .line 38
    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleFactor:F

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher2/ShadowBuilder;->mPointFactor:F

    .line 56
    iput-object p2, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/launcher2/ShadowBuilder;->init(Landroid/view/View;)V

    .line 58
    return-void
.end method

.method private createBitmap(Landroid/view/View;F)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "scaleFactor"    # F

    .prologue
    .line 62
    instance-of v3, p1, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v3, :cond_1

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v2, v3

    .line 64
    .local v2, "scaledWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v1, v3

    .local v1, "scaledHeight":I
    move-object v3, p1

    .line 65
    check-cast v3, Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v3, v2, v1}, Lcom/android/launcher2/SurfaceWidgetView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 67
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 69
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleInDraw:Z

    .line 76
    .end local v1    # "scaledHeight":I
    .end local v2    # "scaledWidth":I
    :goto_0
    return-object v0

    .line 71
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    sget v4, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    invoke-static {p1, v3, v4}, Lcom/android/launcher2/Workspace;->createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleInDraw:Z

    goto :goto_0
.end method

.method private init(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v5

    .line 81
    .local v5, "scale":F
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 82
    .local v4, "p":Landroid/view/ViewParent;
    :goto_0
    instance-of v6, v4, Landroid/view/View;

    if-eqz v6, :cond_0

    move-object v6, v4

    .line 83
    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v6

    mul-float/2addr v5, v6

    .line 84
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_0

    .line 86
    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Lcom/android/launcher2/ShadowBuilder;->mScale:F

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    .line 89
    .local v3, "item":Lcom/android/launcher2/BaseItem;
    instance-of v6, p1, Lcom/android/launcher2/AppIconView;

    if-eqz v6, :cond_4

    move-object v6, p1

    .line 90
    check-cast v6, Lcom/android/launcher2/DynamicShadowMixin$Holder;

    invoke-interface {v6}, Lcom/android/launcher2/DynamicShadowMixin$Holder;->getLastTouchPoint()[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    .line 92
    iget-object v6, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_3

    move v1, v7

    .line 93
    .local v1, "bitmapWidth":I
    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v8, v6, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    sub-int/2addr v9, v1

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    aput v8, v6, v7

    .line 95
    iput v5, p0, Lcom/android/launcher2/ShadowBuilder;->mScale:F

    .line 112
    .end local v1    # "bitmapWidth":I
    :goto_2
    instance-of v6, p1, Landroid/widget/ImageView;

    if-nez v6, :cond_1

    invoke-static {v3}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 113
    :cond_1
    iput-boolean v10, p0, Lcom/android/launcher2/ShadowBuilder;->mDrawGlow:Z

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/ShadowBuilder;->resetPaint()V

    .line 117
    return-void

    .line 92
    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_1

    .line 97
    :cond_4
    invoke-static {v3}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v6

    if-eqz v6, :cond_5

    instance-of v6, p1, Lcom/android/launcher2/DynamicShadowMixin$Holder;

    if-eqz v6, :cond_5

    move-object v6, p1

    .line 98
    check-cast v6, Lcom/android/launcher2/DynamicShadowMixin$Holder;

    invoke-interface {v6}, Lcom/android/launcher2/DynamicShadowMixin$Holder;->getLastTouchPoint()[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    .line 99
    sget v6, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    div-int/lit8 v2, v6, 0x2

    .line 100
    .local v2, "halfPad":I
    iget-object v6, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v8, v6, v7

    add-int/2addr v8, v2

    aput v8, v6, v7

    .line 101
    iget-object v6, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v8, v6, v10

    add-int/2addr v8, v2

    aput v8, v6, v10

    .line 104
    iget-object v6, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v8, v6, v7

    int-to-float v8, v8

    mul-float/2addr v8, v5

    float-to-int v8, v8

    aput v8, v6, v7

    .line 105
    iget-object v6, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    aget v7, v6, v10

    int-to-float v7, v7

    mul-float/2addr v7, v5

    float-to-int v7, v7

    aput v7, v6, v10

    goto :goto_2

    .line 107
    .end local v2    # "halfPad":I
    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_6

    move v1, v7

    .line 108
    .restart local v1    # "bitmapWidth":I
    :goto_3
    iget-object v6, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_7

    move v0, v7

    .line 109
    .local v0, "bitmapHeight":I
    :goto_4
    const/4 v6, 0x2

    new-array v6, v6, [I

    div-int/lit8 v8, v1, 0x2

    aput v8, v6, v7

    div-int/lit8 v7, v0, 0x2

    aput v7, v6, v10

    iput-object v6, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    goto :goto_2

    .line 107
    .end local v0    # "bitmapHeight":I
    .end local v1    # "bitmapWidth":I
    :cond_6
    iget-object v6, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_3

    .line 108
    .restart local v1    # "bitmapWidth":I
    :cond_7
    iget-object v6, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_4
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTouchOffset()[I
    .locals 5

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 194
    .local v0, "r":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher2/ShadowBuilder;->mPointFactor:F

    iget v4, p0, Lcom/android/launcher2/ShadowBuilder;->mScale:F

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 195
    const/4 v1, 0x1

    aget v2, v0, v1

    int-to-float v2, v2

    iget v3, p0, Lcom/android/launcher2/ShadowBuilder;->mPointFactor:F

    iget v4, p0, Lcom/android/launcher2/ShadowBuilder;->mScale:F

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 197
    return-object v0
.end method

.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 139
    iget-object v7, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 140
    :cond_0
    const-string v7, "ShadowBuilder"

    const-string v8, "Bitmap is recycled; draw ignored"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_1
    :goto_0
    return-void

    .line 144
    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 145
    .local v6, "width":I
    iget-object v7, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 147
    .local v3, "height":I
    iget-boolean v7, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleInDraw:Z

    if-eqz v7, :cond_3

    .line 148
    iget v7, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleFactor:F

    iget v8, p0, Lcom/android/launcher2/ShadowBuilder;->mScaleFactor:F

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 151
    :cond_3
    iget-boolean v7, p0, Lcom/android/launcher2/ShadowBuilder;->mDrawGlow:Z

    if-eqz v7, :cond_4

    sget v7, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    div-int/lit8 v4, v7, 0x2

    .line 152
    .local v4, "p":I
    :goto_1
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v7, v4

    int-to-float v8, v4

    sub-int v9, v6, v4

    int-to-float v9, v9

    sub-int v10, v3, v4

    int-to-float v10, v10

    invoke-direct {v2, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 154
    .local v2, "dst":Landroid/graphics/RectF;
    iget-object v7, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/launcher2/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 156
    iget-boolean v7, p0, Lcom/android/launcher2/ShadowBuilder;->mDrawGlow:Z

    if-eqz v7, :cond_1

    .line 157
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 158
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 159
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 161
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 162
    .local v1, "d":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 163
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    iget-object v7, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 168
    sget-object v7, Lcom/android/launcher2/Workspace;->sOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-virtual {v7, v1, v0, v8, v9}, Lcom/android/launcher2/HolographicOutlineHelper;->applyThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 169
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 171
    const/4 v7, 0x0

    const/4 v8, 0x0

    int-to-float v9, v6

    int-to-float v10, v3

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 172
    const/4 v7, 0x0

    invoke-virtual {p1, v1, v7, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 151
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "d":Landroid/graphics/Bitmap;
    .end local v2    # "dst":Landroid/graphics/RectF;
    .end local v4    # "p":I
    .end local v5    # "paint":Landroid/graphics/Paint;
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3
    .param p1, "size"    # Landroid/graphics/Point;
    .param p2, "touch"    # Landroid/graphics/Point;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 130
    const-string v0, "ShadowBuilder"

    const-string v1, "Bitmap is null. shadow metrics not provided"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 134
    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/ShadowBuilder;->mPointFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/launcher2/ShadowBuilder;->mPointFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method public resetPaint()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 178
    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/LightingColorFilter;

    const v2, -0x808081

    const/high16 v3, -0x1000000

    invoke-direct {v1, v2, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 179
    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 180
    iget-object v0, p0, Lcom/android/launcher2/ShadowBuilder;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 181
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/launcher2/ShadowBuilder;->mBitmap:Landroid/graphics/Bitmap;

    .line 121
    return-void
.end method

.method public setTouchOffset([I)V
    .locals 0
    .param p1, "point"    # [I

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/launcher2/ShadowBuilder;->mTouch:[I

    .line 190
    return-void
.end method
