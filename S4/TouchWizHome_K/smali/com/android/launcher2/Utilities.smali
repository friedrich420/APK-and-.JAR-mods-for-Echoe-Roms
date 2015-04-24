.class public final Lcom/android/launcher2/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field public static final DEBUG_VIEWS_AND_SIZES:Z = false

.field private static final PACKAGE_CONTEXT_FLAGS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Launcher.Utilities"

.field private static final WIDGET_PREVIEW_ICON_PADDING_PERCENTAGE:F = 0.25f

.field private static final XXXHDPI_ICON_REAL_SIZE:I = 0xc0

.field private static final XXXHDPI_ICON_SIZE:I = 0xd4

.field private static mBgPaint:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private static mToast:Landroid/widget/Toast;

.field private static sBlackPaint:Landroid/graphics/Paint;

.field private static final sBlurPaint:Landroid/graphics/Paint;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field static sColorIndex:I

.field static sColors:[I

.field private static final sDisabledPaint:Landroid/graphics/Paint;

.field private static final sGlowColorFocusedPaint:Landroid/graphics/Paint;

.field private static final sGlowColorPressedPaint:Landroid/graphics/Paint;

.field private static sIconHeight:I

.field private static sIconNormalHeight:I

.field private static sIconNormalWidth:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v0, -0x1

    .line 75
    sput v0, Lcom/android/launcher2/Utilities;->sIconWidth:I

    .line 76
    sput v0, Lcom/android/launcher2/Utilities;->sIconHeight:I

    .line 78
    sput v0, Lcom/android/launcher2/Utilities;->sIconNormalWidth:I

    .line 79
    sput v0, Lcom/android/launcher2/Utilities;->sIconNormalHeight:I

    .line 81
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .line 86
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->mBgPaint:Ljava/util/HashMap;

    .line 90
    sput-object v4, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    .line 96
    sget-object v0, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 99
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/Utilities;->sColors:[I

    .line 100
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/Utilities;->sColorIndex:I

    .line 102
    sput-object v4, Lcom/android/launcher2/Utilities;->mToast:Landroid/widget/Toast;

    return-void

    .line 99
    :array_0
    .array-data 4
        -0x10000
        -0xff0100
        -0xffff01
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static CreateScaledBitmapWithNormalSize(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 302
    sget v1, Lcom/android/launcher2/Utilities;->sIconNormalWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 303
    invoke-static {p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    .line 305
    :cond_0
    sget v1, Lcom/android/launcher2/Utilities;->sIconNormalWidth:I

    sget v2, Lcom/android/launcher2/Utilities;->sIconNormalHeight:I

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 306
    .local v0, "b":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public static final DEBUGGABLE()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 550
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static broadcastStkIntent(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 379
    const/4 v1, 0x0

    .line 381
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "1"

    const-string v3, "gsm.sim.screenEvent"

    const/4 v4, 0x0

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1"

    const-string v3, "gsm.sim.screenEvent"

    const/4 v4, 0x1

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 382
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.stk.event"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    if-eqz v1, :cond_2

    .line 386
    new-instance v0, Lcom/android/launcher2/CatEventDownload;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Lcom/android/launcher2/CatEventDownload;-><init>(I)V

    .line 387
    .local v0, "catEventIdleScreen":Lcom/android/launcher2/CatEventDownload;
    const-string v2, "STK EVENT"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CatEventDownload;->putExtra(Landroid/content/Intent;Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 389
    const-string v2, "Launcher.Utilities"

    const-string v3, "broadcastStkIntent sent"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    .end local v0    # "catEventIdleScreen":Lcom/android/launcher2/CatEventDownload;
    :cond_2
    return-void
.end method

.method public static centerChildInParent(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3
    .param p0, "dest"    # Landroid/graphics/RectF;
    .param p1, "sizeParent"    # Landroid/graphics/PointF;
    .param p2, "sizeChild"    # Landroid/graphics/PointF;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 441
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 442
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 443
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 444
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 445
    return-void
.end method

.method public static centerChildInParent(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 4
    .param p0, "dest"    # Landroid/graphics/RectF;
    .param p1, "sizeParent"    # Landroid/graphics/RectF;
    .param p2, "sizeChild"    # Landroid/graphics/PointF;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 448
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 449
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 450
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 451
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 452
    return-void
.end method

.method static createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "icon"    # Landroid/graphics/Bitmap;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 111
    sget-object v7, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v7

    .line 112
    :try_start_0
    sget v6, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_0

    if-eqz p1, :cond_0

    .line 113
    invoke-static {p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    .line 115
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 117
    .local v5, "sourceWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 118
    .local v4, "sourceHeight":I
    const/high16 v3, 0x3f800000    # 1.0f

    .line 119
    .local v3, "scale":F
    sget v6, Lcom/android/launcher2/Utilities;->sIconWidth:I

    if-gt v5, v6, :cond_1

    sget v6, Lcom/android/launcher2/Utilities;->sIconHeight:I

    if-le v4, v6, :cond_2

    .line 121
    :cond_1
    sget v6, Lcom/android/launcher2/Utilities;->sIconWidth:I

    int-to-float v6, v6

    int-to-float v7, v5

    div-float/2addr v6, v7

    sget v7, Lcom/android/launcher2/Utilities;->sIconHeight:I

    int-to-float v7, v7

    int-to-float v8, v4

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 122
    int-to-float v6, v5

    mul-float/2addr v6, v3

    float-to-int v5, v6

    .line 123
    int-to-float v6, v4

    mul-float/2addr v6, v3

    float-to-int v4, v6

    .line 128
    :cond_2
    sget v6, Lcom/android/launcher2/Utilities;->sIconWidth:I

    sub-int v0, v6, v5

    .line 129
    .local v0, "dx":I
    sget v6, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sub-int v1, v6, v4

    .line 130
    .local v1, "dy":I
    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v3, v6

    if-ltz v6, :cond_3

    if-gtz v0, :cond_3

    if-lez v1, :cond_4

    .line 131
    :cond_3
    sget v6, Lcom/android/launcher2/Utilities;->sIconWidth:I

    sget v7, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 133
    .local v2, "newBitmap":Landroid/graphics/Bitmap;
    sget-object v6, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v9}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 134
    sget-object v6, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    sget-object v6, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    int-to-float v7, v0

    mul-float/2addr v7, v11

    int-to-float v8, v1

    mul-float/2addr v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 136
    sget-object v6, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 137
    sget-object v6, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, p0, v10, v10, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 138
    move-object p0, v2

    .line 139
    sget-object v6, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 141
    .end local v2    # "newBitmap":Landroid/graphics/Bitmap;
    :cond_4
    return-object p0

    .line 115
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    .end local v3    # "scale":F
    .end local v4    # "sourceHeight":I
    .end local v5    # "sourceWidth":I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v11, 0x0

    .line 148
    sget-object v9, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v9

    .line 149
    :try_start_0
    sget v8, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_0

    .line 150
    invoke-static {p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    .line 152
    :cond_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    instance-of v8, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v8, :cond_4

    move-object v4, p0

    .line 154
    check-cast v4, Landroid/graphics/drawable/PaintDrawable;

    .line 155
    .local v4, "painter":Landroid/graphics/drawable/PaintDrawable;
    sget v8, Lcom/android/launcher2/Utilities;->sIconWidth:I

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 156
    sget v8, Lcom/android/launcher2/Utilities;->sIconHeight:I

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 164
    .end local v4    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    sget-object v8, Lcom/android/launcher2/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v8}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 165
    const/high16 v5, 0x3f800000    # 1.0f

    .line 166
    .local v5, "scale":F
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 167
    .local v7, "sourceWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 168
    .local v6, "sourceHeight":I
    if-lez v7, :cond_2

    if-gtz v6, :cond_5

    .line 169
    :cond_2
    sget v7, Lcom/android/launcher2/Utilities;->sIconWidth:I

    .line 170
    sget v6, Lcom/android/launcher2/Utilities;->sIconHeight:I

    .line 171
    sget v8, Lcom/android/launcher2/Utilities;->sIconWidth:I

    sget v9, Lcom/android/launcher2/Utilities;->sIconHeight:I

    invoke-virtual {p0, v11, v11, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 193
    :cond_3
    :goto_1
    sget v8, Lcom/android/launcher2/Utilities;->sIconWidth:I

    sub-int v2, v8, v7

    .line 194
    .local v2, "dx":I
    sget v8, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sub-int v3, v8, v6

    .line 196
    .local v3, "dy":I
    sget v8, Lcom/android/launcher2/Utilities;->sIconWidth:I

    sget v9, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 198
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v8, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v8, v13}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 199
    sget-object v8, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 200
    sget-object v8, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    int-to-float v9, v2

    mul-float/2addr v9, v12

    int-to-float v10, v3

    mul-float/2addr v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 201
    sget-object v8, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v8, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 202
    sget-object v8, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 203
    sget-object v8, Lcom/android/launcher2/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 204
    sget-object v8, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v8, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 211
    return-object v0

    .line 152
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    .end local v5    # "scale":F
    .end local v6    # "sourceHeight":I
    .end local v7    # "sourceWidth":I
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 157
    :cond_4
    instance-of v8, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v8, :cond_1

    move-object v1, p0

    .line 159
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 160
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v8

    if-nez v8, :cond_1

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 174
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v5    # "scale":F
    .restart local v6    # "sourceHeight":I
    .restart local v7    # "sourceWidth":I
    :cond_5
    invoke-virtual {p0, v11, v11, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 175
    sget v8, Lcom/android/launcher2/Utilities;->sIconWidth:I

    if-gt v7, v8, :cond_6

    sget v8, Lcom/android/launcher2/Utilities;->sIconHeight:I

    if-le v6, v8, :cond_7

    .line 177
    :cond_6
    sget v8, Lcom/android/launcher2/Utilities;->sIconWidth:I

    int-to-float v8, v8

    int-to-float v9, v7

    div-float/2addr v8, v9

    sget v9, Lcom/android/launcher2/Utilities;->sIconHeight:I

    int-to-float v9, v9

    int-to-float v10, v6

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 178
    int-to-float v8, v7

    mul-float/2addr v8, v5

    float-to-int v7, v8

    .line 179
    int-to-float v8, v6

    mul-float/2addr v8, v5

    float-to-int v6, v8

    goto :goto_1

    .line 182
    :cond_7
    sget v8, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/16 v9, 0xd4

    if-ne v8, v9, :cond_3

    const/16 v8, 0xc0

    if-ne v7, v8, :cond_3

    .line 183
    sget v8, Lcom/android/launcher2/Utilities;->sIconWidth:I

    int-to-float v8, v8

    int-to-float v9, v7

    div-float/2addr v8, v9

    sget v9, Lcom/android/launcher2/Utilities;->sIconHeight:I

    int-to-float v9, v9

    int-to-float v10, v6

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 185
    int-to-float v8, v7

    mul-float/2addr v8, v5

    float-to-int v7, v8

    .line 186
    int-to-float v8, v6

    mul-float/2addr v8, v5

    float-to-int v6, v8

    goto/16 :goto_1
.end method

.method static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconSize"    # I

    .prologue
    .line 216
    sget v2, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 217
    invoke-static {p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    .line 220
    :cond_0
    if-nez p2, :cond_1

    .line 221
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 234
    :goto_0
    return-object v0

    .line 224
    :cond_1
    sget v1, Lcom/android/launcher2/Utilities;->sIconWidth:I

    .line 226
    .local v1, "tempIconWidth":I
    sput p2, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sput p2, Lcom/android/launcher2/Utilities;->sIconWidth:I

    .line 228
    const-string v2, "Launcher.Utilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createIconBitmapForMenu sIconWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/launcher2/Utilities;->sIconWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sourceWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 232
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sput v1, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sput v1, Lcom/android/launcher2/Utilities;->sIconWidth:I

    goto :goto_0
.end method

.method static drawDisabledBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 284
    sget-object v3, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v3

    .line 285
    :try_start_0
    sget v2, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 286
    invoke-static {p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    .line 288
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 291
    .local v1, "disabled":Landroid/graphics/Bitmap;
    sget-object v0, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 292
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 294
    sget-object v2, Lcom/android/launcher2/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p0, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 296
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 298
    return-object v1

    .line 288
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "disabled":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static drawSelectedAllAppsBitmap(Landroid/graphics/Canvas;IIZLandroid/graphics/Bitmap;)V
    .locals 8
    .param p0, "dest"    # Landroid/graphics/Canvas;
    .param p1, "destWidth"    # I
    .param p2, "destHeight"    # I
    .param p3, "pressed"    # Z
    .param p4, "src"    # Landroid/graphics/Bitmap;

    .prologue
    .line 238
    sget-object v5, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v5

    .line 239
    :try_start_0
    sget v4, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    .line 243
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "Assertion failed: Utilities not initialized"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 257
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 246
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v4, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 248
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 249
    .local v3, "xy":[I
    sget-object v4, Lcom/android/launcher2/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, v4, v3}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 251
    .local v0, "mask":Landroid/graphics/Bitmap;
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, p1, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v1, v4

    .line 252
    .local v1, "px":F
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, p2, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v2, v4

    .line 253
    .local v2, "py":F
    const/4 v4, 0x0

    aget v4, v3, v4

    int-to-float v4, v4

    add-float v6, v1, v4

    const/4 v4, 0x1

    aget v4, v3, v4

    int-to-float v4, v4

    add-float v7, v2, v4

    if-eqz p3, :cond_1

    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p0, v0, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 256
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 257
    monitor-exit v5

    .line 258
    return-void

    .line 253
    :cond_1
    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static drawVerticalLine(Landroid/view/View;Landroid/graphics/Canvas;I)V
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "xOffset"    # I

    .prologue
    .line 455
    invoke-static {}, Lcom/android/launcher2/Utilities;->ensureBlackPaint()V

    .line 456
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    .line 457
    .local v6, "sx":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v7

    .line 458
    .local v7, "sy":I
    add-int v0, v6, p2

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    int-to-float v2, v7

    add-int v0, v6, p2

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v7

    int-to-float v4, v0

    sget-object v5, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 459
    return-void
.end method

.method private static declared-synchronized ensureBlackPaint()V
    .locals 3

    .prologue
    .line 412
    const-class v1, Lcom/android/launcher2/Utilities;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 413
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    .line 414
    sget-object v0, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 415
    sget-object v0, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    :cond_0
    monitor-exit v1

    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static ensureViewBgPaint(Landroid/view/View;)Landroid/graphics/Paint;
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 401
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 402
    .local v1, "id":Ljava/lang/Integer;
    sget-object v2, Lcom/android/launcher2/Utilities;->mBgPaint:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    .line 403
    .local v0, "bgPaint":Landroid/graphics/Paint;
    if-nez v0, :cond_0

    .line 404
    new-instance v0, Landroid/graphics/Paint;

    .end local v0    # "bgPaint":Landroid/graphics/Paint;
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 405
    .restart local v0    # "bgPaint":Landroid/graphics/Paint;
    const/16 v2, 0x7f

    const/16 v3, 0x9b

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Utilities;->getRandomColor(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 406
    sget-object v2, Lcom/android/launcher2/Utilities;->mBgPaint:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    :cond_0
    return-object v0
.end method

.method static generateRandomId()I
    .locals 4

    .prologue
    .line 349
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public static getDeviceRotation(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 867
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public static getEditTextMaxLengthFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "maxSize"    # I

    .prologue
    .line 813
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 815
    .local v0, "FilterArray":[Landroid/text/InputFilter;
    const/4 v1, 0x0

    new-instance v2, Lcom/android/launcher2/Utilities$1;

    invoke-direct {v2, p1, p0}, Lcom/android/launcher2/Utilities$1;-><init>(ILandroid/content/Context;)V

    aput-object v2, v0, v1

    .line 847
    return-object v0
.end method

.method public static getLocationWithRespectTo([ILandroid/view/ViewParent;Landroid/view/View;)V
    .locals 9
    .param p0, "location"    # [I
    .param p1, "parent"    # Landroid/view/ViewParent;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x2

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 472
    if-eqz p0, :cond_0

    array-length v4, p0

    if-ge v4, v5, :cond_1

    .line 473
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "location must be an array of two integers"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 476
    :cond_1
    new-array v1, v5, [F

    .line 478
    .local v1, "position":[F
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    aput v4, v1, v6

    .line 479
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    aput v4, v1, v7

    .line 481
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 482
    .local v3, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_3

    if-eq v3, p1, :cond_3

    move-object v2, v3

    .line 483
    check-cast v2, Landroid/view/View;

    .line 485
    .local v2, "view":Landroid/view/View;
    aget v4, v1, v6

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v1, v6

    .line 486
    aget v4, v1, v7

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v1, v7

    .line 487
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 488
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-nez v4, :cond_2

    .line 489
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 491
    :cond_2
    aget v4, v1, v6

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v1, v6

    .line 492
    aget v4, v1, v7

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v1, v7

    .line 494
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 495
    goto :goto_0

    .line 500
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    .end local v2    # "view":Landroid/view/View;
    :cond_3
    aget v4, v1, v6

    add-float/2addr v4, v8

    float-to-int v4, v4

    aput v4, p0, v6

    .line 501
    aget v4, v1, v7

    add-float/2addr v4, v8

    float-to-int v4, v4

    aput v4, p0, v7

    .line 502
    return-void
.end method

.method public static getRandomColor(III)I
    .locals 4
    .param p0, "alpha"    # I
    .param p1, "base"    # I
    .param p2, "randomizer"    # I

    .prologue
    .line 394
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v2, v3, p1

    .line 395
    .local v2, "red":I
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v1, v3, p1

    .line 396
    .local v1, "green":I
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v0, v3, p1

    .line 397
    .local v0, "blue":I
    invoke-static {p0, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3
.end method

.method public static getSampleSize(IIII)I
    .locals 5
    .param p0, "actualWidth"    # I
    .param p1, "actualHeight"    # I
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I

    .prologue
    .line 569
    int-to-float v3, p1

    int-to-float v4, p3

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 570
    .local v0, "heightRatio":I
    int-to-float v3, p0

    int-to-float v4, p2

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 573
    .local v2, "widthRatio":I
    if-le v0, v2, :cond_0

    move v1, v0

    .line 574
    .local v1, "sampleSize":I
    :goto_0
    return v1

    .end local v1    # "sampleSize":I
    :cond_0
    move v1, v2

    .line 573
    goto :goto_0
.end method

.method public static getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "size"    # Landroid/graphics/Point;

    .prologue
    const/high16 v4, 0x42400000    # 48.0f

    .line 515
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 516
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 517
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 518
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 522
    invoke-static {}, Lcom/android/launcher2/Utilities;->isCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 523
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 524
    .local v0, "density":F
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 527
    iget v3, p1, Landroid/graphics/Point;->y:I

    mul-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 547
    .end local v0    # "density":F
    :cond_0
    :goto_0
    return-void

    .line 531
    .restart local v0    # "density":F
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 535
    :pswitch_0
    iget v3, p1, Landroid/graphics/Point;->y:I

    mul-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 540
    :pswitch_1
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x42280000    # 42.0f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 531
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static hashCode(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 554
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v9, 0x1e

    const/4 v8, 0x0

    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 311
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 312
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 314
    .local v1, "density":F
    const v4, 0x7f0e00c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sput v4, Lcom/android/launcher2/Utilities;->sIconWidth:I

    .line 315
    const v4, 0x7f0e001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/android/launcher2/Utilities;->sIconNormalHeight:I

    sput v4, Lcom/android/launcher2/Utilities;->sIconNormalWidth:I

    .line 317
    sget-object v4, Lcom/android/launcher2/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/BlurMaskFilter;

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v1

    sget-object v7, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v5, v6, v7}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 318
    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x3d00

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 319
    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 320
    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    const/16 v5, -0x7200

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    sget-object v4, Lcom/android/launcher2/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    invoke-static {v8, v9}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 323
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 324
    .local v0, "cm":Landroid/graphics/ColorMatrix;
    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 325
    sget-object v4, Lcom/android/launcher2/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 326
    sget-object v4, Lcom/android/launcher2/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    const/16 v5, 0x88

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 327
    return-void
.end method

.method public static isCamera()Z
    .locals 1

    .prologue
    .line 808
    const/4 v0, 0x0

    return v0
.end method

.method public static loadBitmapToDesiredDimension(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I

    .prologue
    .line 587
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 588
    .local v12, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 589
    move/from16 v0, p1

    invoke-static {p0, v0, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 592
    const/4 v2, 0x0

    .local v2, "adjDensityHeight":I
    move v3, v2

    .line 593
    .local v3, "adjDensityWidth":I
    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-eq v13, v14, :cond_4

    const/4 v5, 0x1

    .line 594
    .local v5, "differentDensity":Z
    :goto_0
    if-eqz v5, :cond_0

    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-eqz v13, :cond_0

    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-eqz v13, :cond_0

    .line 602
    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    int-to-float v13, v13

    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v14, v14

    div-float v6, v13, v14

    .line 603
    .local v6, "imgDensityToTargetDensityScale":F
    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v13, v13

    mul-float/2addr v13, v6

    float-to-int v3, v13

    .line 604
    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v13, v13

    mul-float/2addr v13, v6

    float-to-int v2, v13

    .line 609
    .end local v6    # "imgDensityToTargetDensityScale":F
    :cond_0
    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-ne v13, v14, :cond_5

    const/4 v8, 0x1

    .line 610
    .local v8, "isImgDensityEqualToTarget":Z
    :goto_1
    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-le v13, v14, :cond_6

    const/4 v9, 0x1

    .line 611
    .local v9, "isImgDensityHigherThanTarget":Z
    :goto_2
    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-ge v13, v14, :cond_7

    const/4 v10, 0x1

    .line 612
    .local v10, "isImgDensityLowerThanTarget":Z
    :goto_3
    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p2

    if-gt v13, v0, :cond_1

    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p3

    if-le v13, v0, :cond_8

    :cond_1
    const/4 v11, 0x1

    .line 613
    .local v11, "isOriginalBiggerThanDesired":Z
    :goto_4
    move/from16 v0, p2

    if-gt v3, v0, :cond_2

    move/from16 v0, p3

    if-le v2, v0, :cond_9

    :cond_2
    const/4 v7, 0x1

    .line 615
    .local v7, "isAdjustedBiggerThanDesired":Z
    :goto_5
    if-eqz v9, :cond_a

    if-eqz v7, :cond_a

    .line 618
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v3, v2, v0, v1}, Lcom/android/launcher2/Utilities;->getSampleSize(IIII)I

    move-result v13

    iput v13, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 635
    :cond_3
    :goto_6
    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 636
    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 637
    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 638
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v13, v12, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 639
    move/from16 v0, p1

    invoke-static {p0, v0, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 641
    .local v4, "bmp":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_d

    .line 644
    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v4, v13}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 648
    :goto_7
    return-object v4

    .line 593
    .end local v4    # "bmp":Landroid/graphics/Bitmap;
    .end local v5    # "differentDensity":Z
    .end local v7    # "isAdjustedBiggerThanDesired":Z
    .end local v8    # "isImgDensityEqualToTarget":Z
    .end local v9    # "isImgDensityHigherThanTarget":Z
    .end local v10    # "isImgDensityLowerThanTarget":Z
    .end local v11    # "isOriginalBiggerThanDesired":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 609
    .restart local v5    # "differentDensity":Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    .line 610
    .restart local v8    # "isImgDensityEqualToTarget":Z
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 611
    .restart local v9    # "isImgDensityHigherThanTarget":Z
    :cond_7
    const/4 v10, 0x0

    goto :goto_3

    .line 612
    .restart local v10    # "isImgDensityLowerThanTarget":Z
    :cond_8
    const/4 v11, 0x0

    goto :goto_4

    .line 613
    .restart local v11    # "isOriginalBiggerThanDesired":Z
    :cond_9
    const/4 v7, 0x0

    goto :goto_5

    .line 619
    .restart local v7    # "isAdjustedBiggerThanDesired":Z
    :cond_a
    if-eqz v10, :cond_b

    if-eqz v11, :cond_b

    .line 622
    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 623
    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v13, v14, v0, v1}, Lcom/android/launcher2/Utilities;->getSampleSize(IIII)I

    move-result v13

    iput v13, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_6

    .line 624
    :cond_b
    if-eqz v10, :cond_c

    if-eqz v7, :cond_c

    .line 627
    const/4 v13, 0x0

    iput-boolean v13, v12, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    goto :goto_6

    .line 628
    :cond_c
    if-eqz v8, :cond_3

    if-eqz v11, :cond_3

    .line 631
    iget v13, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v14, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v13, v14, v0, v1}, Lcom/android/launcher2/Utilities;->getSampleSize(IIII)I

    move-result v13

    iput v13, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_6

    .line 646
    .restart local v4    # "bmp":Landroid/graphics/Bitmap;
    :cond_d
    const-string v13, "Launcher.Utilities"

    const-string v14, "loadBitmapToDesiredDimension() failed to decode image stream"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public static loadSamsungWidgetThemePreview(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIII[I)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "subName"    # Ljava/lang/String;
    .param p3, "previewId"    # I
    .param p4, "appIconId"    # I
    .param p5, "desiredWidth"    # I
    .param p6, "desiredHeight"    # I
    .param p7, "cellSpans"    # [I

    .prologue
    .line 790
    const/4 v11, 0x0

    .line 792
    .local v11, "preview":Landroid/graphics/Bitmap;
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v2, :cond_0

    .line 793
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v10

    .line 794
    .local v10, "loader":Lcom/android/launcher2/ThemeLoader;
    invoke-virtual {v10}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v2

    if-nez v2, :cond_0

    .line 795
    invoke-virtual {v10, p1, p2}, Lcom/android/launcher2/ThemeLoader;->loadSamsungWidgetPreviewBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 796
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-static {v9, v0, v1}, Lcom/android/launcher2/Utilities;->scaleBitmapToDesiredDimension(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 800
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "loader":Lcom/android/launcher2/ThemeLoader;
    :cond_0
    if-nez v11, :cond_1

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 801
    invoke-static/range {v2 .. v8}, Lcom/android/launcher2/Utilities;->loadWidgetPreview(Landroid/content/Context;Ljava/lang/String;IIII[I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 804
    :cond_1
    return-object v11
.end method

.method public static loadWidgetPreview(Landroid/content/Context;Ljava/lang/String;IIII[I)Landroid/graphics/Bitmap;
    .locals 30
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "previewId"    # I
    .param p3, "appIconId"    # I
    .param p4, "desiredWidth"    # I
    .param p5, "desiredHeight"    # I
    .param p6, "cellSpans"    # [I

    .prologue
    .line 657
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 660
    .local v24, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 661
    .local v5, "preview":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_0

    .line 663
    const/4 v6, 0x3

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v29

    .line 665
    .local v29, "widgetContext":Landroid/content/Context;
    if-eqz v29, :cond_6

    .line 666
    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 667
    .local v25, "res":Landroid/content/res/Resources;
    move-object/from16 v0, v25

    move/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/Utilities;->loadBitmapToDesiredDimension(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 676
    .end local v25    # "res":Landroid/content/res/Resources;
    .end local v29    # "widgetContext":Landroid/content/Context;
    :cond_0
    :goto_0
    if-nez v5, :cond_5

    .line 677
    const/4 v6, 0x0

    aget v17, p6, v6

    .line 678
    .local v17, "cellHSpan":I
    const/4 v6, 0x1

    aget v18, p6, v6

    .line 680
    .local v18, "cellVSpan":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 681
    .local v26, "resources":Landroid/content/res/Resources;
    const v6, 0x7f0e00c6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 682
    .local v16, "appIconSize":I
    const v6, 0x7f0e0126

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 683
    .local v22, "layoutCellWidth":I
    const v6, 0x7f0e0127

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    .line 687
    .local v21, "layoutCellHeight":I
    mul-int v28, v22, v17

    .line 688
    .local v28, "targetWidth":I
    mul-int v27, v21, v18

    .line 689
    .local v27, "targetHeight":I
    move/from16 v8, v28

    .line 690
    .local v8, "bitmapWidth":I
    move/from16 v9, v27

    .line 691
    .local v9, "bitmapHeight":I
    move/from16 v0, v16

    int-to-float v6, v0

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float/2addr v6, v7

    float-to-int v0, v6

    move/from16 v23, v0

    .line 692
    .local v23, "minOffset":I
    const/high16 v20, 0x3f800000    # 1.0f

    .line 695
    .local v20, "iconScale":F
    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 697
    const/4 v6, 0x1

    move/from16 v0, v17

    if-gt v0, v6, :cond_7

    .line 698
    mul-int/lit8 v6, v23, 0x2

    add-int v9, v16, v6

    move v8, v9

    .line 714
    :goto_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 715
    const/4 v6, 0x1

    move/from16 v0, v17

    if-ne v0, v6, :cond_1

    const/4 v6, 0x1

    move/from16 v0, v18

    if-eq v0, v6, :cond_2

    .line 716
    :cond_1
    const v6, 0x7f020010

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 717
    .local v4, "defaultBackground":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/android/launcher2/Utilities;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 723
    .end local v4    # "defaultBackground":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v10, 0x0

    .line 724
    .local v10, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_1
    div-int/lit8 v6, v8, 0x2

    int-to-float v6, v6

    move/from16 v0, v16

    int-to-float v7, v0

    mul-float v7, v7, v20

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    sub-float/2addr v6, v7

    float-to-int v12, v6

    .line 725
    .local v12, "hoffset":I
    div-int/lit8 v6, v9, 0x2

    int-to-float v6, v6

    move/from16 v0, v16

    int-to-float v7, v0

    mul-float v7, v7, v20

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    sub-float/2addr v6, v7

    float-to-int v13, v6

    .line 726
    .local v13, "yoffset":I
    if-lez p3, :cond_3

    const/4 v6, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 727
    :cond_3
    if-nez v10, :cond_4

    const v6, 0x7f0200bd

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 729
    :cond_4
    move/from16 v0, v16

    int-to-float v6, v0

    mul-float v6, v6, v20

    float-to-int v14, v6

    move/from16 v0, v16

    int-to-float v6, v0

    mul-float v6, v6, v20

    float-to-int v15, v6

    move-object v11, v5

    invoke-static/range {v10 .. v15}, Lcom/android/launcher2/Utilities;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 734
    .end local v8    # "bitmapWidth":I
    .end local v9    # "bitmapHeight":I
    .end local v10    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v12    # "hoffset":I
    .end local v13    # "yoffset":I
    .end local v16    # "appIconSize":I
    .end local v17    # "cellHSpan":I
    .end local v18    # "cellVSpan":I
    .end local v20    # "iconScale":F
    .end local v21    # "layoutCellHeight":I
    .end local v22    # "layoutCellWidth":I
    .end local v23    # "minOffset":I
    .end local v26    # "resources":Landroid/content/res/Resources;
    .end local v27    # "targetHeight":I
    .end local v28    # "targetWidth":I
    :cond_5
    :goto_2
    return-object v5

    .line 669
    .restart local v29    # "widgetContext":Landroid/content/Context;
    :cond_6
    :try_start_2
    const-string v6, "Launcher.Utilities"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadWidgetPreview() : Unable to find package "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 671
    .end local v29    # "widgetContext":Landroid/content/Context;
    :catch_0
    move-exception v19

    .line 672
    .local v19, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "Launcher.Utilities"

    const-string v7, "loadWidgetPreview() : Unable to find package"

    move-object/from16 v0, v19

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 700
    .end local v19    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "bitmapWidth":I
    .restart local v9    # "bitmapHeight":I
    .restart local v16    # "appIconSize":I
    .restart local v17    # "cellHSpan":I
    .restart local v18    # "cellVSpan":I
    .restart local v20    # "iconScale":F
    .restart local v21    # "layoutCellHeight":I
    .restart local v22    # "layoutCellWidth":I
    .restart local v23    # "minOffset":I
    .restart local v26    # "resources":Landroid/content/res/Resources;
    .restart local v27    # "targetHeight":I
    .restart local v28    # "targetWidth":I
    :cond_7
    mul-int/lit8 v6, v23, 0x4

    add-int v9, v16, v6

    move v8, v9

    goto/16 :goto_1

    .line 704
    :cond_8
    move/from16 v0, v28

    move/from16 v1, v27

    if-le v0, v1, :cond_9

    .line 705
    move/from16 v0, v28

    move/from16 v1, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 706
    move/from16 v0, v27

    int-to-float v6, v0

    int-to-float v7, v8

    move/from16 v0, v28

    int-to-float v11, v0

    div-float/2addr v7, v11

    mul-float/2addr v6, v7

    float-to-int v9, v6

    .line 707
    int-to-float v6, v9

    mul-int/lit8 v7, v23, 0x2

    add-int v7, v7, v16

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v20

    goto/16 :goto_1

    .line 709
    :cond_9
    move/from16 v0, v27

    move/from16 v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 710
    move/from16 v0, v28

    int-to-float v6, v0

    int-to-float v7, v9

    move/from16 v0, v27

    int-to-float v11, v0

    div-float/2addr v7, v11

    mul-float/2addr v6, v7

    float-to-int v8, v6

    .line 711
    int-to-float v6, v8

    mul-int/lit8 v7, v23, 0x2

    add-int v7, v7, v16

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v20

    goto/16 :goto_1

    .line 732
    .restart local v10    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method public static loadWidgetThemePreview(Landroid/content/Context;Ljava/lang/String;IIII[I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "previewId"    # I
    .param p3, "appIconId"    # I
    .param p4, "desiredWidth"    # I
    .param p5, "desiredHeight"    # I
    .param p6, "cellSpans"    # [I

    .prologue
    .line 768
    const/4 v2, 0x0

    .line 770
    .local v2, "preview":Landroid/graphics/Bitmap;
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v3, :cond_0

    .line 771
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v1

    .line 772
    .local v1, "loader":Lcom/android/launcher2/ThemeLoader;
    invoke-virtual {v1}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v3

    if-nez v3, :cond_0

    .line 773
    invoke-virtual {v1, p1}, Lcom/android/launcher2/ThemeLoader;->loadWidgetPreviewBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 774
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, p4, p5}, Lcom/android/launcher2/Utilities;->scaleBitmapToDesiredDimension(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 778
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "loader":Lcom/android/launcher2/ThemeLoader;
    :cond_0
    if-nez v2, :cond_1

    .line 779
    invoke-static/range {p0 .. p6}, Lcom/android/launcher2/Utilities;->loadWidgetPreview(Landroid/content/Context;Ljava/lang/String;IIII[I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 782
    :cond_1
    return-object v2
.end method

.method public static onDestroy()V
    .locals 1

    .prologue
    .line 462
    sget-object v0, Lcom/android/launcher2/Utilities;->mBgPaint:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 463
    return-void
.end method

.method public static onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 437
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;Z)V

    .line 438
    return-void
.end method

.method public static onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;Z)V
    .locals 13
    .param p0, "view"    # Landroid/view/View;
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "force"    # Z

    .prologue
    .line 420
    if-eqz p2, :cond_0

    .line 422
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v11

    .line 423
    .local v11, "x":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v12

    .line 424
    .local v12, "y":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    .line 425
    .local v10, "w":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 426
    .local v7, "h":I
    invoke-static {p0}, Lcom/android/launcher2/Utilities;->ensureViewBgPaint(Landroid/view/View;)Landroid/graphics/Paint;

    move-result-object v5

    .line 427
    .local v5, "bgPaint":Landroid/graphics/Paint;
    int-to-float v1, v11

    int-to-float v2, v12

    add-int v0, v11, v10

    int-to-float v3, v0

    add-int v0, v12, v7

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 428
    invoke-static {}, Lcom/android/launcher2/Utilities;->ensureBlackPaint()V

    .line 429
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    .line 430
    .local v6, "className":Ljava/lang/String;
    sget-object v0, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    sget-object v1, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v0, v1

    sget-object v1, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    add-float v8, v0, v1

    .line 431
    .local v8, "txtHt":F
    sget-object v0, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    .line 432
    .local v9, "txtWd":F
    int-to-float v0, v11

    int-to-float v1, v10

    sub-float/2addr v1, v9

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    add-int v1, v12, v7

    int-to-float v1, v1

    sub-float/2addr v1, v8

    sget-object v2, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 434
    .end local v5    # "bgPaint":Landroid/graphics/Paint;
    .end local v6    # "className":Ljava/lang/String;
    .end local v7    # "h":I
    .end local v8    # "txtHt":F
    .end local v9    # "txtWd":F
    .end local v10    # "w":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_0
    return-void
.end method

.method public static printCallStack()V
    .locals 3

    .prologue
    .line 863
    const-string v0, "Launcher.Utilities"

    const-string v1, "printCallStack"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 864
    return-void
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    .locals 8
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 353
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/Utilities;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V

    .line 354
    return-void
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V
    .locals 8
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "scale"    # F

    .prologue
    .line 357
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/Utilities;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V

    .line 358
    return-void
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V
    .locals 4
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "scale"    # F
    .param p7, "multiplyColor"    # I

    .prologue
    .line 361
    if-eqz p1, :cond_1

    .line 362
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 363
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0, p6, p6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 364
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 365
    .local v1, "oldBounds":Landroid/graphics/Rect;
    add-int v2, p2, p4

    add-int v3, p3, p5

    invoke-virtual {p0, p2, p3, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 366
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 367
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 368
    const/4 v2, -0x1

    if-eq p7, v2, :cond_0

    .line 369
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p7, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 371
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 373
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "oldBounds":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method static resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    sget-object v1, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v1

    .line 273
    :try_start_0
    sget v0, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 274
    invoke-static {p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    .line 276
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget v1, Lcom/android/launcher2/Utilities;->sIconWidth:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget v1, Lcom/android/launcher2/Utilities;->sIconHeight:I

    if-eq v0, v1, :cond_2

    .line 278
    :cond_1
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 280
    :cond_2
    return-object p0

    .line 276
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static roundToPow2(I)I
    .locals 3
    .param p0, "n"    # I

    .prologue
    .line 331
    move v1, p0

    .line 332
    .local v1, "orig":I
    shr-int/lit8 p0, p0, 0x1

    .line 333
    const/high16 v0, 0x8000000

    .line 334
    .local v0, "mask":I
    :goto_0
    if-eqz v0, :cond_0

    and-int v2, p0, v0

    if-nez v2, :cond_0

    .line 335
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 338
    or-int/2addr p0, v0

    .line 339
    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 341
    :cond_1
    add-int/lit8 p0, p0, 0x1

    .line 342
    if-eq p0, v1, :cond_2

    .line 343
    shl-int/lit8 p0, p0, 0x1

    .line 345
    :cond_2
    return p0
.end method

.method public static scaleBitmapToDesiredDimension(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I

    .prologue
    .line 739
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-nez v8, :cond_1

    .line 740
    :cond_0
    const/4 v2, 0x0

    .line 759
    :goto_0
    return-object v2

    .line 742
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 743
    .local v1, "actualWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 745
    .local v0, "actualHeight":I
    int-to-float v8, v1

    int-to-float v9, p1

    div-float v7, v8, v9

    .line 746
    .local v7, "widthRatio":F
    int-to-float v8, v0

    int-to-float v9, p2

    div-float v5, v8, v9

    .line 748
    .local v5, "heightRatio":F
    cmpl-float v8, v5, v7

    if-lez v8, :cond_2

    move v6, v5

    .line 749
    .local v6, "sampleSize":F
    :goto_1
    const/4 v2, 0x0

    .line 750
    .local v2, "bmp":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    cmpl-float v8, v6, v8

    if-eqz v8, :cond_3

    .line 751
    int-to-float v8, v1

    div-float/2addr v8, v6

    float-to-int v4, v8

    .line 752
    .local v4, "dstWidth":I
    int-to-float v8, v0

    div-float/2addr v8, v6

    float-to-int v3, v8

    .line 753
    .local v3, "dstHeight":I
    const/4 v8, 0x0

    invoke-static {p0, v4, v3, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 754
    goto :goto_0

    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "dstHeight":I
    .end local v4    # "dstWidth":I
    .end local v6    # "sampleSize":F
    :cond_2
    move v6, v7

    .line 748
    goto :goto_1

    .line 756
    .restart local v2    # "bmp":Landroid/graphics/Bitmap;
    .restart local v6    # "sampleSize":F
    :cond_3
    move-object v2, p0

    goto :goto_0
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "maxSize"    # I

    .prologue
    const v4, 0x7f1000dd

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 851
    sget-object v0, Lcom/android/launcher2/Utilities;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 852
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/Utilities;->mToast:Landroid/widget/Toast;

    .line 859
    :goto_0
    sget-object v0, Lcom/android/launcher2/Utilities;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 860
    return-void

    .line 856
    :cond_0
    sget-object v0, Lcom/android/launcher2/Utilities;->mToast:Landroid/widget/Toast;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
