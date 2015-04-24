.class public Lcom/android/launcher2/AnimateEngine;
.super Ljava/lang/Object;
.source "AnimateEngine.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final LOG_TAG:Ljava/lang/String; = "AnimateEngine"


# instance fields
.field private mInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/launcher2/AnimateEngine;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/android/launcher2/AnimateEngine;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/launcher2/AnimateEngine;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 37
    return-void
.end method


# virtual methods
.method public getRect([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;F)[Landroid/graphics/Rect;
    .locals 8
    .param p1, "srcRects"    # [Landroid/graphics/Rect;
    .param p2, "destRects"    # [Landroid/graphics/Rect;
    .param p3, "optionalOutRects"    # [Landroid/graphics/Rect;
    .param p4, "progress"    # F

    .prologue
    const/4 v3, 0x0

    .line 54
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 80
    :cond_0
    return-object v3

    .line 55
    :cond_1
    array-length v4, p1

    array-length v5, p2

    if-ne v4, v5, :cond_0

    .line 57
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, p4}, Ljava/lang/Math;->min(FF)F

    move-result p4

    .line 58
    const/4 v4, 0x0

    invoke-static {v4, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 61
    array-length v0, p1

    .line 62
    .local v0, "count":I
    if-eqz p3, :cond_2

    array-length v4, p3

    if-eq v4, v0, :cond_4

    .line 63
    :cond_2
    new-array v3, v0, [Landroid/graphics/Rect;

    .line 68
    .local v3, "retRects":[Landroid/graphics/Rect;
    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/AnimateEngine;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, p4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 70
    .local v2, "interpolateValue":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 71
    aget-object v4, v3, v1

    if-nez v4, :cond_3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    aput-object v4, v3, v1

    .line 72
    :cond_3
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    iget v5, v5, Landroid/graphics/Rect;->left:I

    aget-object v6, p2, v1

    iget v6, v6, Landroid/graphics/Rect;->left:I

    aget-object v7, p1, v1

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 73
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    iget v5, v5, Landroid/graphics/Rect;->right:I

    aget-object v6, p2, v1

    iget v6, v6, Landroid/graphics/Rect;->right:I

    aget-object v7, p1, v1

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 74
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    iget v5, v5, Landroid/graphics/Rect;->top:I

    aget-object v6, p2, v1

    iget v6, v6, Landroid/graphics/Rect;->top:I

    aget-object v7, p1, v1

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 75
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    aget-object v6, p2, v1

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    aget-object v7, p1, v1

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 65
    .end local v1    # "i":I
    .end local v2    # "interpolateValue":F
    .end local v3    # "retRects":[Landroid/graphics/Rect;
    :cond_4
    move-object v3, p3

    .restart local v3    # "retRects":[Landroid/graphics/Rect;
    goto :goto_0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "i"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    sget-object p1, Lcom/android/launcher2/AnimateEngine;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/AnimateEngine;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 92
    return-void
.end method
