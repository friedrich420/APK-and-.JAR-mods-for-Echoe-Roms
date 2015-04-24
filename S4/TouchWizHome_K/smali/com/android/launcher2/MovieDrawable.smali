.class public Lcom/android/launcher2/MovieDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MovieDrawable.java"


# static fields
.field private static final MAX_CYCLE_TIMES:I = 0x3


# instance fields
.field private mAlpha:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private mCurrentCycle:I

.field private mHeight:I

.field private final mMovie:Landroid/graphics/Movie;

.field private mNewFrame:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mRelTime:I

.field private final mRunnable:Ljava/lang/Runnable;

.field private mStartTime:J

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Movie;)V
    .locals 2
    .param p1, "movie"    # Landroid/graphics/Movie;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/graphics/Movie;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Movie;->height()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/MovieDrawable;-><init>(Landroid/graphics/Movie;II)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Movie;II)V
    .locals 3
    .param p1, "movie"    # Landroid/graphics/Movie;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x1

    .line 88
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MovieDrawable;->mPaint:Landroid/graphics/Paint;

    .line 40
    iput-boolean v2, p0, Lcom/android/launcher2/MovieDrawable;->mNewFrame:Z

    .line 45
    new-instance v0, Lcom/android/launcher2/MovieDrawable$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MovieDrawable$1;-><init>(Lcom/android/launcher2/MovieDrawable;)V

    iput-object v0, p0, Lcom/android/launcher2/MovieDrawable;->mRunnable:Ljava/lang/Runnable;

    .line 89
    iput-object p1, p0, Lcom/android/launcher2/MovieDrawable;->mMovie:Landroid/graphics/Movie;

    .line 90
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher2/MovieDrawable;->mAlpha:I

    .line 92
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MovieDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 93
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/launcher2/MovieDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/launcher2/MovieDrawable;->mCanvas:Landroid/graphics/Canvas;

    .line 94
    iput p2, p0, Lcom/android/launcher2/MovieDrawable;->mWidth:I

    .line 95
    iput p3, p0, Lcom/android/launcher2/MovieDrawable;->mHeight:I

    .line 97
    iget-object v0, p0, Lcom/android/launcher2/MovieDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/launcher2/MovieDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    invoke-direct {p0}, Lcom/android/launcher2/MovieDrawable;->updateBitmap()V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MovieDrawable;)Landroid/graphics/Movie;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MovieDrawable;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/launcher2/MovieDrawable;->mMovie:Landroid/graphics/Movie;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/MovieDrawable;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MovieDrawable;

    .prologue
    .line 30
    iget v0, p0, Lcom/android/launcher2/MovieDrawable;->mCurrentCycle:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/MovieDrawable;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/MovieDrawable;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/android/launcher2/MovieDrawable;->mCurrentCycle:I

    return p1
.end method

.method static synthetic access$108(Lcom/android/launcher2/MovieDrawable;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/launcher2/MovieDrawable;

    .prologue
    .line 30
    iget v0, p0, Lcom/android/launcher2/MovieDrawable;->mCurrentCycle:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/launcher2/MovieDrawable;->mCurrentCycle:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/MovieDrawable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MovieDrawable;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/launcher2/MovieDrawable;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/MovieDrawable;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/launcher2/MovieDrawable;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/android/launcher2/MovieDrawable;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/launcher2/MovieDrawable;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MovieDrawable;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/android/launcher2/MovieDrawable;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$402(Lcom/android/launcher2/MovieDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/MovieDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/launcher2/MovieDrawable;->mNewFrame:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/launcher2/MovieDrawable;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MovieDrawable;

    .prologue
    .line 30
    iget v0, p0, Lcom/android/launcher2/MovieDrawable;->mRelTime:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/launcher2/MovieDrawable;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/MovieDrawable;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/android/launcher2/MovieDrawable;->mRelTime:I

    return p1
.end method

.method private updateBitmap()V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 115
    iget-object v7, p0, Lcom/android/launcher2/MovieDrawable;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    .line 116
    const/4 v5, 0x0

    .line 117
    .local v5, "x":F
    const/4 v6, 0x0

    .line 118
    .local v6, "y":F
    iget-object v7, p0, Lcom/android/launcher2/MovieDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 119
    .local v0, "bh":F
    iget-object v7, p0, Lcom/android/launcher2/MovieDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v1, v7

    .line 120
    .local v1, "bw":F
    iget-object v7, p0, Lcom/android/launcher2/MovieDrawable;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v7}, Landroid/graphics/Movie;->height()I

    move-result v7

    int-to-float v2, v7

    .line 121
    .local v2, "mh":F
    iget-object v7, p0, Lcom/android/launcher2/MovieDrawable;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v7}, Landroid/graphics/Movie;->width()I

    move-result v7

    int-to-float v3, v7

    .line 122
    .local v3, "mw":F
    div-float v4, v0, v2

    .line 123
    .local v4, "scale":F
    iget-object v7, p0, Lcom/android/launcher2/MovieDrawable;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 124
    mul-float v7, v3, v4

    sub-float v7, v1, v7

    div-float/2addr v7, v8

    div-float v5, v7, v4

    .line 125
    mul-float v7, v2, v4

    sub-float v7, v0, v7

    div-float/2addr v7, v8

    div-float v6, v7, v4

    .line 126
    iget-object v7, p0, Lcom/android/launcher2/MovieDrawable;->mCanvas:Landroid/graphics/Canvas;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 127
    iget-object v7, p0, Lcom/android/launcher2/MovieDrawable;->mMovie:Landroid/graphics/Movie;

    iget-object v8, p0, Lcom/android/launcher2/MovieDrawable;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7, v8, v5, v6}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 128
    iget-object v7, p0, Lcom/android/launcher2/MovieDrawable;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 129
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 104
    iget v1, p0, Lcom/android/launcher2/MovieDrawable;->mAlpha:I

    if-nez v1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MovieDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 106
    .local v0, "r":Landroid/graphics/Rect;
    iget-boolean v1, p0, Lcom/android/launcher2/MovieDrawable;->mNewFrame:Z

    if-eqz v1, :cond_1

    .line 107
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/MovieDrawable;->mNewFrame:Z

    .line 108
    invoke-direct {p0}, Lcom/android/launcher2/MovieDrawable;->updateBitmap()V

    .line 109
    iget-object v1, p0, Lcom/android/launcher2/MovieDrawable;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher2/MovieDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MovieDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher2/MovieDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/android/launcher2/MovieDrawable;->mAlpha:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/android/launcher2/MovieDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/android/launcher2/MovieDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/android/launcher2/MovieDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/android/launcher2/MovieDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, -0x3

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher2/MovieDrawable;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MovieDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/launcher2/MovieDrawable;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/launcher2/MovieDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 83
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/android/launcher2/MovieDrawable;->mAlpha:I

    .line 144
    iget-object v0, p0, Lcom/android/launcher2/MovieDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 145
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/launcher2/MovieDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 134
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filterBitmap"    # Z

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/launcher2/MovieDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 150
    return-void
.end method
