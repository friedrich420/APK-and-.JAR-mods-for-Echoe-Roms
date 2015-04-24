.class public Lcom/android/launcher2/HolographicOutlineHelper;
.super Ljava/lang/Object;
.source "HolographicOutlineHelper.java"


# static fields
.field private static final EXTRA_THICK:I = 0x2

.field static INSTANCE:Lcom/android/launcher2/HolographicOutlineHelper; = null

.field public static final MAX_OUTER_BLUR_RADIUS:I

.field private static final MEDIUM:I = 0x1

.field public static final MIN_OUTER_BLUR_RADIUS:I

.field private static final THICK:I

.field private static final sCoarseClipTable:Landroid/graphics/MaskFilter;

.field private static final sExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;


# instance fields
.field private final mAlphaClipPaint:Landroid/graphics/Paint;

.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mErasePaint:Landroid/graphics/Paint;

.field private final mHolographicPaint:Landroid/graphics/Paint;

.field private mTempOffset:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 52
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenDensity()F

    move-result v0

    .line 54
    .local v0, "scale":F
    mul-float v1, v0, v4

    float-to-int v1, v1

    sput v1, Lcom/android/launcher2/HolographicOutlineHelper;->MIN_OUTER_BLUR_RADIUS:I

    .line 55
    mul-float v1, v0, v2

    float-to-int v1, v1

    sput v1, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 57
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float/2addr v2, v0

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 58
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v0

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 59
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v5

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 60
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v4

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 61
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v2, v0

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 62
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v2, v0

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 63
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v5

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 66
    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 33
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    .line 34
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mAlphaClipPaint:Landroid/graphics/Paint;

    .line 68
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mTempOffset:[I

    .line 73
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 74
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 76
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 78
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 79
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    const/16 v1, 0x14

    const/16 v2, 0x23

    invoke-static {v1, v2}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v0

    .line 81
    .local v0, "alphaClipTable":Landroid/graphics/MaskFilter;
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mAlphaClipPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 82
    return-void
.end method

.method public static highlightAlphaInterpolator(F)F
    .locals 6
    .param p0, "r"    # F

    .prologue
    .line 96
    const v0, 0x3f19999a    # 0.6f

    .line 97
    .local v0, "maxAlpha":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p0

    mul-float/2addr v1, v0

    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    return v1
.end method

.method public static obtain()Lcom/android/launcher2/HolographicOutlineHelper;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/launcher2/HolographicOutlineHelper;->INSTANCE:Lcom/android/launcher2/HolographicOutlineHelper;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-direct {v0}, Lcom/android/launcher2/HolographicOutlineHelper;-><init>()V

    sput-object v0, Lcom/android/launcher2/HolographicOutlineHelper;->INSTANCE:Lcom/android/launcher2/HolographicOutlineHelper;

    .line 88
    :cond_0
    sget-object v0, Lcom/android/launcher2/HolographicOutlineHelper;->INSTANCE:Lcom/android/launcher2/HolographicOutlineHelper;

    return-object v0
.end method

.method public static viewAlphaInterpolator(F)F
    .locals 6
    .param p0, "r"    # F

    .prologue
    const v2, 0x3f733333    # 0.95f

    .line 104
    const v0, 0x3f733333    # 0.95f

    .line 105
    .local v0, "pivot":F
    cmpg-float v1, p0, v2

    if-gez v1, :cond_0

    .line 106
    div-float v1, p0, v2

    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    .line 108
    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method


# virtual methods
.method applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V
    .locals 7
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I
    .param p4, "outlineColor"    # I
    .param p5, "thickness"    # I

    .prologue
    .line 136
    iget-object v5, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mAlphaClipPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IILandroid/graphics/Paint;I)V

    .line 138
    return-void
.end method

.method applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IILandroid/graphics/Paint;I)V
    .locals 17
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I
    .param p4, "outlineColor"    # I
    .param p5, "alphaClipPaint"    # Landroid/graphics/Paint;
    .param p6, "thickness"    # I

    .prologue
    .line 145
    if-nez p5, :cond_0

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mAlphaClipPaint:Landroid/graphics/Paint;

    move-object/from16 p5, v0

    .line 148
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mTempOffset:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 152
    .local v10, "glowShape":Landroid/graphics/Bitmap;
    packed-switch p6, :pswitch_data_0

    .line 163
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid blur thickness"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :pswitch_0
    sget-object v12, Lcom/android/launcher2/HolographicOutlineHelper;->sExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 165
    .local v12, "outerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 166
    const/4 v2, 0x2

    new-array v13, v2, [I

    .line 167
    .local v13, "outerBlurOffset":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v13}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 168
    .local v16, "thickOuterBlur":Landroid/graphics/Bitmap;
    const/4 v2, 0x2

    move/from16 v0, p6

    if-ne v0, v2, :cond_1

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v3, Lcom/android/launcher2/HolographicOutlineHelper;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 174
    :goto_1
    const/4 v2, 0x2

    new-array v9, v2, [I

    .line 175
    .local v9, "brightOutlineOffset":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v9}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 178
    .local v8, "brightOutline":Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 179
    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 181
    packed-switch p6, :pswitch_data_1

    .line 192
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid blur thickness"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    .end local v8    # "brightOutline":Landroid/graphics/Bitmap;
    .end local v9    # "brightOutlineOffset":[I
    .end local v12    # "outerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    .end local v13    # "outerBlurOffset":[I
    .end local v16    # "thickOuterBlur":Landroid/graphics/Bitmap;
    :pswitch_1
    sget-object v12, Lcom/android/launcher2/HolographicOutlineHelper;->sThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 158
    .restart local v12    # "outerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    goto :goto_0

    .line 160
    .end local v12    # "outerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    :pswitch_2
    sget-object v12, Lcom/android/launcher2/HolographicOutlineHelper;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 161
    .restart local v12    # "outerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    goto :goto_0

    .line 171
    .restart local v13    # "outerBlurOffset":[I
    .restart local v16    # "thickOuterBlur":Landroid/graphics/Bitmap;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v3, Lcom/android/launcher2/HolographicOutlineHelper;->sThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_1

    .line 183
    .restart local v8    # "brightOutline":Landroid/graphics/Bitmap;
    .restart local v9    # "brightOutlineOffset":[I
    :pswitch_3
    sget-object v11, Lcom/android/launcher2/HolographicOutlineHelper;->sExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 194
    .local v11, "innerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 195
    const/4 v2, 0x2

    new-array v15, v2, [I

    .line 196
    .local v15, "thickInnerBlurOffset":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v15}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 199
    .local v14, "thickInnerBlur":Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 200
    const/4 v2, 0x0

    aget v2, v15, v2

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v15, v3

    neg-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 202
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    aget v2, v15, v2

    neg-int v2, v2

    int-to-float v5, v2

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 204
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v5, v2

    const/4 v2, 0x1

    aget v2, v15, v2

    neg-int v2, v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 208
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 209
    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    const/4 v2, 0x0

    aget v2, v15, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v15, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 213
    const/4 v2, 0x0

    aget v2, v13, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v13, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    const/4 v2, 0x0

    aget v2, v9, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v9, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 222
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 223
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 224
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 225
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 226
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 227
    return-void

    .line 186
    .end local v11    # "innerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    .end local v14    # "thickInnerBlur":Landroid/graphics/Bitmap;
    .end local v15    # "thickInnerBlurOffset":[I
    :pswitch_4
    sget-object v11, Lcom/android/launcher2/HolographicOutlineHelper;->sThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 187
    .restart local v11    # "innerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    goto/16 :goto_2

    .line 189
    .end local v11    # "innerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    :pswitch_5
    sget-object v11, Lcom/android/launcher2/HolographicOutlineHelper;->sMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 190
    .restart local v11    # "innerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    goto/16 :goto_2

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 181
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method applyExtraThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 6
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I
    .param p4, "outlineColor"    # I

    .prologue
    .line 231
    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    .line 232
    return-void
.end method

.method applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 6
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I
    .param p4, "outlineColor"    # I

    .prologue
    .line 247
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    .line 248
    return-void
.end method

.method applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 7
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I
    .param p4, "outlineColor"    # I
    .param p5, "alphaClipPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 241
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IILandroid/graphics/Paint;I)V

    .line 243
    return-void
.end method

.method applyOuterBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I

    .prologue
    .line 118
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/android/launcher2/HolographicOutlineHelper;->sThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 119
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mTempOffset:[I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    .local v0, "glow":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/android/launcher2/HolographicOutlineHelper;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 123
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 124
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mTempOffset:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mTempOffset:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 127
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 128
    return-void
.end method

.method applyThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 6
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I
    .param p4, "outlineColor"    # I

    .prologue
    .line 236
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    .line 237
    return-void
.end method
