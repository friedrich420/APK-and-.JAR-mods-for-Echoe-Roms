.class public final enum Lcom/android/launcher2/WorkspaceSpanCalculator;
.super Ljava/lang/Enum;
.source "WorkspaceSpanCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/WorkspaceSpanCalculator$1;,
        Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;,
        Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;,
        Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;,
        Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/WorkspaceSpanCalculator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/WorkspaceSpanCalculator;

.field public static final enum INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;


# instance fields
.field private mCellCountX:I

.field private mCellCountY:I

.field private mDensity:F

.field private mLandCellGapX:I

.field private mLandCellGapY:I

.field private mLandCellSizeX:I

.field private mLandCellSizeY:I

.field private mPaddingDimens:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

.field private mPaddingZero:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

.field private mPkgMgr:Landroid/content/pm/PackageManager;

.field private mPortCellGapX:I

.field private mPortCellGapY:I

.field private mPortCellSizeX:I

.field private mPortCellSizeY:I

.field private mResources:Landroid/content/res/Resources;

.field private mSpanCalcRoundDown:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;

.field private mSpanCalcRoundUp:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/android/launcher2/WorkspaceSpanCalculator;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/WorkspaceSpanCalculator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/launcher2/WorkspaceSpanCalculator;

    sget-object v1, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->$VALUES:[Lcom/android/launcher2/WorkspaceSpanCalculator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    new-instance v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPaddingZero:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    .line 155
    new-instance v0, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;

    invoke-direct {v0, v2}, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;-><init>(Lcom/android/launcher2/WorkspaceSpanCalculator$1;)V

    iput-object v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mSpanCalcRoundUp:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;

    .line 156
    new-instance v0, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;

    invoke-direct {v0, v2}, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;-><init>(Lcom/android/launcher2/WorkspaceSpanCalculator$1;)V

    iput-object v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mSpanCalcRoundDown:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;

    return-void
.end method

.method private getSpanForWidget(IIII[ILcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;Z)[I
    .locals 14
    .param p1, "portWidth"    # I
    .param p2, "portHeight"    # I
    .param p3, "landWidth"    # I
    .param p4, "landHeight"    # I
    .param p5, "spanXY"    # [I
    .param p6, "spanCalc"    # Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;
    .param p7, "gedMode"    # Z

    .prologue
    .line 176
    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    array-length v11, v0

    const/4 v12, 0x2

    if-ge v11, v12, :cond_1

    .line 177
    :cond_0
    const/4 v11, 0x2

    new-array v0, v11, [I

    move-object/from16 p5, v0

    .line 179
    :cond_1
    if-eqz p7, :cond_2

    .line 193
    iget-object v11, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0e00c4

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 194
    .local v3, "gedCellWidth":I
    iget-object v11, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0e00c5

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 195
    .local v2, "gedCellHeight":I
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 197
    .local v8, "smallerSize":I
    const/4 v11, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, p1, v8, v11}, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;->getSpanCount(III)I

    move-result v9

    .line 198
    .local v9, "spanX":I
    const/4 v11, 0x0

    move-object/from16 v0, p6

    move/from16 v1, p2

    invoke-interface {v0, v1, v8, v11}, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;->getSpanCount(III)I

    move-result v10

    .line 200
    .local v10, "spanY":I
    const/4 v11, 0x0

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountX:I

    invoke-static {v12, v9}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput v12, p5, v11

    .line 201
    const/4 v11, 0x1

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountY:I

    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput v12, p5, v11

    .line 224
    .end local v2    # "gedCellHeight":I
    .end local v3    # "gedCellWidth":I
    .end local v8    # "smallerSize":I
    .end local v9    # "spanX":I
    .end local v10    # "spanY":I
    :goto_0
    return-object p5

    .line 209
    :cond_2
    iget v11, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeX:I

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapX:I

    move-object/from16 v0, p6

    invoke-interface {v0, p1, v11, v12}, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;->getSpanCount(III)I

    move-result v6

    .line 210
    .local v6, "portSpanX":I
    iget v11, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeY:I

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapY:I

    move-object/from16 v0, p6

    move/from16 v1, p2

    invoke-interface {v0, v1, v11, v12}, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;->getSpanCount(III)I

    move-result v7

    .line 212
    .local v7, "portSpanY":I
    iget v11, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeX:I

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapX:I

    move-object/from16 v0, p6

    move/from16 v1, p3

    invoke-interface {v0, v1, v11, v12}, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;->getSpanCount(III)I

    move-result v4

    .line 213
    .local v4, "landSpanX":I
    iget v11, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeY:I

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapY:I

    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-interface {v0, v1, v11, v12}, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;->getSpanCount(III)I

    move-result v5

    .line 215
    .local v5, "landSpanY":I
    iget-object v11, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v12, 0x258

    if-lt v11, v12, :cond_3

    .line 217
    const/4 v11, 0x0

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountX:I

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput v12, p5, v11

    .line 218
    const/4 v11, 0x1

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountY:I

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput v12, p5, v11

    goto :goto_0

    .line 220
    :cond_3
    const/4 v11, 0x0

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountX:I

    invoke-static {v12, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput v12, p5, v11

    .line 221
    const/4 v11, 0x1

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountY:I

    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput v12, p5, v11

    goto :goto_0
.end method

.method private useGEDMode(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 231
    instance-of v0, p1, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/WorkspaceSpanCalculator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/android/launcher2/WorkspaceSpanCalculator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/WorkspaceSpanCalculator;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/WorkspaceSpanCalculator;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->$VALUES:[Lcom/android/launcher2/WorkspaceSpanCalculator;

    invoke-virtual {v0}, [Lcom/android/launcher2/WorkspaceSpanCalculator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/WorkspaceSpanCalculator;

    return-object v0
.end method


# virtual methods
.method public getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    .locals 7
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 104
    iget-object v2, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPaddingZero:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    .line 110
    .local v2, "padding":Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 116
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_0

    .line 117
    iget-object v2, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPaddingDimens:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    :cond_0
    move-object v3, v2

    .line 120
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "padding":Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    .local v3, "padding":Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    :goto_0
    return-object v3

    .line 111
    .end local v3    # "padding":Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    .restart local v2    # "padding":Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v3, v2

    .line 113
    .end local v2    # "padding":Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    .restart local v3    # "padding":Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    goto :goto_0
.end method

.method public getResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I
    .locals 13
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p2, "spanXY"    # [I

    .prologue
    .line 288
    if-eqz p2, :cond_0

    array-length v0, p2

    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    .line 289
    :cond_0
    const/4 v0, 0x4

    new-array p2, v0, [I

    .line 291
    :cond_1
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v8

    .line 293
    .local v8, "padding":Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget v3, v8, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    add-int/2addr v0, v3

    iget v3, v8, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    add-int v1, v0, v3

    .line 294
    .local v1, "width":I
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget v3, v8, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    add-int/2addr v0, v3

    iget v3, v8, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    add-int v2, v0, v3

    .line 295
    .local v2, "height":I
    invoke-direct {p0, p1}, Lcom/android/launcher2/WorkspaceSpanCalculator;->useGEDMode(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v7

    .line 296
    .local v7, "useGedMode":Z
    iget-object v6, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mSpanCalcRoundUp:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;

    move-object v0, p0

    move v3, v1

    move v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(IIII[ILcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;Z)[I

    move-result-object p2

    .line 298
    const/4 v0, 0x2

    const/4 v3, -0x1

    aput v3, p2, v0

    .line 299
    const/4 v0, 0x3

    const/4 v3, -0x1

    aput v3, p2, v0

    .line 301
    instance-of v0, p1, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    if-eqz v0, :cond_3

    move-object v11, p1

    .line 302
    check-cast v11, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    .line 303
    .local v11, "sInfo":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    invoke-virtual {v11}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getMaxResizeWidth()I

    move-result v10

    .line 304
    .local v10, "resizeWidth":I
    invoke-virtual {v11}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getMaxResizeHeight()I

    move-result v9

    .line 305
    .local v9, "resizeHeight":I
    iget v0, v8, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    iget v3, v8, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    add-int/2addr v0, v3

    sub-int v1, v10, v0

    .line 306
    iget v0, v8, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    iget v3, v8, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    add-int/2addr v0, v3

    sub-int v2, v9, v0

    .line 308
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mSpanCalcRoundDown:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;

    move-object v0, p0

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(IIII[ILcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;Z)[I

    move-result-object v12

    .line 310
    .local v12, "temp":[I
    if-lez v10, :cond_2

    const v0, 0x7fffffff

    if-ge v10, v0, :cond_2

    .line 311
    const/4 v0, 0x2

    const/4 v3, 0x0

    aget v3, p2, v3

    iget v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountX:I

    const/4 v5, 0x0

    aget v5, v12, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, p2, v0

    .line 313
    :cond_2
    if-lez v9, :cond_3

    const v0, 0x7fffffff

    if-ge v9, v0, :cond_3

    .line 314
    const/4 v0, 0x3

    const/4 v3, 0x1

    aget v3, p2, v3

    iget v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountY:I

    const/4 v5, 0x1

    aget v5, v12, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, p2, v0

    .line 317
    .end local v9    # "resizeHeight":I
    .end local v10    # "resizeWidth":I
    .end local v11    # "sInfo":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    .end local v12    # "temp":[I
    :cond_3
    return-object p2
.end method

.method public getSpanForAppWidget(Landroid/appwidget/AppWidgetProviderInfo;II[I)[I
    .locals 8
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "spanXY"    # [I

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/android/launcher2/WorkspaceSpanCalculator;->useGEDMode(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v7

    .line 381
    .local v7, "useGedMode":Z
    iget-object v6, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mSpanCalcRoundUp:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(IIII[ILcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getSpanForSamsungWidget(IIII[I)[I
    .locals 8
    .param p1, "minWidthPort"    # I
    .param p2, "minHeightPort"    # I
    .param p3, "minWidthLand"    # I
    .param p4, "minHeightLand"    # I
    .param p5, "spanXY"    # [I

    .prologue
    .line 334
    iget-object v6, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mSpanCalcRoundUp:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(IIII[ILcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getSpanForSurfaceWidget(II[I)[I
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "spanXY"    # [I

    .prologue
    .line 351
    iget-object v6, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mSpanCalcRoundUp:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(IIII[ILcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I
    .locals 12
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p2, "spanXY"    # [I

    .prologue
    .line 244
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v8

    .line 246
    .local v8, "padding":Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v3, v8, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    add-int/2addr v0, v3

    iget v3, v8, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    add-int v1, v0, v3

    .line 247
    .local v1, "width":I
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget v3, v8, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    add-int/2addr v0, v3

    iget v3, v8, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    add-int v2, v0, v3

    .line 249
    .local v2, "height":I
    invoke-direct {p0, p1}, Lcom/android/launcher2/WorkspaceSpanCalculator;->useGEDMode(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v7

    .line 251
    .local v7, "useGedMode":Z
    iget-object v6, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mSpanCalcRoundUp:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;

    move-object v0, p0

    move v3, v1

    move v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(IIII[ILcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;Z)[I

    move-result-object v9

    .line 252
    .local v9, "res":[I
    iget v10, p1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    .line 253
    .local v10, "resizeFlags":I
    if-eqz v10, :cond_1

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v11

    .line 256
    .local v11, "resizeSpan":[I
    and-int/lit8 v0, v10, 0x1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 257
    const/4 v0, 0x0

    const/4 v3, 0x0

    aget v3, v9, v3

    const/4 v4, 0x0

    aget v4, v11, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v9, v0

    .line 258
    const/4 v0, -0x1

    const/4 v3, 0x2

    aget v3, v11, v3

    if-eq v0, v3, :cond_0

    .line 259
    const/4 v0, 0x0

    const/4 v3, 0x0

    aget v3, v9, v3

    const/4 v4, 0x2

    aget v4, v11, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v9, v0

    .line 262
    :cond_0
    and-int/lit8 v0, v10, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 263
    const/4 v0, 0x1

    const/4 v3, 0x1

    aget v3, v9, v3

    const/4 v4, 0x1

    aget v4, v11, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v9, v0

    .line 264
    const/4 v0, -0x1

    const/4 v3, 0x3

    aget v3, v11, v3

    if-eq v0, v3, :cond_1

    .line 265
    const/4 v0, 0x1

    const/4 v3, 0x1

    aget v3, v9, v3

    const/4 v4, 0x3

    aget v4, v11, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v9, v0

    .line 269
    .end local v11    # "resizeSpan":[I
    :cond_1
    return-object v9
.end method

.method public setLauncherApplication(Lcom/android/launcher2/LauncherApplication;)V
    .locals 6
    .param p1, "application"    # Lcom/android/launcher2/LauncherApplication;

    .prologue
    .line 70
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    .line 71
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPkgMgr:Landroid/content/pm/PackageManager;

    .line 72
    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0e014c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 73
    .local v1, "left":I
    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0e014e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 74
    .local v3, "top":I
    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0e014d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 75
    .local v2, "right":I
    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0e014f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 76
    .local v0, "bottom":I
    new-instance v4, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    invoke-direct {v4, v1, v3, v2, v0}, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPaddingDimens:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    .line 78
    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c0021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountX:I

    .line 79
    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c0022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountY:I

    .line 81
    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0e00d2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeX:I

    .line 82
    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0e00d3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeY:I

    .line 84
    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0e00ce

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeX:I

    .line 85
    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0e00cf

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeY:I

    .line 87
    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0e00d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapX:I

    .line 88
    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0e00d5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapY:I

    .line 90
    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0e00d0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapX:I

    .line 91
    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0e00d1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapY:I

    .line 93
    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDensity:F

    .line 95
    return-void
.end method

.method public updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V
    .locals 10
    .param p1, "widgetView"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "launcher"    # Lcom/android/launcher2/Launcher;
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I

    .prologue
    .line 356
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    const-string v0, "resize_widgets"

    sget-object v1, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/Workspace;->widgetSizeChanged:Z

    .line 361
    :cond_0
    iget v7, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeX:I

    .line 362
    .local v7, "cellWidth":I
    iget v6, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeY:I

    .line 363
    .local v6, "cellHeight":I
    iget v9, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapX:I

    .line 364
    .local v9, "widthGap":I
    iget v8, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapY:I

    .line 365
    .local v8, "heightGap":I
    mul-int v0, p3, v7

    add-int/lit8 v1, p3, -0x1

    mul-int/2addr v1, v9

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDensity:F

    div-float/2addr v0, v1

    float-to-int v4, v0

    .line 366
    .local v4, "landWidth":I
    mul-int v0, p4, v6

    add-int/lit8 v1, p4, -0x1

    mul-int/2addr v1, v8

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDensity:F

    div-float/2addr v0, v1

    float-to-int v3, v0

    .line 369
    .local v3, "landHeight":I
    iget v7, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeX:I

    .line 370
    iget v6, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeY:I

    .line 371
    iget v9, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapX:I

    .line 372
    iget v8, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapY:I

    .line 373
    mul-int v0, p3, v7

    add-int/lit8 v1, p3, -0x1

    mul-int/2addr v1, v9

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDensity:F

    div-float/2addr v0, v1

    float-to-int v2, v0

    .line 374
    .local v2, "portWidth":I
    mul-int v0, p4, v6

    add-int/lit8 v1, p4, -0x1

    mul-int/2addr v1, v8

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDensity:F

    div-float/2addr v0, v1

    float-to-int v5, v0

    .line 376
    .local v5, "portHeight":I
    const/4 v1, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    .line 377
    return-void
.end method
