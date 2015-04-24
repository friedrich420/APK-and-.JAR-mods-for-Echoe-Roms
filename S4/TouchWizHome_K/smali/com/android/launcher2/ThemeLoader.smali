.class public Lcom/android/launcher2/ThemeLoader;
.super Ljava/lang/Object;
.source "ThemeLoader.java"


# static fields
.field private static final DEBUGGABLE:Z

.field private static final TAG:Ljava/lang/String; = "ThemeLoader"

.field private static final THIRD_APP_SCALE_RATE:F = 0.75f

.field private static THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

.field private static THIRD_MENU_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

.field private static mPaint:Landroid/graphics/Paint;

.field private static final mSamsungWidgetPreviewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mWidgetPreviewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIconHeight:I

.field private static sIconWidth:I

.field private static sMenuIconWidth:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsUseDefaultTheme:Z

.field private mThemeMgr:Lcom/samsung/android/theme/SThemeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 39
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/ThemeLoader;->DEBUGGABLE:Z

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    .line 54
    sput v1, Lcom/android/launcher2/ThemeLoader;->sIconWidth:I

    .line 55
    sput v1, Lcom/android/launcher2/ThemeLoader;->sIconHeight:I

    .line 56
    sput v1, Lcom/android/launcher2/ThemeLoader;->sMenuIconWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v5, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    .line 64
    iput-object p1, p0, Lcom/android/launcher2/ThemeLoader;->mContext:Landroid/content/Context;

    .line 65
    new-instance v3, Lcom/samsung/android/theme/SThemeManager;

    invoke-direct {v3, p1}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    .line 67
    iget-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "current_sec_theme_package"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "themePackageName":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    :cond_0
    iput-boolean v5, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    .line 90
    :goto_0
    return-void

    .line 72
    :cond_1
    iput-boolean v6, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 75
    .local v1, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0e00c6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcom/android/launcher2/ThemeLoader;->sIconHeight:I

    sput v3, Lcom/android/launcher2/ThemeLoader;->sIconWidth:I

    .line 77
    invoke-virtual {p0}, Lcom/android/launcher2/ThemeLoader;->load3rdpartyIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 78
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 79
    iget-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/ThemeLoader;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    .line 82
    :cond_2
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    sput-object v3, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    .line 83
    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 85
    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 87
    invoke-direct {p0}, Lcom/android/launcher2/ThemeLoader;->initWidgetPreviewMap()V

    .line 88
    invoke-direct {p0}, Lcom/android/launcher2/ThemeLoader;->initSamsungWidgetPreviewMap()V

    goto :goto_0
.end method

.method private initSamsungWidgetPreviewMap()V
    .locals 3

    .prologue
    .line 303
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 305
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.SPlannerAppWidget/Today_mini"

    const-string v2, "widget_preview_minitoday"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.SPlannerAppWidget/Month"

    const-string v2, "widget_preview_month"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    return-void
.end method

.method private initWidgetPreviewMap()V
    .locals 3

    .prologue
    .line 256
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 258
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.alarmwidget"

    const-string v2, "widget_alarm_preview_01"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.dualclockdigital"

    const-string v2, "dual_cn_1_24"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.digitalclock"

    const-string v2, "single_a_cn_4x1_24"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.digitalclock2x1"

    const-string v2, "single_a_cn_2x1_12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "home_musicplayer_preview"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.videoplayer"

    const-string v2, "videoplayer_preview"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.analogclocksimple"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.analogclockunique"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "drawableId"    # Ljava/lang/String;

    .prologue
    .line 360
    iget-boolean v2, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v2, :cond_0

    .line 361
    const/4 v0, 0x0

    .line 370
    :goto_0
    return-object v0

    .line 363
    :cond_0
    const/4 v0, 0x0

    .line 365
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/theme/SThemeManager;->getItemBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 366
    :catch_0
    move-exception v1

    .line 367
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "ThemeLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBitmap( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getColor(Ljava/lang/String;)I
    .locals 5
    .param p1, "colorId"    # Ljava/lang/String;

    .prologue
    .line 374
    iget-boolean v2, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v2, :cond_0

    .line 375
    const/4 v0, 0x0

    .line 383
    :goto_0
    return v0

    .line 377
    :cond_0
    const/4 v0, 0x0

    .line 379
    .local v0, "color":I
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/theme/SThemeManager;->getItemColor(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v1

    .line 381
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "ThemeLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getColor( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "drawableId"    # Ljava/lang/String;

    .prologue
    .line 346
    iget-boolean v2, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v2, :cond_0

    .line 347
    const/4 v0, 0x0

    .line 356
    :goto_0
    return-object v0

    .line 349
    :cond_0
    const/4 v0, 0x0

    .line 351
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/theme/SThemeManager;->getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v1

    .line 353
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "ThemeLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrawable( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "textId"    # Ljava/lang/String;

    .prologue
    .line 387
    iget-boolean v3, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v3, :cond_0

    .line 388
    const/4 v2, 0x0

    .line 396
    :goto_0
    return-object v2

    .line 390
    :cond_0
    const/4 v2, 0x0

    .line 392
    .local v2, "text":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v3, p1}, Lcom/samsung/android/theme/SThemeManager;->getItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 393
    :catch_0
    move-exception v1

    .line 394
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "ThemeLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getText( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSupportFestival()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 442
    iget-object v2, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/theme/SThemeManager;->getVersionFromFeature(I)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "festivalVersion":Ljava/lang/String;
    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 446
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupportTheme()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 434
    iget-object v2, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/theme/SThemeManager;->getVersionFromFeature(I)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "themeVersion":Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isUseDefaultTheme()Z
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    return v0
.end method

.method public load3rdAppIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v7, 0x3f400000    # 0.75f

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 141
    if-nez p1, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 158
    :goto_0
    return-object v0

    .line 144
    :cond_0
    sget-object v2, Lcom/android/launcher2/ThemeLoader;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 145
    sget v2, Lcom/android/launcher2/ThemeLoader;->sIconWidth:I

    sget v3, Lcom/android/launcher2/ThemeLoader;->sIconHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 146
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 147
    .local v1, "canvas":Landroid/graphics/Canvas;
    sget-object v2, Lcom/android/launcher2/ThemeLoader;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 148
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 150
    sget v2, Lcom/android/launcher2/ThemeLoader;->sIconWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    sget v3, Lcom/android/launcher2/ThemeLoader;->sIconHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 151
    invoke-virtual {v1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 153
    sget v2, Lcom/android/launcher2/ThemeLoader;->sIconWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    sget v3, Lcom/android/launcher2/ThemeLoader;->sIconHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 154
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    move-object v0, p1

    .line 158
    goto :goto_0
.end method

.method public load3rdAppMenuIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    const/high16 v7, 0x3f400000    # 0.75f

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 164
    if-nez p1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-object v0

    .line 167
    :cond_1
    sget-object v2, Lcom/android/launcher2/ThemeLoader;->THIRD_MENU_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 168
    sget v2, Lcom/android/launcher2/ThemeLoader;->sMenuIconWidth:I

    sget v3, Lcom/android/launcher2/ThemeLoader;->sMenuIconWidth:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 169
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 170
    .local v1, "canvas":Landroid/graphics/Canvas;
    sget-object v2, Lcom/android/launcher2/ThemeLoader;->THIRD_MENU_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 171
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 173
    sget v2, Lcom/android/launcher2/ThemeLoader;->sMenuIconWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    sget v3, Lcom/android/launcher2/ThemeLoader;->sMenuIconWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 174
    invoke-virtual {v1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 176
    sget v2, Lcom/android/launcher2/ThemeLoader;->sMenuIconWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    sget v3, Lcom/android/launcher2/ThemeLoader;->sMenuIconWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 177
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public load3rdpartyIconBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 206
    .local v1, "icon":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    const-string v3, "3rd_party_icon"

    invoke-virtual {v2, v3}, Lcom/samsung/android/theme/SThemeManager;->getPackageIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 211
    :goto_0
    return-object v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "ThemeLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load3rdpartyIconBitmap failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadAppIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 95
    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v3, :cond_2

    .line 96
    :cond_0
    const/4 v2, 0x0

    .line 110
    :cond_1
    :goto_0
    return-object v2

    .line 98
    :cond_2
    const/4 v2, 0x0

    .line 99
    .local v2, "newIcon":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 102
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v3, p1}, Lcom/samsung/android/theme/SThemeManager;->getPackageIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 106
    :goto_1
    if-eqz v1, :cond_1

    .line 107
    iget-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "ThemeLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAppIconBitmap( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public loadAppIconBitmapByPackageName(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 236
    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v3, :cond_2

    .line 237
    :cond_0
    const/4 v2, 0x0

    .line 252
    :cond_1
    :goto_0
    return-object v2

    .line 240
    :cond_2
    const/4 v2, 0x0

    .line 241
    .local v2, "newIcon":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 244
    .local v1, "icon":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v3, p1}, Lcom/samsung/android/theme/SThemeManager;->getPackageIconBitmapStartsWith(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 249
    :goto_1
    if-eqz v1, :cond_1

    .line 250
    iget-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "ThemeLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAppIconBitmapByPackageName failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public loadAppMenuIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 115
    if-eqz p1, :cond_0

    iget-boolean v4, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v4, :cond_2

    .line 116
    :cond_0
    const/4 v2, 0x0

    .line 136
    :cond_1
    :goto_0
    return-object v2

    .line 118
    :cond_2
    const/4 v2, 0x0

    .line 119
    .local v2, "newIcon":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 121
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v3, "packageName":Ljava/lang/StringBuilder;
    const-string v4, "menu."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/theme/SThemeManager;->getPackageIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 132
    :goto_1
    if-eqz v1, :cond_1

    .line 133
    iget-object v4, p0, Lcom/android/launcher2/ThemeLoader;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/launcher2/ThemeLoader;->sMenuIconWidth:I

    invoke-static {v1, v4, v5}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "ThemeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppMenuIconBitmap( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ) failed! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public loadAppsIconBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 186
    iget-boolean v2, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v2, :cond_0

    .line 187
    const/4 v1, 0x0

    .line 197
    :goto_0
    return-object v1

    .line 189
    :cond_0
    const/4 v1, 0x0

    .line 192
    .local v1, "icon":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    const-string v3, "homesceen_apps_icon"

    invoke-virtual {v2, v3}, Lcom/samsung/android/theme/SThemeManager;->getPackageIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "ThemeLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAppsIconBitmap failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "drawableId"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-boolean v3, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v3, :cond_1

    .line 217
    const/4 v2, 0x0

    .line 232
    :cond_0
    :goto_0
    return-object v2

    .line 219
    :cond_1
    const/4 v2, 0x0

    .line 220
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 223
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v3, p1}, Lcom/samsung/android/theme/SThemeManager;->getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 228
    :goto_1
    if-eqz v0, :cond_0

    .line 229
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 224
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "ThemeLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadIconDrawable( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public loadSamsungWidgetPreviewBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "widgetPackageName"    # Ljava/lang/String;
    .param p2, "widgetThemeName"    # Ljava/lang/String;

    .prologue
    .line 328
    if-eqz p1, :cond_0

    iget-boolean v4, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v4, :cond_2

    .line 329
    :cond_0
    const/4 v0, 0x0

    .line 342
    :cond_1
    :goto_0
    return-object v0

    .line 331
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "componentName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 334
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 335
    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 337
    .local v2, "drawableId":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v4, v2}, Lcom/samsung/android/theme/SThemeManager;->getItemBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v3

    .line 339
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "ThemeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadSamsungWidgetPreviewBitmap( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ) failed! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadSamsungWidgetPreviewDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "widgetPackageName"    # Ljava/lang/String;
    .param p2, "widgetThemeName"    # Ljava/lang/String;

    .prologue
    .line 310
    if-eqz p1, :cond_0

    iget-boolean v4, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v4, :cond_2

    .line 311
    :cond_0
    const/4 v1, 0x0

    .line 324
    :cond_1
    :goto_0
    return-object v1

    .line 313
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "componentName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 316
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 317
    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 319
    .local v2, "drawableId":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v4, v2}, Lcom/samsung/android/theme/SThemeManager;->getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 320
    :catch_0
    move-exception v3

    .line 321
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "ThemeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadSamsungWidgetPreviewDrawable( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ) failed! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadWidgetPreviewBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "widgetPackageName"    # Ljava/lang/String;

    .prologue
    .line 286
    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v3, :cond_2

    .line 287
    :cond_0
    const/4 v0, 0x0

    .line 299
    :cond_1
    :goto_0
    return-object v0

    .line 289
    :cond_2
    const/4 v0, 0x0

    .line 291
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 294
    .local v1, "drawableId":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v3, v1}, Lcom/samsung/android/theme/SThemeManager;->getItemBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v2

    .line 296
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "ThemeLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadWidgetPreviewBitmap( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadWidgetPreviewDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "widgetPackageName"    # Ljava/lang/String;

    .prologue
    .line 269
    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v3, :cond_2

    .line 270
    :cond_0
    const/4 v0, 0x0

    .line 282
    :cond_1
    :goto_0
    return-object v0

    .line 272
    :cond_2
    const/4 v0, 0x0

    .line 274
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 275
    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 277
    .local v1, "drawableId":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v3, v1}, Lcom/samsung/android/theme/SThemeManager;->getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v2

    .line 279
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "ThemeLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadWidgetPreviewImageDrawable( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMenuIconSize(I)V
    .locals 5
    .param p1, "size"    # I

    .prologue
    .line 417
    sput p1, Lcom/android/launcher2/ThemeLoader;->sMenuIconWidth:I

    .line 420
    const/4 v0, 0x0

    .line 422
    .local v0, "b":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    const-string v3, "3rd_party_icon_menu"

    invoke-virtual {v2, v3}, Lcom/samsung/android/theme/SThemeManager;->getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 427
    :goto_0
    if-eqz v0, :cond_0

    .line 428
    iget-object v2, p0, Lcom/android/launcher2/ThemeLoader;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/launcher2/ThemeLoader;->sMenuIconWidth:I

    invoke-static {v0, v2, v3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/ThemeLoader;->THIRD_MENU_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    .line 431
    :cond_0
    return-void

    .line 423
    :catch_0
    move-exception v1

    .line 424
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "ThemeLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3rd_party_icon_menu  failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
